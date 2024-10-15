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
-- Name: astronomer; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer (
    astronomer_id integer NOT NULL,
    name character varying(30) NOT NULL,
    birth_year date,
    height_in_inches integer,
    weight_in_lbs numeric(4,1),
    institution character varying(60),
    highest_degree character varying(30)
);


ALTER TABLE public.astronomer OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_astronomer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_astronomer_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_astronomer_id_seq OWNED BY public.astronomer.astronomer_id;


--
-- Name: astronomer_galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer_galaxy (
    astronomer_galaxy_id integer NOT NULL,
    astronomer_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.astronomer_galaxy OWNER TO freecodecamp;

--
-- Name: astronomer_galaxy_astronomer_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_galaxy_astronomer_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_galaxy_astronomer_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_galaxy_astronomer_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_galaxy_astronomer_galaxy_id_seq OWNED BY public.astronomer_galaxy.astronomer_galaxy_id;


--
-- Name: astronomer_moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer_moon (
    astronomer_moon_id integer NOT NULL,
    astronomer_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.astronomer_moon OWNER TO freecodecamp;

--
-- Name: astronomer_moon_astronomer_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_moon_astronomer_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_moon_astronomer_moon_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_moon_astronomer_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_moon_astronomer_moon_id_seq OWNED BY public.astronomer_moon.astronomer_moon_id;


--
-- Name: astronomer_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer_planet (
    astronomer_planet_id integer NOT NULL,
    astronomer_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.astronomer_planet OWNER TO freecodecamp;

--
-- Name: astronomer_planet_astronomer_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_planet_astronomer_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_planet_astronomer_planet_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_planet_astronomer_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_planet_astronomer_planet_id_seq OWNED BY public.astronomer_planet.astronomer_planet_id;


--
-- Name: astronomer_star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomer_star (
    astronomer_star_id integer NOT NULL,
    astronomer_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.astronomer_star OWNER TO freecodecamp;

--
-- Name: astronomer_star_astronomer_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomer_star_astronomer_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomer_star_astronomer_star_id_seq OWNER TO freecodecamp;

--
-- Name: astronomer_star_astronomer_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomer_star_astronomer_star_id_seq OWNED BY public.astronomer_star.astronomer_star_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    mass numeric,
    description text,
    has_blackhole boolean,
    weight_in_kg numeric
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
    planet_id integer NOT NULL,
    weight_in_kg numeric
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
    position_from_star integer NOT NULL,
    moon_count integer NOT NULL,
    distance_from_star numeric,
    description text,
    star_id integer,
    weight_in_kg numeric
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
    planet_count integer NOT NULL,
    description text,
    is_blackhole boolean,
    is_supernova boolean,
    galaxy_id integer NOT NULL,
    weight_in_kg numeric
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
-- Name: astronomer astronomer_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer ALTER COLUMN astronomer_id SET DEFAULT nextval('public.astronomer_astronomer_id_seq'::regclass);


--
-- Name: astronomer_galaxy astronomer_galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_galaxy ALTER COLUMN astronomer_galaxy_id SET DEFAULT nextval('public.astronomer_galaxy_astronomer_galaxy_id_seq'::regclass);


--
-- Name: astronomer_moon astronomer_moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_moon ALTER COLUMN astronomer_moon_id SET DEFAULT nextval('public.astronomer_moon_astronomer_moon_id_seq'::regclass);


--
-- Name: astronomer_planet astronomer_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_planet ALTER COLUMN astronomer_planet_id SET DEFAULT nextval('public.astronomer_planet_astronomer_planet_id_seq'::regclass);


--
-- Name: astronomer_star astronomer_star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_star ALTER COLUMN astronomer_star_id SET DEFAULT nextval('public.astronomer_star_astronomer_star_id_seq'::regclass);


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
-- Data for Name: astronomer; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer VALUES (1, 'Carl Sagan', '1934-11-09', 70, 160.0, 'Cornell University', 'PhD');
INSERT INTO public.astronomer VALUES (2, 'Neil deGrasse Tyson', '1958-10-05', 72, 210.5, 'American Museum of Natural History', 'PhD');
INSERT INTO public.astronomer VALUES (3, 'Stephen Hawking', '1942-01-08', 62, 140.0, 'University of Cambridge', 'PhD');
INSERT INTO public.astronomer VALUES (4, 'Jocelyn Bell Burnell', '1943-07-15', 64, 135.5, 'University of Oxford', 'PhD');
INSERT INTO public.astronomer VALUES (5, 'Vera Rubin', '1928-07-23', 68, 155.0, 'Carnegie Institution of Washington', 'PhD');
INSERT INTO public.astronomer VALUES (6, 'Edwin Hubble', '1889-11-20', 71, 170.0, 'Mount Wilson Observatory', 'PhD');


--
-- Data for Name: astronomer_galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer_galaxy VALUES (1, 1, 1, 'Sagan''s study of the Milky Way');
INSERT INTO public.astronomer_galaxy VALUES (2, 2, 2, 'Tyson''s analysis of Andromeda');
INSERT INTO public.astronomer_galaxy VALUES (3, 3, 3, 'Hawking''s research on Triangulum');
INSERT INTO public.astronomer_galaxy VALUES (4, 4, 4, 'Bell Burnell''s observations of Whirlpool');
INSERT INTO public.astronomer_galaxy VALUES (5, 5, 5, 'Rubin''s study of Sombrero');
INSERT INTO public.astronomer_galaxy VALUES (6, 6, 6, 'Hubble''s discovery of Pinwheel');


--
-- Data for Name: astronomer_moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer_moon VALUES (21, 1, 1, 'Sagan''s lunar research');
INSERT INTO public.astronomer_moon VALUES (22, 2, 2, 'Tyson''s Phobos studies');
INSERT INTO public.astronomer_moon VALUES (23, 3, 3, 'Hawking''s Deimos theories');
INSERT INTO public.astronomer_moon VALUES (24, 4, 4, 'Bell Burnell''s Io observations');
INSERT INTO public.astronomer_moon VALUES (25, 5, 5, 'Rubin''s Europa analysis');
INSERT INTO public.astronomer_moon VALUES (26, 6, 6, 'Hubble''s Ganymede discoveries');
INSERT INTO public.astronomer_moon VALUES (27, 1, 7, 'Sagan''s Callisto findings');
INSERT INTO public.astronomer_moon VALUES (28, 2, 8, 'Tyson''s Titan research');
INSERT INTO public.astronomer_moon VALUES (29, 3, 9, 'Hawking''s Enceladus hypotheses');
INSERT INTO public.astronomer_moon VALUES (30, 4, 10, 'Bell Burnell''s Mimas observations');
INSERT INTO public.astronomer_moon VALUES (31, 5, 11, 'Rubin''s Rhea analysis');
INSERT INTO public.astronomer_moon VALUES (32, 6, 12, 'Hubble''s Titania discoveries');
INSERT INTO public.astronomer_moon VALUES (33, 1, 13, 'Sagan''s Oberon findings');
INSERT INTO public.astronomer_moon VALUES (34, 2, 14, 'Tyson''s Umbriel research');
INSERT INTO public.astronomer_moon VALUES (35, 3, 15, 'Hawking''s Ariel hypotheses');
INSERT INTO public.astronomer_moon VALUES (36, 4, 16, 'Bell Burnell''s Triton observations');
INSERT INTO public.astronomer_moon VALUES (37, 5, 17, 'Rubin''s Nereid analysis');
INSERT INTO public.astronomer_moon VALUES (38, 6, 18, 'Hubble''s Hippocamp discoveries');
INSERT INTO public.astronomer_moon VALUES (39, 1, 19, 'Sagan''s Proteus findings');
INSERT INTO public.astronomer_moon VALUES (40, 2, 20, 'Tyson''s Larissa research');


--
-- Data for Name: astronomer_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer_planet VALUES (1, 1, 1, 'Sagan''s Mercury exploration');
INSERT INTO public.astronomer_planet VALUES (2, 2, 2, 'Tyson''s Venus investigations');
INSERT INTO public.astronomer_planet VALUES (3, 3, 3, 'Hawking''s Earth hypotheses');
INSERT INTO public.astronomer_planet VALUES (4, 4, 4, 'Bell Burnell''s Mars observations');
INSERT INTO public.astronomer_planet VALUES (5, 5, 5, 'Rubin''s Jupiter analysis');
INSERT INTO public.astronomer_planet VALUES (6, 6, 6, 'Hubble''s Saturn discoveries');
INSERT INTO public.astronomer_planet VALUES (7, 1, 7, 'Sagan''s Uranus findings');
INSERT INTO public.astronomer_planet VALUES (8, 2, 8, 'Tyson''s Neptune research');
INSERT INTO public.astronomer_planet VALUES (9, 3, 9, 'Hawking''s Proxima Centauri b theories');
INSERT INTO public.astronomer_planet VALUES (10, 4, 10, 'Bell Burnell''s Kepler-186f observations');
INSERT INTO public.astronomer_planet VALUES (11, 5, 11, 'Rubin''s Trappist-1e analysis');
INSERT INTO public.astronomer_planet VALUES (12, 6, 12, 'Hubble''s Gliese 581g discoveries');


--
-- Data for Name: astronomer_star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomer_star VALUES (1, 1, 1, 'Sagan''s solar research');
INSERT INTO public.astronomer_star VALUES (2, 2, 2, 'Tyson''s Sirius studies');
INSERT INTO public.astronomer_star VALUES (3, 3, 3, 'Hawking''s Betelgeuse theories');
INSERT INTO public.astronomer_star VALUES (4, 4, 4, 'Bell Burnell''s Alpha Centauri observations');
INSERT INTO public.astronomer_star VALUES (5, 5, 5, 'Rubin''s Vega analysis');
INSERT INTO public.astronomer_star VALUES (6, 6, 6, 'Hubble''s Antares discoveries');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1500000000000, 'Our home galaxy', true, 1500000000000000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda Galaxy', 1200000000000, 'Nearest major galaxy', true, 1200000000000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 50000000000, 'Spiral galaxy in Local Group', false, 50000000000000);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 160000000000, 'Interacting grand-design spiral galaxy', true, 160000000000000);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 800000000000, 'Spiral galaxy with a prominent dust lane', true, 800000000000000);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel Galaxy', 100000000000, 'Face-on spiral galaxy', false, 100000000000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Earth''s only natural satellite', 3, 73000000000000000000000);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Larger of Mars'' two moons', 4, 11000000000000000);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Smaller of Mars'' two moons', 4, 1500000000000000);
INSERT INTO public.moon VALUES (4, 'Io', 'Volcanically active moon of Jupiter', 5, 89000000000000000000000);
INSERT INTO public.moon VALUES (5, 'Europa', 'Icy moon of Jupiter with a subsurface ocean', 5, 48000000000000000000000);
INSERT INTO public.moon VALUES (6, 'Ganymede', 'Largest moon in the Solar System', 5, 150000000000000000000000);
INSERT INTO public.moon VALUES (7, 'Callisto', 'Heavily cratered moon of Jupiter', 5, 110000000000000000000000);
INSERT INTO public.moon VALUES (8, 'Titan', 'Saturn''s largest moon with a dense atmosphere', 6, 130000000000000000000000);
INSERT INTO public.moon VALUES (9, 'Enceladus', 'Icy moon of Saturn with geysers', 6, 110000000000000000000);
INSERT INTO public.moon VALUES (10, 'Mimas', 'Moon of Saturn with a large crater', 6, 38000000000000000000);
INSERT INTO public.moon VALUES (11, 'Rhea', 'Second-largest moon of Saturn', 6, 2300000000000000000000);
INSERT INTO public.moon VALUES (12, 'Titania', 'Largest moon of Uranus', 7, 3500000000000000000000);
INSERT INTO public.moon VALUES (13, 'Oberon', 'Outermost major moon of Uranus', 7, 3000000000000000000000);
INSERT INTO public.moon VALUES (14, 'Umbriel', 'Darkest moon of Uranus', 7, 1200000000000000000000);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Brightest moon of Uranus', 7, 1300000000000000000000);
INSERT INTO public.moon VALUES (16, 'Triton', 'Neptune''s largest moon, orbits in the opposite direction', 8, 21000000000000000000000);
INSERT INTO public.moon VALUES (17, 'Nereid', 'Irregular moon of Neptune', 8, 31000000000000000000);
INSERT INTO public.moon VALUES (18, 'Hippocamp', 'Small moon of Neptune', 8, 2000000000000000000);
INSERT INTO public.moon VALUES (19, 'Proteus', 'Large irregularly shaped moon of Neptune', 8, 50000000000000000000);
INSERT INTO public.moon VALUES (20, 'Larissa', 'Small moon of Neptune', 8, 49000000000000000000);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (10, 'Kepler-186f', 1, 2, 0.4, 'Potentially habitable exoplanet', 7, 10000000000000000000000000);
INSERT INTO public.planet VALUES (11, 'Trappist-1e', 3, 0, 0.03, 'Rocky exoplanet in habitable zone', 8, 6000000000000000000000000);
INSERT INTO public.planet VALUES (12, 'Gliese 581g', 2, 1, 0.15, 'Potentially habitable exoplanet', 9, 31000000000000000000000000);
INSERT INTO public.planet VALUES (1, 'Mercury', 1, 0, 0.4, 'Smallest planet in our solar system', 1, 330000000000000000000000);
INSERT INTO public.planet VALUES (2, 'Venus', 2, 0, 0.7, 'Hottest planet in our solar system', 1, 4900000000000000000000000);
INSERT INTO public.planet VALUES (3, 'Earth', 3, 1, 1, 'Our home planet', 1, 6000000000000000000000000);
INSERT INTO public.planet VALUES (4, 'Mars', 4, 2, 1.5, 'The Red Planet', 1, 640000000000000000000000);
INSERT INTO public.planet VALUES (5, 'Jupiter', 5, 79, 5.2, 'Largest planet in our solar system', 1, 1900000000000000000000000000);
INSERT INTO public.planet VALUES (6, 'Saturn', 6, 82, 9.5, 'Known for its rings', 1, 570000000000000000000000000);
INSERT INTO public.planet VALUES (7, 'Uranus', 7, 27, 19.2, 'Ice giant', 1, 87000000000000000000000000);
INSERT INTO public.planet VALUES (8, 'Neptune', 8, 14, 30.1, 'Farthest planet in our solar system', 1, 100000000000000000000000000);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 1, 0, 0.05, 'Closest known exoplanet', 4, 7000000000000000000000000);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 8, 'Our solar system star', false, false, 1, 2000000000000000000000000000000);
INSERT INTO public.star VALUES (2, 'Sirius', 2, 'Brightest star in the night sky', false, false, 1, 4000000000000000000000000000000);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 0, 'Red supergiant star', false, true, 1, 20000000000000000000000000000000);
INSERT INTO public.star VALUES (4, 'Alpha Centauri A', 3, 'Part of a triple star system', false, false, 1, 2200000000000000000000000000000);
INSERT INTO public.star VALUES (5, 'Vega', 1, 'Bright star in the Lyra constellation', false, false, 1, 4500000000000000000000000000000);
INSERT INTO public.star VALUES (6, 'Antares', 1, 'Red supergiant star in Scorpius', false, true, 1, 30000000000000000000000000000000);
INSERT INTO public.star VALUES (7, 'Kepler-186', 5, 'Star with a potentially habitable exoplanet', false, false, 1, 1500000000000000000000000000000);
INSERT INTO public.star VALUES (8, 'Trappist-1', 7, 'Ultra-cool red dwarf star', false, false, 1, 180000000000000000000000000000);
INSERT INTO public.star VALUES (9, 'Gliese 581', 6, 'Red dwarf star', false, false, 1, 600000000000000000000000000000);


