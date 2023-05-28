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
    description text,
    distance_from_earth numeric(4,1),
    galaxy_type character varying(30)
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    no_of_rovers integer,
    planet_id integer
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
    description text,
    has_life boolean,
    is_spherical boolean,
    no_of_rovers integer,
    star_id integer
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
-- Name: space_agency; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_agency (
    space_agency_id integer NOT NULL,
    name character varying(30) NOT NULL,
    country character varying(30)
);


ALTER TABLE public.space_agency OWNER TO freecodecamp;

--
-- Name: space_agency_space_agency_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_agency_space_agency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_agency_space_agency_id_seq OWNER TO freecodecamp;

--
-- Name: space_agency_space_agency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_agency_space_agency_id_seq OWNED BY public.space_agency.space_agency_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years numeric(4,1),
    galaxy_id integer
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
-- Name: space_agency space_agency_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency ALTER COLUMN space_agency_id SET DEFAULT nextval('public.space_agency_space_agency_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Galaxy A', 'Description A', 123.1, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxy B', 'Description B', 123.1, NULL);
INSERT INTO public.galaxy VALUES (4, 'Galaxy D', 'Description D', 123.1, NULL);
INSERT INTO public.galaxy VALUES (5, 'Galaxy E', 'Description E', 123.1, NULL);
INSERT INTO public.galaxy VALUES (6, 'Galaxy F', 'Description F', 123.1, NULL);
INSERT INTO public.galaxy VALUES (3, 'Galaxy C', 'Description C', 123.1, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon 1', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (2, 'moon 2', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (3, 'moon 3', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (4, 'moon 4', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (5, 'moon 5', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (6, 'moon 6', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (7, 'moon 7', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (8, 'moon87', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (9, 'moon 9', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (10, 'moon109', 'Moon Description', 0, 1);
INSERT INTO public.moon VALUES (11, 'moon 11', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (12, 'moon 12', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (13, 'moon 13', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (14, 'moon 14', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (15, 'moon 15', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (16, 'moon 16', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (17, 'moon 17', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (18, 'moon 18', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (19, 'moon 19', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (20, 'moon 20', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (21, 'moon 21', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (22, 'moon 22', 'Moon Description', 0, 2);
INSERT INTO public.moon VALUES (23, 'moon 23', 'Moon Description', 0, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet 1', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (2, 'planet 2', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (3, 'planet 3', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (4, 'planet 4', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (5, 'planet 5', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (6, 'planet 6', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (7, 'planet 7', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (8, 'planet 8', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (9, 'planet 9', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (10, 'planet 10', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (11, 'planet 11', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (12, 'planet 12', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (13, 'planet 13', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (14, 'planet 14', 'Planet Description', false, true, 0, 1);
INSERT INTO public.planet VALUES (15, 'planet 15', 'Planet Description', false, true, 0, 1);


--
-- Data for Name: space_agency; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_agency VALUES (1, 'a', 'a');
INSERT INTO public.space_agency VALUES (2, 'b', 'b');
INSERT INTO public.space_agency VALUES (3, 'c', 'c');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star A', 'Description A', 123.1, 1);
INSERT INTO public.star VALUES (2, 'Star B', 'Description B', 123.1, 2);
INSERT INTO public.star VALUES (3, 'Star C', 'Description C', 123.1, 3);
INSERT INTO public.star VALUES (4, 'Star D', 'Description D', 123.1, 4);
INSERT INTO public.star VALUES (5, 'Star E', 'Description E', 123.1, 5);
INSERT INTO public.star VALUES (6, 'Star F', 'Description F', 123.1, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: space_agency_space_agency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_agency_space_agency_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


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
-- Name: space_agency space_agency_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency
    ADD CONSTRAINT space_agency_name_key UNIQUE (name);


--
-- Name: space_agency space_agency_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency
    ADD CONSTRAINT space_agency_pkey PRIMARY KEY (space_agency_id);


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

