require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do

  erb :index
end

get '/about' do
  params[:title]
  result = HTTParty.get("http://omdbapi.com/?t=#{params[:title]}")
  @movie_title = result["Title"]
  @movie_year = result["Year"]
  @movie_length = result["Runtime"]
  @movie_genre = result["Genre"]
  @movie_actor = result["Actors"]
  @movie_plot = result["Plot"]
  @movie_poster = result["Poster"]
  erb :about
end
