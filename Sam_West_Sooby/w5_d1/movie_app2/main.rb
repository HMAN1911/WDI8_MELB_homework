require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  erb :index
end


get '/multiple_results' do
  multiple_results = params['multiple_results']
  @results = HTTParty.get("http://www.omdbapi.com/?s=#{ multiple_results }")
  @result_list = @results['Search']
  if @results["Search"].length == 1
    @result = HTTParty.get("http://www.omdbapi.com/?t=#{ multiple_results }")
    @title = @result['Title']
    return erb :movies
  end
  erb :multiple_results
end



get '/movies' do
  multiple_results = params["multiple_results"]
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{ multiple_results }")
  @title = @result['Title']
  erb :movies
end
