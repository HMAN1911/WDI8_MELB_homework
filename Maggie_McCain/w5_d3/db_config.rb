require 'active_record'

options = {
  adapter: 'postgresql',
  database: 'imdb',
}

ActiveRecord::Base.establish_connection(options)
