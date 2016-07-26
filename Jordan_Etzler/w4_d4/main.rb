require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
  erb :index
end

get '/about' do

  title = params['title'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ title }")

  @movie_title = database_return['Title']
  @movie_year = database_return['Year']
  @movie_runtime = database_return['Runtime']
  @movie_rating = database_return['imdbRating']
  @movie_plot = database_return['Plot']
  @movie_poster = database_return['Poster']

  erb :about
end
