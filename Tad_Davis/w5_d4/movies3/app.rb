require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

#connect to db
require_relative 'db_config'
require_relative 'models/movie'


get '/' do
	erb :index
	
end

# get '/display' do
# 	 erb :display

# end


get '/about' do
	erb :about
	
end

get '/listpage' do
		
	search_string = params["movie_search"]
	@searchResult = HTTParty.get("http://omdbapi.com/?s=#{search_string}") 
	@search = @searchResult["Search"]
	
	erb :listpage
	
end

## get the search of one string 

## then display it 

get '/display' do 
	search_string = params["title"]
	@searchResult = HTTParty.get("http://omdbapi.com/?t=#{search_string}")
	#@search = @searchResult["Search"]

	# i want to save the movie searched
	# create a new thing to add to database



	erb :display
end 	


post '/display/:id' do 

@searchResult = HTTParty.get("http://omdbapi.com/?i=#{search_string}")

@searchResult['Title']
@searchResult['Poster']
@searchResult['imdbID']
@searchResult['Year']

movie = Movie.new 
movie.title = params['Title']
movie.poster = params['Poster']
movie.title = params['imdbID']
movie.title = params['Year']
movie.save
redirect to '/'

end
