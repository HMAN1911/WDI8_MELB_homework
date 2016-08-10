#active record is a way to use 

class Movie < ActiveRecord::Base
validates :name, presence: true
end
