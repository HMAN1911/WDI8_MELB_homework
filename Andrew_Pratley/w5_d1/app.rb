require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'

# the root - home page
get '/' do
  erb :index
end

get '/list' do
  movie_name = params['movie_name']
  result = HTTParty.get("http://omdbapi.com/?s=#{movie_name}")
  if result["Search"].length == 1
    redirect "/movie?imdb_id=#{result['Search'][0]['imdbID']}"
  else
    @titles = result["Search"]
    erb :list
  end

end

get '/movie' do
  imdb_id = params['imdb_id']
  localMovie = Movie.find_by(imdb_id: imdb_id)
  if !localMovie
    result = HTTParty.get("http://omdbapi.com/?i=#{imdb_id}")
    localMovie = Movie.new
    localMovie.title = result['Title']
    localMovie.year = result['Year']
    localMovie.rated = result['Rated']
    localMovie.released = result['Released']
    localMovie.run_time = result['Runtime']
    localMovie.genre = result['Genre']
    localMovie.director = result['Director']
    localMovie.writer = result['Writer']
    localMovie.actors = result['Actors']
    localMovie.plot = result['Plot']
    localMovie.language = result['Language']
    localMovie.country = result['Country']
    localMovie.awards = result['Awards']
    localMovie.image_url = result['Poster']
    localMovie.imdb_id = result['imdbID']
    localMovie.imdb_rating = result['imdbRating']
    localMovie.save
  end

   @title = localMovie.title
   @year = localMovie.year
   @rated = localMovie.rated
   @released = localMovie.released
   @run_time = localMovie.run_time
   @genre = localMovie.genre
   @director = localMovie.director
   @writer = localMovie.writer
   @actors = localMovie.actors
   @plot = localMovie.plot
   @language = localMovie.language
   @country = localMovie.country
   @awards = localMovie.awards
   @poster = localMovie.image_url
   @imdb_rating = localMovie.imdb_rating
   erb :movie
end

get '/about' do
  erb :about
end
