class Fortune < ActiveRecord::Base
  
  validates :text, :presence => true, :uniqueness => true
  
  def self.random
    number = rand(Fortune.count)
    Fortune.limit(1).offset(number).first
  end
  
end
