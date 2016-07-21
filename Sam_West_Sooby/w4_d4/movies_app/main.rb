require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb :index
end

get '/movie' do
  movie = params['movie'].downcase
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{ movie }")
  @title = @result['Title']
  erb :movies
end