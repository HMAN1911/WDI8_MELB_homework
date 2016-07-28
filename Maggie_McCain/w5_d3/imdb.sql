CREATE DATABASE imdb;

/c movies

CREATE TABLE movies(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR (100),
  length VARCHAR (20),
  genre VARCHAR(50),
  poster VARCHAR(300),
  stars VARCHAR(300),
  plot VARCHAR(1000),
  imdbID VARCHAR(50)
);
