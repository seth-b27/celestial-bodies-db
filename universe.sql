--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    is_spherical boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    distance_from_earth numeric(10,2) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL
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
    planet_id integer NOT NULL,
    description text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    is_spherical boolean NOT NULL
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
    star_id integer NOT NULL,
    planet_types text NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL
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
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    temperature integer NOT NULL,
    is_spherical boolean NOT NULL
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Encke', 'a short-period comet with the shortest known orbital period in our solar system.', 50.00, false);
INSERT INTO public.comet VALUES (2, 'Halley', 'a famous periodic comet visible from Earth to the naked eye every 75 to 76 years.', 39.00, false);
INSERT INTO public.comet VALUES (3, 'Hale-Bopp', 'one of the brightest and most widely observed comets of the 20th century.', 196.00, false);
INSERT INTO public.comet VALUES (4, 'Hyakutake', 'known as The Great Comet of 1996, it emitted the first known comet X-rays.', 15.00, false);
INSERT INTO public.comet VALUES (5, 'NEOWISE', 'a spectacular retrograde comet discovered in 2020 that survived its passage close to the Sun.', 103.00, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'the galaxy that contains our Solar System, home to hundreds of billions of stars.', 0.00, 13600, true);
INSERT INTO public.galaxy VALUES (2, 'Whirlpool', 'a classic grand-design spiral galaxy famous for its clearly defined arms.', 23000000.00, 13000, false);
INSERT INTO public.galaxy VALUES (3, 'Sombrero', 'known for its bright nucleus and a thick dust lane resembling a hat brim.', 29000000.00, 13250, false);
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 'the nearest large galaxy to the Milky Way, on a slow collision course with it.', 2537000.00, 10000, false);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', 'the third-largest member of the Local Group, visible to the naked eye under dark skies.', 2730000.00, 12000, false);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 'a large, face-on spiral galaxy with prominent star-forming regions.', 21000000.00, 12000, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 'the only natural satellite of Earth.', 4510, true);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 'the larger and closer of Mars two small moons.', 4500, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 'the smaller and outer moon of Mars.', 4500, false);
INSERT INTO public.moon VALUES (4, 'Io', 5, 'the most volcanically active body in the Solar System.', 4500, true);
INSERT INTO public.moon VALUES (5, 'Europa', 5, 'believed to hide a subsurface ocean beneath its icy crust.', 4500, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, 'the largest moon in the Solar System, bigger than Mercury.', 4500, true);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, 'one of the most heavily cratered bodies in the Solar System.', 4500, true);
INSERT INTO public.moon VALUES (8, 'Titan', 6, 'the only moon known to have a dense atmosphere.', 4500, true);
INSERT INTO public.moon VALUES (9, 'Rhea', 6, 'the second-largest moon of Saturn.', 4500, true);
INSERT INTO public.moon VALUES (10, 'Iapetus', 6, 'notable for its striking two-toned coloring.', 4500, true);
INSERT INTO public.moon VALUES (11, 'Dione', 6, 'a small icy moon with wispy surface streaks.', 4500, true);
INSERT INTO public.moon VALUES (12, 'Tethys', 6, 'an icy moon with a giant impact crater.', 4500, true);
INSERT INTO public.moon VALUES (13, 'Enceladus', 6, 'ejects water-ice plumes from its south pole.', 4500, true);
INSERT INTO public.moon VALUES (14, 'Mimas', 6, 'known for a huge crater that makes it resemble the Death Star.', 4500, true);
INSERT INTO public.moon VALUES (15, 'Titania', 7, 'the largest moon of Uranus.', 4500, true);
INSERT INTO public.moon VALUES (16, 'Oberon', 7, 'the outermost of Uranus major moons.', 4500, true);
INSERT INTO public.moon VALUES (17, 'Ariel', 7, 'one of the brightest moons of Uranus.', 4500, true);
INSERT INTO public.moon VALUES (18, 'Triton', 8, 'the largest moon of Neptune, orbiting backwards.', 4500, true);
INSERT INTO public.moon VALUES (19, 'Nereid', 8, 'has one of the most eccentric orbits of any moon.', 4500, false);
INSERT INTO public.moon VALUES (20, 'Alpheratz I-a', 11, 'a fictional moon orbiting a gas giant near Andromeda.', 45, true);
INSERT INTO public.moon VALUES (21, 'Mirach I-a', 12, 'a small irregular moonlet near Triangulum.', 2800, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, 'Rocky', 4500, false, true);
INSERT INTO public.planet VALUES (2, 'Venus', 1, 'Rocky', 4500, false, true);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 'Rocky', 4540, true, true);
INSERT INTO public.planet VALUES (4, 'Mars', 1, 'Rocky', 4600, false, true);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, 'Gas Giant', 4600, false, true);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, 'Gas Giant', 4500, false, true);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, 'Ice Giant', 4500, false, true);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, 'Ice Giant', 4500, false, true);
INSERT INTO public.planet VALUES (9, 'Sirius Ab', 2, 'White Dwarf Companion', 300, false, true);
INSERT INTO public.planet VALUES (10, 'Proxima b', 3, 'Rocky', 4800, false, true);
INSERT INTO public.planet VALUES (11, 'Alpheratz I', 4, 'Gas Giant', 50, false, true);
INSERT INTO public.planet VALUES (12, 'Mirach I', 5, 'Rocky', 2900, false, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 4600, 5778, true);
INSERT INTO public.star VALUES (2, 'Sirius', 1, 242, 9940, true);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, 4850, 3042, true);
INSERT INTO public.star VALUES (4, 'Alpheratz', 4, 60, 13800, true);
INSERT INTO public.star VALUES (5, 'Mirach', 5, 3000, 3800, true);
INSERT INTO public.star VALUES (6, 'Mekbuda', 2, 60, 5500, true);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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