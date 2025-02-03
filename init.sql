--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-03 22:34:14 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 217 (class 1259 OID 16385)
-- Name: evaluation; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.evaluation (
    submission_id bigint NOT NULL,
    grade smallint,
    comment text,
    id integer NOT NULL
);


ALTER TABLE public.evaluation OWNER TO "rootDB";

--
-- TOC entry 224 (class 1259 OID 24620)
-- Name: evaluation_id_seq; Type: SEQUENCE; Schema: public; Owner: rootDB
--

CREATE SEQUENCE public.evaluation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.evaluation_id_seq OWNER TO "rootDB";

--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 224
-- Name: evaluation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.evaluation_id_seq OWNED BY public.evaluation.id;


--
-- TOC entry 218 (class 1259 OID 16390)
-- Name: file; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.file (
    name text NOT NULL,
    path text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.file OWNER TO "rootDB";

--
-- TOC entry 223 (class 1259 OID 24611)
-- Name: file_id_seq; Type: SEQUENCE; Schema: public; Owner: rootDB
--

CREATE SEQUENCE public.file_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.file_id_seq OWNER TO "rootDB";

--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 223
-- Name: file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.file_id_seq OWNED BY public.file.id;


--
-- TOC entry 219 (class 1259 OID 16395)
-- Name: submission; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.submission (
    moodle_sub_id bigint NOT NULL,
    status text,
    time_created date,
    submisionfileid bigint,
    id integer NOT NULL
);


ALTER TABLE public.submission OWNER TO "rootDB";

--
-- TOC entry 221 (class 1259 OID 24595)
-- Name: submission_id_seq; Type: SEQUENCE; Schema: public; Owner: rootDB
--

CREATE SEQUENCE public.submission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.submission_id_seq OWNER TO "rootDB";

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 221
-- Name: submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.submission_id_seq OWNED BY public.submission.id;


--
-- TOC entry 220 (class 1259 OID 16400)
-- Name: submissionfile; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.submissionfile (
    submission_id bigint,
    file_id bigint,
    id integer NOT NULL
);


ALTER TABLE public.submissionfile OWNER TO "rootDB";

--
-- TOC entry 222 (class 1259 OID 24604)
-- Name: submissionfile_id_seq; Type: SEQUENCE; Schema: public; Owner: rootDB
--

CREATE SEQUENCE public.submissionfile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.submissionfile_id_seq OWNER TO "rootDB";

--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 222
-- Name: submissionfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.submissionfile_id_seq OWNED BY public.submissionfile.id;


--
-- TOC entry 3225 (class 2604 OID 24621)
-- Name: evaluation id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.evaluation ALTER COLUMN id SET DEFAULT nextval('public.evaluation_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 24612)
-- Name: file id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.file ALTER COLUMN id SET DEFAULT nextval('public.file_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 24596)
-- Name: submission id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submission ALTER COLUMN id SET DEFAULT nextval('public.submission_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 24605)
-- Name: submissionfile id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submissionfile ALTER COLUMN id SET DEFAULT nextval('public.submissionfile_id_seq'::regclass);


--
-- TOC entry 3382 (class 0 OID 16385)
-- Dependencies: 217
-- Data for Name: evaluation; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.evaluation (submission_id, grade, comment, id) FROM stdin;
\.


--
-- TOC entry 3383 (class 0 OID 16390)
-- Dependencies: 218
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.file (name, path, id) FROM stdin;
\.


--
-- TOC entry 3384 (class 0 OID 16395)
-- Dependencies: 219
-- Data for Name: submission; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.submission (moodle_sub_id, status, time_created, submisionfileid, id) FROM stdin;
0	string	2025-01-01	\N	1
0	string	2025-01-01	\N	2
12	string	2025-01-01	\N	3
1	asd	2025-01-01	1	4
\.


--
-- TOC entry 3385 (class 0 OID 16400)
-- Dependencies: 220
-- Data for Name: submissionfile; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.submissionfile (submission_id, file_id, id) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 224
-- Name: evaluation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.evaluation_id_seq', 1, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 223
-- Name: file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.file_id_seq', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 221
-- Name: submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.submission_id_seq', 4, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 222
-- Name: submissionfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.submissionfile_id_seq', 1, false);


--
-- TOC entry 3230 (class 2606 OID 24628)
-- Name: evaluation evaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 24619)
-- Name: file file_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 24603)
-- Name: submission submission_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submission
    ADD CONSTRAINT submission_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 24610)
-- Name: submissionfile submissionfile_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submissionfile
    ADD CONSTRAINT submissionfile_pkey PRIMARY KEY (id);


-- Completed on 2025-02-03 22:34:14 UTC

--
-- PostgreSQL database dump complete
--

