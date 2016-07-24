require 'httparty'
require 'sinatra'
require 'sinatra/reloader'

# within the url, / is the 'homepage' and is linked to erb:index, displays what i've coded in index.erb
get '/' do
  erb :index
end

# same here
get '/about' do
  erb :about
end

# and here
get '/display' do
  # params["movie_search"] is linked to my index.erb and the input where users will key in the name of the movie and converts input the lowercase letters. the name was set as "movie_search"
  movies = params["movie_search"].downcase

  # the movie name will then be looked up on on the OMDB api using HTTParty.get. This is saved as a variable @result and pushed to display in the erb:display which has <%= @result %>
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{movies}")
  erb :display
end
