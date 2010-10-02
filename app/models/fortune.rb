class Fortune < ActiveRecord::Base
  
  def self.random
    number = rand(Fortune.count)
    Fortune.limit(1).offset(number).first
  end
  
end
