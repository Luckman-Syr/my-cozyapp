--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3
-- Dumped by pg_dump version 14.2

-- Started on 2023-05-27 00:06:55

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

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3313 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 34829)
-- Name: recomended_space; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.recomended_space (
    id integer NOT NULL,
    name character varying,
    imageurl character varying,
    price integer,
    city character varying,
    country character varying,
    rating integer,
    address character varying,
    phone character varying,
    mapurl character varying,
    photos jsonb,
    numberofkitchens integer,
    numberofbedrooms integer,
    numberofcupboards integer
);


ALTER TABLE public.recomended_space OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 34828)
-- Name: recomended_space_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.recomended_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.recomended_space_id_seq OWNER TO postgres;

--
-- TOC entry 3314 (class 0 OID 0)
-- Dependencies: 209
-- Name: recomended_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.recomended_space_id_seq OWNED BY public.recomended_space.id;


--
-- TOC entry 3164 (class 2604 OID 34832)
-- Name: recomended_space id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recomended_space ALTER COLUMN id SET DEFAULT nextval('public.recomended_space_id_seq'::regclass);


--
-- TOC entry 3307 (class 0 OID 34829)
-- Dependencies: 210
-- Data for Name: recomended_space; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.recomended_space (id, name, imageurl, price, city, country, rating, address, phone, mapurl, photos, numberofkitchens, numberofbedrooms, numberofcupboards) FROM stdin;
2	Emerald Stay	https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8aG91c2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60	45	Jakarta	Indonesia	5	Jl. Ahmad Yani No. 1	08992122122	https://goo.gl/maps/gaShS1JTmKC3BpxAA?coh=178573&entry=tt	{"photos": ["https://images.unsplash.com/photo-1562663474-6cbb3eaa4d14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80", "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=958&q=80", "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"]}	1	2	2
1	Sanctuary Home	https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8aG91c2V8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60	48	Jakarta	Indonesia	5	Jl. Ahmad Yani No. 1	08992122122	https://goo.gl/maps/gaShS1JTmKC3BpxAA?coh=178573&entry=tt	{"photos": ["https://images.unsplash.com/photo-1562663474-6cbb3eaa4d14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80", "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=958&q=80", "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"]}	1	3	3
3	Santo Rini	https://images.unsplash.com/photo-1600585154340-be6161a56a0c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80	48	Jakarta	Indonesia	4	Jl. Ahmad Yani No. 1	08992122122	https://goo.gl/maps/gaShS1JTmKC3BpxAA?coh=178573&entry=tt	{"photos": ["https://images.unsplash.com/photo-1562663474-6cbb3eaa4d14?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80", "https://images.unsplash.com/photo-1586023492125-27b2c045efd7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=958&q=80", "https://images.unsplash.com/photo-1583847268964-b28dc8f51f92?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80"]}	1	2	3
\.


--
-- TOC entry 3315 (class 0 OID 0)
-- Dependencies: 209
-- Name: recomended_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recomended_space_id_seq', 3, true);


--
-- TOC entry 3166 (class 2606 OID 34836)
-- Name: recomended_space recomended_space_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.recomended_space
    ADD CONSTRAINT recomended_space_pk PRIMARY KEY (id);


-- Completed on 2023-05-27 00:06:56

--
-- PostgreSQL database dump complete
--

