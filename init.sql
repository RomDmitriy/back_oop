--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-19 22:40:51

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
-- TOC entry 2 (class 3079 OID 16384)
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- TOC entry 3334 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


--
-- TOC entry 215 (class 1259 OID 16420)
-- Name: books_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.books_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_id_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16421)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer DEFAULT nextval('public.books_id_seq'::regclass) NOT NULL,
    name text,
    author text,
    country text,
    year text,
    index text,
    date_in text,
    added_date text,
    web text,
    description text,
    curr_user text
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16427)
-- Name: readers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.readers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.readers_id_seq OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16428)
-- Name: readers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.readers (
    id integer DEFAULT nextval('public.readers_id_seq'::regclass) NOT NULL,
    full_name text,
    phone_number text
);


ALTER TABLE public.readers OWNER TO postgres;

--
-- TOC entry 3326 (class 0 OID 16421)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books VALUES (16, 'Book name', 'Tolstoy', 'Russia', '2000', '123456', '2021 10 05', '2002 10 05', 'bookname.com', 'Some descript', '10');
INSERT INTO public.books VALUES (17, 'Kaslana', 'Pobedynskiy', 'Russia', '1500', '123456', '2021 10 04', '2002 10 05', 'bookname.com', 'Some descript', '10');
INSERT INTO public.books VALUES (18, 'Fanta', 'Minin', 'Russia', '1945', '123456', '2021 12 10', '2000 05 03', 'fanta.com', 'Some descript', '189');
INSERT INTO public.books VALUES (19, 'Rascol', 'Pobedynskiy', 'Russia', '1800', '603000', '2021 10 05', '2002 10 05', 'bookname.com', 'Some descript', '10');
INSERT INTO public.books VALUES (20, 'Petrov', 'Pobedynskiy', 'Canada', '2001', '603000', '2020 11 07', '2002 10 05', 'Petrenko.com', 'Some descript', '99');
INSERT INTO public.books VALUES (21, 'ыфв', 'ыфв', 'ыфв', 'ыфв', 'ыфвфыв', 'фывфыв', 'фыв', 'ыфвыфв', 'ыфвфыв', 'Петя');


--
-- TOC entry 3328 (class 0 OID 16428)
-- Dependencies: 218
-- Data for Name: readers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.readers VALUES (0, 'dsads', 'dsadsad');
INSERT INTO public.readers VALUES (1, 'dsads', 'sd2323');
INSERT INTO public.readers VALUES (2, '1312123123123', '123123');
INSERT INTO public.readers VALUES (3, 'Петя', '8902121545453');
INSERT INTO public.readers VALUES (0, 'dsads', 'dsadsad');
INSERT INTO public.readers VALUES (1, 'dsads', 'sd2323');
INSERT INTO public.readers VALUES (2, '1312123123123', '123123');
INSERT INTO public.readers VALUES (3, 'Петя', '8902121545453');
INSERT INTO public.readers VALUES (8, '10', '8902121545453');


--
-- TOC entry 3335 (class 0 OID 0)
-- Dependencies: 215
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 21, true);


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 217
-- Name: readers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.readers_id_seq', 18, true);


--
-- TOC entry 3182 (class 2606 OID 16435)
-- Name: books books_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_id PRIMARY KEY (id);


-- Completed on 2022-12-19 22:40:51

--
-- PostgreSQL database dump complete
--

