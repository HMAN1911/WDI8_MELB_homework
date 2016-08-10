require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'

get '/' do
  erb :index
end

get '/list' do

  # # Validation for single title
  # if database_return_list['Search'][1] == nil
  #   redirect "/about"
  # end

  title = params['title'].gsub(/\s+/, "+").strip.downcase
  database_return_list = HTTParty.get("http://www.omdbapi.com/?s=#{ title }")

  @list_movies = database_return_list['Search']

  erb :list
end

get '/about' do

  title = params['title'].gsub(/\s+/, "+").strip.downcase

  movie = Movie.new
  movie.name = params[:name]
  dish.image_url = params[:image_url]
  dish.save



  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ title }")

  @movie_title = database_return['Title']
  @movie_year = database_return['Year']
  @movie_runtime = database_return['Runtime']
  @movie_rating = database_return['imdbRating']
  @movie_plot = database_return['Plot']
  @movie_poster = database_return['Poster']

  erb :about
end
