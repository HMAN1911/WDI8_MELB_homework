create database automobiles;

/c automobiles

create table cars(
  id serial4 primary key,
  brand varchar(70),
  model varchar(150),
  engine_power varchar(20),
  image varchar(300)
);

insert into cars(brand, model, engine_power, image) values ('Lamborghini', 'Aventador', '691hp', 'http://blog.caranddriver.com/wp-content/uploads/2012/10/Lamborghini-Aventador-626x382.jpg');
insert into cars(brand, model, engine_power, image) values ('Audi', 'R8', '610hp', 'http://www.autoviva.com/img/photos/272/audi_r8_coupe_4_2_fsi_quattro_large_76272.jpg');
insert into cars(brand, model, engine_power, image) values ('Nissan', '370z', '350hp', 'http://nissanraceshop.com/wp-content/uploads/2015/01/2015-nissan-370z-sport-sedan-coupe.jpg');
insert into cars(brand, model, engine_power, image) values ('Hyundai', 'Getz', '97hp', 'http://www.roadsmile.com/images/hyundai-getz_key_9.jpg');
