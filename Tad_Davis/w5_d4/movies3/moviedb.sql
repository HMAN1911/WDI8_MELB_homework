CREATE DATABASE moviedb;

\c moviedb

CREATE TABLE movies(
id SERIAL4 PRIMARY KEY,
title VARCHAR(100),
poster VARCHAR(400),
year INTEGER,
imdbID VARCHAR(100)
);


INSERT INTO movies (title, poster, year,imdbID) VALUES ('Troll', 'http://ia.media-imdb.com/images/M/MV5BNjA4MjZkZTEtOTIwNS00ZmNkLWEwODYtYTY2YjMxZWU2ZGY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg','1986','tt0092115');
INSERT INTO movies (title, poster, year,imdbID) VALUES ('Gerry', 'http://ia.media-imdb.com/images/M/MV5BMjA4MzM4MzE0MV5BMl5BanBnXkFtZTYwNTMzNDY3._V1_SX300.jpg','2002','tt0302674');

