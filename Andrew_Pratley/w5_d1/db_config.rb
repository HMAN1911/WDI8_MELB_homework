require 'active_record'

#connect to db
options = {
  adapter: 'postgresql',
  database: 'omdb_db'
}

ActiveRecord::Base.establish_connection(options) # similar to PG.connect() when requiring 'pg'
