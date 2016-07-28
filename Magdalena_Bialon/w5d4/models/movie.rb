class Movie < ActiveRecord::Base
  validates :imdbid, presence: true, allow_blank: false
end
