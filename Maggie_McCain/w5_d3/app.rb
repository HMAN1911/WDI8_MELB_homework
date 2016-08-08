require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'

def cache_movie(response)
  movie = Movie.new
  movie.title = response["Title"]
  movie.length = response["Runtime"]
  movie.genre = response["Genre"]
  movie.stars = response["Actors"]
  movie.plot = response["Plot"]
  movie.poster = response["Poster"]
  movie.imdbid = response["imdbID"]
  movie.save
  return movie
end

get '/' do
  erb :index
end

get '/search' do

  params[:title]
  result = HTTParty.get("http://omdbapi.com/?s=#{params[:title]}")

  if result["Response"] == "False"
    return erb :error
  end

  if result["Search"].length > 1
    @search_returns = result["Search"]
    erb :search
  else

    # if Movie.find_by(imdbid: result["Search"][0]["imdbID"]) != nil
      # @movie = Movie.find_by(imdbid: result["Search"][0]["imdbID"])
    @movie = Movie.find_by(imdbid: result["Search"][0]["imdbID"])
    if @movie
    else
      final = HTTParty.get("http://omdbapi.com/?i=#{result["Search"][0]["imdbID"]}")
      @movie = cache_movie(final)
    end
    erb :about
  end
end

get '/about' do
  params[:imdbid]
  # if Movie.find_by(imdbid: params[:imdbid]) != nil
    # @movie = Movie.find_by(imdbid: params[:imdbid])
  @movie = Movie.find_by(imdbid: params[:imdbid])
  if @movie
  else
    result = HTTParty.get("http://omdbapi.com/?i=#{params[:imdbid]}")
    @movie = cache_movie(result)

  end
  erb :about
end
