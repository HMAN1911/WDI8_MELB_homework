require 'sinatra'
require 'sinatra/reloader'
require 'pry'


get '/' do
	erb :index
	
end

get '/contact' do


	 erb :contact
end

get '/thanks' do
		
		@donate = params["donate"]
		@name = params["name"]

	 erb :thanks
end

get '/blog' do
	
	 erb :blog
end
