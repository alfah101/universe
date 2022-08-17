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
    age integer,
    reachable boolean,
    alive boolean,
    galaxy character varying(30)
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
-- Name: look_up; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.look_up (
    look_up_id integer NOT NULL,
    name character varying(30) NOT NULL,
    about text
);


ALTER TABLE public.look_up OWNER TO freecodecamp;

--
-- Name: look_up_look_up_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.look_up_look_up_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.look_up_look_up_id_seq OWNER TO freecodecamp;

--
-- Name: look_up_look_up_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.look_up_look_up_id_seq OWNED BY public.look_up.look_up_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    alive boolean,
    reachable boolean,
    planet character varying(30)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    alive boolean,
    reachable boolean,
    star character varying(30)
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
    age integer,
    distance integer NOT NULL,
    "position" numeric,
    about text,
    alive boolean,
    reachable boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_starid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_starid_seq OWNER TO freecodecamp;

--
-- Name: star_starid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_starid_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: look_up look_up_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.look_up ALTER COLUMN look_up_id SET DEFAULT nextval('public.look_up_look_up_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_starid_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 100, true, true, 'pavo');
INSERT INTO public.galaxy VALUES (2, 'volans', 108, true, true, 'pavo');
INSERT INTO public.galaxy VALUES (3, 'milky way', 105, true, true, 'pavo');
INSERT INTO public.galaxy VALUES (4, 'pavo', 170, true, true, 'pavo');
INSERT INTO public.galaxy VALUES (5, 'virgo', 160, false, true, 'pavo');
INSERT INTO public.galaxy VALUES (6, 'corvos', 130, true, true, 'pavo');


--
-- Data for Name: look_up; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.look_up VALUES (1, 'one', 'it is one');
INSERT INTO public.look_up VALUES (2, 'two', 'it is two');
INSERT INTO public.look_up VALUES (3, 'three', 'it is three');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'luna', 100, true, true, NULL);
INSERT INTO public.moon VALUES (2, 'titan', 120, true, true, NULL);
INSERT INTO public.moon VALUES (3, 'demis', 140, true, true, NULL);
INSERT INTO public.moon VALUES (4, 'phobos', 164, true, true, NULL);
INSERT INTO public.moon VALUES (5, 'deimos', 160, true, true, NULL);
INSERT INTO public.moon VALUES (6, 'lo', 153, true, false, NULL);
INSERT INTO public.moon VALUES (7, 'rhea', 176, true, false, NULL);
INSERT INTO public.moon VALUES (8, 'mimas', 153, true, false, NULL);
INSERT INTO public.moon VALUES (9, 'ariel', 123, true, false, NULL);
INSERT INTO public.moon VALUES (10, 'charon', 123, true, false, NULL);
INSERT INTO public.moon VALUES (11, 'gany', 662, true, false, NULL);
INSERT INTO public.moon VALUES (12, 'dione', 921, false, false, NULL);
INSERT INTO public.moon VALUES (13, 'laptus', 176, false, false, NULL);
INSERT INTO public.moon VALUES (14, 'theys', 89, false, false, NULL);
INSERT INTO public.moon VALUES (15, 'callisto', 92, false, false, NULL);
INSERT INTO public.moon VALUES (16, 'umbriel', 21, false, true, NULL);
INSERT INTO public.moon VALUES (17, 'titania', 91, false, false, NULL);
INSERT INTO public.moon VALUES (18, 'tione', 25, false, false, NULL);
INSERT INTO public.moon VALUES (19, 'karen', 65, false, false, NULL);
INSERT INTO public.moon VALUES (20, 'triton', 90, false, false, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 100, true, true, NULL);
INSERT INTO public.planet VALUES (2, 'mars', 200, true, true, NULL);
INSERT INTO public.planet VALUES (3, 'jupiter', 300, true, true, NULL);
INSERT INTO public.planet VALUES (4, 'mercury', 400, true, true, NULL);
INSERT INTO public.planet VALUES (5, 'neptune', 500, true, false, NULL);
INSERT INTO public.planet VALUES (6, 'uranus', 600, false, true, NULL);
INSERT INTO public.planet VALUES (7, 'venus', 700, true, false, NULL);
INSERT INTO public.planet VALUES (8, 'saturn', 800, true, false, NULL);
INSERT INTO public.planet VALUES (9, 'pluto', 900, false, false, NULL);
INSERT INTO public.planet VALUES (10, 'bummi', 1000, true, true, NULL);
INSERT INTO public.planet VALUES (11, 'veyalan', 23, true, false, NULL);
INSERT INTO public.planet VALUES (12, 'veli', 40, false, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'mesham', 21, 1, 1.1, 'somesh', true, true, NULL);
INSERT INTO public.star VALUES (2, 'magaram', 20, 2, 1.2, 'karthi', true, true, NULL);
INSERT INTO public.star VALUES (3, 'rohini', 20, 3, 1.3, 'vicky', true, true, NULL);
INSERT INTO public.star VALUES (4, 'cirius', 21, 4, 1.4, 'fahad', true, true, NULL);
INSERT INTO public.star VALUES (5, 'dhanush', 21, 5, 1.5, 'siva', true, false, NULL);
INSERT INTO public.star VALUES (6, 'kanni', 21, 6, 1.6, 'MOHAN', false, false, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, true);


--
-- Name: look_up_look_up_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.look_up_look_up_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_starid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_starid_seq', 5, true);


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
-- Name: look_up look_up_look_up_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.look_up
    ADD CONSTRAINT look_up_look_up_id_key UNIQUE (look_up_id);


--
-- Name: look_up look_up_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.look_up
    ADD CONSTRAINT look_up_pkey PRIMARY KEY (look_up_id);


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
-- Name: galaxy name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
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
-- Name: star star_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

