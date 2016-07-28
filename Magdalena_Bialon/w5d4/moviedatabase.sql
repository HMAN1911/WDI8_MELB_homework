create database moviedatabase;

\c moviedatabase


CREATE TABLE movies (
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(100),
  year INTEGER,
  released VARCHAR(50),
  runtime VARCHAR(50),
  genre VARCHAR(100),
  director VARCHAR(100),
  plot VARCHAR(500),
  country VARCHAR(100),
  poster VARCHAR(300),
  imdbRating VARCHAR(100),
  imdbID VARCHAR(100)
);


INSERT INTO movies (title, year, released, runtime, genre, director, plot, country, poster, imdbRating, imdbID) VALUES ('Jaws', 1975, '20 Jun 1975', '124 min', 'Adventure, Drama, Horror', 'Steven Spielberg', 'When a gigantic great white shark begins to menace the small island community of Amity, a police chief, a marine scientist and a grizzled fisherman set out to stop it.', 'USA', 'http://ia.media-imdb.com/images/M/MV5BNDcxODkyMjY4MF5BMl5BanBnXkFtZTgwOTk5NTc5MDE@._V1_SX300.jpg', '8.0', 'tt0073195' );
