require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

get '/' do
  # 'hi there'
  erb :index
end


get '/about' do
   erb :about
end


get '/multiple_result' do                                                   # index.erb >> method get >> form action = "/multiple_result"

    multiple_result = params["multiple_result"]                             # params >> index.erb >> input type >> name = "multiple_result"
    @results = HTTParty.get("http://www.omdbapi.com/?s=#{multiple_result}")  # /?s >> we are checking here * s * - if = input type  = "multiple_result"  - provided by user

    if @results["Response"] == "False" || @results["Response"] == nil       # if #$%%^ or no title provided  >> @results (link from website db)  KEY Response: "False"
      erb :not_found

    elsif @results["Search"].length > 1                                     #that's what I am gettong from db: eg http://www.omdbapi.com/?s=bond
      @list_movies = @results["Search"]                                      #hash{Search : [] first key: Search  - array has many movies
      erb :multiple_result

    elsif @results["Search"].length == 1                                    #hash{Search : [] first key: Search  - if array has only one movie
     redirect "/movies_search?multiple_result=#{multiple_result}"           #go to /movies_search and check (/movies_search?) if actually multiple_result=#{multiple_result}"
    #   binding.pry
    end

    # multiple_result = params["multiple_result"]                              #BASIC VERSION - EASY LOOKUP MULTIPLE MOVIES LIST:)
    # @results = HTTParty.get("http://www.omdbapi.com/?s=#{multiple_result}")
    # @list_movies = @results["Search"]
    # erb :multiple_result

end



get '/movies_search' do
  multiple_result = params["multiple_result"]                              # params >> index.erb >> name = "multiple_result"
  @result = HTTParty.get("http://www.omdbapi.com/?t=#{multiple_result}")
  erb :movies_search
end


#multiple_result.erb >> loop through array which is  Search:[array],
#list_movies.each do |list|
#   <%= list['Title'] %>
#   <%= list['Year'] %>
#   <img src="<%= list['Poster'] %>" alt="">

# as link/path "/movies_search?multiple_result=<%= list["Title"] %>" etc
