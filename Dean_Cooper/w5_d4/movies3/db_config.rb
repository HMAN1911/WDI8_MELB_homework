require 'active_record'

#connect to database
options = {
  adapter: 'postgresql',
  database: 'omdb',
}

ActiveRecord::Base.establish_connection(options)
