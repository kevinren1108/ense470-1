--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3
-- Dumped by pg_dump version 10.3

-- Started on 2018-04-10 00:28:45

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2844 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 16880)
-- Name: ApproverLists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."ApproverLists" (
    id integer NOT NULL,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "SoftwareId" integer,
    "UserId" integer
);


--
-- TOC entry 197 (class 1259 OID 16883)
-- Name: ApproverLists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."ApproverLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2845 (class 0 OID 0)
-- Dependencies: 197
-- Name: ApproverLists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."ApproverLists_id_seq" OWNED BY public."ApproverLists".id;


--
-- TOC entry 198 (class 1259 OID 16885)
-- Name: SoftwareLists; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."SoftwareLists" (
    id integer NOT NULL,
    "softwareName" character varying(255),
    "softwareAcrynom" character varying(255),
    "softwareActivationLink" character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 199 (class 1259 OID 16891)
-- Name: SoftwareLists_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."SoftwareLists_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2846 (class 0 OID 0)
-- Dependencies: 199
-- Name: SoftwareLists_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."SoftwareLists_id_seq" OWNED BY public."SoftwareLists".id;


--
-- TOC entry 200 (class 1259 OID 16893)
-- Name: Tickets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Tickets" (
    id integer NOT NULL,
    approval_status character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL,
    "SoftwareId" integer,
    "UserId" integer
);


--
-- TOC entry 201 (class 1259 OID 16896)
-- Name: Tickets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Tickets_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2847 (class 0 OID 0)
-- Dependencies: 201
-- Name: Tickets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Tickets_id_seq" OWNED BY public."Tickets".id;


--
-- TOC entry 202 (class 1259 OID 16898)
-- Name: Users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."Users" (
    id integer NOT NULL,
    first__name character varying(255),
    last__name character varying(255),
    email character varying(255),
    password character varying(255),
    account__type integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 16904)
-- Name: Users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public."Users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 2848 (class 0 OID 0)
-- Dependencies: 203
-- Name: Users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public."Users_id_seq" OWNED BY public."Users".id;


--
-- TOC entry 2690 (class 2604 OID 16906)
-- Name: ApproverLists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApproverLists" ALTER COLUMN id SET DEFAULT nextval('public."ApproverLists_id_seq"'::regclass);


--
-- TOC entry 2691 (class 2604 OID 16907)
-- Name: SoftwareLists id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SoftwareLists" ALTER COLUMN id SET DEFAULT nextval('public."SoftwareLists_id_seq"'::regclass);


--
-- TOC entry 2692 (class 2604 OID 16908)
-- Name: Tickets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets" ALTER COLUMN id SET DEFAULT nextval('public."Tickets_id_seq"'::regclass);


--
-- TOC entry 2693 (class 2604 OID 16909)
-- Name: Users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users" ALTER COLUMN id SET DEFAULT nextval('public."Users_id_seq"'::regclass);


