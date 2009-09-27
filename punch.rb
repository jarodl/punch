require 'sinatra'
require 'datamapper'
require 'json'
require 'net/http'
require 'net/https'

DataMapper::setup(:default, ENV['DATABASE_URL'] || 'sqlite3://punch.db')

enable :sessions

class Task
  include DataMapper::Resource
  property :id, Serial
  property :desc, String
  property :created_at, DateTime
  property :ended_at, DateTime

  belongs_to :user

  def is_completed?
    !ended_at.nil?
  end

  def time_worked
    worked = self.ended_at - self.created_at
    hours, minutes = DateTime.day_fraction_to_time(worked)
    worked = hours + (minutes/60.0)
  end

end

class User
  include DataMapper::Resource
  property :id, Serial
  property :email, String, :length => 255
  property :identifier, String, :length => 255

  has n, :tasks

  def self.find(identifier)
    user = first(:identifier => identifier)
    user = new(:identifier => identifier) if user.nil?
    user.save
    return user
  end

end

DataMapper.auto_upgrade!

helpers do

  def end_task(id)
    @last_task = Task.get(id)

    unless @last_task.nil?
      @last_task.ended_at = DateTime.now
      @last_task.save
    end
  end

  def total_time(tasks)
    total = 0.0
    @tasks.each do |t|
      if t.is_completed?
        total += t.time_worked
      end
    end
    total
  end

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

# index
get '/' do
  if session[:userid].nil?
    haml :login
  else
    user = User.get(session[:userid])
    @tasks = user.tasks.sort { |a, b| a.created_at <=> b.created_at }
    @total = total_time(@tasks)
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
  redirect '/'
end

get '/logout' do
  session[:userid] = nil
  redirect '/'
end

get '/list' do
  user = User.get(session[:userid])
  @tasks = user.tasks
  @tasks.inspect
end

# create
post '/s' do
  unless Task.last.nil? or Task.last.is_completed?
    end_task(Task.last.id)
  end
  
  user = User.get(session[:userid])
  @task = Task.create(:desc => params['desc'], :user => user)
  if @task.save
    redirect '/'
  else
    'error'
  end
end

# stop 
get '/e/:id' do
  if end_task(params[:id])
    redirect '/'
  else
     'error'
  end
end

# clear
get '/clear' do
  @tasks = Task.all
  @tasks.each do |t|
    if !t.destroy
      'error'
    end
  end
  redirect '/'
end

# style
get '/stylesheets/style.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :styles
end
