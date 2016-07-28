require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'
require 'pg'

# connecting to database
require_relative 'db_config'

#mapping class to table
require_relative 'models/movie'

#data access
require_relative 'dataaccess/moviedataaccess'

get '/' do
  erb :index
end

get '/index' do
  erb :index #matches the file name
end

get '/results' do
  title = params["movieName"].strip.downcase
  result = HTTParty.get("http://omdbapi.com/?s=#{title}" )
  @movies = result["Search"]

  if (@movies.count == 1)
    redirect to "/detail/#{@movies[0]['imdbID']}"
  else
    erb :results #matches the file name
  end


end

get '/detail/:imdbID' do
  imdbID = params["imdbID"].strip.downcase
  # check local database

  @localMovie = Movie.find_by( {imdbid: imdbID} )
  if (@localMovie == nil)
    # get the singular result first
    puts 'LOCAL MOVIE IS NULL'
    @localMovie = HTTParty.get("http://omdbapi.com/?i=#{imdbID}")
    # but then save it by mapping it over.
    mapAndSaveMovie(@localMovie)

    # load the database version again as it is all in lowercase....
    @searchResult = Movie.find_by( {imdbid: imdbID} )
  else
    puts 'LOCAL MOVIE IS in the DB'
    @searchResult = @localMovie
  end
  erb :detail
end

# color-picker
# file-icons
# highlight-line
# highlight-selected

# possibly good ones

# open-in-browser
#pigments
