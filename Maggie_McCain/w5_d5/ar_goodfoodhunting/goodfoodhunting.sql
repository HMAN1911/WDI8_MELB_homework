CREATE DATABASE goodfoodhunting;

\c goodfoodhunting

CREATE TABLE dishes(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  image_url VARCHAR(300)
);

INSERT INTO dishes (name, image_url) VALUES ('dumpling', 'http://ot-foodspotting-production.s3.amazonaws.com/reviews/1270161/thumb_275.jpg?1327975061');


CREATE TABLE users(
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(100) NOT NULL, #require validation
  password_digest VARCHAR(400) NOT NULL, #saying its been digested from black box function
);

ALTER TABLE dishes ADD user_id INTEGER;

#you can use User.find() and insert teh Dish.last.user_id becasue this equals the user's id

CREATE TABLE comments(
  id  SERIAL4 PRIMARY KEY,
  content VARCHAR(1000),
  dish_id INTEGER
);
