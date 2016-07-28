create database goodfoodhunting

\c goodfoodhunting

CREATE TABLE dishes (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  img_url VARCHAR(300)
);


INSERT INTO dishes (name, img_url) VALUES ('dumplings' , 'http://ot-foodspotting-production.s3.amazonaws.com/reviews/1270161/thumb_600.jpg?1327975061?1469495666');



CREATE TABLE users (
  id SERIAL4 PRIMARY KEY,
  email VARCHAR(100) NOT NULL,
  password_digest VARCHAR(400) NOT NULL
);