--
-- TOC entry 2829 (class 0 OID 16880)
-- Dependencies: 196
-- Data for Name: ApproverLists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."ApproverLists" (id, "createdAt", "updatedAt", "SoftwareId", "UserId") FROM stdin;
1	2018-04-09 20:37:31.101-06	2018-04-09 20:37:31.101-06	45	1
2	2018-04-09 20:43:36.447-06	2018-04-09 20:43:36.447-06	1	1
3	2018-04-09 20:43:36.665-06	2018-04-09 20:43:36.665-06	1	26
4	2018-04-09 20:43:36.728-06	2018-04-09 20:43:36.728-06	2	1
5	2018-04-09 20:43:36.769-06	2018-04-09 20:43:36.769-06	2	26
6	2018-04-09 20:43:36.813-06	2018-04-09 20:43:36.813-06	3	73
7	2018-04-09 20:43:36.851-06	2018-04-09 20:43:36.851-06	4	2
8	2018-04-09 20:43:36.899-06	2018-04-09 20:43:36.899-06	5	11
9	2018-04-09 20:43:36.934-06	2018-04-09 20:43:36.934-06	6	12
10	2018-04-09 20:43:36.972-06	2018-04-09 20:43:36.972-06	7	15
11	2018-04-09 20:43:37.013-06	2018-04-09 20:43:37.013-06	8	18
12	2018-04-09 20:43:37.097-06	2018-04-09 20:43:37.097-06	9	19
13	2018-04-09 20:43:37.161-06	2018-04-09 20:43:37.161-06	9	36
14	2018-04-09 20:43:37.206-06	2018-04-09 20:43:37.206-06	10	20
15	2018-04-09 20:43:37.265-06	2018-04-09 20:43:37.265-06	11	22
16	2018-04-09 20:43:37.33-06	2018-04-09 20:43:37.33-06	12	23
17	2018-04-09 20:43:37.384-06	2018-04-09 20:43:37.384-06	12	52
18	2018-04-09 20:43:37.415-06	2018-04-09 20:43:37.415-06	13	24
19	2018-04-09 20:43:37.444-06	2018-04-09 20:43:37.444-06	14	29
20	2018-04-09 20:43:37.473-06	2018-04-09 20:43:37.473-06	15	31
21	2018-04-09 20:43:37.502-06	2018-04-09 20:43:37.502-06	16	32
22	2018-04-09 20:43:37.529-06	2018-04-09 20:43:37.529-06	17	36
23	2018-04-09 20:43:37.562-06	2018-04-09 20:43:37.562-06	18	38
24	2018-04-09 20:43:37.59-06	2018-04-09 20:43:37.59-06	19	39
25	2018-04-09 20:43:37.615-06	2018-04-09 20:43:37.615-06	20	44
26	2018-04-09 20:43:37.639-06	2018-04-09 20:43:37.639-06	21	47
27	2018-04-09 20:43:37.666-06	2018-04-09 20:43:37.666-06	22	48
28	2018-04-09 20:43:37.697-06	2018-04-09 20:43:37.697-06	23	52
29	2018-04-09 20:43:37.725-06	2018-04-09 20:43:37.725-06	23	23
30	2018-04-09 20:43:37.75-06	2018-04-09 20:43:37.75-06	24	56
31	2018-04-09 20:43:37.773-06	2018-04-09 20:43:37.773-06	25	57
32	2018-04-09 20:43:37.797-06	2018-04-09 20:43:37.797-06	26	58
33	2018-04-09 20:43:37.823-06	2018-04-09 20:43:37.823-06	27	61
34	2018-04-09 20:43:37.849-06	2018-04-09 20:43:37.849-06	28	65
35	2018-04-09 20:43:37.879-06	2018-04-09 20:43:37.879-06	29	66
36	2018-04-09 20:43:37.907-06	2018-04-09 20:43:37.907-06	30	67
37	2018-04-09 20:43:37.935-06	2018-04-09 20:43:37.935-06	31	68
38	2018-04-09 20:43:37.965-06	2018-04-09 20:43:37.965-06	32	69
39	2018-04-09 20:43:37.991-06	2018-04-09 20:43:37.991-06	33	71
40	2018-04-09 20:43:38.021-06	2018-04-09 20:43:38.021-06	34	6
41	2018-04-09 20:43:38.051-06	2018-04-09 20:43:38.051-06	35	8
42	2018-04-09 20:43:38.078-06	2018-04-09 20:43:38.078-06	36	3
43	2018-04-09 20:43:38.107-06	2018-04-09 20:43:38.107-06	37	10
44	2018-04-09 20:43:38.144-06	2018-04-09 20:43:38.144-06	38	16
45	2018-04-09 20:43:38.176-06	2018-04-09 20:43:38.176-06	39	14
46	2018-04-09 20:43:38.203-06	2018-04-09 20:43:38.203-06	40	27
47	2018-04-09 20:43:38.23-06	2018-04-09 20:43:38.23-06	41	34
48	2018-04-09 20:43:38.257-06	2018-04-09 20:43:38.257-06	42	35
49	2018-04-09 20:43:38.287-06	2018-04-09 20:43:38.287-06	43	42
50	2018-04-09 20:43:38.314-06	2018-04-09 20:43:38.314-06	44	43
51	2018-04-09 20:43:38.342-06	2018-04-09 20:43:38.342-06	45	46
52	2018-04-09 20:43:38.365-06	2018-04-09 20:43:38.365-06	46	45
53	2018-04-09 20:43:38.389-06	2018-04-09 20:43:38.389-06	47	55
54	2018-04-09 20:43:38.413-06	2018-04-09 20:43:38.413-06	48	64
55	2018-04-09 20:43:38.439-06	2018-04-09 20:43:38.439-06	49	72
56	2018-04-09 20:43:38.465-06	2018-04-09 20:43:38.465-06	50	28
57	2018-04-09 20:43:38.487-06	2018-04-09 20:43:38.487-06	51	49
58	2018-04-09 20:43:38.515-06	2018-04-09 20:43:38.515-06	52	54
59	2018-04-09 20:43:38.536-06	2018-04-09 20:43:38.536-06	53	60
60	2018-04-09 20:43:38.565-06	2018-04-09 20:43:38.565-06	54	9
61	2018-04-09 20:43:38.588-06	2018-04-09 20:43:38.588-06	55	21
62	2018-04-09 20:43:38.613-06	2018-04-09 20:43:38.613-06	56	26
63	2018-04-09 20:43:38.633-06	2018-04-09 20:43:38.633-06	56	1
64	2018-04-09 20:43:38.66-06	2018-04-09 20:43:38.66-06	57	33
65	2018-04-09 20:43:38.685-06	2018-04-09 20:43:38.685-06	58	62
66	2018-04-09 20:43:38.708-06	2018-04-09 20:43:38.708-06	59	13
67	2018-04-09 20:43:38.741-06	2018-04-09 20:43:38.741-06	60	37
68	2018-04-09 20:43:38.77-06	2018-04-09 20:43:38.77-06	61	41
69	2018-04-09 20:43:38.797-06	2018-04-09 20:43:38.797-06	62	5
70	2018-04-09 20:43:38.819-06	2018-04-09 20:43:38.819-06	63	4
71	2018-04-09 20:43:38.844-06	2018-04-09 20:43:38.844-06	64	64
72	2018-04-09 20:43:38.871-06	2018-04-09 20:43:38.871-06	65	17
73	2018-04-09 20:43:38.895-06	2018-04-09 20:43:38.895-06	66	30
74	2018-04-09 20:43:38.92-06	2018-04-09 20:43:38.92-06	67	40
75	2018-04-09 20:43:38.947-06	2018-04-09 20:43:38.947-06	68	51
76	2018-04-09 20:43:38.972-06	2018-04-09 20:43:38.972-06	69	50
77	2018-04-09 20:43:38.995-06	2018-04-09 20:43:38.995-06	70	59
78	2018-04-09 20:43:39.019-06	2018-04-09 20:43:39.019-06	71	25
79	2018-04-09 20:43:39.045-06	2018-04-09 20:43:39.045-06	72	53
80	2018-04-09 20:43:39.069-06	2018-04-09 20:43:39.069-06	73	63
81	2018-04-09 20:43:39.091-06	2018-04-09 20:43:39.091-06	74	70
\.


