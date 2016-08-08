create database movies;

\c movies

create table movie(
  id serial4 primary key,
  title varchar(100),
  year varchar(4),
  runtime varchar(9),
  imdbRating varchar(5),
  plot varchar(1000),
  poster varchar(200)
);
