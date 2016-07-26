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

get '/multiple_results' do
  multiple_results = params['multiple_results']
  @results = HTTParty.get("http://www.omdbapi.com/?s=#{ multiple_results }")
  @result_list = @results['Search']
  erb :multiple_results
end