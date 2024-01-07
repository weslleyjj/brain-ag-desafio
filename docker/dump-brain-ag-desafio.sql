--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10
-- Dumped by pg_dump version 15.3

-- Started on 2024-01-06 21:51:24

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: -
--

--
-- TOC entry 3357 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 40962)
-- Name: cultura; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cultura (
    id integer NOT NULL,
    nome character varying(500) NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 40961)
-- Name: cultura_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cultura_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3358 (class 0 OID 0)
-- Dependencies: 209
-- Name: cultura_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cultura_id_seq OWNED BY public.cultura.id;


--
-- TOC entry 212 (class 1259 OID 40969)
-- Name: produtor; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produtor (
    id integer NOT NULL,
    nome character varying(500) NOT NULL,
    documento character varying NOT NULL,
    fazenda character varying NOT NULL,
    cidade character varying NOT NULL,
    estado character varying NOT NULL,
    "areaTotal" integer NOT NULL,
    "areaAgricultavel" integer NOT NULL,
    "areaDeVegetacao" integer NOT NULL
);


--
-- TOC entry 213 (class 1259 OID 40977)
-- Name: produtor_culturas_cultura; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.produtor_culturas_cultura (
    "produtorId" integer NOT NULL,
    "culturaId" integer NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 40968)
-- Name: produtor_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.produtor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 3359 (class 0 OID 0)
-- Dependencies: 211
-- Name: produtor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.produtor_id_seq OWNED BY public.produtor.id;


--
-- TOC entry 3196 (class 2604 OID 40965)
-- Name: cultura id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cultura ALTER COLUMN id SET DEFAULT nextval('public.cultura_id_seq'::regclass);


--
-- TOC entry 3197 (class 2604 OID 40972)
-- Name: produtor id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor ALTER COLUMN id SET DEFAULT nextval('public.produtor_id_seq'::regclass);


--
-- TOC entry 3348 (class 0 OID 40962)
-- Dependencies: 210
-- Data for Name: cultura; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.cultura VALUES (1, 'Soja');
INSERT INTO public.cultura VALUES (2, 'Milho');
INSERT INTO public.cultura VALUES (3, 'Algodão');
INSERT INTO public.cultura VALUES (4, 'Café');
INSERT INTO public.cultura VALUES (5, 'Cana de Açucar');


--
-- TOC entry 3350 (class 0 OID 40969)
-- Dependencies: 212
-- Data for Name: produtor; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.produtor VALUES (1, 'João Silva', '12345678912', 'Fazenda Feliz', 'Cidade Alegre', 'RN', 100, 80, 20);
INSERT INTO public.produtor VALUES (2, 'Maria Oliveira', '98765432132', 'Fazenda Esperança', 'Cidade Tranquila', 'SP', 150, 120, 30);
INSERT INTO public.produtor VALUES (3, 'Carlos Rocha', '45678901265', 'Fazenda Harmonia', 'Cidade Serena', 'SP', 80, 60, 20);
INSERT INTO public.produtor VALUES (4, 'Ana Souza', '123456789000101', 'Fazenda Vista Verde', 'Cidade Sossegada', 'PB', 120, 90, 30);
INSERT INTO public.produtor VALUES (5, 'Ricardo Santos', '987654321000202', 'Fazenda Sol Nascente', 'Cidade Tranquilidade', 'CE', 200, 160, 40);
INSERT INTO public.produtor VALUES (6, 'Fernanda Lima', '234567890000303', 'Fazenda Florescer', 'Cidade Paz', 'AM', 90, 70, 20);
INSERT INTO public.produtor VALUES (7, 'Roberto Castro', '876543210000404', 'Fazenda Bela Vista', 'Cidade Serenidade', 'SC', 180, 140, 40);
INSERT INTO public.produtor VALUES (8, 'Mariana Mendes', '345678901000505', 'Fazenda Aurora', 'Cidade Calma', 'RJ', 110, 80, 30);
INSERT INTO public.produtor VALUES (9, 'Luis Oliveira', '12345678901', 'Fazenda São João', 'Cidade Aconchegante', 'MT', 150, 120, 30);
INSERT INTO public.produtor VALUES (10, 'Camila Pereira', '98765432102', 'Fazenda Nova Esperança', 'Cidade Tranquila', 'MS', 130, 100, 30);
INSERT INTO public.produtor VALUES (11, 'Lucas Silva', '23456789003', 'Fazenda Harmonia', 'Cidade Serena', 'AC', 80, 60, 20);
INSERT INTO public.produtor VALUES (12, 'Mariana Costa', '87654321004', 'Fazenda Primavera', 'Cidade Paz', 'RS', 110, 80, 30);
INSERT INTO public.produtor VALUES (13, 'Rafaela Martins', '34567890105', 'Fazenda Sol Nascente', 'Cidade Sossegada', 'GO', 200, 160, 40);
INSERT INTO public.produtor VALUES (14, 'Lucas Lima', '234567890000303', 'Fazenda Dos Indios', 'Cidade Paz', 'AM', 290, 270, 20);
INSERT INTO public.produtor VALUES (15, 'Roberto Carlos', '876543210000404', 'Fazenda Boa água', 'Cidade Aguada', 'AM', 180, 140, 40);
INSERT INTO public.produtor VALUES (16, 'Mariana Mendonça', '345678901000505', 'Fazenda Mangueira', 'Cidade Doce', 'AM', 210, 180, 30);
INSERT INTO public.produtor VALUES (17, 'Luis Almir', '12345678901', 'Fazenda Noticia', 'Cidade Segura', 'MT', 250, 220, 30);
INSERT INTO public.produtor VALUES (18, 'Camila Cabelo', '98765432102', 'Fazenda Picuí', 'Cidade Preguiça', 'MS', 230, 100, 130);
INSERT INTO public.produtor VALUES (19, 'Jodeilson Silva', '23456789003', 'Fazenda Rica', 'Cidade Serena', 'AC', 180, 160, 20);
INSERT INTO public.produtor VALUES (20, 'Mariana De Costas', '87654321004', 'Fazenda Maria', 'Cidade sem Paz', 'RS', 210, 180, 30);
INSERT INTO public.produtor VALUES (21, 'Rafaela Tocantins', '34567890105', 'Fazenda Longe', 'Cidade Infinita', 'GO', 300, 260, 40);


