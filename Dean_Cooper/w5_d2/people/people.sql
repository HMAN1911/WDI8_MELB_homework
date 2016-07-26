CREATE DATABASE peopledatabase;

CREATE TABLE people(
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(100),
  career VARCHAR(100),
  image_url VARCHAR(300),
  partnerName VARCHAR(100),
  partner_url VARCHAR(300)
);


INSERT INTO people (name, career, image_url, partnerName, partner_url)
VALUES ('Bruce Willis', 'Actor'
  ,'http://media4.popsugar-assets.com/files/2013/07/17/950/n/1922283/9066b50a86800c1e_thumb_temp251687061348749000.xxxlarge/i/Bruce-Willis-Movie-Trivia.jpg'
  ,'some young chick'
  ,'http://cdn23.us1.fansshare.com/photos/emmaheming/full-emma-heming-body-1212426155.jpg');


  INSERT INTO people (name, career, image_url, partnerName, partner_url)
  VALUES ('Anthony', 'Actor'
    ,'anth.jpg'
    ,'*'
    ,'http://www.vogue.com/wp-content/uploads/2016/01/29/00-french-girl-beauty.jpg');


# \c goodfoodhunting
