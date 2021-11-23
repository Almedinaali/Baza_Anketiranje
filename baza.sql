--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5 (Ubuntu 11.5-3.pgdg18.04+1)
-- Dumped by pg_dump version 12.0

-- Started on 2020-01-23 23:20:57

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
-- TOC entry 4165 (class 1262 OID 3966717)
-- Name: ywnkqock; Type: DATABASE; Schema: -; Owner: ywnkqock
--

CREATE DATABASE ywnkqock WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE ywnkqock OWNER TO ywnkqock;

\connect ywnkqock

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
-- TOC entry 9 (class 3079 OID 17135)
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- TOC entry 4167 (class 0 OID 0)
-- Dependencies: 9
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- TOC entry 5 (class 3079 OID 17676)
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- TOC entry 4168 (class 0 OID 0)
-- Dependencies: 5
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- TOC entry 16 (class 3079 OID 16661)
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- TOC entry 4169 (class 0 OID 0)
-- Dependencies: 16
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- TOC entry 7 (class 3079 OID 17573)
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- TOC entry 4170 (class 0 OID 0)
-- Dependencies: 7
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- TOC entry 22 (class 3079 OID 16384)
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- TOC entry 4171 (class 0 OID 0)
-- Dependencies: 22
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- TOC entry 10 (class 3079 OID 17130)
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- TOC entry 4172 (class 0 OID 0)
-- Dependencies: 10
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- TOC entry 4 (class 3079 OID 18299)
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- TOC entry 4173 (class 0 OID 0)
-- Dependencies: 4
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- TOC entry 6 (class 3079 OID 17660)
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- TOC entry 4174 (class 0 OID 0)
-- Dependencies: 6
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- TOC entry 17 (class 3079 OID 16650)
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- TOC entry 4175 (class 0 OID 0)
-- Dependencies: 17
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- TOC entry 11 (class 3079 OID 17007)
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- TOC entry 4176 (class 0 OID 0)
-- Dependencies: 11
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- TOC entry 12 (class 3079 OID 16889)
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- TOC entry 4177 (class 0 OID 0)
-- Dependencies: 12
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- TOC entry 20 (class 3079 OID 16444)
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- TOC entry 4178 (class 0 OID 0)
-- Dependencies: 20
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- TOC entry 2 (class 3079 OID 18311)
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- TOC entry 4179 (class 0 OID 0)
-- Dependencies: 2
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track execution statistics of all SQL statements executed';


--
-- TOC entry 13 (class 3079 OID 16812)
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- TOC entry 4180 (class 0 OID 0)
-- Dependencies: 13
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- TOC entry 14 (class 3079 OID 16775)
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- TOC entry 4181 (class 0 OID 0)
-- Dependencies: 14
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- TOC entry 8 (class 3079 OID 17571)
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- TOC entry 4182 (class 0 OID 0)
-- Dependencies: 8
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- TOC entry 19 (class 3079 OID 16619)
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- TOC entry 4183 (class 0 OID 0)
-- Dependencies: 19
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- TOC entry 18 (class 3079 OID 16629)
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- TOC entry 4184 (class 0 OID 0)
-- Dependencies: 18
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- TOC entry 3 (class 3079 OID 18304)
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- TOC entry 4185 (class 0 OID 0)
-- Dependencies: 3
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- TOC entry 15 (class 3079 OID 16764)
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- TOC entry 4186 (class 0 OID 0)
-- Dependencies: 15
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- TOC entry 21 (class 3079 OID 16430)
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- TOC entry 4187 (class 0 OID 0)
-- Dependencies: 21
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

--
-- TOC entry 238 (class 1259 OID 3972097)
-- Name: anketa; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.anketa (
    id integer NOT NULL,
    predmet_id integer NOT NULL
);


ALTER TABLE public.anketa OWNER TO ywnkqock;

--
-- TOC entry 237 (class 1259 OID 3972095)
-- Name: anketa_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.anketa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.anketa_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4188 (class 0 OID 0)
-- Dependencies: 237
-- Name: anketa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.anketa_id_seq OWNED BY public.anketa.id;


--
-- TOC entry 245 (class 1259 OID 4003679)
-- Name: anketa_kod; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.anketa_kod (
    anketa_id integer NOT NULL,
    kod_kod character varying(45) NOT NULL
);


ALTER TABLE public.anketa_kod OWNER TO ywnkqock;