--
-- TOC entry 2831 (class 0 OID 16885)
-- Dependencies: 198
-- Data for Name: SoftwareLists; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."SoftwareLists" (id, "softwareName", "softwareAcrynom", "softwareActivationLink", "createdAt", "updatedAt") FROM stdin;
1	Remote Stroke Checker	N/A	ba7594ce-e12a-8e8f-cd85-64e04d97f81f	2018-04-08 16:29:08.828-06	2018-04-08 16:29:08.828-06
2	Remote Health Checker	N/A	87694b69-44d8-4b3a-1e14-6af5cfaa6e79	2018-04-08 16:29:09.475-06	2018-04-08 16:29:09.475-06
3	Lab Information System	LIS	9565fafc-6f0e-881f-ab18-e41549d62620	2018-04-08 16:29:10.565-06	2018-04-08 16:29:10.565-06
4	myeHealth (For Yukon, Northwest Territories, Nunavut)	N/A	8f8ba69d-5f33-407e-9fe7-317b60fa7c6d	2018-04-08 16:29:10.922-06	2018-04-08 16:29:10.922-06
5	Ambulance Schedule System	N/A	3d7edca4-52a1-33e7-48d0-84411d9a3222	2018-04-08 16:29:11.54-06	2018-04-08 16:29:11.54-06
6	myeHealth (For Ontario)	N/A	19d0bade-2dcd-a45f-c547-b2efa3fb4ce6	2018-04-08 16:29:12.031-06	2018-04-08 16:29:12.031-06
7	Chronic Disease Management	N/A	fd191491-6f5a-4944-9740-68a2fdee5a74	2018-04-08 16:29:12.507-06	2018-04-08 16:29:12.507-06
8	Find a Doctor	FAD	4deee5a2-10d8-74ee-14bc-fcd1ceaebae4	2018-04-08 16:29:13.101-06	2018-04-08 16:29:13.101-06
9	Operating Map of Gastropathy	OMG	06c1b754-097a-3617-d895-20baf368f2aa	2018-04-08 16:29:13.754-06	2018-04-08 16:29:13.754-06
10	Heart Ultrasound Heatmaps	HUH	ef00a9c4-5971-782a-1093-c5e774365a76	2018-04-08 16:29:14.141-06	2018-04-08 16:29:14.141-06
11	Care Manager	N/A	765843b3-0607-5888-14d7-e0c0cbd0b985	2018-04-08 16:29:14.672-06	2018-04-08 16:29:14.672-06
12	Pharmaceutical Information Program	PIP	e20edd70-e392-ab62-c55e-34469273849c	2018-04-08 16:29:15.166-06	2018-04-08 16:29:15.166-06
13	Heart, Abdomen, and Head Assessor	HAHA	c94dc077-22cc-9df7-fc55-c4134334a66c	2018-04-08 16:29:15.642-06	2018-04-08 16:29:15.642-06
14	Patient Admitter Tool	PAT	f90ead9a-05df-9c70-c8bb-5e5b8ce7bdbf	2018-04-08 16:29:16.332-06	2018-04-08 16:29:16.332-06
15	Provider Coverage Viewer	PCV	f21c157c-41f4-005e-318d-e8ece6cf0854	2018-04-08 16:29:16.674-06	2018-04-08 16:29:16.674-06
16	Surgical Information System	SIS	ea5da6d4-756e-65f7-12c2-579c4b6ff933	2018-04-08 16:29:17.156-06	2018-04-08 16:29:17.156-06
17	Abdomen Tissue and Analysis Tool	AT-AT	966dd6ed-5daa-2f9b-b8b8-a1316976468d	2018-04-08 16:29:18.319-06	2018-04-08 16:29:18.319-06
18	Radiology Information System	RIS	958c965c-35e7-5d63-9cfd-1776572df39b	2018-04-08 16:29:18.755-06	2018-04-08 16:29:18.755-06
19	Download Urgent Medical Backups	DUMB	7154fafb-9ccf-55b8-442c-3eaa5f060473	2018-04-08 16:29:19.268-06	2018-04-08 16:29:19.268-06
20	Total Mastering of Incisions	TMI	1c330397-503f-8096-fdde-a9f2be839df6	2018-04-08 16:29:20.281-06	2018-04-08 16:29:20.281-06
21	PharmaCare	N/A	144fd8bc-c31b-2d67-1708-598cb66e5f05	2018-04-08 16:29:20.301-06	2018-04-08 16:29:20.301-06
22	myeHealth (for New Brunswick, Prince Edward Island, Nova Scotia, Newfoundland and Labrador)	N/A	0a2360df-3b64-119c-760b-0204de0bcd02	2018-04-08 16:29:21.526-06	2018-04-08 16:29:21.526-06
23	Drug Profile Viewer	DPV	7417574f-a416-200d-8862-1ec640efc46a	2018-04-08 16:29:21.534-06	2018-04-08 16:29:21.534-06
24	myeHealth (For Alberta, Saskatchewan, Manitoba)	N/A	81272288-cf71-73b0-7b63-e6a6600a4b3a	2018-04-08 16:29:21.54-06	2018-04-08 16:29:21.54-06
25	myeHealth (For British Columbia)	N/A	cd29a445-c472-55f5-3934-1bc07150d20e	2018-04-08 16:29:22.143-06	2018-04-08 16:29:22.143-06
26	Homecare System	N/A	67cb6516-718c-ae61-64f7-09baf7f4ecea	2018-04-08 16:29:22.663-06	2018-04-08 16:29:22.663-06
27	Clinical Admission Manager	N/A	69c1e7db-d673-1788-27ee-a21d41e5d7fd	2018-04-08 16:29:23.14-06	2018-04-08 16:29:23.14-06
28	Fixed Orthodontics Medical Operations 	FOMO	bf3fe830-3630-731e-d414-e5aec3536d17	2018-04-08 16:29:23.626-06	2018-04-08 16:29:23.626-06
29	myeHealth (For Quebec)	N/A	9df82453-a2b4-7e92-de40-df3f10ca5f95	2018-04-08 16:29:24.037-06	2018-04-08 16:29:24.037-06
30	Electronic Medical Record (Viewer)	EMR	d89581ac-19b4-ae69-20bd-ff13a6504c15	2018-04-08 16:29:24.453-06	2018-04-08 16:29:24.453-06
31	Provider Registry System	PRS	0938148d-ac17-f679-28bd-53cf3aba380f	2018-04-08 16:29:24.935-06	2018-04-08 16:29:24.935-06
32	eHealthChart	N/A	a6adfdfb-44f0-28a4-3de7-fddc0ec8b2cc	2018-04-08 16:29:25.446-06	2018-04-08 16:29:25.446-06
33	Ambulance Supply System	N/A	3b861951-7ddf-8ad4-c93d-47055ff87e12	2018-04-08 16:29:25.989-06	2018-04-08 16:29:25.989-06
34	Environmental Assessor Tool	N/A	33ba7cec-50e5-b39a-f8d4-4f821e504341	2018-04-08 16:29:26.463-06	2018-04-08 16:29:26.463-06
35	Water and Land Data Observer	WALDO	024f498b-2ae8-7a53-59fa-cbb0f2af5a69	2018-04-08 16:29:26.921-06	2018-04-08 16:29:26.921-06
36	Pollution Alerts Datamart	PAD	c24d7dbf-4ad2-cde4-c93a-12dfc30cb4c5	2018-04-08 16:29:27.387-06	2018-04-08 16:29:27.387-06
37	Weather Analyzer Software System Unix Platform	WASSUP	62cbadc7-9e28-dedf-f268-09d78e11652c	2018-04-08 16:29:27.803-06	2018-04-08 16:29:27.803-06
38	World Terrain & Forestry	WTF	eb682dd3-88e4-518d-367d-221fa6d3f190	2018-04-08 16:29:28.738-06	2018-04-08 16:29:28.738-06
39	Weather and Ozone Observation Knowledge Emulator Enterprise Edition	WOOKEEE	8946cf77-5e0a-ec4c-f8fd-64d77440885a	2018-04-08 16:29:29.106-06	2018-04-08 16:29:29.106-06
40	Snowmed Analyzer System Extended Edition	SASEE	eb3d04a2-eeaf-f379-4796-47aa017e9c87	2018-04-08 16:29:29.477-06	2018-04-08 16:29:29.477-06
41	Spillage Locator Tool	N/A	8f880082-b854-5377-5d12-729ddf70e8d4	2018-04-08 16:29:29.849-06	2018-04-08 16:29:29.849-06
42	Biosphere Air and Gas Interpreter	N/A	fdf5aff7-55ff-b573-8f8b-9146d07a3dbb	2018-04-08 16:29:30.458-06	2018-04-08 16:29:30.458-06
43	Waste Electronic & Wireless Equipment	WEWE	42e0309f-2ed7-c53c-b9e2-69114b00e8e9	2018-04-08 16:29:30.845-06	2018-04-08 16:29:30.845-06
44	National Ozone Observatory Bot	NOOB	d6b50ee3-de2f-2aeb-edb7-c61fe6430006	2018-04-08 16:29:31.681-06	2018-04-08 16:29:31.681-06
45	Clinical Data Repository	CDR	bf0119a1-a549-32a7-05a5-dfcd94e31428	2018-04-08 16:29:31.685-06	2018-04-08 16:29:31.685-06
46	Environmental Home Manager	N/A	78925409-c367-348c-2a7f-5507eb6368ca	2018-04-08 16:29:32.144-06	2018-04-08 16:29:32.144-06
47	Planetary Environmental Reference System	PERS	979dfa46-eb1c-baf5-2080-e520f649783d	2018-04-08 16:29:32.588-06	2018-04-08 16:29:32.588-06
48	Greenhouse Gas Analyzer	N/A	a3b635fe-d8c7-f748-62e5-653afcd88d0e	2018-04-08 16:29:33.184-06	2018-04-08 16:29:33.184-06
49	Northern Ozone & Ocean Biome	NOOB	278a97f0-22fb-41ea-085f-fe2a11610add	2018-04-08 16:29:33.5-06	2018-04-08 16:29:33.5-06
50	Storm Water Management	N/A	7ce991ec-7143-b951-d648-6110221146db	2018-04-08 16:29:33.986-06	2018-04-08 16:29:33.986-06
51	Sustainable Xeriscaping	SuX	f71bc024-1162-3ecf-6309-9e1f8e9810b0	2018-04-08 16:29:34.884-06	2018-04-08 16:29:34.884-06
52	Alternative Sewage System	N/A	aeec0cb0-7cff-e8ea-aeaa-175218428155	2018-04-08 16:29:35.776-06	2018-04-08 16:29:35.776-06
53	Original Record of Landscape and Yards	ORLY	1e0ce350-f4ed-1d8a-3926-5ca387b80e00	2018-04-08 16:29:36.125-06	2018-04-08 16:29:36.125-06
54	Waste Observation System	N/A	46a80ab3-809d-b686-82f6-27f99407645c	2018-04-08 16:29:37.133-06	2018-04-08 16:29:37.133-06
55	List of Transactions and Redactions	LOTR	15019056-4174-918b-f8c9-8ef696eedb99	2018-04-08 16:29:37.137-06	2018-04-08 16:29:37.137-06
56	TeleCare	N/A	7df9daf0-7f79-724f-e06b-119d0bc7f99d	2018-04-08 16:29:37.988-06	2018-04-08 16:29:37.988-06
57	Data & Utility Heuristics	DUH	4244ea36-7fbb-9e9f-9abd-01e25439d9bf	2018-04-08 16:29:38.42-06	2018-04-08 16:29:38.42-06
58	Relational Observation System Limited	ROFL	b692d492-fd6e-3695-b4ef-8bc17cd0f7f3	2018-04-08 16:29:38.803-06	2018-04-08 16:29:38.803-06
59	Netcare Occupation & Observation Base System	NOOBS	8f3371ce-2e8d-f0ff-7ec9-cf4247104da1	2018-04-08 16:29:39.252-06	2018-04-08 16:29:39.252-06
60	Transcription Magic Interpreter	TMI	be3244d6-83a8-f854-e6fe-5774e664d53c	2018-04-08 16:29:40.2-06	2018-04-08 16:29:40.2-06
61	eReferral	N/A	d7c1fb5a-4436-0b45-b0d3-40a975437f36	2018-04-08 16:29:40.204-06	2018-04-08 16:29:40.204-06
62	Limited Operating Liability	LOL	e19262ae-fe5f-5d1f-c954-6683ed03e0df	2018-04-08 16:29:40.913-06	2018-04-08 16:29:40.913-06
63	Observation (version 1)	OB1	0d862596-d1d1-ae19-16ad-ba8ccb8e7531	2018-04-08 16:29:41.509-06	2018-04-08 16:29:41.509-06
64	Microstrategy	N/A	77be90fe-3f38-d27d-9d4d-eae6d263b741	2018-04-08 16:29:42.165-06	2018-04-08 16:29:42.165-06
65	Selected Analytical Methods	SAM	b56a7bff-6c4a-2344-9c69-b618a8c4d499	2018-04-08 16:29:42.63-06	2018-04-08 16:29:42.63-06
66	Fast Family Finder	N/A	19ecfa75-78be-7ea1-3ff7-e0566c105ffb	2018-04-08 16:29:43.15-06	2018-04-08 16:29:43.15-06
67	Statistical Analysis System	SAS	b02fbf5d-2cd7-999c-f92b-c55cfc723c1d	2018-04-08 16:29:43.6-06	2018-04-08 16:29:43.6-06
68	Picture Archive and Communication System	PACS	81a327c0-d850-4c99-921f-ae5ba353b13f	2018-04-08 16:29:44.192-06	2018-04-08 16:29:44.192-06
69	Statistical Package for Social Sciences	SPSS	5e385e81-c899-c070-5192-99287beab1bd	2018-04-08 16:29:44.697-06	2018-04-08 16:29:44.697-06
70	Cleaning Product Analyzer	N/A	70a9e78d-0476-d6e2-37bd-e45ed572006e	2018-04-08 16:29:45.33-06	2018-04-08 16:29:45.33-06
71	Web Utility Table	WUT	12eac9b5-31a5-d379-34c8-70e6c86d2e0a	2018-04-08 16:29:45.814-06	2018-04-08 16:29:45.814-06
72	Cisco WebEx	N/A	4beb5d8a-39c2-d359-5b62-f9a13d743443	2018-04-08 16:29:58.008-06	2018-04-08 16:29:58.008-06
73	Free MySQL Logger	FML	54b0bd29-ecd5-9c9b-0aec-f0ff13d647e1	2018-04-08 16:29:59.574-06	2018-04-08 16:29:59.574-06
74	Electronic Lab System Interpolator 	ELSI	b114e095-1b58-9211-f778-861e755848cc	2018-04-08 16:30:00.152-06	2018-04-08 16:30:00.152-06
\.


