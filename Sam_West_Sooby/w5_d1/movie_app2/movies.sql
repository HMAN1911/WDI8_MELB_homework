CREATE DATABASE movies;

CREATE TABLE films{
  id SERIAL4 PRIMARY KEY,
  title VARCHAR(100),
  year INTEGER,
  rating INTEGER,
  runtime VARCHAR(20),
  genre VARCHAR(100),
  writers VARCHAR(300),
  plot VARCHAR(1000),
  language VARCHAR(100),
  country VARCHAR(100),
  awards VARCHAR(400),
  metascore INTEGER,
  imdbrating FLOAT,
  imdbID VARCHAR(100),
};

##### GET THE INFORMATION FROM THE OMDBI DATABASE
##### INSERT INTO movies
##### RETRIEVE FROM movies, IF movies == nil, RETRIEVE FROM OMDBI