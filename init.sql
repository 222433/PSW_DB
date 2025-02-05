--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2 (Debian 17.2-1.pgdg120+1)
-- Dumped by pg_dump version 17.2

-- Started on 2025-02-05 17:26:28 UTC

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
-- TOC entry 218 (class 1259 OID 16390)
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
-- Dependencies: 218
-- Name: evaluation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.evaluation_id_seq OWNED BY public.evaluation.id;


--
-- TOC entry 219 (class 1259 OID 16391)
-- Name: file; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.file (
    name text NOT NULL,
    path text NOT NULL,
    id integer NOT NULL
);


ALTER TABLE public.file OWNER TO "rootDB";

--
-- TOC entry 220 (class 1259 OID 16396)
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
-- Dependencies: 220
-- Name: file_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.file_id_seq OWNED BY public.file.id;


--
-- TOC entry 221 (class 1259 OID 16397)
-- Name: submission; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.submission (
    moodle_sub_id bigint NOT NULL,
    time_created date,
    id integer NOT NULL,
    assignment_id integer
);


ALTER TABLE public.submission OWNER TO "rootDB";

--
-- TOC entry 222 (class 1259 OID 16402)
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
-- Dependencies: 222
-- Name: submission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.submission_id_seq OWNED BY public.submission.id;


--
-- TOC entry 223 (class 1259 OID 16403)
-- Name: submissionfile; Type: TABLE; Schema: public; Owner: rootDB
--

CREATE TABLE public.submissionfile (
    submission_id bigint,
    file_id bigint,
    id integer NOT NULL
);


ALTER TABLE public.submissionfile OWNER TO "rootDB";

--
-- TOC entry 224 (class 1259 OID 16406)
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
-- Dependencies: 224
-- Name: submissionfile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: rootDB
--

ALTER SEQUENCE public.submissionfile_id_seq OWNED BY public.submissionfile.id;


--
-- TOC entry 3225 (class 2604 OID 16407)
-- Name: evaluation id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.evaluation ALTER COLUMN id SET DEFAULT nextval('public.evaluation_id_seq'::regclass);


--
-- TOC entry 3226 (class 2604 OID 16408)
-- Name: file id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.file ALTER COLUMN id SET DEFAULT nextval('public.file_id_seq'::regclass);


--
-- TOC entry 3227 (class 2604 OID 16409)
-- Name: submission id; Type: DEFAULT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submission ALTER COLUMN id SET DEFAULT nextval('public.submission_id_seq'::regclass);


--
-- TOC entry 3228 (class 2604 OID 16410)
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
-- TOC entry 3384 (class 0 OID 16391)
-- Dependencies: 219
-- Data for Name: file; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.file (name, path, id) FROM stdin;
\.


--
-- TOC entry 3386 (class 0 OID 16397)
-- Dependencies: 221
-- Data for Name: submission; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.submission (moodle_sub_id, time_created, id, assignment_id) FROM stdin;

--
-- TOC entry 3388 (class 0 OID 16403)
-- Dependencies: 223
-- Data for Name: submissionfile; Type: TABLE DATA; Schema: public; Owner: rootDB
--

COPY public.submissionfile (submission_id, file_id, id) FROM stdin;
\.


--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 218
-- Name: evaluation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.evaluation_id_seq', 1, false);


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 220
-- Name: file_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.file_id_seq', 1, false);


--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 222
-- Name: submission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.submission_id_seq', 4, true);


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 224
-- Name: submissionfile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: rootDB
--

SELECT pg_catalog.setval('public.submissionfile_id_seq', 1, false);


--
-- TOC entry 3230 (class 2606 OID 16412)
-- Name: evaluation evaluation_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.evaluation
    ADD CONSTRAINT evaluation_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 16414)
-- Name: file file_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.file
    ADD CONSTRAINT file_pkey PRIMARY KEY (id);


--
-- TOC entry 3234 (class 2606 OID 16416)
-- Name: submission submission_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submission
    ADD CONSTRAINT submission_pkey PRIMARY KEY (id);


--
-- TOC entry 3236 (class 2606 OID 16418)
-- Name: submissionfile submissionfile_pkey; Type: CONSTRAINT; Schema: public; Owner: rootDB
--

ALTER TABLE ONLY public.submissionfile
    ADD CONSTRAINT submissionfile_pkey PRIMARY KEY (id);


-- Completed on 2025-02-05 17:26:28 UTC

--
-- PostgreSQL database dump complete
--

