require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

get '/' do
  erb :index
end

get '/about' do
  erb :about
end

get '/display' do
  title = params['title'].gsub(/\s+/, "+").strip.downcase
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{ title }")
  erb :display
end

get '/display2' do
  movies = params['movie_search'].gsub(/\s+/, "+").strip.downcase
  @display2 = HTTParty.get("http://www.omdbapi.com/?s=#{ movies }")
  @search = @display2["Search"]
  erb :display2
end

# binding.pry
