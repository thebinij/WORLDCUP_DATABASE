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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 711, 710, 4, 2);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 713, 712, 2, 0);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 710, 712, 2, 1);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 711, 713, 1, 0);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 710, 718, 3, 2);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 712, 720, 2, 0);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 713, 722, 2, 1);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 711, 724, 2, 0);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 712, 726, 2, 1);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 720, 728, 1, 0);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 713, 730, 3, 2);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 722, 732, 2, 0);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 710, 734, 2, 1);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 718, 736, 2, 1);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 724, 738, 2, 1);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 711, 740, 4, 3);
INSERT INTO public.games VALUES (49, 2014, 'Final', 743, 740, 1, 0);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 745, 722, 3, 0);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 740, 745, 1, 0);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 743, 722, 7, 1);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 745, 750, 1, 0);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 740, 713, 1, 0);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 722, 726, 2, 1);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 743, 711, 1, 0);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 722, 758, 2, 1);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 726, 724, 2, 0);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 711, 762, 2, 0);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 743, 764, 2, 1);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 745, 732, 2, 1);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 750, 768, 2, 1);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 740, 728, 1, 0);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 713, 772, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (710, 'Croatia');
INSERT INTO public.teams VALUES (711, 'France');
INSERT INTO public.teams VALUES (712, 'England');
INSERT INTO public.teams VALUES (713, 'Belgium');
INSERT INTO public.teams VALUES (718, 'Russia');
INSERT INTO public.teams VALUES (720, 'Sweden');
INSERT INTO public.teams VALUES (722, 'Brazil');
INSERT INTO public.teams VALUES (724, 'Uruguay');
INSERT INTO public.teams VALUES (726, 'Colombia');
INSERT INTO public.teams VALUES (728, 'Switzerland');
INSERT INTO public.teams VALUES (730, 'Japan');
INSERT INTO public.teams VALUES (732, 'Mexico');
INSERT INTO public.teams VALUES (734, 'Denmark');
INSERT INTO public.teams VALUES (736, 'Spain');
INSERT INTO public.teams VALUES (738, 'Portugal');
INSERT INTO public.teams VALUES (740, 'Argentina');
INSERT INTO public.teams VALUES (743, 'Germany');
INSERT INTO public.teams VALUES (745, 'Netherlands');
INSERT INTO public.teams VALUES (750, 'Costa Rica');
INSERT INTO public.teams VALUES (758, 'Chile');
INSERT INTO public.teams VALUES (762, 'Nigeria');
INSERT INTO public.teams VALUES (764, 'Algeria');
INSERT INTO public.teams VALUES (768, 'Greece');
INSERT INTO public.teams VALUES (772, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 773, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent_teams FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner_teams; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner_teams FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