--
-- TOC entry 2833 (class 0 OID 16893)
-- Dependencies: 200
-- Data for Name: Tickets; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Tickets" (id, approval_status, "createdAt", "updatedAt", "SoftwareId", "UserId") FROM stdin;
5	Pending	2018-04-09 17:24:47.668-06	2018-04-09 17:24:47.668-06	15	74
6	Pending	2018-04-09 17:25:22.737-06	2018-04-09 17:25:22.737-06	24	74
8	Pending	2018-04-09 21:45:02.976-06	2018-04-09 21:45:02.976-06	7	74
9	Pending	2018-04-09 22:11:15.19-06	2018-04-09 22:11:15.19-06	7	26
11	Pending	2018-04-09 22:32:11.087-06	2018-04-09 22:32:11.087-06	11	1
12	Pending	2018-04-09 22:32:30.872-06	2018-04-09 22:32:30.872-06	8	1
10	Approved	2018-04-09 22:11:43.229-06	2018-04-09 22:39:22.737-06	1	26
7	Approved	2018-04-09 21:43:46.636-06	2018-04-09 22:40:53.011-06	2	74
13	Pending	2018-04-09 23:32:46.371-06	2018-04-09 23:32:46.371-06	1	26
14	Pending	2018-04-09 23:32:59.566-06	2018-04-09 23:32:59.566-06	8	26
15	Denied	2018-04-09 23:37:46.391-06	2018-04-09 23:41:34.629-06	5	75
\.


