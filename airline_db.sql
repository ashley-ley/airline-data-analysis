--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

-- Started on 2023-10-02 18:54:55

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
-- TOC entry 4892 (class 1262 OID 16514)
-- Name: Airline_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Airline_db" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "Airline_db" OWNER TO postgres;

\connect "Airline_db"

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
-- TOC entry 6 (class 2615 OID 16519)
-- Name: airline_db_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA airline_db_schema;


ALTER SCHEMA airline_db_schema OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16579)
-- Name: airline_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.airline_data (
    passenger_id integer NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    gender character varying NOT NULL,
    age integer NOT NULL,
    nationality character varying NOT NULL,
    airport_name character varying NOT NULL,
    airport_country_code character varying NOT NULL,
    country_name character varying NOT NULL,
    airport_continent character varying NOT NULL,
    continents character varying NOT NULL,
    departure_date timestamp without time zone NOT NULL,
    arrival_airport character varying NOT NULL,
    pilot_name character varying NOT NULL,
    flight_status character varying NOT NULL
);


ALTER TABLE public.airline_data OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16685)
-- Name: argentina_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.argentina_flights (
    country_name character varying,
    flight_status character varying,
    arrival_airport character varying
);


ALTER TABLE public.argentina_flights OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16655)
-- Name: dallas_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dallas_flights (
    passenger_id integer,
    airport_name character varying,
    country_name character varying,
    continents character varying,
    arrival_airport character varying,
    flight_status character varying,
    pilot_name character varying,
    date date,
    start_date date,
    preceipitation_in numeric,
    airport_code character varying,
    latitude numeric,
    longitude numeric,
    city character varying,
    state_abv character varying
);


ALTER TABLE public.dallas_flights OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16639)
-- Name: dallas_weather_2022; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dallas_weather_2022 (
    index integer NOT NULL,
    event_id character varying NOT NULL,
    type character varying NOT NULL,
    severity character varying NOT NULL,
    start_date date,
    preceipitation_in numeric NOT NULL,
    airport_code character varying NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,
    city character varying NOT NULL,
    county character varying NOT NULL,
    state_abv character varying NOT NULL
);


ALTER TABLE public.dallas_weather_2022 OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16660)
-- Name: denver_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.denver_flights (
    passenger_id integer,
    airport_name character varying,
    country_name character varying,
    continents character varying,
    arrival_airport character varying,
    flight_status character varying,
    pilot_name character varying,
    date date,
    start_date date,
    preceipitation_in numeric,
    airport_code character varying,
    latitude numeric,
    longitude numeric,
    city character varying,
    state_abv character varying
);


ALTER TABLE public.denver_flights OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16634)
-- Name: denver_weather_2022; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.denver_weather_2022 (
    index integer NOT NULL,
    event_id character varying NOT NULL,
    type character varying NOT NULL,
    severity character varying NOT NULL,
    start_date date,
    preceipitation_in numeric NOT NULL,
    airport_code character varying NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,
    city character varying NOT NULL,
    county character varying NOT NULL,
    state_abv character varying NOT NULL
);


ALTER TABLE public.denver_weather_2022 OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16690)
-- Name: germany_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.germany_flights (
    country_name character varying,
    flight_status character varying,
    arrival_airport character varying
);


ALTER TABLE public.germany_flights OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16675)
-- Name: italy_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.italy_flights (
    country_name character varying,
    flight_status character varying,
    arrival_airport character varying
);


ALTER TABLE public.italy_flights OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16650)
-- Name: london_flight; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.london_flight (
    passenger_id integer,
    airport_name character varying,
    country_name character varying,
    continents character varying,
    arrival_airport character varying,
    flight_status character varying,
    pilot_name character varying,
    date date,
    prcp numeric,
    airport_code character varying(5),
    tavg numeric
);


ALTER TABLE public.london_flight OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16644)
-- Name: london_weather_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.london_weather_data (
    date timestamp without time zone NOT NULL,
    tavg numeric NOT NULL,
    tmin numeric,
    tmax numeric NOT NULL,
    prcp numeric NOT NULL,
    snow numeric NOT NULL,
    airport_code character varying(5) NOT NULL
);


ALTER TABLE public.london_weather_data OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16665)
-- Name: mexico_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mexico_flights (
    country_name character varying,
    flight_status character varying,
    arrival_airport character varying
);


ALTER TABLE public.mexico_flights OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16680)
-- Name: united_kingdom_flights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.united_kingdom_flights (
    country_name character varying,
    flight_status character varying,
    arrival_airport character varying
);


ALTER TABLE public.united_kingdom_flights OWNER TO postgres;

-- Completed on 2023-10-02 18:54:55

--
-- PostgreSQL database dump complete
--

