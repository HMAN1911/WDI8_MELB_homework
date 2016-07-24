require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
	erb :index
	
end

get '/display' do
	
	search_string = params["movie_search"]

	@searchResult = HTTParty.get("http://omdbapi.com/?t=#{search_string}") 
	
	


	 erb :display
end


get '/about' do
	erb :about
	
end