--
-- TOC entry 2835 (class 0 OID 16898)
-- Dependencies: 202
-- Data for Name: Users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public."Users" (id, first__name, last__name, email, password, account__type, "createdAt", "updatedAt") FROM stdin;
1	Al	Dente	al.dente@mail.com	$2a$08$gbWO5Rtb8nIGSjylOU4JsOfaFsrA6HXKWEMsSqT3w6G8J46PmOoI6	1	2018-04-08 16:57:10.097-06	2018-04-08 16:57:10.097-06
2	Al	Pacca	al.pacca@mail.com	$2a$08$klFerWhEwUOZhTE5Q7u.f.twf6G/eR.Nc1LIF1HbQLcYPkiB0MTha	1	2018-04-08 16:57:10.526-06	2018-04-08 16:57:10.526-06
3	Alan	Rench	alan.rench@mail.com	$2a$08$1MnNE/6o.47Q2xp1quBNKu47/uDsJS0Ld0et3YuddsolYTNuzbYZS	1	2018-04-08 16:57:10.69-06	2018-04-08 16:57:10.69-06
4	Ally	Katz	ally.katz@mail.com	$2a$08$NDddOP2TabdF0VDSt8.KKeAuhDPtbUe9wjJMeNZWiolCYEHsrQpfa	1	2018-04-08 16:57:10.884-06	2018-04-08 16:57:10.884-06
5	Amanda	Huginkiss	amanda.huginkiss@mail.com	$2a$08$XHxj8n9MouplAvvE8oPeX.W5bMkt4zANdPbaWAZk5AtgCw1qSLC76	1	2018-04-08 16:57:11.021-06	2018-04-08 16:57:11.021-06
6	Anna	Conda	anna.conda@mail.com	$2a$08$ruHPnhy.otGmf7orzc5Pw.mJXIaCqp436SZBvg/Xoq32uVuJR5Wta	1	2018-04-08 16:57:11.176-06	2018-04-08 16:57:11.176-06
7	Anna	Nimmity	anna.nimmity@mail.com	$2a$08$nPN3c5./V/YloC2bHYEbmeJgfaOcMlB7VeIeVyFJxZzIk1kfnC9em	1	2018-04-08 16:57:11.312-06	2018-04-08 16:57:11.312-06
8	Anne	Thrax	anne.thrax@mail.com	$2a$08$O6/QDA27TpJXeBK8FzIcw.58O/ZFS.S9BbVYXIatecwPPOC1CXSHy	1	2018-04-08 16:57:11.455-06	2018-04-08 16:57:11.455-06
9	Annita	Job	annita.job@mail.com	$2a$08$3wGjkx/WBgRi.jquM7HO1.dYkTLJ2g/kQTKiIHegkMmxHHYiZKiHO	1	2018-04-08 16:57:11.603-06	2018-04-08 16:57:11.603-06
10	Art	Choake	art.choake@mail.com	$2a$08$JQfRlXTSYAV54Gp5Kdkrh.qJhZh5SALP7xagwAHRYEP469pGKnwiC	1	2018-04-08 16:57:11.77-06	2018-04-08 16:57:11.77-06
11	Art	Dekko	art.dekko@mail.com	$2a$08$x8vuUeeBXLyFlZo6crTLiev2QAFnKQO6hMMgDeOCnaBG1KLrcYyBq	1	2018-04-08 16:57:11.947-06	2018-04-08 16:57:11.947-06
12	Art	Major	art.major@mail.com	$2a$08$sWF7aFGxWBZHrjcWvpqyCOCcMc9zscCRfoBY8eGepRSHx9KFxEr3W	1	2018-04-08 16:57:12.081-06	2018-04-08 16:57:12.081-06
13	Barb	Wyre	barb.wyre@mail.com	$2a$08$hXXfsERKigAT/9kSg59S8OeKSzc6XckoVp29AYcm/VbnoMCTSUFGy	1	2018-04-08 16:57:12.22-06	2018-04-08 16:57:12.22-06
14	Benny	Fitz	benny.fitz@mail.com	$2a$08$nyssYoN1LSoPkH7ffIizS.NJiks1mwEtCjo3GUgEgSii9wcEOLVPO	1	2018-04-08 16:57:12.36-06	2018-04-08 16:57:12.36-06
15	Biff	Wellington	biff.wellington@mail.com	$2a$08$rfbvDiEIXj3XRDeV21mEBOocH1sO73PRLa8qn3rWyQ7cQqlU4ui9m	1	2018-04-08 16:57:12.508-06	2018-04-08 16:57:12.508-06
16	Brock	Lee	brock.lee@mail.com	$2a$08$zzA5LT4FbXGZdTUG5trgqe3TxTuxOlMPH3rsmt9c465Yhi3Zqt2HW	1	2018-04-08 16:57:12.657-06	2018-04-08 16:57:12.657-06
17	Bud	Light	bud.light@mail.com	$2a$08$4rJk8ulwxkY3kYcuRw2N5uTbBSv3Y9JdAbBbMyukPbhbidFcIahUa	1	2018-04-08 16:57:12.801-06	2018-04-08 16:57:12.801-06
18	Bunsen	Berner	bunsen.berner@mail.com	$2a$08$CuzXVFcXuJj4gb0eYjVZHehM0MsBQ5pAYpze8zvPnveKnpWL/tJ9m	1	2018-04-08 16:57:12.951-06	2018-04-08 16:57:12.951-06
19	Chester	Field	chester.field@mail.com	$2a$08$PSMlsBDyGQxFS5n0G8PVzOlDD6gYEB7cW6IwDIv2u7wn/rmZ/wGDS	1	2018-04-08 16:57:13.105-06	2018-04-08 16:57:13.105-06
20	Chris	Bacon	chris.bacon@mail.com	$2a$08$1RxNOz5oPb.EUW1bMGMY8ecPUgkymZrpHgwKC8Qbnps/zfO7aTkD.	1	2018-04-08 16:57:13.246-06	2018-04-08 16:57:13.246-06
21	Claire	Voyant	claire.voyant@mail.com	$2a$08$SftVkO98d9GbPSKtWYrHvuM5J7qFnpFUjrUQHAgXtHB1P5IwmS0HG	1	2018-04-08 16:57:13.373-06	2018-04-08 16:57:13.373-06
22	Clay	Potts	clay.potts@mail.com	$2a$08$qM2dVh07AbkLHs1yaWgTYeIAH2AR7iNpCohQlUTgJCDIQwo6qZBTC	1	2018-04-08 16:57:13.514-06	2018-04-08 16:57:13.514-06
23	Crystal	Ball	crystal.ball@mail.com	$2a$08$MFMNFiQBNatOuahNx0hNZOdx3qiuPtVzSy9UsGf0MEs5a6L/3vDS.	1	2018-04-08 16:57:13.645-06	2018-04-08 16:57:13.645-06
24	Derry	Yare	derry.yare@mail.com	$2a$08$22eiKAd9hql/2yVpPom5IOn/TwChtAmBIjVYaQ4xIy4.rGbMVbdy.	1	2018-04-08 16:57:13.77-06	2018-04-08 16:57:13.77-06
25	Dot	Matricks	dot.matricks@mail.com	$2a$08$LLHMoK2h8SzQcY7sogSb0O7DEpbTAxiETkoAdQ1HrZ1o45I3/TwSq	1	2018-04-08 16:57:13.898-06	2018-04-08 16:57:13.898-06
26	Douglas	Furr	douglas.furr@mail.com	$2a$08$C3hkM5dQ2miQZSfReOfRbObyQY6Nf5NsUvJsyipWWwNhjtxijQEMq	1	2018-04-08 16:57:14.026-06	2018-04-08 16:57:14.026-06
27	Dyl	Pickel	dyl.pickel@mail.com	$2a$08$SpdWX1hNSZYuWjkJwtIrbe/6u.Tqv6qzeF6eEaSjsdX6XmjXA81my	1	2018-04-08 16:57:14.184-06	2018-04-08 16:57:14.184-06
28	Filet	Minyon	filet.minyon@mail.com	$2a$08$XvUvnrvtso5zU1ZFFjzQxuKwnp9bwNBcm4hbJj79DJqE8DWgWm5nG	1	2018-04-08 16:57:14.324-06	2018-04-08 16:57:14.324-06
29	Frank	Furter	frank.furter@mail.com	$2a$08$A7ohn/9pEacU4x6SZzNgl.Rx/4bbpxd8.tvY/.ztQR3RhmbLI0cx6	1	2018-04-08 16:57:14.45-06	2018-04-08 16:57:14.45-06
30	Gene	Poole	gene.poole@mail.com	$2a$08$61DJFmcveBZTUS/8DN9/Ye7KwUiFa9Sdq5W6fi9AquM70DuuaDQzS	1	2018-04-08 16:57:14.572-06	2018-04-08 16:57:14.572-06
31	Ginger	Vitus	ginger.vitus@mail.com	$2a$08$D5hOyZd3KZmDeYpJ8pH8EujyMGZkDh2B1zyxweahug2N1LwvEGuNe	1	2018-04-08 16:57:14.692-06	2018-04-08 16:57:14.692-06
32	Gladys	Dunn	gladys.dunn@mail.com	$2a$08$lh79A5tU3IKZFPAPHoEqJOJeyz9Wr2xGhPes.Sm0AcEKzynyz5QEa	1	2018-04-08 16:57:14.818-06	2018-04-08 16:57:14.818-06
33	Goldie	Locke	goldie.locke@mail.com	$2a$08$J.yu8/y2iW3W49/zJFFpseysp4Ax9EyJjGyGigrekLMxaMvJ/9LIO	1	2018-04-08 16:57:14.944-06	2018-04-08 16:57:14.944-06
34	Harry	Beard	harry.beard@mail.com	$2a$08$yf6erhhzPyBwDX6TM3nl7.qw3026Ks7UJNwvRdkEWkw1U8hZ1.am6	1	2018-04-08 16:57:15.084-06	2018-04-08 16:57:15.084-06
35	Honey	Potts	honey.potts@mail.com	$2a$08$g3ijxtsFg4WsoAYKioYs5ufiK1ILiL1J4evUuUEHjNI9Ha6wQqB6y	1	2018-04-08 16:57:15.233-06	2018-04-08 16:57:15.233-06
36	Ida	Claire	ida.claire@mail.com	$2a$08$pJR2vL4uOuy8U1nBAsyv2uDu7WYTGoJl7.P0BG7S0DB2S2NEJneEy	1	2018-04-08 16:57:15.399-06	2018-04-08 16:57:15.399-06
37	Jack	Uzz	jack.uzz@mail.com	$2a$08$A62bszGevrwPPCu2Khwz3uPgM4260OiXM5QlNl8Dhm.PLX0QSIa7e	1	2018-04-08 16:57:15.563-06	2018-04-08 16:57:15.563-06
38	Jed	Knight	jed.knight@mail.com	$2a$08$J2EX8lY29pKaWCH9VLvyputalohOexhtu4caA6IcaoLiTI7i05zFG	1	2018-04-08 16:57:15.703-06	2018-04-08 16:57:15.703-06
39	Justin	Case	justin.case@mail.com	$2a$08$rnfJutVjI5NwGINTXiVMVuzTg7AJaGrcPgdWJt9cfNGRY1whzn.0O	1	2018-04-08 16:57:15.851-06	2018-04-08 16:57:15.851-06
40	Justin	Thyme	justin.thyme@mail.com	$2a$08$wuh9Uqrze/noVNThwpPA/e2DdHgaWlREMrLCRxaYVzrvfHZ0vOqqa	1	2018-04-08 16:57:15.995-06	2018-04-08 16:57:15.995-06
41	Kayne	Kun	kayne.kun@mail.com	$2a$08$L7DHCqz4vqUyOvpMj6DYhO5.dQk4adsxSMm3lFHmdwnjdylK31zaS	1	2018-04-08 16:57:16.14-06	2018-04-08 16:57:16.14-06
42	Krystal	Ball	krystal.ball@mail.com	$2a$08$4q830s7cFTZxwDAOR8zkBufBNrxxt2qz9lLcma5kCFAx52f.KqLaK	1	2018-04-08 16:57:16.293-06	2018-04-08 16:57:16.293-06
43	Leah	Tarde	leah.tarde@mail.com	$2a$08$dm9n7ourwvtuWBYNvF834O9R3vVm0KYSvXsZPLVW/c1W0LqFEoG9i	1	2018-04-08 16:57:16.473-06	2018-04-08 16:57:16.473-06
44	Les	Wynan	les.wynan@mail.com	$2a$08$CqDPEiidxxvQJsMyy9JUMePWO7nHRpRm1M8qiWA4Yiu7lQnnUqUsa	1	2018-04-08 16:57:16.649-06	2018-04-08 16:57:16.649-06
45	Linda	Hand	linda.hand@mail.com	$2a$08$7YF6mqy1MRl0kTpduGq0/eYgpCaXuIXOIjPo6lPDtBKAJogVMugbO	1	2018-04-08 16:57:16.813-06	2018-04-08 16:57:16.813-06
46	Lotta	Noyes	lotta.noyes@mail.com	$2a$08$Kv.cFPjL3ILdSsURbtetc.naapOYMS9ZfNft9/Xrgmlejg5Ox3DOy	1	2018-04-08 16:57:16.938-06	2018-04-08 16:57:16.938-06
47	Mason	Jarr	mason.jarr@mail.com	$2a$08$aZSD3aS22LI8B.G25yYGxuvw8/nlgZzfE0lCMlEyyf5QQ4WAHvlQW	1	2018-04-08 16:57:17.092-06	2018-04-08 16:57:17.092-06
48	Mike	Raffone	mike.raffone@mail.com	$2a$08$AnYr7.HmUiyl0KViu9jRretg8Srnw3ScCnNoic6wblnK/ZSgq/aiW	1	2018-04-08 16:57:17.244-06	2018-04-08 16:57:17.244-06
49	Neil	Down	neil.down@mail.com	$2a$08$P7LB9PYoI3k4MjJsPxBE5eCiUE0GN6XgKhDD1XeQ9dzymx1iClLeW	1	2018-04-08 16:57:17.386-06	2018-04-08 16:57:17.386-06
50	Ollie	Gark	ollie.gark@mail.com	$2a$08$g7EgEEaVX5oJynoEKaIKketdy23N3dleXkIqF9H6PMw7.8BiOikxK	1	2018-04-08 16:57:17.557-06	2018-04-08 16:57:17.557-06
51	Paige	Turner	paige.turner@mail.com	$2a$08$vHYahjciB1WeVCjTO3W3l.w1wI9ZomnW9ccmT33zmY8ObefVueYtW	1	2018-04-08 16:57:17.768-06	2018-04-08 16:57:17.768-06
52	Pea	Pu	pea.pu@mail.com	$2a$08$EJUkjuDfI5Kl8VBnLcsUSeRp75oniiocNagAbjEO72BMuN5/H3RdS	1	2018-04-08 16:57:17.91-06	2018-04-08 16:57:17.91-06
53	Pete	Moss	pete.moss@mail.com	$2a$08$2U6LZ3/lRALPfFusAJBgmOsNGQFaZkH0S87fTuXkgk7r7FKATiIDy	1	2018-04-08 16:57:18.041-06	2018-04-08 16:57:18.041-06
54	Polly	Graff	polly.graff@mail.com	$2a$08$ddpIICTzTrlckl7fMbZe1OTXpm4x8dJLAJnNAoknaAmsOmsIE72xy	1	2018-04-08 16:57:18.183-06	2018-04-08 16:57:18.183-06
55	Robyn	Banks	robyn.banks@mail.com	$2a$08$etfwkZIqw6dSgIF1ayVKOOs1Z2oIVdzEXoawz9TxR3RurYJqWDLbm	1	2018-04-08 16:57:18.332-06	2018-04-08 16:57:18.332-06
56	Rocky	Rhodes	rocky.rhodes@mail.com	$2a$08$xaEZq/k5mBN02ZLSYex6YOVuoY.wTdKPz5mULOfEseWxRMH1QEBL.	1	2018-04-08 16:57:18.492-06	2018-04-08 16:57:18.492-06
57	Rod	Curtains	rod.curtains@mail.com	$2a$08$9dpTwNsctRhwYnXCvLy57.Hi5bG1Vulb3mVaLlOiRhJLtNWYwOiF.	1	2018-04-08 16:57:18.668-06	2018-04-08 16:57:18.668-06
58	Rusty	Foord	rusty.foord@mail.com	$2a$08$fTuCSzO0/QSHx7Ny61psKeTHw7BqNGKoFDOSLzL1XGPr.nn7P3ftS	1	2018-04-08 16:57:18.899-06	2018-04-08 16:57:18.899-06
59	Sandy	Beech	sandy.beech@mail.com	$2a$08$ONLDlNWDD8wPIU7VBHm1HOEzp5.6jOx1cZE/0zUFWi9xYczLlwjxm	1	2018-04-08 16:57:19.07-06	2018-04-08 16:57:19.07-06
60	Seymore	Butts	seymore.butts@mail.com	$2a$08$ylsP8BL/QYsvN3pEx1aGm.KXdXEHX4mxdesyRN4M2Ulk38Tgd08jS	1	2018-04-08 16:57:19.223-06	2018-04-08 16:57:19.223-06
61	Sonny	Day	sonny.day@mail.com	$2a$08$PamaEtJSq5biVrdxTRI5We6Ou6ihNcmpB2tA76CD5xcgtZ7tFddo.	1	2018-04-08 16:57:19.386-06	2018-04-08 16:57:19.386-06
62	Stan	Dupp	stan.dupp@mail.com	$2a$08$/bhOTJ7O9va26lijBN7YfO3q2nNnokdyYteUMFgDINLn5VnR2o1OW	1	2018-04-08 16:57:19.555-06	2018-04-08 16:57:19.555-06
63	Sue	Flay	sue.flay@mail.com	$2a$08$73sySThcaFt4H1eCwJHxNuCgIpn8irAt4pV7hJq1eV2FZ894j95ia	1	2018-04-08 16:57:19.735-06	2018-04-08 16:57:19.735-06
64	Sue	Vlaki	sue.vlaki@mail.com	$2a$08$X1aq3kyAVNrX/zrotulvguVkkemSH60zqPhRrLC1LRhvBL.m0WCc.	1	2018-04-08 16:57:20.023-06	2018-04-08 16:57:20.023-06
65	Tara	Dactyl	tara.dactyl@mail.com	$2a$08$FRnhQfvk2VhLBd9h6itB4eXGHNNpmTAgEwHULZtw7PhRe1sHbdbXe	1	2018-04-08 16:57:20.271-06	2018-04-08 16:57:20.271-06
66	Tess	Tamoni	tess.tamoni@mail.com	$2a$08$MwxLqyH7FyWqmfgdNOpQ7uKYsI2fEAiWfIPaLliNtSqmVvzYVNtZi	1	2018-04-08 16:57:20.432-06	2018-04-08 16:57:20.432-06
67	Tom	Foolery	tom.foolery@mail.com	$2a$08$s.GS8LKOPE/nG4MWIMNJQecgiHD4p6qkpGNL4jzAjbtGRYYcLjB6.	1	2018-04-08 16:57:20.63-06	2018-04-08 16:57:20.63-06
68	Ty	Kuhn	ty.kuhn@mail.com	$2a$08$1oQA4vyhPBgOrZDuOTzuA.1ZQLOrND5TlLsLKsMNamrAh7pQLIhmy	1	2018-04-08 16:57:20.839-06	2018-04-08 16:57:20.839-06
69	Warren	Peace	warren.peace@mail.com	$2a$08$7CaI4VDZGG3sij22OAkA9eBccUZGRSMBhn.SH6pYu/UW//8NuUj3C	1	2018-04-08 16:57:21.011-06	2018-04-08 16:57:21.011-06
70	Wazziz	Naime	wazziz.naime@mail.com	$2a$08$XXrm9CifzbFEP3fu7ky4zewIDgyU.TPuTvgRIT7YTurrhiPm/UY/C	1	2018-04-08 16:57:21.238-06	2018-04-08 16:57:21.238-06
71	Wil	Doolittle	wil.doolittle@mail.com	$2a$08$0fc9PLJSQpFpCOYMmVCrtOcOB1N2ZBIXBJt6p3.7RMv1SO1W/5DXm	1	2018-04-08 16:57:21.407-06	2018-04-08 16:57:21.407-06
72	Will	Tickelu	will.tickelu@mail.com	$2a$08$b2MehWBmZJe4WU8Vlt3//.1HE.F95aUdNunmOXqWv/SojW2QmU.cu	1	2018-04-08 16:57:21.559-06	2018-04-08 16:57:21.559-06
73	test	test	test@mai.com	$2a$08$hRSnDc3qEdci/7YcfiHvteMopzy/vN2Ip2Nqp94DeEBPH16M/ow86	0	2018-04-08 17:19:45.179-06	2018-04-08 17:19:45.179-06
74	test	test	testing@mail.com	$2a$08$Q3C.jKD4S5m8B7hu9Le4NeYDsUtx5ecnKOd4SVOcRJ9Gf7Gar7e5e	0	2018-04-09 13:33:40.254-06	2018-04-09 13:33:40.254-06
75	Jonathon	Wells	jonathon.wells@mail.com	$2a$08$T2fMuNQG4TMlYB5rAkZyPufdSiF/uKipr40ROJRq6CIwv7D63Jt06	0	2018-04-09 23:37:33.904-06	2018-04-09 23:37:33.904-06
\.