--
-- TOC entry 241 (class 1259 OID 3972117)
-- Name: anketa_pitanje; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.anketa_pitanje (
    anketa_id integer NOT NULL,
    pitanje_id integer NOT NULL
);


ALTER TABLE public.anketa_pitanje OWNER TO ywnkqock;

--
-- TOC entry 228 (class 1259 OID 3972015)
-- Name: fakultet; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.fakultet (
    id integer NOT NULL,
    naziv_fakulteta character varying(100) NOT NULL,
    adresa character varying(100),
    broj_telefona character varying(45)
);


ALTER TABLE public.fakultet OWNER TO ywnkqock;

--
-- TOC entry 227 (class 1259 OID 3972013)
-- Name: fakultet_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.fakultet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fakultet_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4189 (class 0 OID 0)
-- Dependencies: 227
-- Name: fakultet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.fakultet_id_seq OWNED BY public.fakultet.id;


--
-- TOC entry 244 (class 1259 OID 4003674)
-- Name: kod; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.kod (
    kod character varying(45) NOT NULL
);


ALTER TABLE public.kod OWNER TO ywnkqock;

--
-- TOC entry 243 (class 1259 OID 3972142)
-- Name: odgovor_studenta; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.odgovor_studenta (
    id integer NOT NULL,
    vrijeme_unosa timestamp without time zone DEFAULT now() NOT NULL,
    tekstualni_odgovor character varying(45),
    numericki_izbor integer,
    pitanje_id integer NOT NULL
);


ALTER TABLE public.odgovor_studenta OWNER TO ywnkqock;

--
-- TOC entry 242 (class 1259 OID 3972140)
-- Name: odgovor_studenta_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.odgovor_studenta_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.odgovor_studenta_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4190 (class 0 OID 0)
-- Dependencies: 242
-- Name: odgovor_studenta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.odgovor_studenta_id_seq OWNED BY public.odgovor_studenta.id;


--
-- TOC entry 230 (class 1259 OID 3972025)
-- Name: odsjek; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.odsjek (
    id integer NOT NULL,
    naziv_odsjeka character varying(45) NOT NULL,
    fakultet_id integer NOT NULL
);


ALTER TABLE public.odsjek OWNER TO ywnkqock;

--
-- TOC entry 229 (class 1259 OID 3972023)
-- Name: odsjek_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.odsjek_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.odsjek_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4191 (class 0 OID 0)
-- Dependencies: 229
-- Name: odsjek_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.odsjek_id_seq OWNED BY public.odsjek.id;


--
-- TOC entry 240 (class 1259 OID 3972110)
-- Name: pitanje; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.pitanje (
    id integer NOT NULL,
    tekst_pitanja character varying(100) NOT NULL,
    tip_pitanja character varying(100) NOT NULL,
    pitanje_za character varying(45) NOT NULL
);


ALTER TABLE public.pitanje OWNER TO ywnkqock;

--
-- TOC entry 239 (class 1259 OID 3972108)
-- Name: pitanje_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.pitanje_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pitanje_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4192 (class 0 OID 0)
-- Dependencies: 239
-- Name: pitanje_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.pitanje_id_seq OWNED BY public.pitanje.id;


--
-- TOC entry 223 (class 1259 OID 3971983)
-- Name: predmet; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.predmet (
    id integer NOT NULL,
    naziv_predmeta character varying(45) NOT NULL,
    semestar smallint NOT NULL,
    smjer character varying(45) NOT NULL
);


ALTER TABLE public.predmet OWNER TO ywnkqock;

--
-- TOC entry 222 (class 1259 OID 3971981)
-- Name: predmet_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.predmet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.predmet_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4193 (class 0 OID 0)
-- Dependencies: 222
-- Name: predmet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.predmet_id_seq OWNED BY public.predmet.id;


--
-- TOC entry 232 (class 1259 OID 3972040)
-- Name: smjer; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.smjer (
    id integer NOT NULL,
    naziv_smjera character varying(45) NOT NULL,
    odsjek_id integer NOT NULL
);


ALTER TABLE public.smjer OWNER TO ywnkqock;

--
-- TOC entry 231 (class 1259 OID 3972038)
-- Name: smjer_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.smjer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.smjer_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4194 (class 0 OID 0)
-- Dependencies: 231
-- Name: smjer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.smjer_id_seq OWNED BY public.smjer.id;


