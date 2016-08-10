require 'active_record'
#connect to database
	options = {

		adapter: 'postgresql',
		database: 'moviedb',
		username: 'cybercindy'
	}

	ActiveRecord::Base.establish_connection(options)
  