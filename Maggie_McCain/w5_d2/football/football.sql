CREATE DATABASE football;

\c football

CREATE TABLE sec(
  id SERIAL4 PRIMARY KEY,
  school VARCHAR(100),
  location VARCHAR(20),
  mascot VARCHAR(50),
  image_url VARCHAR(300)
);

INSERT INTO sec (school, location, mascot, image_url) VALUES ('university of georgia', 'athens', 'bulldawg', 'http://mediad.publicbroadcasting.net/p/wabe/files/201409/ugaLogo_2014.jpg');
