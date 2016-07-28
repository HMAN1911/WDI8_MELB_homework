CREATE DATABASE omdb;


CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(100),
  year VARCHAR(10),
  rated VARCHAR(10),
  released VARCHAR(100),
  runtime VARCHAR(100),
  director VARCHAR(100),
  writer VARCHAR(300),
  actors VARCHAR(100),
  plot VARCHAR(500),
  language VARCHAR(100),
  country VARCHAR(100),
  awards VARCHAR(200),
  poster VARCHAR(500),
  metascore VARCHAR(10),
  imdbRating VARCHAR(10),
  imdbVotes VARCHAR(20),
  imdbid VARCHAR(100),
  type VARCHAR(10),
  response VARCHAR(10),
  genre VARCHAR(10)
);




-- Title: "Terminator 2: Judgment Day",
-- Year: "1991",
-- Rated: "R",
-- Released: "03 Jul 1991",
-- Runtime: "137 min",
-- Genre: "Action, Sci-Fi",
-- Director: "James Cameron",
-- Writer: "James Cameron, William Wisher Jr.",
-- Actors: "Arnold Schwarzenegger, Linda Hamilton, Edward Furlong, Robert Patrick",
-- Plot: "A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her young son, John Connor, from a more advanced cyborg, made out of liquid metal.",
-- Language: "English, Spanish",
-- Country: "USA, France",
-- Awards: "Won 4 Oscars. Another 20 wins & 22 nominations.",
-- Poster: "http://ia.media-imdb.com/images/M/MV5BMTI4MDAwMDY3N15BMl5BanBnXkFtZTcwODIwMzMzMQ@@._V1._CR46,1,342,473_SY132_CR3,0,89,132_AL_.jpg_V1_SX300.jpg",
-- Metascore: "75",
-- imdbRating: "8.5",
-- imdbVotes: "734,005",
-- imdbID: "tt0103064",
-- Type: "movie",
-- Response: "True"
