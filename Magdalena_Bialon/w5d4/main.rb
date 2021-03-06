require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'


def save_mv_db(path)
  @res_db = Movie.new
  # binding.pry
  @res_db.title = path["Title"]
  @res_db.year = path["Year"]
  @res_db.released = path["Released"]
  @res_db.runtime = path["Runtime"]
  @res_db.genre = path["Genre"]
  @res_db.director = path["Director"]
  @res_db.plot = path["Plot"]
  @res_db.country = path["Country"]
  @res_db.poster = path['Poster']
  @res_db.imdbrating = path["imdbRating"]
  @res_db.imdbid = path["imdbID"]
  @res_db.save
end




get '/' do
  erb :index
end



get '/about' do
   erb :about
end





get '/multiple_result' do

    multiple_result = params["multiple_result"]
    results = HTTParty.get("http://www.omdbapi.com/?s=#{multiple_result}")
    # res_omdb = results["Search"][0]["imdbID"]


    if results["Response"] == "False" || results["Response"] == nil
      erb :not_found


    elsif results["Search"].length > 1
      @list_movies = results["Search"]
      erb :multiple_result

    elsif results["Search"].length == 1
    # THERE IS A BUG STILL HERE - SHOWING ONLY ONE TITLE  CHECK ?i=.. or ?t=
    #  result_omdb = HTTParty.get("http://www.omdbapi.com/?i=#{imdbid_db}")
    #  save_mv_db(result_omdb)
    redirect to "/movies_search?multiple_result=#{multiple_result}"


    elsif Movie.find_by(imdbid: results["Search"][0]["imdbID"]) == nil
       erb :movies_search

    end
end


get '/movies_search' do

  imdbid_db = params["imdbid"]
  result_omdb = HTTParty.get("http://www.omdbapi.com/?i=#{imdbid_db}")

  if Movie.find_by(imdbid: imdbid_db) != nil
    @res_db = Movie.find_by(imdbid: imdbid_db)

      if @res_db.poster == "N/A"        #path['Poster']
        @res_db.poster = "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ1F-vfVdphuJ7pT9VuWxbGNtBEUZ64bZiQrcDXY8vi8VBlx-rd"
      end

  else
    save_mv_db(result_omdb)

  end
  erb :movies_search
end
