require_relative '../db_config'

def mapAndSaveMovie(omdbMovieObject)

  arMovie = Movie.new

  arMovie.title =  omdbMovieObject['Title']
  arMovie.year = omdbMovieObject['Year']
  arMovie.rated = omdbMovieObject['Rated']
  arMovie.released =  omdbMovieObject['Released']
  arMovie.runtime = omdbMovieObject['Runtime']
  arMovie.genre = omdbMovieObject['Genre']
  arMovie.director =  omdbMovieObject['Director']
  arMovie.writer = omdbMovieObject['Writer']
  arMovie.actors = omdbMovieObject['Actors']
  arMovie.plot =  omdbMovieObject['Plot']
  arMovie.language = omdbMovieObject['Language']
  arMovie.country = omdbMovieObject['Country']
  arMovie.awards =  omdbMovieObject['Awards']
  arMovie.poster = omdbMovieObject['Poster']
  arMovie.metascore = omdbMovieObject['Metascore']
  arMovie.imdbrating =  omdbMovieObject['imdbRating']
  arMovie.imdbvotes = omdbMovieObject['imdbVotes']
  arMovie.imdbid = omdbMovieObject['imdbID']
  arMovie.save

end
