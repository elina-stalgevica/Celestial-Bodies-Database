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
    name character varying(255) NOT NULL,
    area numeric,
    visibilityseason character varying(50),
    haszodiacsign boolean,
    numstarsinconstellation integer
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
    name character varying(255) NOT NULL,
    shape character varying(50),
    size numeric,
    hasblackhole boolean,
    numstars integer
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
    name character varying(255) NOT NULL,
    radius numeric,
    istidallylocked boolean,
    isinhabited boolean,
    surfacecomposition text,
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
    name character varying(255) NOT NULL,
    diameter numeric,
    orbitalperiod numeric,
    haslife boolean,
    atmospherecomposition text,
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
-- Name: solar_system; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.solar_system (
    solar_system_id integer NOT NULL,
    name character varying(255) NOT NULL,
    numplanets integer,
    nummoons integer,
    age numeric,
    ishabitable boolean
);


ALTER TABLE public.solar_system OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.solar_system_solar_system_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.solar_system_solar_system_id_seq OWNER TO freecodecamp;

--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.solar_system_solar_system_id_seq OWNED BY public.solar_system.solar_system_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    spectraltype character varying(50),
    mass numeric,
    ismainsequence boolean,
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
-- Name: solar_system solar_system_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system ALTER COLUMN solar_system_id SET DEFAULT nextval('public.solar_system_solar_system_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Orion', 594, 'Winter', true, 7);
INSERT INTO public.constellation VALUES (2, 'Ursa Major', 1280, 'Spring', false, 7);
INSERT INTO public.constellation VALUES (3, 'Scorpius', 497, 'Summer', true, 15);
INSERT INTO public.constellation VALUES (4, 'Leo', 947, 'Spring', true, 12);
INSERT INTO public.constellation VALUES (5, 'Cassiopeia', 598, 'Fall', false, 5);
INSERT INTO public.constellation VALUES (6, 'Pegasus', 1121, 'Fall', false, 10);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 100000, true, 200000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 220000, true, 100000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 60000, false, 40000000);
INSERT INTO public.galaxy VALUES (4, 'M87', 'Elliptical', 200000, true, 150000000);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical', 60000, true, 100000000);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 35000, false, 25000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (93, 'Europa', 1560.8, true, true, 'Ice', 3);
INSERT INTO public.moon VALUES (94, 'Ganymede', 2631.2, true, true, 'Ice, Rock', 3);
INSERT INTO public.moon VALUES (95, 'Callisto', 2410.3, true, false, 'Ice, Rock', 3);
INSERT INTO public.moon VALUES (96, 'Io', 1821.6, true, false, 'Sulfur, Rock', 3);
INSERT INTO public.moon VALUES (101, 'Moon 5', 100, false, false, 'Rock', 1);
INSERT INTO public.moon VALUES (102, 'Moon 6', 120, false, false, 'Ice, Rock', 1);
INSERT INTO public.moon VALUES (103, 'Moon 7', 150, true, false, 'Sulfur', 2);
INSERT INTO public.moon VALUES (104, 'Moon 8', 180, false, true, 'Ice, Rock', 2);
INSERT INTO public.moon VALUES (105, 'Moon 9', 200, true, false, 'Ice', 2);
INSERT INTO public.moon VALUES (106, 'Moon 10', 250, true, true, 'Ice', 3);
INSERT INTO public.moon VALUES (107, 'Moon 11', 300, false, false, 'Rock', 3);
INSERT INTO public.moon VALUES (108, 'Moon 12', 350, true, false, 'Nitrogen, Ice', 3);
INSERT INTO public.moon VALUES (109, 'Moon 13', 400, true, false, 'Ice, Rock', 4);
INSERT INTO public.moon VALUES (110, 'Moon 14', 450, false, true, 'Ice, Rock', 4);
INSERT INTO public.moon VALUES (111, 'Moon 15', 500, true, false, 'Sulfur, Rock', 5);
INSERT INTO public.moon VALUES (112, 'Moon 16', 550, true, false, 'Carbonaceous rock', 5);
INSERT INTO public.moon VALUES (113, 'Moon 17', 600, false, false, 'Ice', 5);
INSERT INTO public.moon VALUES (114, 'Moon 18', 650, true, true, 'Ice', 6);
INSERT INTO public.moon VALUES (115, 'Moon 19', 700, true, false, 'Ice, Rock', 6);
INSERT INTO public.moon VALUES (116, 'Moon 20', 750, false, false, 'Nitrogen, Ice', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 12742, 365.25, true, 'Nitrogen, Oxygen', 1);
INSERT INTO public.planet VALUES (2, 'Mars', 6779, 686.98, false, 'Carbon Dioxide, Argon', 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 139822, 4332.59, false, 'Hydrogen, Helium', 1);
INSERT INTO public.planet VALUES (4, 'Saturn', 116464, 10759.22, false, 'Hydrogen, Helium', 1);
INSERT INTO public.planet VALUES (5, 'Kepler-186f', 11954, 130.02, true, 'Carbon Dioxide, Nitrogen, Oxygen', 3);
INSERT INTO public.planet VALUES (6, 'Tatooine', 10465, 304.25, false, 'Oxygen, Nitrogen', 2);
INSERT INTO public.planet VALUES (13, 'Mercury', 4879, 88, false, 'None', 1);
INSERT INTO public.planet VALUES (14, 'Venus', 12104, 225, false, 'Carbon Dioxide, Nitrogen', 1);
INSERT INTO public.planet VALUES (15, 'Uranus', 50724, 30685, false, 'Hydrogen, Helium', 1);
INSERT INTO public.planet VALUES (16, 'Neptune', 49244, 60190, false, 'Hydrogen, Helium', 1);
INSERT INTO public.planet VALUES (17, 'Proxima Centauri b', 8630, 11.2, false, 'Unknown', 3);
INSERT INTO public.planet VALUES (18, 'Kepler-22b', 34784, 289.86, true, 'Unknown', 3);
INSERT INTO public.planet VALUES (19, 'TRAPPIST-1d', 7734, 4.05, true, 'Unknown', 4);
INSERT INTO public.planet VALUES (20, 'HD 10180 b', 141200, 5.76, false, 'Unknown', 6);
INSERT INTO public.planet VALUES (21, 'HD 10180 c', 99300, 3.8, false, 'Unknown', 6);
INSERT INTO public.planet VALUES (22, 'HD 10180 d', 28750, 2.99, false, 'Unknown', 6);
INSERT INTO public.planet VALUES (23, 'HD 10180 e', 39300, 3.14, false, 'Unknown', 6);


