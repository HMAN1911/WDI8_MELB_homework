CREATE DATABASE dinosaurs;

CREATE TABLE dinosaurs(
  id SERIAL4 PRIMARY KEY,
  genera VARCHAR (100),
  image_url VARCHAR (300)
);

INSERT INTO dinosaurs (genera, image_url) VALUES ('Tyrannosaurus-Rex', 'http://dinosaurs.ff0000.com/uploads/dinosaur-details/dinosaur-tyrannosaurus/tyrannosaur-dino-large.png');

INSERT INTO dinosaurs (genera, image_url) VALUES ('Stegosaurus', 'http://vignette3.wikia.nocookie.net/orion-dino-horde/images/e/e9/Steggo.png/revision/latest?cb=20131010125405');