--
-- TOC entry 2849 (class 0 OID 0)
-- Dependencies: 197
-- Name: ApproverLists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."ApproverLists_id_seq"', 81, true);


--
-- TOC entry 2850 (class 0 OID 0)
-- Dependencies: 199
-- Name: SoftwareLists_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."SoftwareLists_id_seq"', 74, true);


--
-- TOC entry 2851 (class 0 OID 0)
-- Dependencies: 201
-- Name: Tickets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Tickets_id_seq"', 15, true);


--
-- TOC entry 2852 (class 0 OID 0)
-- Dependencies: 203
-- Name: Users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public."Users_id_seq"', 75, true);


--
-- TOC entry 2695 (class 2606 OID 16911)
-- Name: ApproverLists ApproverLists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApproverLists"
    ADD CONSTRAINT "ApproverLists_pkey" PRIMARY KEY (id);


--
-- TOC entry 2697 (class 2606 OID 16913)
-- Name: SoftwareLists SoftwareLists_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."SoftwareLists"
    ADD CONSTRAINT "SoftwareLists_pkey" PRIMARY KEY (id);


--
-- TOC entry 2699 (class 2606 OID 16915)
-- Name: Tickets Tickets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_pkey" PRIMARY KEY (id);


--
-- TOC entry 2701 (class 2606 OID 16917)
-- Name: Users Users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_email_key" UNIQUE (email);


--
-- TOC entry 2703 (class 2606 OID 16919)
-- Name: Users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);


--
-- TOC entry 2704 (class 2606 OID 16920)
-- Name: ApproverLists ApproverLists_SoftwareId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApproverLists"
    ADD CONSTRAINT "ApproverLists_SoftwareId_fkey" FOREIGN KEY ("SoftwareId") REFERENCES public."SoftwareLists"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2705 (class 2606 OID 16925)
-- Name: ApproverLists ApproverLists_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."ApproverLists"
    ADD CONSTRAINT "ApproverLists_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2706 (class 2606 OID 16930)
-- Name: Tickets Tickets_SoftwareId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_SoftwareId_fkey" FOREIGN KEY ("SoftwareId") REFERENCES public."SoftwareLists"(id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- TOC entry 2707 (class 2606 OID 16935)
-- Name: Tickets Tickets_UserId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."Tickets"
    ADD CONSTRAINT "Tickets_UserId_fkey" FOREIGN KEY ("UserId") REFERENCES public."Users"(id) ON UPDATE CASCADE ON DELETE SET NULL;


-- Completed on 2018-04-10 00:28:50

--
-- PostgreSQL database dump complete
--