--
-- TOC entry 233 (class 1259 OID 3972053)
-- Name: smjer_predmet; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.smjer_predmet (
    smjer_id integer NOT NULL,
    predmet_id integer NOT NULL
);


ALTER TABLE public.smjer_predmet OWNER TO ywnkqock;

--
-- TOC entry 235 (class 1259 OID 3972070)
-- Name: student; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.student (
    id integer NOT NULL,
    ime character varying(45) NOT NULL,
    prezime character varying(45) NOT NULL,
    datum_rodjenja date,
    mjesto_rodjenja character varying(45),
    jmb character varying(45) NOT NULL,
    spol character varying(10),
    odsjek character varying(45),
    smjer character varying(45) NOT NULL,
    trenutni_semestar integer NOT NULL,
    broj_indeksa character varying(45) NOT NULL
);


ALTER TABLE public.student OWNER TO ywnkqock;

--
-- TOC entry 234 (class 1259 OID 3972068)
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.student_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4195 (class 0 OID 0)
-- Dependencies: 234
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- TOC entry 236 (class 1259 OID 3972080)
-- Name: student_predmet; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.student_predmet (
    student_id integer NOT NULL,
    predmet_id integer NOT NULL
);


ALTER TABLE public.student_predmet OWNER TO ywnkqock;

--
-- TOC entry 225 (class 1259 OID 3971992)
-- Name: zaposlenik; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.zaposlenik (
    id integer NOT NULL,
    ime character varying(45) NOT NULL,
    prezime character varying(45) NOT NULL,
    datum_rodjenja date,
    email character varying(45),
    broj_telefona character varying(45),
    radno_mjesto character varying(45) NOT NULL
);


ALTER TABLE public.zaposlenik OWNER TO ywnkqock;

--
-- TOC entry 224 (class 1259 OID 3971990)
-- Name: zaposlenik_id_seq; Type: SEQUENCE; Schema: public; Owner: ywnkqock
--

CREATE SEQUENCE public.zaposlenik_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.zaposlenik_id_seq OWNER TO ywnkqock;

--
-- TOC entry 4196 (class 0 OID 0)
-- Dependencies: 224
-- Name: zaposlenik_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ywnkqock
--

ALTER SEQUENCE public.zaposlenik_id_seq OWNED BY public.zaposlenik.id;


--
-- TOC entry 226 (class 1259 OID 3971998)
-- Name: zaposlenik_predmet; Type: TABLE; Schema: public; Owner: ywnkqock
--

CREATE TABLE public.zaposlenik_predmet (
    zaposlenik_id integer NOT NULL,
    predmet_id integer NOT NULL
);


ALTER TABLE public.zaposlenik_predmet OWNER TO ywnkqock;

--
-- TOC entry 3956 (class 2604 OID 3972100)
-- Name: anketa id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa ALTER COLUMN id SET DEFAULT nextval('public.anketa_id_seq'::regclass);


--
-- TOC entry 3952 (class 2604 OID 3972018)
-- Name: fakultet id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.fakultet ALTER COLUMN id SET DEFAULT nextval('public.fakultet_id_seq'::regclass);


--
-- TOC entry 3958 (class 2604 OID 3972145)
-- Name: odgovor_studenta id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odgovor_studenta ALTER COLUMN id SET DEFAULT nextval('public.odgovor_studenta_id_seq'::regclass);


--
-- TOC entry 3953 (class 2604 OID 3972028)
-- Name: odsjek id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odsjek ALTER COLUMN id SET DEFAULT nextval('public.odsjek_id_seq'::regclass);


--
-- TOC entry 3957 (class 2604 OID 3972113)
-- Name: pitanje id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.pitanje ALTER COLUMN id SET DEFAULT nextval('public.pitanje_id_seq'::regclass);


--
-- TOC entry 3950 (class 2604 OID 3971986)
-- Name: predmet id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.predmet ALTER COLUMN id SET DEFAULT nextval('public.predmet_id_seq'::regclass);


--
-- TOC entry 3954 (class 2604 OID 3972043)
-- Name: smjer id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer ALTER COLUMN id SET DEFAULT nextval('public.smjer_id_seq'::regclass);


--
-- TOC entry 3955 (class 2604 OID 3972073)
-- Name: student id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- TOC entry 3951 (class 2604 OID 3971995)
-- Name: zaposlenik id; Type: DEFAULT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.zaposlenik ALTER COLUMN id SET DEFAULT nextval('public.zaposlenik_id_seq'::regclass);


