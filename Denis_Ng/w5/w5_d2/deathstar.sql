CREATE DATABASE deathstar;

CREATE TABLE planets(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  image_url VARCHAR(300)
);

INSERT INTO planets (name, image_url) VALUES ('earth', 'https://nynjgoodwill.files.wordpress.com/2013/04/planet-earth.jpg');
