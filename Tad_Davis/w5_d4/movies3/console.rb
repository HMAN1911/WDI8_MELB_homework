=begin#good for learning about active record


require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

require_relative 'db_config'

binding.pry=end