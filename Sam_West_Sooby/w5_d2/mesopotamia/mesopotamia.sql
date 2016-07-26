CREATE DATABASE mesopotamia;

CREATE TABLE kings(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  reign INTEGER,
  image_url VARCHAR(300)
);