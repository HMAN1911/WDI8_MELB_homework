require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
  erb :index
end

get '/search' do

  params[:title]
  result = HTTParty.get("http://omdbapi.com/?s=#{params[:title]}")

  if result["Response"] == "False"
    return 'Sorry, we didn\'t find any movies with that title.'
    # erb :error
  end

  if result["Search"].length > 1
    @search_returns = result["Search"] 
  else
    redirect "/about?title=#{params[:title]}"
  end
  erb :search
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
