--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)

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
-- Name: sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sessions (
    id integer NOT NULL,
    token text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now(),
    "userId" integer NOT NULL
);


--
-- Name: sessions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sessions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sessions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sessions_id_seq OWNED BY public.sessions.id;


--
-- Name: urls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.urls (
    id integer NOT NULL,
    "shortUrl" text NOT NULL,
    url text NOT NULL,
    "userId" integer NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now() NOT NULL,
    "visitCount" integer DEFAULT 0 NOT NULL
);


--
-- Name: urls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.urls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: urls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.urls_id_seq OWNED BY public.urls.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.users (
    id integer NOT NULL,
    name text NOT NULL,
    email text NOT NULL,
    password text NOT NULL,
    "createdAt" timestamp with time zone DEFAULT now()
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: sessions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions ALTER COLUMN id SET DEFAULT nextval('public.sessions_id_seq'::regclass);


--
-- Name: urls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls ALTER COLUMN id SET DEFAULT nextval('public.urls_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.sessions VALUES (1, '875f5f1d-643e-4bf2-9415-f9dc6a92be2a', '2023-02-27 18:32:39.588508-03', 7);
INSERT INTO public.sessions VALUES (2, '771f2969-cd26-421c-966f-4973ecd10a26', '2023-02-27 18:32:54.579621-03', 7);
INSERT INTO public.sessions VALUES (3, 'bc787178-8758-4b41-81c5-65d0d9c2dd67', '2023-02-28 17:26:42.506908-03', 8);
INSERT INTO public.sessions VALUES (4, 'f9eecbe7-0640-4e72-a330-540fa24115b9', '2023-02-28 18:52:55.509325-03', 9);
INSERT INTO public.sessions VALUES (5, 'fad85a80-1c14-4233-96e1-d552d0298a49', '2023-02-28 18:53:58.423647-03', 10);
INSERT INTO public.sessions VALUES (6, 'ec8db338-edfd-44f7-8464-cfd80435a22b', '2023-02-28 18:54:26.841588-03', 11);
INSERT INTO public.sessions VALUES (7, '68b755b3-52d5-4d16-88b0-6e5d783efe15', '2023-02-28 18:55:31.91944-03', 12);
INSERT INTO public.sessions VALUES (8, '8cc29d1f-eee6-4504-a701-469fd234f9e7', '2023-02-28 18:55:47.629034-03', 13);
INSERT INTO public.sessions VALUES (9, 'b92f370d-d9ab-40b2-b494-1f84d9560b5c', '2023-02-28 18:56:04.083617-03', 14);
INSERT INTO public.sessions VALUES (10, '7e098992-3946-4192-8b54-299e69266ec1', '2023-02-28 18:56:17.637635-03', 15);
INSERT INTO public.sessions VALUES (11, '538adce1-7b70-4373-867f-f907df7acc9e', '2023-02-28 18:56:34.679966-03', 16);
INSERT INTO public.sessions VALUES (12, '2dafe653-3009-407e-ac83-ecb828ec9631', '2023-02-28 18:58:40.944303-03', 17);


--
-- Data for Name: urls; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.urls VALUES (5, 'HArN9pN9dkehbzN3h1N8U', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:15.563847-03', 0);
INSERT INTO public.urls VALUES (6, 'hbaOBfWetqQKnHXsePagB', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:17.002666-03', 0);
INSERT INTO public.urls VALUES (7, 'OZHHmSaHwljPSastYkhX9', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:17.64814-03', 0);
INSERT INTO public.urls VALUES (10, 'LYfyw_4_2BI3xuqWiJfKA', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:18.27661-03', 0);
INSERT INTO public.urls VALUES (11, 'k7SRQwhLzx7AW62MOuB3l', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:18.490826-03', 3);
INSERT INTO public.urls VALUES (9, '0ciJDUcFKejxbIqW49SME', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:18.055387-03', 2);
INSERT INTO public.urls VALUES (8, 'AKHmOXs3uYx2CgWHHYRsE', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 7, '2023-02-28 18:05:17.837901-03', 2);
INSERT INTO public.urls VALUES (12, 'H_IZ5PXbKIJfYw5rXnOpa', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 8, '2023-02-28 18:51:11.157566-03', 0);
INSERT INTO public.urls VALUES (13, 'OVfTSoUAp9UMvw7pssL5P', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 9, '2023-02-28 18:53:22.899082-03', 0);
INSERT INTO public.urls VALUES (14, 'KXH8vBW3j8reup5FVhSaa', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 9, '2023-02-28 18:53:24.910142-03', 0);
INSERT INTO public.urls VALUES (15, '7lvtzz6111RzdCu9JO_9d', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 10, '2023-02-28 18:54:08.099724-03', 0);
INSERT INTO public.urls VALUES (16, 'NqEGgfmEBNAj8uIGOy8v-', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 11, '2023-02-28 18:54:45.550765-03', 0);
INSERT INTO public.urls VALUES (17, 'Qsy9t5JtBZopPMKf33kLO', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 12, '2023-02-28 18:55:40.675952-03', 0);
INSERT INTO public.urls VALUES (18, 'oBNb99iwM_GKd6k8A1ScF', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 13, '2023-02-28 18:55:57.091858-03', 0);
INSERT INTO public.urls VALUES (19, 'IbgW2xBRE_Afgsq0sUAji', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 14, '2023-02-28 18:56:12.487679-03', 0);
INSERT INTO public.urls VALUES (20, 'i2DJ9zNRpWoVuYP8Y4ofr', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 15, '2023-02-28 18:56:29.079002-03', 0);
INSERT INTO public.urls VALUES (21, 'frXpTFvI61nLl2FmPPjqg', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 16, '2023-02-28 18:56:43.907345-03', 0);
INSERT INTO public.urls VALUES (22, '4muN88A2EBRyP5xyzVoi4', 'https://www.geeksforgeeks.org/express-js-res-redirect-function/', 17, '2023-02-28 18:58:51.884195-03', 1);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.users VALUES (7, 'fg', 'fg@d.com', '$2b$10$1hnrSlNBuX3m4xagyevC5OQfSfYhCULAXBhjZxnLo1yXUcRlW1NAK', '2023-02-27 18:31:53.520888-03');
INSERT INTO public.users VALUES (8, 'fg', 'fgf@d.com', '$2b$10$0sfR9yl2Xzb2s4QLamI8y.JjLUBSL/MxfhjpvWyGhxbrJYOW4TEle', '2023-02-28 17:26:28.624597-03');
INSERT INTO public.users VALUES (9, 'fg', 'fgfD@d.com', '$2b$10$kHyL9kbmVO9h9OQSWMtKiuC9gcJuP401xe5ju595LuYS1L/pdkmcq', '2023-02-28 18:52:46.528265-03');
INSERT INTO public.users VALUES (10, 'fg', '1@d.com', '$2b$10$P6KSH9/0OenSdFoVodvM2O5MQytQV5uonc4kUaqqXDLA8CXjzuRVa', '2023-02-28 18:53:52.175769-03');
INSERT INTO public.users VALUES (11, 'fg', '12@d.com', '$2b$10$adg2bth/3A8T2O3.O/nUpOuH/rZpIomVY2W6/jk28xeF3x83.PNT2', '2023-02-28 18:54:23.297959-03');
INSERT INTO public.users VALUES (12, 'fg', '123@d.com', '$2b$10$I.EwZYIq1LHy8aWq/uAqgeqnGHHT0hD5zr72heE469L4oif2As2m.', '2023-02-28 18:55:08.549868-03');
INSERT INTO public.users VALUES (13, 'fg', '1234@d.com', '$2b$10$qlHoxNkhWURLFxjYkOTrF.g/8M8Qmb0pDaX9Ct1ah/lfu79v.fAp.', '2023-02-28 18:55:12.945272-03');
INSERT INTO public.users VALUES (14, 'fg', '12345@d.com', '$2b$10$B1cI2V9nHiVUQ.0HIyqFwebInwSTLOFyICLk0q2lTt2vgKqvuBp9e', '2023-02-28 18:55:15.98327-03');
INSERT INTO public.users VALUES (15, 'fg', '123456@d.com', '$2b$10$sFgX42whpSMXSsqdspaeC.Hxx/HK00lrkno0NeCCHaLxI1XHDWAna', '2023-02-28 18:55:19.236021-03');
INSERT INTO public.users VALUES (16, 'fg', '1234567@d.com', '$2b$10$P4CuN5atJNH4yRd8klsC2OUXRvicBlgd6NqUCVASGiAdnX9yCNuye', '2023-02-28 18:55:22.086603-03');
INSERT INTO public.users VALUES (17, 'fg', '12345678@d.com', '$2b$10$d1NrcOxyWWoNkxGxUBUtKuG6gd1Hs0it9Hq9fq1rEH7VW2kowVMU6', '2023-02-28 18:58:34.93217-03');


--
-- Name: sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.sessions_id_seq', 12, true);


--
-- Name: urls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.urls_id_seq', 22, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.users_id_seq', 17, true);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: urls urls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT urls_pkey PRIMARY KEY (id);


--
-- Name: users users_email_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- Name: urls urls_userId_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.urls
    ADD CONSTRAINT "urls_userId_fkey" FOREIGN KEY ("userId") REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

