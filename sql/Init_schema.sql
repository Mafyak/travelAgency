--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: hotel_features; Type: TYPE; Schema: public; Owner: Siarhei_Huba
--

CREATE TYPE public.hotel_features AS ENUM (
    'WI_FI',
    'PET_FRIENDLY',
    'WASHER',
    'DRYER',
    'FREE_BREAKFAST',
    'GARAGE',
    'CONDITIONING',
    'OCEAN_VIEW'
);


ALTER TYPE public.hotel_features OWNER TO "Siarhei_Huba";

--
-- Name: tour_type; Type: TYPE; Schema: public; Owner: Siarhei_Huba
--

CREATE TYPE public.tour_type AS ENUM (
    'Bustour',
    'Family',
    'Walking',
    'Museums',
    'Sightseeing'
);


ALTER TYPE public.tour_type OWNER TO "Siarhei_Huba";

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: Country; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."Country" (
    id integer NOT NULL,
    name character varying(40)
);


ALTER TABLE public."Country" OWNER TO "Siarhei_Huba";

--
-- Name: Country_id_seq; Type: SEQUENCE; Schema: public; Owner: Siarhei_Huba
--

CREATE SEQUENCE public."Country_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Country_id_seq" OWNER TO "Siarhei_Huba";

--
-- Name: Country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Siarhei_Huba
--

ALTER SEQUENCE public."Country_id_seq" OWNED BY public."Country".id;


--
-- Name: Hotel; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."Hotel" (
    id integer NOT NULL,
    name character varying(40),
    stars smallint,
    website character varying(50),
    lalitude double precision,
    longitude double precision,
    features public.hotel_features[]
);


ALTER TABLE public."Hotel" OWNER TO "Siarhei_Huba";

--
-- Name: Hotel_id_seq; Type: SEQUENCE; Schema: public; Owner: Siarhei_Huba
--

CREATE SEQUENCE public."Hotel_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Hotel_id_seq" OWNER TO "Siarhei_Huba";

--
-- Name: Hotel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Siarhei_Huba
--

ALTER SEQUENCE public."Hotel_id_seq" OWNED BY public."Hotel".id;


--
-- Name: Review; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."Review" (
    id integer NOT NULL,
    date date,
    text text,
    user_id integer,
    tour_id integer
);


ALTER TABLE public."Review" OWNER TO "Siarhei_Huba";

--
-- Name: Review_id_seq; Type: SEQUENCE; Schema: public; Owner: Siarhei_Huba
--

CREATE SEQUENCE public."Review_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Review_id_seq" OWNER TO "Siarhei_Huba";

--
-- Name: Review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Siarhei_Huba
--

ALTER SEQUENCE public."Review_id_seq" OWNED BY public."Review".id;


--
-- Name: Tour; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."Tour" (
    id integer NOT NULL,
    photo character varying(50),
    date date,
    duration integer,
    description text,
    cost double precision,
    tour_type public.tour_type,
    hotel_id integer,
    country_id integer
);


ALTER TABLE public."Tour" OWNER TO "Siarhei_Huba";

--
-- Name: Tour_id_seq; Type: SEQUENCE; Schema: public; Owner: Siarhei_Huba
--

CREATE SEQUENCE public."Tour_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tour_id_seq" OWNER TO "Siarhei_Huba";

--
-- Name: Tour_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Siarhei_Huba
--

ALTER SEQUENCE public."Tour_id_seq" OWNED BY public."Tour".id;


--
-- Name: User; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."User" (
    id integer NOT NULL,
    login character varying(15) NOT NULL,
    password character varying(15) NOT NULL
);


ALTER TABLE public."User" OWNER TO "Siarhei_Huba";

--
-- Name: UserTour; Type: TABLE; Schema: public; Owner: Siarhei_Huba
--

CREATE TABLE public."UserTour" (
    user_id integer,
    tour_id integer
);


ALTER TABLE public."UserTour" OWNER TO "Siarhei_Huba";

--
-- Name: User_id_seq; Type: SEQUENCE; Schema: public; Owner: Siarhei_Huba
--

CREATE SEQUENCE public."User_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."User_id_seq" OWNER TO "Siarhei_Huba";

--
-- Name: User_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Siarhei_Huba
--

ALTER SEQUENCE public."User_id_seq" OWNED BY public."User".id;


--
-- Name: Country id; Type: DEFAULT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Country" ALTER COLUMN id SET DEFAULT nextval('public."Country_id_seq"'::regclass);


--
-- Name: Hotel id; Type: DEFAULT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Hotel" ALTER COLUMN id SET DEFAULT nextval('public."Hotel_id_seq"'::regclass);


--
-- Name: Review id; Type: DEFAULT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Review" ALTER COLUMN id SET DEFAULT nextval('public."Review_id_seq"'::regclass);


--
-- Name: Tour id; Type: DEFAULT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Tour" ALTER COLUMN id SET DEFAULT nextval('public."Tour_id_seq"'::regclass);


--
-- Name: User id; Type: DEFAULT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."User" ALTER COLUMN id SET DEFAULT nextval('public."User_id_seq"'::regclass);


--
-- Name: Country Country_pkey; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT "Country_pkey" PRIMARY KEY (id);


--
-- Name: Hotel Hotel_pkey; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Hotel"
    ADD CONSTRAINT "Hotel_pkey" PRIMARY KEY (id);


--
-- Name: Review Review_pkey; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT "Review_pkey" PRIMARY KEY (id);


--
-- Name: Tour Tour_pkey; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Tour"
    ADD CONSTRAINT "Tour_pkey" PRIMARY KEY (id);


--
-- Name: User id; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."User"
    ADD CONSTRAINT id PRIMARY KEY (id);


--
-- Name: Country name; Type: CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Country"
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: Tour country_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Tour"
    ADD CONSTRAINT country_id FOREIGN KEY (country_id) REFERENCES public."Country"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Tour hotel_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Tour"
    ADD CONSTRAINT hotel_id FOREIGN KEY (hotel_id) REFERENCES public."Hotel"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: UserTour tour_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."UserTour"
    ADD CONSTRAINT tour_id FOREIGN KEY (user_id) REFERENCES public."Tour"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Review tour_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT tour_id FOREIGN KEY (tour_id) REFERENCES public."Tour"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: UserTour user_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."UserTour"
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: Review user_id; Type: FK CONSTRAINT; Schema: public; Owner: Siarhei_Huba
--

ALTER TABLE ONLY public."Review"
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public."User"(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

