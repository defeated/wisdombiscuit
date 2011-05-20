class Fortune < ActiveRecord::Base
  validates :text,
            :presence => true,
            :uniqueness => true
end
