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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth character varying(30),
    solar_systems integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life character varying(10),
    distance_from_earth character varying(30),
    planet_id integer,
    distance_to_planet_in_100k_km numeric(4,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    has_life character varying(10),
    distance_from_earth character varying(30),
    has_moon boolean,
    number_of_moons integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    planet_id integer,
    moon_id integer,
    name character varying(30) NOT NULL
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_million_of_years integer,
    distance_from_earth character varying(30),
    has_planets boolean,
    description text,
    planet_id integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'adromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'antennae', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'backward', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'black eye', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'bode', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', NULL, 'no', '300k km', 1, 3.00);
INSERT INTO public.moon VALUES (2, 'phobos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'deimos', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'io', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'europa', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'ganymede', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'callisto', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'amalthea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'himalia', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'elara', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'elara', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'pasiphae', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'sinope', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'lysithea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'carme', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'anake', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'leda', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'thebe', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'adrastea', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'metis', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'mercury', NULL, 'no', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'venus', NULL, 'no', NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (1, 'earth', 4600, 'yes', NULL, true, 1, 1);
INSERT INTO public.planet VALUES (4, 'mars', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'saturn', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'jupyter', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'spe', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'arion', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'arkas', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, NULL, NULL, 'sol');
INSERT INTO public.solar_system VALUES (2, NULL, NULL, 'sol2');
INSERT INTO public.solar_system VALUES (3, NULL, NULL, 'sol3');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sonne', 4600, '150m km', true, NULL, 1, NULL);
INSERT INTO public.star VALUES (2, 'proxima centauri', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'rigil kentaurus', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'sirius', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'toliman', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'procyon', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'keid', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_pkey PRIMARY KEY (solar_system_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: solar_system unique_solar_system_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT unique_solar_system_id UNIQUE (solar_system_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: solar_system fk_solar_system_planets; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT fk_solar_system_planets FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

