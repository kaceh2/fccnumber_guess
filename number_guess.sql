--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    attempts integer NOT NULL,
    player_id integer NOT NULL
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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    name character varying(22) NOT NULL,
    games_played integer NOT NULL
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (67, 12, 19);
INSERT INTO public.games VALUES (68, 16, 19);
INSERT INTO public.games VALUES (69, 769, 20);
INSERT INTO public.games VALUES (70, 484, 20);
INSERT INTO public.games VALUES (71, 834, 21);
INSERT INTO public.games VALUES (72, 47, 21);
INSERT INTO public.games VALUES (73, 11, 20);
INSERT INTO public.games VALUES (74, 538, 20);
INSERT INTO public.games VALUES (75, 610, 20);
INSERT INTO public.games VALUES (76, 785, 22);
INSERT INTO public.games VALUES (77, 732, 22);
INSERT INTO public.games VALUES (78, 77, 23);
INSERT INTO public.games VALUES (79, 938, 23);
INSERT INTO public.games VALUES (80, 274, 22);
INSERT INTO public.games VALUES (81, 979, 22);
INSERT INTO public.games VALUES (82, 823, 22);
INSERT INTO public.games VALUES (83, 53, 24);
INSERT INTO public.games VALUES (84, 262, 24);
INSERT INTO public.games VALUES (85, 208, 25);
INSERT INTO public.games VALUES (86, 974, 25);
INSERT INTO public.games VALUES (87, 410, 24);
INSERT INTO public.games VALUES (88, 822, 24);
INSERT INTO public.games VALUES (89, 101, 24);
INSERT INTO public.games VALUES (102, 925, 53);
INSERT INTO public.games VALUES (103, 430, 53);
INSERT INTO public.games VALUES (104, 544, 54);
INSERT INTO public.games VALUES (105, 505, 54);
INSERT INTO public.games VALUES (106, 412, 53);
INSERT INTO public.games VALUES (107, 756, 53);
INSERT INTO public.games VALUES (108, 166, 53);
INSERT INTO public.games VALUES (109, 214, 55);
INSERT INTO public.games VALUES (110, 569, 55);
INSERT INTO public.games VALUES (111, 888, 56);
INSERT INTO public.games VALUES (112, 46, 56);
INSERT INTO public.games VALUES (113, 274, 55);
INSERT INTO public.games VALUES (114, 145, 55);
INSERT INTO public.games VALUES (115, 353, 55);
INSERT INTO public.games VALUES (116, 409, 57);
INSERT INTO public.games VALUES (117, 4, 57);
INSERT INTO public.games VALUES (118, 569, 58);
INSERT INTO public.games VALUES (119, 826, 58);
INSERT INTO public.games VALUES (120, 797, 57);
INSERT INTO public.games VALUES (121, 888, 57);
INSERT INTO public.games VALUES (122, 356, 57);
INSERT INTO public.games VALUES (123, 451, 59);
INSERT INTO public.games VALUES (124, 551, 59);
INSERT INTO public.games VALUES (125, 474, 60);
INSERT INTO public.games VALUES (126, 9, 60);
INSERT INTO public.games VALUES (127, 537, 59);
INSERT INTO public.games VALUES (128, 32, 59);
INSERT INTO public.games VALUES (129, 342, 59);
INSERT INTO public.games VALUES (130, 260, 61);
INSERT INTO public.games VALUES (131, 778, 61);
INSERT INTO public.games VALUES (132, 761, 62);
INSERT INTO public.games VALUES (133, 322, 62);
INSERT INTO public.games VALUES (134, 180, 61);
INSERT INTO public.games VALUES (135, 572, 61);
INSERT INTO public.games VALUES (136, 710, 61);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (61, 'user_1702358720109', 7);
INSERT INTO public.players VALUES (59, 'user_1702358524621', 14);
INSERT INTO public.players VALUES (57, 'user_1702358406311', 21);
INSERT INTO public.players VALUES (24, 'user_1702358135624', 42);
INSERT INTO public.players VALUES (19, 'law', 58);
INSERT INTO public.players VALUES (20, 'user_1702357957810', 56);
INSERT INTO public.players VALUES (21, 'user_1702357957809', 54);
INSERT INTO public.players VALUES (22, 'user_1702357977895', 49);
INSERT INTO public.players VALUES (23, 'user_1702357977894', 47);
INSERT INTO public.players VALUES (25, 'user_1702358135623', 40);
INSERT INTO public.players VALUES (53, 'user_1702358255250', 35);
INSERT INTO public.players VALUES (54, 'user_1702358255249', 33);
INSERT INTO public.players VALUES (55, 'user_1702358291579', 28);
INSERT INTO public.players VALUES (56, 'user_1702358291578', 26);
INSERT INTO public.players VALUES (58, 'user_1702358406310', 19);
INSERT INTO public.players VALUES (60, 'user_1702358524620', 12);
INSERT INTO public.players VALUES (62, 'user_1702358720108', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 136, true);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 62, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: games fk_player_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_player_id FOREIGN KEY (player_id) REFERENCES public.players(player_id);


--
-- PostgreSQL database dump complete
--

