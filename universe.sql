--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    age_in_millions_of_years integer,
    age_in_distance_from_earth integer,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: ids; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ids (
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_id integer NOT NULL,
    ids_id integer NOT NULL,
    name character varying(4)
);


ALTER TABLE public.ids OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_in_distance_from_earth integer,
    has_life text,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_in_distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    population numeric(5,1),
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    age_in_distance_from_earth integer,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Hese', NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (2, 'Yarus', NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (3, 'Uim', NULL, NULL, false, false);
INSERT INTO public.galaxy VALUES (4, 'adfhsdfghs', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'sdygedfrg', NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'eroidf', NULL, NULL, NULL, NULL);


--
-- Data for Name: ids; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ids VALUES (1, 1, 1, 1, 1, 'adfg');
INSERT INTO public.ids VALUES (2, 2, 2, 2, 2, 'offg');
INSERT INTO public.ids VALUES (3, 3, 3, 3, 3, 'adg');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'asdylskdfg', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'lfhlds', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'sfs', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'hpoish', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'dfhs', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'ohsdt', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'leddh', NULL, NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'podfg', NULL, NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'odopfgs', NULL, NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'onedry', NULL, NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'dfig', NULL, NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'difhg', NULL, NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'poidfhg', NULL, NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'lhaosf', NULL, NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'adfsdgh', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (16, 'dfhnhdfg', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'iindfgd', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (18, 'osngs', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (19, 'afgasdf', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (20, 'adsfgaasds', NULL, NULL, NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Q', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (2, 'W', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'E', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'A', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (5, 'S', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'D', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (7, 'Z', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'X', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'R', NULL, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'T', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'F', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'G', NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'V', NULL, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (14, 'B', NULL, NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Mars', NULL, NULL, false, false, 3);
INSERT INTO public.star VALUES (2, 'Quarus', NULL, NULL, false, false, 1);
INSERT INTO public.star VALUES (3, 'Uran', NULL, NULL, false, false, 2);
INSERT INTO public.star VALUES (4, 'adfhsdfghs', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'sdygedfrg', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'eroidf', NULL, NULL, NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: ids ids_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: ids ids_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_id_key UNIQUE (ids_id);


--
-- Name: ids ids_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_moon_id_key UNIQUE (moon_id);


--
-- Name: ids ids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_pkey PRIMARY KEY (ids_id);


--
-- Name: ids ids_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_planet_id_key UNIQUE (planet_id);


--
-- Name: ids ids_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: ids ids_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: ids ids_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: ids ids_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: ids ids_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ids
    ADD CONSTRAINT ids_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

