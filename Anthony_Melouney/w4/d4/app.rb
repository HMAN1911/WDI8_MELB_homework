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

get '/result' do
  title = params['title'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ title }")
  year = params['year'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ year }")
  runtime = params['runtime'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ runtime }")
  rating = params['rating'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ rating }")
  plot = params['plot'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ plot }")
  poster = params['poster'].gsub(/\s+/, "+").strip.downcase
  database_return = HTTParty.get("http://www.omdbapi.com/?t=#{ poster }")

  @result = HTTParty.get('http://omdbapi.com/?t=sharknado')
  @title = database_return['Title']
  @year = database_return['Year']
  @runtime = database_return['Runtime']
  @rating = database_return['imdbRating']
  @plot =  database_return['Plot']
  @poster = database_return['Poster']
  erb :result
end

# binding.pry