--
-- Name: astronomer_astronomer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_astronomer_id_seq', 7, true);


--
-- Name: astronomer_galaxy_astronomer_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_galaxy_astronomer_galaxy_id_seq', 6, true);


--
-- Name: astronomer_moon_astronomer_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_moon_astronomer_moon_id_seq', 40, true);


--
-- Name: astronomer_planet_astronomer_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_planet_astronomer_planet_id_seq', 12, true);


--
-- Name: astronomer_star_astronomer_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomer_star_astronomer_star_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 80, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 48, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomer astronomer_astronomer_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_astronomer_id_key UNIQUE (astronomer_id);


--
-- Name: astronomer_galaxy astronomer_galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_galaxy
    ADD CONSTRAINT astronomer_galaxy_name_key UNIQUE (name);


--
-- Name: astronomer_galaxy astronomer_galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_galaxy
    ADD CONSTRAINT astronomer_galaxy_pkey PRIMARY KEY (astronomer_galaxy_id);


--
-- Name: astronomer_moon astronomer_moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_moon
    ADD CONSTRAINT astronomer_moon_name_key UNIQUE (name);


--
-- Name: astronomer_moon astronomer_moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_moon
    ADD CONSTRAINT astronomer_moon_pkey PRIMARY KEY (astronomer_moon_id);


