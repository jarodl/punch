require 'sinatra'
require 'datamapper'
require 'json'

DataMapper::setup(:default, ENV['DATABASE_URL'] || 'sqlite3://punch.db')

class Task
  include DataMapper::Resource
  property :id, Serial
  property :desc, String
  property :created_at, DateTime
  property :ended_at, DateTime

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

end

error do
  @message = 'whoops! ' + "request.env['sinatra.error'].message"
  haml :fail
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

# index
get '/' do
  @tasks = Task.all(:order => [ :created_at.desc ])
  @total = total_time(@tasks)
  if @tasks.empty?
    haml :new
  else
    haml :index
  end
end

get '/list' do
  @tasks = Task.all(:order => [ :created_at.desc ])
  @tasks.inspect
end

# create
post '/s' do
  unless Task.last.nil? or Task.last.is_completed?
    end_task(Task.last.id)
  end

  @task = Task.new(:desc => params['desc'])
  if @task.save
    redirect '/'
  else
    raise CustomError, 'could not save to the database!'
  end
end

# stop 
get '/e/:id' do
  if end_task(params[:id])
    redirect '/'
  else
    raise CustomError, 'could not delete from the database!'
  end
end

# clear
get '/clear' do
  @tasks = Task.all
  @tasks.each do |t|
    if !t.destroy
      raise CustomError, 'could not delete from the database!'
    end
  end
  redirect '/'
end

# style
get '/stylesheets/style.css' do
  headers 'Content-Type' => 'text/css; charset=utf-8'
  sass :styles
end
