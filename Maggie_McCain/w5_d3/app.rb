require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'

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

    if Movie.find_by(imdbid: result["Search"][0]["imdbID"]) != nil
      @movie = Movie.find_by(imdbid: result["Search"][0]["imdbID"])
    else
      final = HTTParty.get("http://omdbapi.com/?i=#{result["Search"][0]["imdbID"]}")
      @movie = Movie.new
      @movie.title = final["Title"]
      @movie.length = final["Runtime"]
      @movie.genre = final["Genre"]
      @movie.stars = final["Actors"]
      @movie.plot = final["Plot"]
      @movie.poster = final["Poster"]
      @movie.imdbid = final["imdbID"]
      @movie.save
    end
    erb :about
  end
end

get '/about' do
  params[:imdbid]
  # if in database, show that, otherwise show from api and save movie
  if Movie.find_by(imdbid: params[:imdbid]) != nil
    @movie = Movie.find_by(imdbid: params[:imdbid])

  else
    result = HTTParty.get("http://omdbapi.com/?i=#{params[:imdbid]}")
    @movie = Movie.new
    @movie.title = result["Title"]
    @movie.length = result["Runtime"]
    @movie.genre = result["Genre"]
    @movie.stars = result["Actors"]
    @movie.plot = result["Plot"]
    @movie.poster = result["Poster"]
    @movie.imdbid = result["imdbID"]
    @movie.save
  end
  erb :about
end
