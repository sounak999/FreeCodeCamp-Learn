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
-- Name: dummy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dummy (
    dummy_id integer NOT NULL,
    name character varying NOT NULL,
    is_present boolean
);


ALTER TABLE public.dummy OWNER TO freecodecamp;

--
-- Name: dummy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dummy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dummy_id_seq OWNER TO freecodecamp;

--
-- Name: dummy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dummy_id_seq OWNED BY public.dummy.dummy_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    dist_from_earth integer,
    num_stars integer
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
    name character varying NOT NULL,
    planet_id integer,
    has_atmosphere boolean,
    surface_temperature integer
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
    name character varying NOT NULL,
    star_id integer,
    has_water boolean,
    atmosphere_composition character varying(100)
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
    name character varying NOT NULL,
    galaxy_id integer,
    luminosity numeric,
    distance_from_galactic_center integer
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
-- Name: dummy dummy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy ALTER COLUMN dummy_id SET DEFAULT nextval('public.dummy_id_seq'::regclass);


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
-- Data for Name: dummy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dummy VALUES (1, 'Sounak', true);
INSERT INTO public.dummy VALUES (2, 'Ankan', true);
INSERT INTO public.dummy VALUES (3, 'Girlfriend', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 0, 10000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy nearest to Milky Way', 253700, 100000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy near Andromeda', 2400, 600000);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Spiral galaxy', 28000, 70000);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 'Face-on', 210000, 23420);
INSERT INTO public.galaxy VALUES (6, 'Sounak', 'The very good galaxy', 234243, 2342);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, false, -233);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, false, -40);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, false, -50);
INSERT INTO public.moon VALUES (4, 'Europa', 3, true, -160);
INSERT INTO public.moon VALUES (5, 'Ganymede', 3, false, -160);
INSERT INTO public.moon VALUES (6, 'Callisto', 3, false, -170);
INSERT INTO public.moon VALUES (7, 'Titan', 5, true, -179);
INSERT INTO public.moon VALUES (8, 'Rhea', 5, false, -220);
INSERT INTO public.moon VALUES (9, 'Dione', 5, false, -186);
INSERT INTO public.moon VALUES (10, 'Enceladus', 5, true, -198);
INSERT INTO public.moon VALUES (11, 'Iapetus', 5, false, -143);
INSERT INTO public.moon VALUES (12, 'Mimas', 5, false, -200);
INSERT INTO public.moon VALUES (13, 'Triton', 8, true, -235);
INSERT INTO public.moon VALUES (14, 'Charon', 9, false, -220);
INSERT INTO public.moon VALUES (15, 'Nereid', 10, false, -213);
INSERT INTO public.moon VALUES (16, 'Umbriel', 11, false, -210);
INSERT INTO public.moon VALUES (17, 'Ariel', 11, false, -220);
INSERT INTO public.moon VALUES (18, 'Titania', 11, false, -213);
INSERT INTO public.moon VALUES (19, 'Oberon', 11, false, -214);
INSERT INTO public.moon VALUES (20, 'Miranda', 11, false, -213);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 'Oxygen, Sodium, Hydrogen');
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'Carbon dioxide, Nitrogen');
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'Nitrogen, Oxygen');
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 'Carbon dioxide, Nitrogen');
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (9, 'Kepler-186f', 2, true, 'Nitrogen, Oxygen');
INSERT INTO public.planet VALUES (10, 'Gliese 581g', 2, true, 'Unknown');
INSERT INTO public.planet VALUES (11, 'HD 209458 b', 2, false, 'Unknown');
INSERT INTO public.planet VALUES (12, 'TRAPPIST-1e', 3, true, 'Unknown');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.0, 27000);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 25.4, 8400);
INSERT INTO public.star VALUES (3, 'Alpha Centauri', 1, 1.52, 401900);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 1, 160000, 640);
INSERT INTO public.star VALUES (5, 'Vega', 1, 40.12, 254);
INSERT INTO public.star VALUES (6, 'Rigel', 1, 120000, 863);


--
-- Name: dummy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dummy_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


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
-- Name: dummy dummy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_name_key UNIQUE (name);


--
-- Name: dummy dummy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dummy
    ADD CONSTRAINT dummy_pkey PRIMARY KEY (dummy_id);


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

