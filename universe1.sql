--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

DROP DATABASE universe;

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\c universe
--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

drop table universe;
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

insert into universe values(1,'Space','Space',true,true,20,1,true,9000),(2,'known universe','known universe',true,true,20,1,true,19000),(3,'observable universe','observable universe',true,true,20,1,true,29000);

drop table galaxy;
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

insert into galaxy values(1,'the Bull','the Bull',true,true,20,1,true,2356),(2,'the Ram','the Ram',true,true,20,1,true,3358),(3,'the Crab','the Crab',true,true,20,1,true,2375),(4,'the Twins','the Twins',true,true,20,1,true,5478),(5,'the Scorpion','the Scorpion',true,true,20,1,true,6235),(6,'the Lion','the Lion',true,true,20,1,true,9578);

drop table star;
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

insert into star values(1,'Earth','Earth',true,true,20,1,true,1,1),(2,'sun','sun',true,true,20,1,true,2,2),(3,'Venus','Venus',true,true,20,1,true,3,3),(4,'Jupiter','Jupiter',true,true,20,1,true,4,4),(5,'Mars','Mars',true,true,20,1,true,5,5),(6,'Uranus','Uranus',true,true,20,1,true,6,6);

drop table planet;
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
star_id INT,
FOREIGN KEY(star_id) REFERENCES star(star_id)
);

insert into planet values(1,'gravity','gravity',true,true,20,1,true,1,1),(2,'latitude','latitude',true,true,20,1,true,2,2),(3,'longitude','longitude',true,true,20,1,true,3,3),(4,'meteor','meteor',true,true,20,1,true,4,4),(5,'meteorite','meteorite',true,true,20,1,true,5,5),(6,'nebula','nebula',true,true,20,1,true,6,6),(7,'orbit','orbit',true,true,20,1,true,1,1),(8,'revolution','revolution',true,true,20,1,true,2,2),(9,'satellite','satellite',true,true,20,1,true,3,3),(10,'solar system','solar system',true,true,20,1,true,4,4),(11,'shooting star','shooting star',true,true,20,1,true,5,5),(12,'sphere','sphere',true,true,20,1,true,6,6);

-- drop table moon;
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
planet_id INT,
FOREIGN KEY(planet_id) REFERENCES planet(planet_id)
);

insert into moon values(1,'gravity','gravity',true,true,20,1,true,1,1),(2,'latitude','latitude',true,true,20,1,true,2,2),(3,'longitude','longitude',true,true,20,1,true,3,3),(4,'meteor','meteor',true,true,20,1,true,4,4),(5,'meteorite','meteorite',true,true,20,1,true,5,5),(6,'nebula','nebula',true,true,20,1,true,6,6),(7,'orbit','orbit',true,true,20,1,true,7,7),(8,'revolution','revolution',true,true,20,1,true,8,8),(9,'satellite','satellite',true,true,20,1,true,9,9),(10,'solar system','solar system',true,true,20,1,true,10,10),(11,'shooting star','shooting star',true,true,20,1,true,11,11),(12,'sphere','sphere',true,true,20,1,true,12,12),(13,'gravity1','gravity1',true,true,20,1,true,1,1),(14,'latitude1','latitude1',true,true,20,1,true,2,2),(15,'longitude1','longitude1',true,true,20,1,true,3,3),(16,'meteor1','meteor1',true,true,20,1,true,4,4),(17,'meteorite1','meteorite1',true,true,20,1,true,5,5),(18,'nebula1','nebula1',true,true,20,1,true,6,6),(19,'orbit1','orbit1',true,true,20,1,true,7,7),(20,'revolution1','revolution1',true,true,20,1,true,8,8);

--
-- PostgreSQL database dump complete
--
