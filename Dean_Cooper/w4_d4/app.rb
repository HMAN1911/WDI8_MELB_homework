require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'httparty'

get '/' do
  erb :index
end


get '/index' do
  erb :index #matches the file name
end


get '/results' do

  #searchResult = HTTParty.get('http://omdbapi.com/?t=' + params['movieName'])
  @searchResult = HTTParty.get("http://omdbapi.com/?t= #{params["movieName"]}" )
  @title = @searchResult['Title']
  @plot = @searchResult['Plot']
  @actors = @searchResult['Actors']
  @director = @searchResult['Director']
  @awards = @searchResult['Awards']
  @imageUrl = @searchResult['Poster']

  erb :results #matches the file name
end

#4444

get '/about' do

#   @donationAmount = '50'
#   erb(:donate)
# <p> <%= @donationAmount %></p>


  # do a search
  # params['movieName']

  erb :about

  #binding.pry
  #params
  #binding.pry
#  "thank you so much #{params[:email]} for donating #{params[:amount]}"

end