--
-- TOC entry 4152 (class 0 OID 3972097)
-- Dependencies: 238
-- Data for Name: anketa; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.anketa (id, predmet_id) VALUES (1, 43);
INSERT INTO public.anketa (id, predmet_id) VALUES (2, 56);
INSERT INTO public.anketa (id, predmet_id) VALUES (3, 68);
INSERT INTO public.anketa (id, predmet_id) VALUES (4, 46);
INSERT INTO public.anketa (id, predmet_id) VALUES (5, 47);


--
-- TOC entry 4159 (class 0 OID 4003679)
-- Dependencies: 245
-- Data for Name: anketa_kod; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--



--
-- TOC entry 4155 (class 0 OID 3972117)
-- Dependencies: 241
-- Data for Name: anketa_pitanje; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 1);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 2);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 3);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 4);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 5);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (1, 6);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 1);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 2);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 3);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 4);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 5);
INSERT INTO public.anketa_pitanje (anketa_id, pitanje_id) VALUES (2, 6);


--
-- TOC entry 4142 (class 0 OID 3972015)
-- Dependencies: 228
-- Data for Name: fakultet; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.fakultet (id, naziv_fakulteta, adresa, broj_telefona) VALUES (1, 'Prirodno-matematicki', 'Zmaja od Bosne 33-35, 71000 Sarajevo, BiH', '++ 387 33 279 874');


--
-- TOC entry 4158 (class 0 OID 4003674)
-- Dependencies: 244
-- Data for Name: kod; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--



--
-- TOC entry 4157 (class 0 OID 3972142)
-- Dependencies: 243
-- Data for Name: odgovor_studenta; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (1, '2020-01-20 00:00:00', 'da', NULL, 1);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (2, '2020-01-20 00:00:00', 'pohvale za citav kurs', NULL, 2);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (3, '2020-01-20 00:00:00', NULL, 4, 3);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (4, '2020-01-20 00:00:00', 'da', NULL, 4);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (5, '2020-01-20 00:00:00', NULL, 4, 5);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (6, '2020-01-20 00:00:00', 'da', NULL, 6);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (7, '2020-01-20 00:00:00', 'ne', NULL, 1);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (8, '2020-01-20 00:00:00', 'nista mi se nije dopalo', NULL, 2);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (9, '2020-01-20 00:00:00', NULL, 2, 3);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (10, '2020-01-20 00:00:00', 'uglavnom', NULL, 4);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (11, '2020-01-20 00:00:00', NULL, 2, 5);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (12, '2020-01-20 00:00:00', 'nisam siguran', NULL, 6);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (13, '2020-01-20 00:00:00', 'ne', NULL, 1);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (14, '2020-01-20 00:00:00', 'rad u mysql workbenchu', NULL, 2);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (15, '2020-01-20 00:00:00', NULL, 1, 3);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (16, '2020-01-20 00:00:00', 'nisam siguran', NULL, 4);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (17, '2020-01-20 00:00:00', NULL, 3, 5);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (18, '2020-01-20 00:00:00', 'uglavnom', NULL, 6);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (19, '2020-01-20 00:00:00', 'da', NULL, 1);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (20, '2020-01-20 00:00:00', 'ne valja', NULL, 2);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (21, '2020-01-20 00:00:00', NULL, 3, 3);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (22, '2020-01-20 00:00:00', 'da', NULL, 4);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (23, '2020-01-20 00:00:00', NULL, 3, 5);
INSERT INTO public.odgovor_studenta (id, vrijeme_unosa, tekstualni_odgovor, numericki_izbor, pitanje_id) VALUES (24, '2020-01-20 00:00:00', 'da', NULL, 6);


--
-- TOC entry 4144 (class 0 OID 3972025)
-- Dependencies: 230
-- Data for Name: odsjek; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.odsjek (id, naziv_odsjeka, fakultet_id) VALUES (1, 'Matematika', 1);
INSERT INTO public.odsjek (id, naziv_odsjeka, fakultet_id) VALUES (2, 'Biologija', 1);
INSERT INTO public.odsjek (id, naziv_odsjeka, fakultet_id) VALUES (3, 'Hemija', 1);
INSERT INTO public.odsjek (id, naziv_odsjeka, fakultet_id) VALUES (4, 'Fizika', 1);
INSERT INTO public.odsjek (id, naziv_odsjeka, fakultet_id) VALUES (5, 'Geografija', 1);


