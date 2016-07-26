CREATE DATABASE guitarcollection; 

\c guitarcollection

CREATE TABLE guitars(
id SERIAL4 PRIMARY KEY,
name VARCHAR(100),
img_url VARCHAR(300)
);

INSERT INTO guitars (name, img_url) VALUES ('jaguar', 'https://s-media-cache-ak0.pinimg.com/736x/77/06/63/770663d8aebff0d23f839604bb066c63.jpg');
INSERT INTO guitars(name, img_url) VALUES ('mustangRed', 'http://www.sonicyouth.com/mustang/eq/gtr32a.jpg');
INSERT INTO guitars(name, img_url) VALUES ('mustangBlue', 'http://www.sonicyouth.com/mustang/eq/gtr18a.jpg');
