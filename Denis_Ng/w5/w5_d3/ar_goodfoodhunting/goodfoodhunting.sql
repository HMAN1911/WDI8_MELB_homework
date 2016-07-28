-- this is a log of all the inputs we will use to create the table
CREATE DATABASE goodfoodhunting;

CREATE TABLE dishes(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  image_url VARCHAR(300)
);

INSERT INTO dishes (name, image_url) VALUES ('burger', 'http://ot-foodspotting-production.s3.amazonaws.com/reviews/5890349/thumb_600.jpg?1469491638?1469495699');
