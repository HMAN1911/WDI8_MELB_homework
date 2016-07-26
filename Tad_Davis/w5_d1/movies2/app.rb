require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
	erb :index
	
end

get '/display' do
	
		
	 erb :display
end


get '/about' do
	erb :about
	
end

get '/listpage' do
		
	search_string = params["movie_search"]
	@searchResult = HTTParty.get("http://omdbapi.com/?s=#{search_string}") 
	@search = @searchResult["Search"]
	
	
	erb :listpage
	
end
