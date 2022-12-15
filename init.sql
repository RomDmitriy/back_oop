--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1
-- Dumped by pg_dump version 15.0

-- Started on 2022-12-15 11:32:24

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
-- TOC entry 217 (class 1259 OID 16416)
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
-- TOC entry 216 (class 1259 OID 16411)
-- Name: books; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.books (
    id integer DEFAULT nextval('public.books_id_seq'::regclass) NOT NULL,
    value text
);


ALTER TABLE public.books OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16406)
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
-- TOC entry 214 (class 1259 OID 16399)
-- Name: readers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.readers (
    id integer DEFAULT nextval('public.readers_id_seq'::regclass) NOT NULL,
    value text
);


ALTER TABLE public.readers OWNER TO postgres;

--
-- TOC entry 3328 (class 0 OID 16411)
-- Dependencies: 216
-- Data for Name: books; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.books (id, value) VALUES (4, 'Водка Пиво');
INSERT INTO public.books (id, value) VALUES (5, 'Артём а');
INSERT INTO public.books (id, value) VALUES (6, 'Тест тест');


--
-- TOC entry 3326 (class 0 OID 16399)
-- Dependencies: 214
-- Data for Name: readers; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.readers (id, value) VALUES (7, 'Водка Пиво');
INSERT INTO public.readers (id, value) VALUES (8, 'Артём');
INSERT INTO public.readers (id, value) VALUES (9, 'Тест тест');


--
-- TOC entry 3336 (class 0 OID 0)
-- Dependencies: 217
-- Name: books_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.books_id_seq', 6, true);


--
-- TOC entry 3337 (class 0 OID 0)
-- Dependencies: 215
-- Name: readers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.readers_id_seq', 9, true);


--
-- TOC entry 3181 (class 2606 OID 16405)
-- Name: readers id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.readers
    ADD CONSTRAINT id PRIMARY KEY (id) INCLUDE (id);


--
-- TOC entry 3183 (class 2606 OID 16415)
-- Name: books id_books; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.books
    ADD CONSTRAINT id_books PRIMARY KEY (id);


-- Completed on 2022-12-15 11:32:24

--
-- PostgreSQL database dump complete
--