--
-- TOC entry 4154 (class 0 OID 3972110)
-- Dependencies: 240
-- Data for Name: pitanje; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (1, 'Smatrate li da je ovaj predmet suviše zahtjevan?', 'DA/NE', 'predmet');
INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (2, 'Šta vam se najviše dopalo vezano za ovaj predmet?', 'TEKST-ODGOVOR', 'predmet');
INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (3, 'Kako biste ocijenili rad profesora na ovom predmetu?', 'OCJENA', 'profesor');
INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (4, 'Da li profesor redovno održava predavanja iz ovog predmeta?', 'VISESTRUKI-IZBOR', 'profesor');
INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (5, 'Kako biste ocijenili rad asistenta na ovom predmetu?', 'OCJENA', 'asistent');
INSERT INTO public.pitanje (id, tekst_pitanja, tip_pitanja, pitanje_za) VALUES (6, 'Da li asistent redovno održava vježbe iz ovog predmeta?', 'VISESTRUKI-IZBOR', 'asistent');


--
-- TOC entry 4137 (class 0 OID 3971983)
-- Dependencies: 223
-- Data for Name: predmet; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (43, 'Baze podataka', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (44, 'Analiza i sinteza algoritama', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (45, 'Operaciona istrazivanja', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (46, 'Razvoj softvera', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (47, 'Web programiranje', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (48, 'Odabrana poglavlja kompjuterskih nauka', 5, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (49, 'Statistika I', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (50, 'Teorija izracunljivosti', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (51, 'Računarske mreže', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (52, 'Operativni sistemi', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (53, 'Algebra za kompjuterske nauke', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (54, 'Engleski jezik', 4, 'TKN');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (55, 'Algebra I', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (56, 'Baze podataka', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (57, 'Web programiranje', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (58, 'Kompleksna analiza I', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (59, 'Pedagogija', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (60, 'Dokimologija', 5, 'MI');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (61, 'Statistika I', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (62, 'Numericka analiza', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (63, 'Topologija', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (64, 'Finansijska matematika', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (65, 'Parcijalne diferencijalne jednadzbe', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (66, 'Engleski jezik', 4, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (67, 'Algebra I', 5, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (68, 'Baze podataka', 5, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (69, 'Aktuarska matematika', 5, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (70, 'Kompleksna analiza I', 5, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (71, 'Operaciona istrazivanja', 5, 'PM');
INSERT INTO public.predmet (id, naziv_predmeta, semestar, smjer) VALUES (72, 'Kriptologija', 5, 'PM');


--
-- TOC entry 4146 (class 0 OID 3972040)
-- Dependencies: 232
-- Data for Name: smjer; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.smjer (id, naziv_smjera, odsjek_id) VALUES (1, 'TKN', 1);
INSERT INTO public.smjer (id, naziv_smjera, odsjek_id) VALUES (2, 'PM', 1);
INSERT INTO public.smjer (id, naziv_smjera, odsjek_id) VALUES (3, 'MI', 1);
INSERT INTO public.smjer (id, naziv_smjera, odsjek_id) VALUES (4, 'MA', 1);


--
-- TOC entry 4147 (class 0 OID 3972053)
-- Dependencies: 233
-- Data for Name: smjer_predmet; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 43);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 44);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 45);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 46);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 47);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 48);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 49);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 50);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 51);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 52);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 53);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (1, 54);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 61);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 62);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 63);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 64);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 65);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 66);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 67);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (2, 68);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 55);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 56);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 57);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 58);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 59);
INSERT INTO public.smjer_predmet (smjer_id, predmet_id) VALUES (3, 60);


--
-- TOC entry 4149 (class 0 OID 3972070)
-- Dependencies: 235
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (6, 'Almedina', 'Alibasic', '1998-05-25', NULL, '2505998196028', 'Z', 'Matematika', 'TKN', 5, '5528/M');
INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (7, 'Jasko', 'Jaskic', '1997-05-06', NULL, '0605997196828', 'M', 'Matematika', 'TKN', 5, '5535/M');
INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (8, 'Lila', 'Lilic', '1995-01-25', NULL, '2501995192528', 'Z', 'Matematika', 'PM', 5, '5456/M');
INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (9, 'Jana', 'Janic', '1996-03-21', NULL, '2103998196028', 'Z', 'Matematika', 'TKN', 4, '5655/M');
INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (10, 'Rino', 'Rinic', '1998-11-05', NULL, '0511998196028', 'M', 'Matematika', 'MI', 5, '5621/M');
INSERT INTO public.student (id, ime, prezime, datum_rodjenja, mjesto_rodjenja, jmb, spol, odsjek, smjer, trenutni_semestar, broj_indeksa) VALUES (11, 'Sema', 'Semic', '1997-08-04', NULL, '0408998196028', 'M', 'Matematika', 'PM', 4, '5704/M');


--
-- TOC entry 4150 (class 0 OID 3972080)
-- Dependencies: 236
-- Data for Name: student_predmet; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.student_predmet (student_id, predmet_id) VALUES (6, 43);
INSERT INTO public.student_predmet (student_id, predmet_id) VALUES (8, 68);
INSERT INTO public.student_predmet (student_id, predmet_id) VALUES (10, 56);


--
-- TOC entry 4139 (class 0 OID 3971992)
-- Dependencies: 225
-- Data for Name: zaposlenik; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.zaposlenik (id, ime, prezime, datum_rodjenja, email, broj_telefona, radno_mjesto) VALUES (1, 'Elmedin', 'Selmanovic', '1975-01-01', 'eselmanovic@pmf.unsa.ba', '++387 33 279 959', 'profesor');
INSERT INTO public.zaposlenik (id, ime, prezime, datum_rodjenja, email, broj_telefona, radno_mjesto) VALUES (2, 'Adis', 'Alihodzic', '1984-01-01', 'adis.alihodzic@pmf.unsa.ba', '++387 33 275 959', 'profesor');
INSERT INTO public.zaposlenik (id, ime, prezime, datum_rodjenja, email, broj_telefona, radno_mjesto) VALUES (3, 'Sead', 'Delalic', '1992-01-01', 'delalic.sead@gmail.com', '++387 33 279 576', 'asistent');
INSERT INTO public.zaposlenik (id, ime, prezime, datum_rodjenja, email, broj_telefona, radno_mjesto) VALUES (4, 'Admir', 'Besirevic', '1992-05-01', 'besirevic.admir@gmail.com', '++387 33 279 535', 'asistent');


--
-- TOC entry 4140 (class 0 OID 3971998)
-- Dependencies: 226
-- Data for Name: zaposlenik_predmet; Type: TABLE DATA; Schema: public; Owner: ywnkqock
--

INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (1, 47);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (1, 48);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (2, 43);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (3, 47);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (3, 48);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (3, 43);
INSERT INTO public.zaposlenik_predmet (zaposlenik_id, predmet_id) VALUES (4, 44);


--
-- TOC entry 4197 (class 0 OID 0)
-- Dependencies: 237
-- Name: anketa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.anketa_id_seq', 5, true);


--
-- TOC entry 4198 (class 0 OID 0)
-- Dependencies: 227
-- Name: fakultet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.fakultet_id_seq', 1, true);


--
-- TOC entry 4199 (class 0 OID 0)
-- Dependencies: 242
-- Name: odgovor_studenta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.odgovor_studenta_id_seq', 24, true);


--
-- TOC entry 4200 (class 0 OID 0)
-- Dependencies: 229
-- Name: odsjek_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.odsjek_id_seq', 5, true);


--
-- TOC entry 4201 (class 0 OID 0)
-- Dependencies: 239
-- Name: pitanje_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.pitanje_id_seq', 6, true);


--
-- TOC entry 4202 (class 0 OID 0)
-- Dependencies: 222
-- Name: predmet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.predmet_id_seq', 72, true);


--
-- TOC entry 4203 (class 0 OID 0)
-- Dependencies: 231
-- Name: smjer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.smjer_id_seq', 4, true);


--
-- TOC entry 4204 (class 0 OID 0)
-- Dependencies: 234
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.student_id_seq', 11, true);


--
-- TOC entry 4205 (class 0 OID 0)
-- Dependencies: 224
-- Name: zaposlenik_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ywnkqock
--

SELECT pg_catalog.setval('public.zaposlenik_id_seq', 4, true);


--
-- TOC entry 3999 (class 2606 OID 4003683)
-- Name: anketa_kod anketa_kod_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_kod
    ADD CONSTRAINT anketa_kod_pkey PRIMARY KEY (anketa_id, kod_kod);


--
-- TOC entry 3993 (class 2606 OID 3972121)
-- Name: anketa_pitanje anketa_pitanje_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_pitanje
    ADD CONSTRAINT anketa_pitanje_pkey PRIMARY KEY (anketa_id, pitanje_id);


--
-- TOC entry 3989 (class 2606 OID 3972102)
-- Name: anketa anketa_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa
    ADD CONSTRAINT anketa_pkey PRIMARY KEY (id);


--
-- TOC entry 3967 (class 2606 OID 3972022)
-- Name: fakultet fakultet_naziv_fakulteta_key; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.fakultet
    ADD CONSTRAINT fakultet_naziv_fakulteta_key UNIQUE (naziv_fakulteta);


--
-- TOC entry 3969 (class 2606 OID 3972020)
-- Name: fakultet fakultet_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.fakultet
    ADD CONSTRAINT fakultet_pkey PRIMARY KEY (id);


--
-- TOC entry 3997 (class 2606 OID 4003678)
-- Name: kod kod_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.kod
    ADD CONSTRAINT kod_pkey PRIMARY KEY (kod);


--
-- TOC entry 3995 (class 2606 OID 3972148)
-- Name: odgovor_studenta odgovor_studenta_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odgovor_studenta
    ADD CONSTRAINT odgovor_studenta_pkey PRIMARY KEY (id);


--
-- TOC entry 3971 (class 2606 OID 3972032)
-- Name: odsjek odsjek_naziv_odsjeka_key; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odsjek
    ADD CONSTRAINT odsjek_naziv_odsjeka_key UNIQUE (naziv_odsjeka);


--
-- TOC entry 3973 (class 2606 OID 3972030)
-- Name: odsjek odsjek_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odsjek
    ADD CONSTRAINT odsjek_pkey PRIMARY KEY (id);


--
-- TOC entry 3991 (class 2606 OID 3972116)
-- Name: pitanje pitanje_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.pitanje
    ADD CONSTRAINT pitanje_pkey PRIMARY KEY (id);


--
-- TOC entry 3961 (class 2606 OID 3971988)
-- Name: predmet predmet_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.predmet
    ADD CONSTRAINT predmet_pkey PRIMARY KEY (id);


--
-- TOC entry 3975 (class 2606 OID 3972047)
-- Name: smjer smjer_naziv_smjera_key; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer
    ADD CONSTRAINT smjer_naziv_smjera_key UNIQUE (naziv_smjera);


--
-- TOC entry 3977 (class 2606 OID 3972045)
-- Name: smjer smjer_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer
    ADD CONSTRAINT smjer_pkey PRIMARY KEY (id);


--
-- TOC entry 3979 (class 2606 OID 3972057)
-- Name: smjer_predmet smjer_predmet_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer_predmet
    ADD CONSTRAINT smjer_predmet_pkey PRIMARY KEY (smjer_id, predmet_id);


--
-- TOC entry 3981 (class 2606 OID 3972079)
-- Name: student student_broj_indeksa_key; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_broj_indeksa_key UNIQUE (broj_indeksa);


--
-- TOC entry 3983 (class 2606 OID 3972077)
-- Name: student student_jmb_key; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_jmb_key UNIQUE (jmb);


--
-- TOC entry 3985 (class 2606 OID 3972075)
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- TOC entry 3987 (class 2606 OID 3972084)
-- Name: student_predmet student_predmet_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student_predmet
    ADD CONSTRAINT student_predmet_pkey PRIMARY KEY (student_id, predmet_id);


--
-- TOC entry 3963 (class 2606 OID 3971997)
-- Name: zaposlenik zaposlenik_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.zaposlenik
    ADD CONSTRAINT zaposlenik_pkey PRIMARY KEY (id);


--
-- TOC entry 3965 (class 2606 OID 3972002)
-- Name: zaposlenik_predmet zaposlenik_predmet_pkey; Type: CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.zaposlenik_predmet
    ADD CONSTRAINT zaposlenik_predmet_pkey PRIMARY KEY (zaposlenik_id, predmet_id);


--
-- TOC entry 4012 (class 2606 OID 4003684)
-- Name: anketa_kod anketa_kod_anketa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_kod
    ADD CONSTRAINT anketa_kod_anketa_id_fkey FOREIGN KEY (anketa_id) REFERENCES public.anketa(id);


--
-- TOC entry 4013 (class 2606 OID 4003689)
-- Name: anketa_kod anketa_kod_kod_kod_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_kod
    ADD CONSTRAINT anketa_kod_kod_kod_fkey FOREIGN KEY (kod_kod) REFERENCES public.kod(kod);


--
-- TOC entry 4009 (class 2606 OID 3972122)
-- Name: anketa_pitanje anketa_pitanje_anketa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_pitanje
    ADD CONSTRAINT anketa_pitanje_anketa_id_fkey FOREIGN KEY (anketa_id) REFERENCES public.anketa(id);


--
-- TOC entry 4010 (class 2606 OID 3972127)
-- Name: anketa_pitanje anketa_pitanje_pitanje_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa_pitanje
    ADD CONSTRAINT anketa_pitanje_pitanje_id_fkey FOREIGN KEY (pitanje_id) REFERENCES public.pitanje(id);


--
-- TOC entry 4008 (class 2606 OID 3972103)
-- Name: anketa anketa_predmet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.anketa
    ADD CONSTRAINT anketa_predmet_id_fkey FOREIGN KEY (predmet_id) REFERENCES public.predmet(id);


--
-- TOC entry 4011 (class 2606 OID 3972149)
-- Name: odgovor_studenta odgovor_studenta_pitanje_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odgovor_studenta
    ADD CONSTRAINT odgovor_studenta_pitanje_id_fkey FOREIGN KEY (pitanje_id) REFERENCES public.pitanje(id);


--
-- TOC entry 4002 (class 2606 OID 3972033)
-- Name: odsjek odsjek_fakultet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.odsjek
    ADD CONSTRAINT odsjek_fakultet_id_fkey FOREIGN KEY (fakultet_id) REFERENCES public.fakultet(id);


--
-- TOC entry 4003 (class 2606 OID 3972048)
-- Name: smjer smjer_odsjek_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer
    ADD CONSTRAINT smjer_odsjek_id_fkey FOREIGN KEY (odsjek_id) REFERENCES public.odsjek(id);


--
-- TOC entry 4005 (class 2606 OID 3972063)
-- Name: smjer_predmet smjer_predmet_predmet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer_predmet
    ADD CONSTRAINT smjer_predmet_predmet_id_fkey FOREIGN KEY (predmet_id) REFERENCES public.predmet(id);


--
-- TOC entry 4004 (class 2606 OID 3972058)
-- Name: smjer_predmet smjer_predmet_smjer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.smjer_predmet
    ADD CONSTRAINT smjer_predmet_smjer_id_fkey FOREIGN KEY (smjer_id) REFERENCES public.smjer(id);


--
-- TOC entry 4007 (class 2606 OID 3972090)
-- Name: student_predmet student_predmet_predmet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student_predmet
    ADD CONSTRAINT student_predmet_predmet_id_fkey FOREIGN KEY (predmet_id) REFERENCES public.predmet(id);


--
-- TOC entry 4006 (class 2606 OID 3972085)
-- Name: student_predmet student_predmet_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.student_predmet
    ADD CONSTRAINT student_predmet_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- TOC entry 4001 (class 2606 OID 3972008)
-- Name: zaposlenik_predmet zaposlenik_predmet_predmet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.zaposlenik_predmet
    ADD CONSTRAINT zaposlenik_predmet_predmet_id_fkey FOREIGN KEY (predmet_id) REFERENCES public.predmet(id);


--
-- TOC entry 4000 (class 2606 OID 3972003)
-- Name: zaposlenik_predmet zaposlenik_predmet_zaposlenik_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: ywnkqock
--

ALTER TABLE ONLY public.zaposlenik_predmet
    ADD CONSTRAINT zaposlenik_predmet_zaposlenik_id_fkey FOREIGN KEY (zaposlenik_id) REFERENCES public.zaposlenik(id);


--
-- TOC entry 4166 (class 0 OID 0)
-- Dependencies: 4165
-- Name: DATABASE ywnkqock; Type: ACL; Schema: -; Owner: ywnkqock
--

REVOKE CONNECT,TEMPORARY ON DATABASE ywnkqock FROM PUBLIC;


-- Completed on 2020-01-23 23:25:04

--
-- PostgreSQL database dump complete
--

