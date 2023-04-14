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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.galaxy (galaxy_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth) FROM stdin;
1	the Bull	the Bull	t	t	20.00	1	t	2356
2	the Ram	the Ram	t	t	20.00	1	t	3358
3	the Crab	the Crab	t	t	20.00	1	t	2375
4	the Twins	the Twins	t	t	20.00	1	t	5478
5	the Scorpion	the Scorpion	t	t	20.00	1	t	6235
6	the Lion	the Lion	t	t	20.00	1	t	9578
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.moon (moon_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth, planet_id) FROM stdin;
1	gravity	gravity	t	t	20.00	1	t	1	1
2	latitude	latitude	t	t	20.00	1	t	2	2
3	longitude	longitude	t	t	20.00	1	t	3	3
4	meteor	meteor	t	t	20.00	1	t	4	4
5	meteorite	meteorite	t	t	20.00	1	t	5	5
6	nebula	nebula	t	t	20.00	1	t	6	6
7	orbit	orbit	t	t	20.00	1	t	7	7
8	revolution	revolution	t	t	20.00	1	t	8	8
9	satellite	satellite	t	t	20.00	1	t	9	9
10	solar system	solar system	t	t	20.00	1	t	10	10
11	shooting star	shooting star	t	t	20.00	1	t	11	11
12	sphere	sphere	t	t	20.00	1	t	12	12
13	gravity1	gravity1	t	t	20.00	1	t	1	1
14	latitude1	latitude1	t	t	20.00	1	t	2	2
15	longitude1	longitude1	t	t	20.00	1	t	3	3
16	meteor1	meteor1	t	t	20.00	1	t	4	4
17	meteorite1	meteorite1	t	t	20.00	1	t	5	5
18	nebula1	nebula1	t	t	20.00	1	t	6	6
19	orbit1	orbit1	t	t	20.00	1	t	7	7
20	revolution1	revolution1	t	t	20.00	1	t	8	8
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.planet (planet_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth, star_id) FROM stdin;
1	gravity	gravity	t	t	20.00	1	t	1	1
2	latitude	latitude	t	t	20.00	1	t	2	2
3	longitude	longitude	t	t	20.00	1	t	3	3
4	meteor	meteor	t	t	20.00	1	t	4	4
5	meteorite	meteorite	t	t	20.00	1	t	5	5
6	nebula	nebula	t	t	20.00	1	t	6	6
7	orbit	orbit	t	t	20.00	1	t	1	1
8	revolution	revolution	t	t	20.00	1	t	2	2
9	satellite	satellite	t	t	20.00	1	t	3	3
10	solar system	solar system	t	t	20.00	1	t	4	4
11	shooting star	shooting star	t	t	20.00	1	t	5	5
12	sphere	sphere	t	t	20.00	1	t	6	6
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.star (star_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth, galaxy_id) FROM stdin;
1	Earth	Earth	t	t	20.00	1	t	1	1
2	sun	sun	t	t	20.00	1	t	2	2
3	Venus	Venus	t	t	20.00	1	t	3	3
4	Jupiter	Jupiter	t	t	20.00	1	t	4	4
5	Mars	Mars	t	t	20.00	1	t	5	5
6	Uranus	Uranus	t	t	20.00	1	t	6	6
\.


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.universe (universe_id, name, description, has_life, is_spherical, age_in_millions_of_years, planet_types, galaxy_types, distance_from_earth) FROM stdin;
1	Space	Space	t	t	20.00	1	t	9000
2	known universe	known universe	t	t	20.00	1	t	19000
3	observable universe	observable universe	t	t	20.00	1	t	29000
\.


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

