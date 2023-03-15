echo "# universe.sql" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/Lazyjayyy/universe.sql.git
git push -u origin main--
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
    name character varying(60) NOT NULL,
    age_in_millions_of_years numeric(10,2) NOT NULL,
    has_life boolean NOT NULL,
    description text NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60),
    age_in_millions_of_years numeric(10,2) NOT NULL,
    has_life boolean,
    description text NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(45),
    age_in_millions_of_years numeric(10,2),
    has_life boolean,
    circumference integer NOT NULL,
    speed_in_km integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(60) NOT NULL,
    number_of_planets numeric(10,2) NOT NULL,
    description text NOT NULL,
    planet_id integer
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(45),
    age_in_millions_of_years numeric(10,2),
    star_type text NOT NULL,
    colour text NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 13800.00, true, 'spiral galaxy', 1);
INSERT INTO public.galaxy VALUES ('Andromeda Galaxy', 10010.00, false, 'spiral galaxy', 2);
INSERT INTO public.galaxy VALUES ('Sombrero Galaxy', 13250.00, false, 'spiral galaxy', 3);
INSERT INTO public.galaxy VALUES ('Whirlpool Galaxy', 400.00, false, 'spiral galaxy', 4);
INSERT INTO public.galaxy VALUES ('Cigar Galaxy', 13300.00, false, 'starburst', 5);
INSERT INTO public.galaxy VALUES ('Cartwheel Galaxy', 300.00, false, 'lenticular ring galaxy', 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4500.00, false, 'Brown tinged gray');
INSERT INTO public.moon VALUES (2, 'Phobos', 4300.00, false, 'Irregular shape');
INSERT INTO public.moon VALUES (3, 'Deimos', 4600.00, false, 'Smallest of Mars moons');
INSERT INTO public.moon VALUES (4, 'Io', 4500.00, false, 'Highly volcanic');
INSERT INTO public.moon VALUES (5, 'Europa', 4500.00, false, 'Ice covered');
INSERT INTO public.moon VALUES (6, 'Ganymede', 4500.00, false, 'largest moon in the solar system it occupies');
INSERT INTO public.moon VALUES (7, 'Callisto', 4500.00, false, 'Heavily cratered');
INSERT INTO public.moon VALUES (8, 'Mimas', 4500.00, false, 'Has a distinct crater');
INSERT INTO public.moon VALUES (9, 'Enceladus', 4500.00, false, 'Icey');
INSERT INTO public.moon VALUES (10, 'Titan', 4500.00, false, 'liquid on the surface');
INSERT INTO public.moon VALUES (11, 'Hyperion ', 4500.00, false, 'low density');
INSERT INTO public.moon VALUES (12, 'Ariel', 4500.00, false, 'mountainous and flat surface');
INSERT INTO public.moon VALUES (13, 'Miranda', 4500.00, false, 'Heavily cratered');
INSERT INTO public.moon VALUES (14, 'Umbriel', 4500.00, false, 'made of water and ice mostly');
INSERT INTO public.moon VALUES (15, 'Triton', 4500.00, false, 'Retrograde orbit');
INSERT INTO public.moon VALUES (16, 'Nereid', 4500.00, false, 'Small and irregular');
INSERT INTO public.moon VALUES (17, 'Uranumuiops', 1503.00, false, 'Blue');
INSERT INTO public.moon VALUES (18, 'Glarbon', 2503.00, false, 'Green');
INSERT INTO public.moon VALUES (19, 'Plutyuuo', 2200.00, false, 'Thanos is here');
INSERT INTO public.moon VALUES (20, 'Gabriel', 4500.00, false, 'greenn



invisble');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4600.00, false, 15329, 47);
INSERT INTO public.planet VALUES (2, 'Venus', 4503.00, false, 38025, 35);
INSERT INTO public.planet VALUES (3, 'Earth', 4543.00, true, 40075, 30);
INSERT INTO public.planet VALUES (4, 'Mars', 4603.00, false, 21344, 24);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4603.00, false, 439264, 13);
INSERT INTO public.planet VALUES (6, 'Saturn', 4503.00, false, 378675, 10);
INSERT INTO public.planet VALUES (7, 'Uranus', 4503.00, false, 160590, 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 4503.00, false, 155600, 5);
INSERT INTO public.planet VALUES (9, 'Pluto', 4600.00, false, 7232, 5);
INSERT INTO public.planet VALUES (10, 'Amoled', 4100.00, false, 15629, 32);
INSERT INTO public.planet VALUES (11, 'Vencus', 5503.00, false, 380285, 39);
INSERT INTO public.planet VALUES (12, 'Earyth', 5543.00, false, 40875, 21);
INSERT INTO public.planet VALUES (13, 'Snickers', 3603.00, false, 27744, 234);
INSERT INTO public.planet VALUES (14, 'Aang', 978.00, false, 56759, 69);
INSERT INTO public.planet VALUES (15, 'Jupittyer', 6603.00, false, 79264, 10);
INSERT INTO public.planet VALUES (16, 'Saturyuiopn', 1503.00, false, 38675, 12);
INSERT INTO public.planet VALUES (17, 'Uranumuiops', 1503.00, false, 10590, 9);
INSERT INTO public.planet VALUES (18, 'Glarbon', 2503.00, false, 15600, 82);
INSERT INTO public.planet VALUES (19, 'Plutyuuo', 2200.00, false, 71232, 100);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 8.00, 'Highly diverse set of celestial objects', NULL);
INSERT INTO public.solar_system VALUES (2, 'Trappist-1 System', 7.00, 'Potentially habitable rocky plantes', NULL);
INSERT INTO public.solar_system VALUES (3, 'Kepler-90 System', 8.00, 'First known system to have as many planets as our own', NULL);
INSERT INTO public.solar_system VALUES (4, 'HD 10180 System', 7.00, 'Has a planet close to earths own analogue', NULL);
INSERT INTO public.solar_system VALUES (5, 'Gliese 876 System', 4.00, 'HAs hot Neptine', NULL);
INSERT INTO public.solar_system VALUES (6, 'WASP-47 System', 3.00, 'First exoplanet to be identified as having a thick atmosphere with water vapour', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 4600.00, 'Yellow Dwarf', 'white');
INSERT INTO public.star VALUES (2, 'Alpha Andromeda', 60.00, 'Hot Blue Star', 'Blue-White');
INSERT INTO public.star VALUES (3, NULL, NULL, 'unknown', 'unknown');
INSERT INTO public.star VALUES (4, 'Alkaid', 10.10, 'Main sequence blue dwarf star', 'Blue');
INSERT INTO public.star VALUES (5, NULL, NULL, 'unknown', 'unknown');
INSERT INTO public.star VALUES (6, 'Eta Sculptoris', NULL, 'Red Giant', 'red');


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: solar_system name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


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
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: solar_system solar_system_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

