require 'datamapper'

DataMapper::setup(:default, ENV['DATABASE_URL'] || 'sqlite3://punch.db')

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

  default_scope(:default).update(:order => [:created_at])

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

  def done_working?
    if tasks.empty?
      return true
    end
    tasks.last.is_completed?
  end

  def last_task
    tasks.last.id
  end

  def total_time
    total = 0.0
    tasks.each do |t|
      if t.is_completed?
        total += t.time_worked
      end
    end
    total
  end

end