--
-- Data for Name: solar_system; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.solar_system VALUES (1, 'Solar System', 8, 181, 4.6, true);
INSERT INTO public.solar_system VALUES (2, 'Alpha Centauri System', 3, 13, 6.2, false);
INSERT INTO public.solar_system VALUES (3, 'Kepler-22 System', 1, 5, 6.4, true);
INSERT INTO public.solar_system VALUES (4, 'TRAPPIST-1 System', 7, 28, 7.6, true);
INSERT INTO public.solar_system VALUES (5, 'Gliese 581 System', 6, 16, 7.9, false);
INSERT INTO public.solar_system VALUES (6, 'HD 10180 System', 9, 61, 8.1, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 1989000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 'A1V', 2063000000000000000000000000000, true, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G2V', 2200000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'K0V', 1700000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'M1-2Ia-Iab', 12000000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 'A0V', 2135000000000000000000000000000, true, 2);


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 116, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 23, true);


--
-- Name: solar_system_solar_system_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.solar_system_solar_system_id_seq', 6, true);


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
-- Name: constellation constellation_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_name_unique UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_unique UNIQUE (name);


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
-- Name: moon moon_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique UNIQUE (name);


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
-- Name: planet planet_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: solar_system solar_system_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_key UNIQUE (name);


--
-- Name: solar_system solar_system_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.solar_system
    ADD CONSTRAINT solar_system_name_unique UNIQUE (name);


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
-- Name: star star_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique UNIQUE (name);


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

