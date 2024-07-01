--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 15, 1);
INSERT INTO public.games VALUES (2, 9, 1);
INSERT INTO public.games VALUES (3, 484, 2);
INSERT INTO public.games VALUES (4, 109, 2);
INSERT INTO public.games VALUES (5, 889, 3);
INSERT INTO public.games VALUES (6, 677, 3);
INSERT INTO public.games VALUES (7, 996, 2);
INSERT INTO public.games VALUES (8, 392, 2);
INSERT INTO public.games VALUES (9, 624, 2);
INSERT INTO public.games VALUES (10, 581, 4);
INSERT INTO public.games VALUES (11, 112, 4);
INSERT INTO public.games VALUES (12, 30, 5);
INSERT INTO public.games VALUES (13, 786, 5);
INSERT INTO public.games VALUES (14, 669, 4);
INSERT INTO public.games VALUES (15, 781, 4);
INSERT INTO public.games VALUES (16, 474, 4);
INSERT INTO public.games VALUES (17, 13, 1);
INSERT INTO public.games VALUES (18, 141, 6);
INSERT INTO public.games VALUES (19, 387, 6);
INSERT INTO public.games VALUES (20, 819, 7);
INSERT INTO public.games VALUES (21, 266, 7);
INSERT INTO public.games VALUES (22, 192, 6);
INSERT INTO public.games VALUES (23, 707, 6);
INSERT INTO public.games VALUES (24, 394, 6);
INSERT INTO public.games VALUES (25, 31, 1);
INSERT INTO public.games VALUES (26, 545, 8);
INSERT INTO public.games VALUES (27, 525, 8);
INSERT INTO public.games VALUES (28, 108, 9);
INSERT INTO public.games VALUES (29, 261, 9);
INSERT INTO public.games VALUES (30, 538, 8);
INSERT INTO public.games VALUES (31, 405, 8);
INSERT INTO public.games VALUES (32, 507, 8);
INSERT INTO public.games VALUES (33, 847, 10);
INSERT INTO public.games VALUES (34, 264, 10);
INSERT INTO public.games VALUES (35, 752, 11);
INSERT INTO public.games VALUES (36, 483, 11);
INSERT INTO public.games VALUES (37, 795, 10);
INSERT INTO public.games VALUES (38, 855, 10);
INSERT INTO public.games VALUES (39, 571, 10);
INSERT INTO public.games VALUES (40, 265, 12);
INSERT INTO public.games VALUES (41, 29, 12);
INSERT INTO public.games VALUES (42, 961, 13);
INSERT INTO public.games VALUES (43, 39, 13);
INSERT INTO public.games VALUES (44, 670, 12);
INSERT INTO public.games VALUES (45, 25, 12);
INSERT INTO public.games VALUES (46, 778, 12);
INSERT INTO public.games VALUES (47, 19, 14);
INSERT INTO public.games VALUES (48, 841, 14);
INSERT INTO public.games VALUES (49, 79, 15);
INSERT INTO public.games VALUES (50, 783, 15);
INSERT INTO public.games VALUES (51, 824, 14);
INSERT INTO public.games VALUES (52, 632, 14);
INSERT INTO public.games VALUES (53, 663, 14);
INSERT INTO public.games VALUES (54, 907, 16);
INSERT INTO public.games VALUES (55, 857, 16);
INSERT INTO public.games VALUES (56, 155, 17);
INSERT INTO public.games VALUES (57, 530, 17);
INSERT INTO public.games VALUES (58, 24, 16);
INSERT INTO public.games VALUES (59, 511, 16);
INSERT INTO public.games VALUES (60, 988, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'maria');
INSERT INTO public.users VALUES (2, 'user_1719872991853');
INSERT INTO public.users VALUES (3, 'user_1719872991852');
INSERT INTO public.users VALUES (4, 'user_1719873096154');
INSERT INTO public.users VALUES (5, 'user_1719873096153');
INSERT INTO public.users VALUES (6, 'user_1719873162410');
INSERT INTO public.users VALUES (7, 'user_1719873162409');
INSERT INTO public.users VALUES (8, 'user_1719873325393');
INSERT INTO public.users VALUES (9, 'user_1719873325392');
INSERT INTO public.users VALUES (10, 'user_1719873549629');
INSERT INTO public.users VALUES (11, 'user_1719873549628');
INSERT INTO public.users VALUES (12, 'user_1719873646385');
INSERT INTO public.users VALUES (13, 'user_1719873646384');
INSERT INTO public.users VALUES (14, 'user_1719873670261');
INSERT INTO public.users VALUES (15, 'user_1719873670260');
INSERT INTO public.users VALUES (16, 'user_1719873682694');
INSERT INTO public.users VALUES (17, 'user_1719873682693');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 60, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

