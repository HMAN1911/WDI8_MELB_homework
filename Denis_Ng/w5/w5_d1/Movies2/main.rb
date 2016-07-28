require 'httparty'
require 'sinatra'
require 'sinatra/reloader'
require 'pry'

# within the url, / is the 'homepage' and is linked to erb:index, displays what i've coded in index.erb
get '/' do
  erb :index
end

# same here
get '/about' do
  erb :about
end

# params["movie_search"] is linked to my index.erb and the input where users will key in the name of the movie and converts input the lowercase letters. the name was set as "movie_search"
get '/display_list' do

  movies = params["movie_search"].gsub(/\s+/, "+").strip.downcase
  # the movie name will then be looked up on on the OMDB api using HTTParty.get. This is saved as a variable @display_list and pushed to display in the erb:display which has <%= @result %>
  @display_list = HTTParty.get("http://www.omdbapi.com/?s=#{movies}")

  @search = @display_list["Search"]

  erb :display_list
end

get '/display' do

  title = params['title'].gsub(/\s+/, "+").strip.downcase
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{ title }")

  erb :display
end
