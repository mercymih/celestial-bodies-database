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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying(50) NOT NULL,
    year_discovered integer,
    meaning text,
    star_id integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_visible_in_our_eyes boolean,
    constellation_id integer
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
    name character varying(50) NOT NULL,
    year_found integer,
    distance_from_planet_km numeric,
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
    name character varying(50) NOT NULL,
    distance_from_earth numeric,
    has_moon boolean,
    rotational_period numeric,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    color character varying(50) NOT NULL,
    approval_date date,
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


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
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Aquarius', NULL, 'Water-bearer', 1);
INSERT INTO public.constellation VALUES (2, 'Aries', NULL, 'Ram', 2);
INSERT INTO public.constellation VALUES (3, 'Capricornus', NULL, 'Sea goat', 3);
INSERT INTO public.constellation VALUES (4, 'Cetus', NULL, 'Sea monster (later interpreted as a whale)', 4);
INSERT INTO public.constellation VALUES (5, 'Leo', NULL, 'Lion', 4);
INSERT INTO public.constellation VALUES (6, 'Coma Berenices', 1536, 'Berenicce''s hair', 5);
INSERT INTO public.constellation VALUES (7, 'Ophiuchus', NULL, 'Serpent-bearer', 4);
INSERT INTO public.constellation VALUES (8, 'Pegasus', NULL, 'Pegasus (mythodologacal wined horse)', 3);
INSERT INTO public.constellation VALUES (9, 'Taurus', NULL, 'Bull', 2);
INSERT INTO public.constellation VALUES (10, 'Virgo', NULL, 'Virgin or maiden', 1);
INSERT INTO public.constellation VALUES (11, 'Centaurus', NULL, 'Centaur', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Backward Galaxy', 'Appears to be rotating in the opposite direction', false, 5);
INSERT INTO public.galaxy VALUES (2, 'Centaurus A', 'Named because it''s located in the Centaurus', true, 5);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', 'It looks like an eye with dark striple', false, 7);
INSERT INTO public.galaxy VALUES (4, 'Coma a Pinwheel Galaxy', 'It looks like a paper pinwheel', false, 7);
INSERT INTO public.galaxy VALUES (5, 'Malin 1', 'Named after its discoverer, avid Malin', false, 4);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'Our own galaxy. It is said to look like a band  in the sky', true, 11);
INSERT INTO public.galaxy VALUES (7, 'Needle Galaxy', 'Named because of its thin appearace', false, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Amalthea', 1892, 181300, 5);
INSERT INTO public.moon VALUES (2, 'Adrastea', 1979, 128980, 5);
INSERT INTO public.moon VALUES (3, 'Phobos', 1877, 9270, 4);
INSERT INTO public.moon VALUES (4, 'Deimos', 1877, 23460, 4);
INSERT INTO public.moon VALUES (5, 'Dysnomia', 2005, 36000, 12);
INSERT INTO public.moon VALUES (6, 'Ariel', 1851, 191240, 7);
INSERT INTO public.moon VALUES (7, 'Triton', 1846, 354800, 8);
INSERT INTO public.moon VALUES (8, 'Thalassa', 1989, 50000, 8);
INSERT INTO public.moon VALUES (9, 'Sao', 2002, 22337, 8);
INSERT INTO public.moon VALUES (10, 'Psamathe', 2003, 46738, 8);
INSERT INTO public.moon VALUES (11, 'Helene', 1980, 377400, 6);
INSERT INTO public.moon VALUES (12, 'Miranda', 1948, 129780, 7);
INSERT INTO public.moon VALUES (13, 'Telesto', 1980, 294660, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', 1684, 294660, 6);
INSERT INTO public.moon VALUES (15, 'Thebe', 1979, 221900, 5);
INSERT INTO public.moon VALUES (16, 'Kale', 2001, 23124000, 5);
INSERT INTO public.moon VALUES (17, 'Isonone', 2000, 23217000, 5);
INSERT INTO public.moon VALUES (18, 'Metis', 1979, 127960, 5);
INSERT INTO public.moon VALUES (19, 'Lysithea', 1938, 11720000, 5);
INSERT INTO public.moon VALUES (20, 'Leda', 1974, 11094000, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.38, false, 58.65, 5);
INSERT INTO public.planet VALUES (2, 'Venus', 0.95, false, 243.02, 4);
INSERT INTO public.planet VALUES (3, 'Earth', 1.00, true, 1.00, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 0.53, true, 1.03, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11.02, true, 0.41, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', 9.4, true, 0.44, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', 4.0, true, 0.72, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 3.9, true, 0.67, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 0.18, true, 6.39, 2);
INSERT INTO public.planet VALUES (10, 'Ceres', 0.07, false, 0.38, 2);
INSERT INTO public.planet VALUES (11, 'Orcus', 2.47, true, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Eris', 0.18, true, 14.56, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sadalsuud', 'Yellow', '2016-08-21', 6);
INSERT INTO public.star VALUES (2, 'Hamal', 'Orange', '2016-07-20', 6);
INSERT INTO public.star VALUES (3, 'Arcturus', 'Red', '2016-06-30', 6);
INSERT INTO public.star VALUES (4, 'Deneb Aledi', 'Blue', '2017-02-01', 6);
INSERT INTO public.star VALUES (5, 'Regulus', 'Blue White', '2016-06-30', 6);
INSERT INTO public.star VALUES (6, 'Enif', 'Yellow', '2016-07-20', 6);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 11, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: constellation constellation_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_key UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


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
-- Name: constellation fk_constellation_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT fk_constellation_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: galaxy fk_galaxy_constellation; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_constellation FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fk_star_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_star_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