--
-- Name: astronomer astronomer_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_name_key UNIQUE (name);


--
-- Name: astronomer astronomer_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer
    ADD CONSTRAINT astronomer_pkey PRIMARY KEY (astronomer_id);


--
-- Name: astronomer_planet astronomer_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_planet
    ADD CONSTRAINT astronomer_planet_name_key UNIQUE (name);


--
-- Name: astronomer_planet astronomer_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_planet
    ADD CONSTRAINT astronomer_planet_pkey PRIMARY KEY (astronomer_planet_id);


--
-- Name: astronomer_star astronomer_star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_star
    ADD CONSTRAINT astronomer_star_name_key UNIQUE (name);


--
-- Name: astronomer_star astronomer_star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_star
    ADD CONSTRAINT astronomer_star_pkey PRIMARY KEY (astronomer_star_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


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
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


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
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: astronomer_galaxy astronomer_galaxy_astronomer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_galaxy
    ADD CONSTRAINT astronomer_galaxy_astronomer_id_fkey FOREIGN KEY (astronomer_id) REFERENCES public.astronomer(astronomer_id);


--
-- Name: astronomer_galaxy astronomer_galaxy_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_galaxy
    ADD CONSTRAINT astronomer_galaxy_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: astronomer_moon astronomer_moon_astronomer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_moon
    ADD CONSTRAINT astronomer_moon_astronomer_id_fkey FOREIGN KEY (astronomer_id) REFERENCES public.astronomer(astronomer_id);


--
-- Name: astronomer_moon astronomer_moon_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_moon
    ADD CONSTRAINT astronomer_moon_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


--
-- Name: astronomer_planet astronomer_planet_astronomer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_planet
    ADD CONSTRAINT astronomer_planet_astronomer_id_fkey FOREIGN KEY (astronomer_id) REFERENCES public.astronomer(astronomer_id);


--
-- Name: astronomer_planet astronomer_planet_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_planet
    ADD CONSTRAINT astronomer_planet_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: astronomer_star astronomer_star_astronomer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_star
    ADD CONSTRAINT astronomer_star_astronomer_id_fkey FOREIGN KEY (astronomer_id) REFERENCES public.astronomer(astronomer_id);


--
-- Name: astronomer_star astronomer_star_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomer_star
    ADD CONSTRAINT astronomer_star_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

