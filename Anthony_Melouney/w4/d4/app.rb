# how to start the virtual server in terminal
# ruby main.rb

# how this works in terminal...type in terminal
# pry
# require 'httparty'
# HTTParty.get('http..')
# result = copyaboveline
# result["Title"]

require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do     # / is the location of the root aka home page
  erb :index
end

get '/about' do
  erb :about
end

# route
get '/result' do
  # binding.pry
  "thanks alot #{ params[:email] } for donating #{ params[:amount] }"
end
