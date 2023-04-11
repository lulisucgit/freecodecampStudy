
create table universe(
universe_id int NOT NULL PRIMARY KEY,
name varchar(255) NOT NULL UNIQUE,
description TEXT,
has_life BOOLEAN NOT NULL ,
is_spherical BOOLEAN,
age_in_millions_of_years NUMERIC(18,2),
planet_types INT,
galaxy_types BOOLEAN,
distance_from_earth INT
);
insert into universe values(1,'Space','Space',1,true,true,20,1,true,9000),(1,'known universe','known universe',1,true,true,20,1,true,19000)(1,'observable universe','observable universe',1,true,true,20,1,true,29000);

create table galaxy(
galaxy_id int NOT NULL PRIMARY KEY,
name varchar(255) UNIQUE,
description TEXT,
has_life BOOLEAN NOT NULL ,
is_spherical BOOLEAN,
age_in_millions_of_years NUMERIC(18,2),
planet_types INT,
galaxy_types BOOLEAN,
distance_from_earth INT
);

insert into galaxy values(1,'the Bull','the Bull',1,true,true,20,1,true,2356),(2,'the Ram','the Ram',1,true,true,20,1,true,3358),(3,'the Crab','the Crab',1,true,true,20,1,true,2375),(4,'the Twins','the Twins',1,true,true,20,1,true,5478),(5,'the Scorpion','the Scorpion',1,true,true,20,1,true,6235),(6,'the Lion','the Lion',1,true,true,20,1,true,9578);

create table star(
star_id int NOT NULL PRIMARY KEY,
name varchar(255) UNIQUE,
description TEXT,
has_life BOOLEAN NOT NULL ,
is_spherical BOOLEAN,
age_in_millions_of_years NUMERIC(18,2),
planet_types INT,
galaxy_types BOOLEAN,
distance_from_earth INT,
galaxy_id int,
FOREIGN KEY(galaxy_id) REFERENCES galaxy(galaxy_id)
);

insert into star values(1,'Earth','Earth',1,true,true,20,1,true,2356,1),(2,'sun','sun',1,true,true,20,1,true,3358,2),(3,'Venus','Venus',1,true,true,20,1,true,2375,3),(4,'Jupiter','Jupiter',1,true,true,20,1,true,5478,4),(5,'Mars','Mars',1,true,true,20,1,true,6235,5),(6,'Uranus','Uranus',1,true,true,20,1,true,9578,6);

create table planet(
planet_id int NOT NULL PRIMARY KEY,
name varchar(255) UNIQUE,
description TEXT,
has_life BOOLEAN NOT NULL ,
is_spherical BOOLEAN,
age_in_millions_of_years NUMERIC(18,2),
planet_types INT,
galaxy_types BOOLEAN,
distance_from_earth INT,
FOREIGN KEY(planet_id) REFERENCES star(star_id)
);

insert into planet values(1,'gravity','gravity',1,true,true,20,1,true,2356,1),(2,'latitude','latitude',1,true,true,20,1,true,3358,2),(3,'longitude','longitude',1,true,true,20,1,true,2375,3),(4,'meteor','meteor',1,true,true,20,1,true,5478,4),(5,'meteorite','meteorite',1,true,true,20,1,true,6235,5),(6,'nebula','nebula',1,true,true,20,1,true,9578,6),(7,'orbit','orbit',1,true,true,20,1,true,2356,1),(8,'revolution','revolution',1,true,true,20,1,true,3358,2),(9,'satellite','satellite',1,true,true,20,1,true,2375,3),(10,'solar system','solar system',1,true,true,20,1,true,5478,4),(11,'shooting star','shooting star',1,true,true,20,1,true,6235,5),(12,'sphere','sphere',1,true,true,20,1,true,9578,6);

create table moon(
moon_id int NOT NULL PRIMARY KEY,
name varchar(255) UNIQUE,
description TEXT,
has_life BOOLEAN NOT NULL ,
is_spherical BOOLEAN,
age_in_millions_of_years NUMERIC(18,2),
planet_types INT,
galaxy_types BOOLEAN,
distance_from_earth INT,
FOREIGN KEY(moon_id) REFERENCES planet(planet_id)
);

insert into moon values(1,'gravity','gravity',1,true,true,20,1,true,2356,1),(2,'latitude','latitude',1,true,true,20,1,true,3358,2),(3,'longitude','longitude',1,true,true,20,1,true,2375,3),(4,'meteor','meteor',1,true,true,20,1,true,5478,4),(5,'meteorite','meteorite',1,true,true,20,1,true,6235,5),(6,'nebula','nebula',1,true,true,20,1,true,9578,6),(7,'orbit','orbit',1,true,true,20,1,true,2356,7),(8,'revolution','revolution',1,true,true,20,1,true,3358,8),(9,'satellite','satellite',1,true,true,20,1,true,2375,9),(10,'solar system','solar system',1,true,true,20,1,true,5478,10),(11,'shooting star','shooting star',1,true,true,20,1,true,6235,11),(12,'sphere','sphere',1,true,true,20,1,true,9578,12),(13,'gravity','gravity',1,true,true,20,1,true,2356,1),(14,'latitude','latitude',1,true,true,20,1,true,3358,2),(15,'longitude','longitude',1,true,true,20,1,true,2375,3),(16,'meteor','meteor',1,true,true,20,1,true,5478,4),(17,'meteorite','meteorite',1,true,true,20,1,true,6235,5),(18,'nebula','nebula',1,true,true,20,1,true,9578,6),(19,'orbit','orbit',1,true,true,20,1,true,2356,7),(20,'revolution','revolution',1,true,true,20,1,true,3358,8);
