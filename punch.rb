require 'sinatra'
require 'json'
require 'lib/models'
require 'net/http'
require 'net/https'

enable :sessions

configure :development do
  set :address, 'http://localhost:4567'
end

configure :production do
  set :address, 'http://punch.heroku.com'
end

helpers do

  def end_task(id)
    @last_task = Task.get(id)

    unless @last_task.nil?
      @last_task.ended_at = DateTime.now
      @last_task.save
    end
  end

end

get '/' do
  if session[:userid].nil?
    haml :login
  else
    user = User.get(session[:userid])
    @tasks = user.tasks.reverse
    @total = user.total_time
    if @tasks.empty?
      haml :new
    else
      haml :index
    end
  end
end

post '/login' do
  openid_user = get_user(params[:token])
  user = User.find(openid_user[:identifier])
  if user.new_record?
    user.update_attributes(:email => openid_user[:email])
  end
  session[:userid] = user.id
  if session[:userid]
    redirect '/'
  else
    raise LoginFailedError, 'Could not log in, please try again'
  end
end

get '/logout' do
  session[:userid] = nil
  redirect '/'
end

# create
post '/s' do
  user = User.get(session[:userid])
  end_task(user.last_task) unless user.done_working?

  @task = user.tasks.create(:desc => params['desc'], :user => user)
  if @task.save
    redirect '/'
  else
    raise RuntimeError, 'I could not save to the database.'
  end
end

# stop 
get '/e/:id' do
  if end_task(params[:id])
    redirect '/'
  else
    raise RuntimeError, 'I could not delete from the database.'
  end
end

# clear
get '/clear' do
  Task.all.destroy!
  redirect '/'
end

# style
get '/stylesheets/style.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :styles
end

def get_user(token)
  u = URI.parse('https://rpxnow.com/api/v2/auth_info')
  req = Net::HTTP::Post.new(u.path)
  req.set_form_data({'token' => token, 'apiKey' => '739259603e8c115e6489d8ff233613fd5bf1dc74', 'format' => 'json', 'extended' => 'true'})
  http = Net::HTTP.new(u.host,u.port)
  http.use_ssl = true if u.scheme == 'https'
  json = JSON.parse(http.request(req).body)
  
  if json['stat'] == 'ok'
    identifier = json['profile']['identifier']
    email = json['profile']['email']
    {:identifier => identifier, :email => email}
  else
    return nil
  end
end
