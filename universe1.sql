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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(18,2),
    planet_types integer,
    galaxy_types boolean,
    distance_from_earth integer
);


ALTER TABLE public.galaxy OWNER TO postgres;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(18,2),
    planet_types integer,
    galaxy_types boolean,
    distance_from_earth integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO postgres;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(18,2),
    planet_types integer,
    galaxy_types boolean,
    distance_from_earth integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO postgres;

--
-- Name: star; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(18,2),
    planet_types integer,
    galaxy_types boolean,
    distance_from_earth integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO postgres;

--
-- Name: universe; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(255) NOT NULL,
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(18,2),
    planet_types integer,
    galaxy_types boolean,
    distance_from_earth integer
);


ALTER TABLE public.universe OWNER TO postgres;

--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.universe VALUES (1, 'Space', 'Space', true, true, 20.00, 1, true, 9000);
INSERT INTO public.universe VALUES (2, 'known universe', 'known universe', true, true, 20.00, 1, true, 19000);
INSERT INTO public.universe VALUES (3, 'observable universe', 'observable universe', true, true, 20.00, 1, true, 29000);

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.galaxy VALUES (1, 'the Bull', 'the Bull', true, true, 20.00, 1, true, 2356);
INSERT INTO public.galaxy VALUES (2, 'the Ram', 'the Ram', true, true, 20.00, 1, true, 3358);
INSERT INTO public.galaxy VALUES (3, 'the Crab', 'the Crab', true, true, 20.00, 1, true, 2375);
INSERT INTO public.galaxy VALUES (4, 'the Twins', 'the Twins', true, true, 20.00, 1, true, 5478);
INSERT INTO public.galaxy VALUES (5, 'the Scorpion', 'the Scorpion', true, true, 20.00, 1, true, 6235);
INSERT INTO public.galaxy VALUES (6, 'the Lion', 'the Lion', true, true, 20.00, 1, true, 9578);

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.star VALUES (1, 'Earth', 'Earth', true, true, 20.00, 1, true, 1, 1);
INSERT INTO public.star VALUES (2, 'sun', 'sun', true, true, 20.00, 1, true, 2, 2);
INSERT INTO public.star VALUES (3, 'Venus', 'Venus', true, true, 20.00, 1, true, 3, 3);
INSERT INTO public.star VALUES (4, 'Jupiter', 'Jupiter', true, true, 20.00, 1, true, 4, 4);
INSERT INTO public.star VALUES (5, 'Mars', 'Mars', true, true, 20.00, 1, true, 5, 5);
INSERT INTO public.star VALUES (6, 'Uranus', 'Uranus', true, true, 20.00, 1, true, 6, 6);

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.planet VALUES (1, 'gravity', 'gravity', true, true, 20.00, 1, true, 1, 1);
INSERT INTO public.planet VALUES (2, 'latitude', 'latitude', true, true, 20.00, 1, true, 2, 2);
INSERT INTO public.planet VALUES (3, 'longitude', 'longitude', true, true, 20.00, 1, true, 3, 3);
INSERT INTO public.planet VALUES (4, 'meteor', 'meteor', true, true, 20.00, 1, true, 4, 4);
INSERT INTO public.planet VALUES (5, 'meteorite', 'meteorite', true, true, 20.00, 1, true, 5, 5);
INSERT INTO public.planet VALUES (6, 'nebula', 'nebula', true, true, 20.00, 1, true, 6, 6);
INSERT INTO public.planet VALUES (7, 'orbit', 'orbit', true, true, 20.00, 1, true, 1, 1);
INSERT INTO public.planet VALUES (8, 'revolution', 'revolution', true, true, 20.00, 1, true, 2, 2);
INSERT INTO public.planet VALUES (9, 'satellite', 'satellite', true, true, 20.00, 1, true, 3, 3);
INSERT INTO public.planet VALUES (10, 'solar system', 'solar system', true, true, 20.00, 1, true, 4, 4);
INSERT INTO public.planet VALUES (11, 'shooting star', 'shooting star', true, true, 20.00, 1, true, 5, 5);
INSERT INTO public.planet VALUES (12, 'sphere', 'sphere', true, true, 20.00, 1, true, 6, 6);

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.moon VALUES (1, 'gravity', 'gravity', true, true, 20.00, 1, true, 1, 1);
INSERT INTO public.moon VALUES (2, 'latitude', 'latitude', true, true, 20.00, 1, true, 2, 2);
INSERT INTO public.moon VALUES (3, 'longitude', 'longitude', true, true, 20.00, 1, true, 3, 3);
INSERT INTO public.moon VALUES (4, 'meteor', 'meteor', true, true, 20.00, 1, true, 4, 4);
INSERT INTO public.moon VALUES (5, 'meteorite', 'meteorite', true, true, 20.00, 1, true, 5, 5);
INSERT INTO public.moon VALUES (6, 'nebula', 'nebula', true, true, 20.00, 1, true, 6, 6);
INSERT INTO public.moon VALUES (7, 'orbit', 'orbit', true, true, 20.00, 1, true, 7, 7);
INSERT INTO public.moon VALUES (8, 'revolution', 'revolution', true, true, 20.00, 1, true, 8, 8);
INSERT INTO public.moon VALUES (9, 'satellite', 'satellite', true, true, 20.00, 1, true, 9, 9);
INSERT INTO public.moon VALUES (10, 'solar system', 'solar system', true, true, 20.00, 1, true, 10, 10);
INSERT INTO public.moon VALUES (11, 'shooting star', 'shooting star', true, true, 20.00, 1, true, 11, 11);
INSERT INTO public.moon VALUES (12, 'sphere', 'sphere', true, true, 20.00, 1, true, 12, 12);
INSERT INTO public.moon VALUES (13, 'gravity1', 'gravity1', true, true, 20.00, 1, true, 1, 1);
INSERT INTO public.moon VALUES (14, 'latitude1', 'latitude1', true, true, 20.00, 1, true, 2, 2);
INSERT INTO public.moon VALUES (15, 'longitude1', 'longitude1', true, true, 20.00, 1, true, 3, 3);
INSERT INTO public.moon VALUES (16, 'meteor1', 'meteor1', true, true, 20.00, 1, true, 4, 4);
INSERT INTO public.moon VALUES (17, 'meteorite1', 'meteorite1', true, true, 20.00, 1, true, 5, 5);
INSERT INTO public.moon VALUES (18, 'nebula1', 'nebula1', true, true, 20.00, 1, true, 6, 6);
INSERT INTO public.moon VALUES (19, 'orbit1', 'orbit1', true, true, 20.00, 1, true, 7, 7);
INSERT INTO public.moon VALUES (20, 'revolution1', 'revolution1', true, true, 20.00, 1, true, 8, 8);

--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: universe universe_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_name_key UNIQUE (name);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

