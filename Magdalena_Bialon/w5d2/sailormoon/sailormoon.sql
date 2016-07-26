create database sailormoon;

\c sailormoon

CREATE TABLE characters (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(50),
  img_url VARCHAR(300),
  nickname VARCHAR(50),
  universe VARCHAR(50),
  soldier VARCHAR(50)
);

ALTER TABLE characters rename column planet to  universe;

INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Moon' , 'http://67.media.tumblr.com/d62f44977885c15871ca67ec00f5a006/tumblr_nssm1jmxaL1qjkedbo1_500.png', 'Usagi Tsukino' ,'Moon', 'Love and Justice');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Tuxedo Mask' , 'http://vignette3.wikia.nocookie.net/vsbattles/images/3/31/Tuxedo_mask_vector_by_isack503-d9h7uzf.png/revision/latest?cb=20160326020808', 'Mamoru Chiba' ,'Earth', 'Helper');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Mars' , 'http://vignette1.wikia.nocookie.net/universe-of-smash-bros-lawl/images/c/c8/Sailor_Mars.png/revision/latest?cb=20150607201649', 'Ami Mizuno' ,'Mars', 'Fire and Passion');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Neptune' , 'http://vignette2.wikia.nocookie.net/vsbattles/images/5/59/Sailor_neptune_by_dbzandsm-d56z79r.png/revision/latest?cb=20151126185501', 'Michiru Kaioh' ,'Neptune', 'Ocean and Embrace');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Pluto' , 'http://vignette2.wikia.nocookie.net/sailormoon/images/9/9f/Pluto_anime.png/revision/latest?cb=20130914070939', 'Setsuna Meioh' ,'Pluto', 'Spacetime and Change');


INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Mercury' , 'http://vignette2.wikia.nocookie.net/sailormoon/images/8/85/Sailor_Mercury_1.jpg/revision/latest?cb=20140530202822', 'Ami Mizuno' ,'Mercury', 'Water and Wisdom');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Mars' , 'http://vignette1.wikia.nocookie.net/universe-of-smash-bros-lawl/images/c/c8/Sailor_Mars.png/revision/latest?cb=20150607201649', 'Rei Hino' ,'Mars', 'Fire and Passion');
INSERT INTO characters (name, img_url, nickname, universe, soldier) VALUES ('Sailor Jupiter' , 'http://vignette2.wikia.nocookie.net/vsbattles/images/1/11/Sailor-jupiter.gif/revision/latest?cb=20151122214929', 'Makoto Kino' ,'Jupiter', 'Thunder and Courage');
