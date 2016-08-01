CREATE DATABASE omdb_db;

CREATE TABLE movies(
  id SERIAL4 PRIMARY KEY,
  title VARCHAR (1000),
  year VARCHAR (1000),
  rated VARCHAR (100),
  released VARCHAR (500),
  run_time VARCHAR (500),
  genre VARCHAR (5000),
  director VARCHAR (1000),
  writer VARCHAR (1000),
  language VARCHAR (1000),
  country VARCHAR (1000),
  actors VARCHAR (5000),
  plot VARCHAR (10000),
  awards VARCHAR (2000),
  imdb_rating VARCHAR (100),
  imdb_id VARCHAR (1000),
  image_url VARCHAR (3000)
);