--
-- TOC entry 3351 (class 0 OID 40977)
-- Dependencies: 213
-- Data for Name: produtor_culturas_cultura; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.produtor_culturas_cultura VALUES (1, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (2, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (3, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (4, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (5, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (6, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (7, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (8, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (9, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (10, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (11, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (12, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (13, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (14, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (15, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (16, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (17, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (18, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (19, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (20, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (21, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (1, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (1, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (2, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (2, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (3, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (4, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (4, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (4, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (5, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (6, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (7, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (8, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (12, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (12, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (14, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (14, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (14, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (16, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (16, 2);
INSERT INTO public.produtor_culturas_cultura VALUES (18, 3);
INSERT INTO public.produtor_culturas_cultura VALUES (18, 1);
INSERT INTO public.produtor_culturas_cultura VALUES (20, 4);
INSERT INTO public.produtor_culturas_cultura VALUES (20, 5);
INSERT INTO public.produtor_culturas_cultura VALUES (20, 1);


--
-- TOC entry 3360 (class 0 OID 0)
-- Dependencies: 209
-- Name: cultura_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.cultura_id_seq', 5, true);


--
-- TOC entry 3361 (class 0 OID 0)
-- Dependencies: 211
-- Name: produtor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.produtor_id_seq', 21, true);


--
-- TOC entry 3205 (class 2606 OID 40981)
-- Name: produtor_culturas_cultura PK_8b2a2359652241f45d35ecf527d; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor_culturas_cultura
    ADD CONSTRAINT "PK_8b2a2359652241f45d35ecf527d" PRIMARY KEY ("produtorId", "culturaId");


--
-- TOC entry 3199 (class 2606 OID 40967)
-- Name: cultura PK_b222a9fa80157cef677c6962646; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cultura
    ADD CONSTRAINT "PK_b222a9fa80157cef677c6962646" PRIMARY KEY (id);


--
-- TOC entry 3201 (class 2606 OID 40976)
-- Name: produtor PK_da0beeee09664030b67354e41e2; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor
    ADD CONSTRAINT "PK_da0beeee09664030b67354e41e2" PRIMARY KEY (id);


--
-- TOC entry 3202 (class 1259 OID 40982)
-- Name: IDX_15431928bba1aebac0855557fc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_15431928bba1aebac0855557fc" ON public.produtor_culturas_cultura USING btree ("produtorId");


--
-- TOC entry 3203 (class 1259 OID 40983)
-- Name: IDX_7d125e09d5f7a9e65c4608c057; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "IDX_7d125e09d5f7a9e65c4608c057" ON public.produtor_culturas_cultura USING btree ("culturaId");


--
-- TOC entry 3206 (class 2606 OID 40984)
-- Name: produtor_culturas_cultura FK_15431928bba1aebac0855557fc7; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor_culturas_cultura
    ADD CONSTRAINT "FK_15431928bba1aebac0855557fc7" FOREIGN KEY ("produtorId") REFERENCES public.produtor(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- TOC entry 3207 (class 2606 OID 40989)
-- Name: produtor_culturas_cultura FK_7d125e09d5f7a9e65c4608c0579; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.produtor_culturas_cultura
    ADD CONSTRAINT "FK_7d125e09d5f7a9e65c4608c0579" FOREIGN KEY ("culturaId") REFERENCES public.cultura(id) ON UPDATE CASCADE ON DELETE CASCADE;


-- Completed on 2024-01-06 21:51:24

--
-- PostgreSQL database dump complete
--

