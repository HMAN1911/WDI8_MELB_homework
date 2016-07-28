require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'httparty'

require_relative 'db_config'
require_relative 'models/movie'


def save_mv_db(path)
  @res_db = Movie.new
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
  # @res_db.save
end




get '/' do
  # 'hi there'
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


    elsif Movie.find_by(imdbid: results["Search"][0]["imdbID"]) != nil
      @result = Movie.find_by(imdbid: results["Search"][0]["imdbID"])
      erb :movies_search


    elsif Movie.find_by(imdbid: results["Search"][0]["imdbID"]) == nil
      result_omdb = HTTParty.get("http://omdbapi.com/?i=#{results["Search"][0]["imdbID"]}")

      save_mv_db(result_omdb)
      # @res_db.save

       erb :movies_search

    end
end



get '/movies_search' do

  imdbid_db = params["imdbid"]
  result_omdb = HTTParty.get("http://www.omdbapi.com/?i=#{imdbid_db}")

  if Movie.find_by(imdbid: imdbid_db) != nil
    @res_db = Movie.find_by(imdbid: imdbid_db)
    # binding.pry
    # puts 'sthwrg'

  else
    save_mv_db(result_omdb)
    # binding.pry
    # puts 'sth wrong'
    # @res_db.save

  end
  erb :movies_search
end
