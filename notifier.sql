--
-- PostgreSQL database dump
--

-- Dumped from database version 12.4 (Ubuntu 12.4-1.pgdg18.04+1)
-- Dumped by pg_dump version 13.0 (Ubuntu 13.0-1.pgdg18.04+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO notifier_admin;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO notifier_admin;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO notifier_admin;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO notifier_admin;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO notifier_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO notifier_admin;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO notifier_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO notifier_admin;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO notifier_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO notifier_admin;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO notifier_admin;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO notifier_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO notifier_admin;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO notifier_admin;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO notifier_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO notifier_admin;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: chats_onetooneroom; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.chats_onetooneroom (
    id integer NOT NULL,
    room_name character varying(128) NOT NULL,
    event_id integer NOT NULL,
    user1_id integer,
    user2_id integer
);


ALTER TABLE public.chats_onetooneroom OWNER TO notifier_admin;

--
-- Name: chats_onetooneroom_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.chats_onetooneroom_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chats_onetooneroom_id_seq OWNER TO notifier_admin;

--
-- Name: chats_onetooneroom_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.chats_onetooneroom_id_seq OWNED BY public.chats_onetooneroom.id;


--
-- Name: content_event; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.content_event (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    date character varying(50),
    image character varying(100),
    place character varying(200),
    genres character varying(200)
);


ALTER TABLE public.content_event OWNER TO notifier_admin;

--
-- Name: content_event_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.content_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_event_id_seq OWNER TO notifier_admin;

--
-- Name: content_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.content_event_id_seq OWNED BY public.content_event.id;


--
-- Name: content_event_looking_for_a_company; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.content_event_looking_for_a_company (
    id integer NOT NULL,
    event_id integer NOT NULL,
    profile_id integer NOT NULL
);


ALTER TABLE public.content_event_looking_for_a_company OWNER TO notifier_admin;

--
-- Name: content_event_looking_for_a_company_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.content_event_looking_for_a_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_event_looking_for_a_company_id_seq OWNER TO notifier_admin;

--
-- Name: content_event_looking_for_a_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.content_event_looking_for_a_company_id_seq OWNED BY public.content_event_looking_for_a_company.id;


--
-- Name: content_intent; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.content_intent (
    id integer NOT NULL,
    visited boolean NOT NULL,
    event_id integer NOT NULL,
    profile_id integer NOT NULL
);


ALTER TABLE public.content_intent OWNER TO notifier_admin;

--
-- Name: content_intent_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.content_intent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_intent_id_seq OWNER TO notifier_admin;

--
-- Name: content_intent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.content_intent_id_seq OWNED BY public.content_intent.id;


--
-- Name: content_profile; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.content_profile (
    id integer NOT NULL,
    gender character varying(2),
    about text,
    vk_link character varying(50),
    user_id integer NOT NULL,
    vk_id integer,
    CONSTRAINT content_profile_vk_id_check CHECK ((vk_id >= 0))
);


ALTER TABLE public.content_profile OWNER TO notifier_admin;

--
-- Name: content_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.content_profile_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.content_profile_id_seq OWNER TO notifier_admin;

--
-- Name: content_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.content_profile_id_seq OWNED BY public.content_profile.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO notifier_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO notifier_admin;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_celery_beat_clockedschedule; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_clockedschedule (
    id integer NOT NULL,
    clocked_time timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_beat_clockedschedule OWNER TO notifier_admin;

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_beat_clockedschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_clockedschedule_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_beat_clockedschedule_id_seq OWNED BY public.django_celery_beat_clockedschedule.id;


--
-- Name: django_celery_beat_crontabschedule; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_crontabschedule (
    id integer NOT NULL,
    minute character varying(240) NOT NULL,
    hour character varying(96) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(124) NOT NULL,
    month_of_year character varying(64) NOT NULL,
    timezone character varying(63) NOT NULL
);


ALTER TABLE public.django_celery_beat_crontabschedule OWNER TO notifier_admin;

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_beat_crontabschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_crontabschedule_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_beat_crontabschedule_id_seq OWNED BY public.django_celery_beat_crontabschedule.id;


--
-- Name: django_celery_beat_intervalschedule; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE public.django_celery_beat_intervalschedule OWNER TO notifier_admin;

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_beat_intervalschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_intervalschedule_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_beat_intervalschedule_id_seq OWNED BY public.django_celery_beat_intervalschedule.id;


--
-- Name: django_celery_beat_periodictask; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    crontab_id integer,
    interval_id integer,
    solar_id integer,
    one_off boolean NOT NULL,
    start_time timestamp with time zone,
    priority integer,
    headers text NOT NULL,
    clocked_id integer,
    expire_seconds integer,
    CONSTRAINT django_celery_beat_periodictask_expire_seconds_check CHECK ((expire_seconds >= 0)),
    CONSTRAINT django_celery_beat_periodictask_priority_check CHECK ((priority >= 0)),
    CONSTRAINT django_celery_beat_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE public.django_celery_beat_periodictask OWNER TO notifier_admin;

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_beat_periodictask_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_periodictask_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_beat_periodictask_id_seq OWNED BY public.django_celery_beat_periodictask.id;


--
-- Name: django_celery_beat_periodictasks; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_beat_periodictasks OWNER TO notifier_admin;

--
-- Name: django_celery_beat_solarschedule; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_beat_solarschedule (
    id integer NOT NULL,
    event character varying(24) NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL
);


ALTER TABLE public.django_celery_beat_solarschedule OWNER TO notifier_admin;

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_beat_solarschedule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_beat_solarschedule_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_beat_solarschedule_id_seq OWNED BY public.django_celery_beat_solarschedule.id;


--
-- Name: django_celery_results_chordcounter; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_results_chordcounter (
    id integer NOT NULL,
    group_id character varying(255) NOT NULL,
    sub_tasks text NOT NULL,
    count integer NOT NULL,
    CONSTRAINT django_celery_results_chordcounter_count_check CHECK ((count >= 0))
);


ALTER TABLE public.django_celery_results_chordcounter OWNER TO notifier_admin;

--
-- Name: django_celery_results_chordcounter_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_results_chordcounter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_results_chordcounter_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_results_chordcounter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_results_chordcounter_id_seq OWNED BY public.django_celery_results_chordcounter.id;


--
-- Name: django_celery_results_taskresult; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_celery_results_taskresult (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    content_type character varying(128) NOT NULL,
    content_encoding character varying(64) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    meta text,
    task_args text,
    task_kwargs text,
    task_name character varying(255),
    worker character varying(100),
    date_created timestamp with time zone NOT NULL
);


ALTER TABLE public.django_celery_results_taskresult OWNER TO notifier_admin;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_celery_results_taskresult_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_celery_results_taskresult_id_seq OWNER TO notifier_admin;

--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_celery_results_taskresult_id_seq OWNED BY public.django_celery_results_taskresult.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO notifier_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO notifier_admin;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO notifier_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO notifier_admin;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO notifier_admin;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO notifier_admin;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO notifier_admin;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO notifier_admin;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO notifier_admin;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO notifier_admin;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO notifier_admin;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO notifier_admin;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO notifier_admin;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: notifier_admin
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO notifier_admin;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: notifier_admin
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO notifier_admin;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: notifier_admin
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: chats_onetooneroom id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom ALTER COLUMN id SET DEFAULT nextval('public.chats_onetooneroom_id_seq'::regclass);


--
-- Name: content_event id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event ALTER COLUMN id SET DEFAULT nextval('public.content_event_id_seq'::regclass);


--
-- Name: content_event_looking_for_a_company id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event_looking_for_a_company ALTER COLUMN id SET DEFAULT nextval('public.content_event_looking_for_a_company_id_seq'::regclass);


--
-- Name: content_intent id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_intent ALTER COLUMN id SET DEFAULT nextval('public.content_intent_id_seq'::regclass);


--
-- Name: content_profile id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_profile ALTER COLUMN id SET DEFAULT nextval('public.content_profile_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_celery_beat_clockedschedule id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_clockedschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_crontabschedule id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_crontabschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_intervalschedule id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_intervalschedule_id_seq'::regclass);


--
-- Name: django_celery_beat_periodictask id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_periodictask_id_seq'::regclass);


--
-- Name: django_celery_beat_solarschedule id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule ALTER COLUMN id SET DEFAULT nextval('public.django_celery_beat_solarschedule_id_seq'::regclass);


--
-- Name: django_celery_results_chordcounter id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_chordcounter ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_chordcounter_id_seq'::regclass);


--
-- Name: django_celery_results_taskresult id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_taskresult ALTER COLUMN id SET DEFAULT nextval('public.django_celery_results_taskresult_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
5	dikorolyov@mail.ru	f	f	6
8	dikorolyov2@gmail.com	t	t	23
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add event	7	add_event
26	Can change event	7	change_event
27	Can delete event	7	delete_event
28	Can view event	7	view_event
29	Can add interest	8	add_interest
30	Can change interest	8	change_interest
31	Can delete interest	8	delete_interest
32	Can view interest	8	view_interest
33	Can add profile	9	add_profile
34	Can change profile	9	change_profile
35	Can delete profile	9	delete_profile
36	Can view profile	9	view_profile
37	Can add intent	10	add_intent
38	Can change intent	10	change_intent
39	Can delete intent	10	delete_intent
40	Can view intent	10	view_intent
41	Can add one to one room	11	add_onetooneroom
42	Can change one to one room	11	change_onetooneroom
43	Can delete one to one room	11	delete_onetooneroom
44	Can view one to one room	11	view_onetooneroom
45	Can add crontab	12	add_crontabschedule
46	Can change crontab	12	change_crontabschedule
47	Can delete crontab	12	delete_crontabschedule
48	Can view crontab	12	view_crontabschedule
49	Can add interval	13	add_intervalschedule
50	Can change interval	13	change_intervalschedule
51	Can delete interval	13	delete_intervalschedule
52	Can view interval	13	view_intervalschedule
53	Can add periodic task	14	add_periodictask
54	Can change periodic task	14	change_periodictask
55	Can delete periodic task	14	delete_periodictask
56	Can view periodic task	14	view_periodictask
57	Can add periodic tasks	15	add_periodictasks
58	Can change periodic tasks	15	change_periodictasks
59	Can delete periodic tasks	15	delete_periodictasks
60	Can view periodic tasks	15	view_periodictasks
61	Can add solar event	16	add_solarschedule
62	Can change solar event	16	change_solarschedule
63	Can delete solar event	16	delete_solarschedule
64	Can view solar event	16	view_solarschedule
65	Can add clocked	17	add_clockedschedule
66	Can change clocked	17	change_clockedschedule
67	Can delete clocked	17	delete_clockedschedule
68	Can view clocked	17	view_clockedschedule
69	Can add task result	18	add_taskresult
70	Can change task result	18	change_taskresult
71	Can delete task result	18	delete_taskresult
72	Can view task result	18	view_taskresult
73	Can add chord counter	19	add_chordcounter
74	Can change chord counter	19	change_chordcounter
75	Can delete chord counter	19	delete_chordcounter
76	Can view chord counter	19	view_chordcounter
77	Can add site	20	add_site
78	Can change site	20	change_site
79	Can delete site	20	delete_site
80	Can view site	20	view_site
81	Can add email address	21	add_emailaddress
82	Can change email address	21	change_emailaddress
83	Can delete email address	21	delete_emailaddress
84	Can view email address	21	view_emailaddress
85	Can add email confirmation	22	add_emailconfirmation
86	Can change email confirmation	22	change_emailconfirmation
87	Can delete email confirmation	22	delete_emailconfirmation
88	Can view email confirmation	22	view_emailconfirmation
89	Can add social account	23	add_socialaccount
90	Can change social account	23	change_socialaccount
91	Can delete social account	23	delete_socialaccount
92	Can view social account	23	view_socialaccount
93	Can add social application	24	add_socialapp
94	Can change social application	24	change_socialapp
95	Can delete social application	24	delete_socialapp
96	Can view social application	24	view_socialapp
97	Can add social application token	25	add_socialtoken
98	Can change social application token	25	change_socialtoken
99	Can delete social application token	25	delete_socialtoken
100	Can view social application token	25	view_socialtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
6	pbkdf2_sha256$216000$abVIGJ1qqGiF$c37nqelcCGJ+FUIfw1wh5D8O634qNSe1rNpGvsNMmEU=	2020-12-20 21:07:26.78219+03	t	Jimiliani	Дмитрий	Королев	dikorolyov@mail.ru	t	t	2020-11-02 21:40:58+03
23	!Kujp7KKiQ2IKm5f4rLVJiNoKZ7m0IKK8feBQ20CX	2020-12-20 21:49:58.615331+03	f	dikorolyov2	Дима	Королев	dikorolyov2@gmail.com	f	t	2020-12-20 21:49:58.542808+03
20	pbkdf2_sha256$216000$sZjdBdpcrLts$hCimI1lb0zBYPB/Lc5BY+x0G0kcVfYLz0mUaDEOsn1w=	2020-12-19 19:48:34.565203+03	f	user2			mail2@mail.ru	f	t	2020-12-19 18:51:57.190438+03
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: chats_onetooneroom; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.chats_onetooneroom (id, room_name, event_id, user1_id, user2_id) FROM stdin;
\.


--
-- Data for Name: content_event; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.content_event (id, name, description, date, image, place, genres) FROM stdin;
4308	Художественный фильм "Спиздили"	Кинцо	да	events/1559502439_0_95_3307_1955_600x0_80_0_0_0f18f972527a93d77b083a2e6ed27393.jpg	тожа да	Боевик
4309	просто слова просто слова просто слова просто слова просто слова просто слова просто слова просто сл	просто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто слпросто слова просто слова просто слова просто слова просто слова просто слова просто слова просто сл	\N	events/ITMO_University.png	\N	\N
4310	иммерсивное шоу «Зеркало Карлоса Сантоса»	Театральный променад с ужином в финале представляют режиссёр Талгат Баталов и драматург Максим Курочкин. Зрителям предстоит сделать то, чего мы все очень сильно боимся. Погрузиться в самих себя.	Актуально с 2018-12-24  до 2021-01-08 	events/temp_LoGhuA5.jpeg	Москва ул. Большая Дмитровка, д. 32 стр. 1.	\N
4311	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	Спектакль-конструктор, который никогда не повторяется.	Актуально с 2020-09-24  до 2021-01-24 	events/temp_B6Xymiz.jpeg	Москва ул. Новослободская, д. 23	\N
4312	спектакль «Горбачёв» в Театре Наций	Спектакль о Михаиле и Раисе Горбачёвых от режиссёра из Латвии Алвиса Херманиса — размышление о том, как любовь влияет на ход истории. Роли исполняют Евгений Миронов и Чулпан Хаматова.	Актуально с 2020-11-06  до 2021-01-31 	events/temp_Il4SHFy.jpeg	Москва Петровский переулок, д. 3	\N
4313	спектакль «Сказка про последнего ангела» в Театре Наций	Спектакль с участием Лии Ахеджаковой поставил худрук петербургского БДТ имени Товстоногова Андрей Могучий.	Актуально с 2020-02-01  до 2020-12-20 	events/temp_4KVWcom.jpeg	Москва Петровский переулок, д. 3	\N
4314	иммерсивный спектакль RESET 2.0	RESET 2.0 — новаторский проект, иммерсивный перформанс, объединяющий диджитал- и саунд-арт, виртуальную реальность, сеанс массажа, ольфакторную и цветотерапию.	2020-06-20 	events/temp_QVh1R4S.jpeg	Москва пер. Пушкарёв, д. 5	\N
4315	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	Крутые комики ТНТ, СТС и YouTube готовы развеселить вас на бесплатных стендап-вечеринках.	Актуально с 2020-09-23  до 2020-12-24 	events/temp_LqtcUO9.jpeg	Москва 	\N
4316	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	«Люмьер-холл» приглашает посетить 4 выставки по одному билету. Полюбоваться невероятными картинами поэта моря Ивана Айвазовского, основоположника абстракционизма Василия Кандинского, нидерландского постимпрессиониста Ван Гога, а также Густава Климта можно до 10 января.	Актуально с 2017-01-01 	events/temp_f8OTlEP.png	Москва ул. Большая Новодмитровская, д. 36, стр. 24	\N
4317	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	Вовсе не обязательно знать правила карточных игр, чтобы сорвать большой куш! Компания «Кубикулум» приглашает вас в подпольное казино, где у вас — только час, чтобы рискнуть и выиграть. Включайте логику и воображение.	Актуально с 2017-07-22  до 2020-12-11 	events/temp_PfptEqr.jpeg	Москва ул. Б. Новодмитровская, д. 36, стр. 3,  дизайн-квартал Флакон	\N
4318	проект VR Gallery	VR Gallery — уникальный проект, который позволяет виртуально оказаться в совершенно разных пространствах, не покидая одного помещения. Выбирайте, куда отправиться — в картину «Крик» Эдварда Мунка, в Лувр, чтобы лучше узнать тайны одной из самых мистических картин мира — «Мона Лизы» или в музей Кремера, где воссозданы шедевры живописи XVII века!	Актуально с 2019-09-25  до 2020-10-01 	events/temp_ZdMYhKe.jpeg	Москва пер. Пушкарёв, д. 5	\N
4319	новогодние праздники с квестами от компании «Кубикулум»	От рабочих и учебных хлопот весь декабрь не оторваться, а хочется уже с головой погрузиться в  атмосферу праздника? Компания «Кубикулум» помогает провести новогодние корпоративы и каникулы так, чтобы эмоций хватило до следующего Нового года!	Актуально с 2017-12-23  до 2020-12-10 	events/temp_WuHmd7w.jpeg	Москва ул. Б. Новодмитровская, д. 36, стр. 3,  дизайн-квартал Флакон	\N
4320	маркет «4 сезона»	На одной площадке соберутся талантливые дизайнеры, мастера хэндмэйда и авторские бренды, чтобы представить взору гостей свои оригинальные работы.	Актуально с 2018-12-15  до 2020-12-26 	events/temp_esstO7D.jpeg	Москва 	\N
4321	Увлекательные приключения в семейных музеях Москвы: Дом Великана, Музей иллюзий, Дом вверх дном	Музеи на Арбате и ВДНХ возвращают взрослых в детство, а детей переносят в сказку. Здесь действует выгодная акция: посетить аттракционы можно в три раза дешевле.	Актуально с 2020-06-16 	events/temp_nYesGdJ.jpeg	Москва ул. Арбат, д. 16/2, стр. 3.	\N
4322	зимние каникулы в комплексе «Мореон»	Многофункциональный комплекс с крупнейшим в Москве аквапарком, банными комплексами «Термы» и «СПА» и огромным выбором располагающих к безмятежному отдыху площадок приглашает окунуться в лето в разгар зимних холодов.	Нет точной даты	events/temp_Ew9ivaQ.jpeg	Москва ул. Голубинская, д. 16	\N
4323	Онлайн-проект «За каждой работой — Я»	Художник Макс Гошко-Даньков создал некоммерческую платформу в поддержку современных арт-мейкеров.	Нет точной даты	events/temp_ecN1CII.jpeg	Онлайн 	\N
4324	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	Компания Fastlife приглашает поучаствовать в быстрых свиданиях в онлайн-формате. Миссия проекта — помочь людям найти любовь!	Актуально с 2020-06-25  до 2020-12-21 	events/temp_9xH8k16.jpeg	Онлайн 	\N
4325	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	Fluids — экспериментальный спектакль, в котором переплелись современное искусство, диджитал-анимация и музыкальный артхаус.	2020-10-16 	events/temp_eXX7hqo.jpeg	Москва пер. Пушкарёв, д. 5	\N
4326	Научная ёлка 2021	Чтобы провести новогодние праздники с детьми необычно, отправляйтесь на интерактивную ёлку! Гостей ждут научные чудеса, зрелищные эксперименты и ценные подарки.	2020-12-19 	events/temp_EDKBBGA.jpeg	Москва 	\N
4327	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	Приходите на бесплатные концерты в уютных столичных барах! Мероприятия проходят в разных форматах: открытый микрофон, Money Mic или классическое стендап-шоу.	Актуально с 2019-04-17  до 2020-12-30 	events/temp_Tt4ym6G.jpeg	Москва 	\N
4328	капсульные концерты на крыше	Команда «Крыши и Выше» придумала, как сделать крыши не только музыкальными, но и тёплыми. Теперь слушать музыку и любоваться видами можно в любое время года: зрители и музыканты размещаются в прозрачных капсулах, внутри которых тепло и уютно.	Актуально с 2020-11-07  до 2020-12-26 	events/temp_RZDVlsF.jpeg	Москва ул. Бакунинская, д. 69с	\N
4329	выставка-продажа «Что происходит на свете? А просто зима»	Что современные художники вкладывают в зимние сюжеты? Так ли сейчас важна «климатическая» составляющая, или же на первый план выходит нечто более глубокое — личные ассоциации, детские воспоминания, философские рассуждения о смене состояний и «обнулении» жизни?	2020-12-02 	events/temp_OiU5fu2.jpeg	Москва пер. Старопименовский, д. 14	\N
4330	квест «Красная кнопка»	Проникнуть в секретный командный пункт, найти красную кнопку, спасти мир — это не фильм, это квест в реальности, где главные герои – это вы и ваша команда.	Актуально с 2015-08-24  до 2020-12-19 	events/temp_GKAOhXu.jpeg	Москва ул. Б. Новодмитровская, д. 36, стр. 3,  дизайн-квартал Флакон	\N
4331	аудиовизуальный арт-проект дополненной реальности Tonandi	«Тонанди» — это фантастический инопланетный мир, оживший в реальном пространстве. Удивительные и нежные формы жизни парят в воздухе, движутся и реагируют на прикосновения, стоит лишь надеть уникальные очки.	Актуально с 2019-10-14 	events/temp_N9wsIq5.jpeg	Москва пер. Пушкарёв, д. 5	\N
4332	рисование в виртуальной реальности	В  современном искусстве набирает популярность такое направление, как VR-картина. Теперь москвичи и гости столицы могут попробовать себя в качестве художника и создать рисунок в виртуальной реальности. С помощью современных технологий вы сможете нарисовать объёмные предметы и даже целые миры.	Актуально с 2018-09-27 	events/temp_keaceJB.jpeg	Москва Лужнецкая наб., д. 2/4, стр.19	\N
4333	мюзикл TODD. Живой звук	Зрителям представят современную интерпретацию жуткой лондонской легенды XIX века о безумном цирюльнике Суинни Тодде. Обновленная версия мюзикла соединила эстетику театра с кинематографом.	Актуально с 2020-11-01  до 2021-01-03 	events/temp_uOSOovR.jpeg	Москва Новозаводская ул., д. 27	\N
4334	Онлайн МЕГА-квест по спасению Нового года	Бесплатный детский онлайн-квест — новогодний подарок от МЕГИ. Юные любители приключений познакомятся со сказочными героями, отправятся на поиски волшебной пыльцы и получат подарки.	2020-12-08 	events/temp_2jbasVy.jpeg	Онлайн 	\N
4335	выставка в музее Like Space	Хотите погулять по парижским крышам, нырнуть в бассейн плюшевых медвежат, покататься на винтажном кабриолете и устроить романтическое свидание в венецианской гондоле? Добро пожаловать в Like Space!	Актуально с 2020-10-23  до 2021-01-01 	events/temp_9jCdtk6.jpeg	Москва ул. Никольская, д. 10.	\N
4336	японские свидания GOKON	Компания Fastlife приглашает поучаствовать в групповых свиданиях в необычном формате. Миссия проекта — помочь одиноким людям найти вторую половинку в шумном мегаполисе.	Нет точной даты	events/temp_d6jAwCw.jpeg	Москва 	\N
4337	игра Among Us в реальности в развлекательных центрах LaserLand	Стать героем знаменитой игры Among Us теперь можно на реальной площадке в декорациях космического корабля. Пройдите увлекательный квест, вычислите предателя и спаситесь от неминуемой гибели!	2020-12-07 	events/temp_h9xocIh.jpeg	Москва ул. Азовская, д. 24, корп. 3, ТРЦ «Азовский»	\N
4338	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	Проект «Культ Крыш» представляет серию мероприятий «Рассветомания». Участники фотоэкскурсии поднимутся над почти безлюдным мегаполисом, понаблюдают за восходом солнца и сделают множество фотографий на память, а их самих будет снимать профессиональный фотограф.	Актуально с 2020-11-07  до 2020-12-26 	events/temp_YOmKZ6L.jpeg	Москва 	\N
4339	праздничный концерт «Новогоднее чудо»	Под сводами собора произойдёт музыкальное чудо: орган встретится с джазовыми и рок-инструментами, классика — с драйвовыми ритмами, а традиции — с современностью.	2020-12-26 	events/temp_FOZIwyN.jpeg	Москва пер. Старосадский, д. 7/10, стр. 10	\N
4340	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	Студия живописи ZuART предлагает провести карантин приятно и творчески. Например, попробовать себя в нейрографике — медитативном способе рисования — на мастер-классе от сертифицированного преподавателя.	Нет точной даты	events/temp_x3zkUKI.jpeg	Онлайн 	\N
4341	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	Исполняют органист Фёдор Строганов и ансамбль старинной музыки Collegium Musicum под управлением Олега Романенко.	Актуально с 2017-12-23  до 2021-06-27 	events/temp_xQ8Rvlh.jpeg	Москва пер. Старосадский, д. 7/10, стр. 10	\N
4342	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	Имена Карла Фаберже и Фёдора Рюкерта — практически синонимы ювелирного искусства. Увидеть удивительные изделия двух мастеров, а также нескольких ведущих фирм и артелей рубежа XIX—XX веков приглашают Музеи Московского Кремля.	2020-10-09 	events/temp_afWTYUq.jpeg	Москва Московский Кремль	\N
4343	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	«Ломоносовская ярмарка» приглашает провести время вкусно и с пользой! Присоединяйтесь к мастер-классам от шеф-повара, участвуйте в розыгрыше призов и в конкурсе рецептов в Instagram. Блюдо по рецепту победителя будет добавлено в ассортимент компании «Ломоносовские продукты».	Актуально с 2020-12-13  до 2020-12-27 	events/temp_bwb4HWV.png	Онлайн 	\N
4344	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	Купить технику от известного производителя можно по выгодной цене. Успейте приобрести байк своей мечты с 5 по 31 декабря!	2020-12-05 	events/temp_HMzmvw1.jpeg	Москва 	\N
4345	интеллектуальные вечеринки GO!КВИЗ	GO!КВИЗ приглашает принять участие в одной из захватывающих интеллектуально-развлекательных игр. Соберите команду и покажите соперникам, кто тут самый умный. Осторожно: квизы вызывают привыкание!	Актуально с 2018-12-23  до 2021-01-10 	events/temp_NdGZ34l.jpeg	Москва 	\N
4346	виртуальная выставка каллиграфии «Образ и буква»	Каллиграфия в России привлекает всё больше людей. Познакомиться с работами взрослых и детей, которые открывают для себя многогранный мир изящного письма, можно на онлайн-выставке центра «От Аза до Ижицы».	2020-12-01 	events/temp_R6fSkje.jpeg	Онлайн 	\N
4347	экскурсия «Москва–Волга» по зданию Северного речного вокзала	Отреставрированный Северный речной вокзал — символ эпохи 1930-х, где каждый может проникнуться духом того времени. Присоединяйтесь к экскурсии, чтобы узнать много интересного об этом здании и канале Москва–Волга, а также подняться на панорамную крышу.	Актуально с 2020-12-05  до 2020-12-26 	events/temp_1GLRQuI.jpeg	Москва ш. Ленинградское, д. 51	\N
4348	концерты в пабе Lion's Head	Паб Lion’s Head приглашает окунуться в гостеприимную атмосферу Ирландии, душевно отдохнуть в компании друзей и послушать живые выступления музыкантов.	Актуально с 2020-10-27  до 2021-01-21 	events/temp_iSorZWQ.jpeg	Москва ул. Мясницкая, д. 15	\N
4349	стендап-шоу «Закрытый Микроfон» с участием звёзд ТНТ	В преддверии Нового года зарядитесь позитивом в компании любимых комиков. Живой стендап от звёзд ТНТ — это праздник юмора и ярких эмоций!	Актуально с 2020-12-23  до 2020-12-27 	events/temp_TyNNtZy.jpeg	Москва ул. Шарикоподшипниковская, д. 13, стр. 33	\N
4350	опера «История Кая и Герды» в Большом театре	Сказочная история, основанная на сюжете «Снежной королевы» Ганса Христиана Андерсена, как нельзя лучше подходит для приобщения детей к оперному искусству.	Актуально с 2019-12-28  до 2021-01-03 	events/temp_lqydXub.jpeg	Москва ул. Большая Дмитровка, д. 4/2	\N
4351	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	Максимальная концентрация на цели, напряжение пальцев, стремительный полёт стрелы — и вот вы попадаете в яблочко! Как обращаться с одним из старейших видов оружия, вам расскажут и покажут опытные тренеры клуба «Лабиринт». Наслаждайтесь практической стрельбой на удобной площадке.	Актуально с 2017-11-01  до 2020-11-01 	events/temp_SzkJ0OO.jpeg	Москва ул. Самокатная, д. 4 стр. 1.	\N
4352	концерт «Времена года. Вивальди — Пьяццолла»	Завораживающие сочинения Вивальди и Пьяццоллы в исполнении лауреатов международных конкурсов Константина Казначеева (скрипка) и Ивана Дыма (саксофон), органиста Алексея Шевченко и оркестра «Инструментальная капелла».	Актуально с 2017-01-22  до 2021-01-06 	events/temp_KpqJSJe.jpeg	Москва пер. Старосадский, д. 7/10, стр. 10	\N
4353	Онлайн-игра GO!КВИЗ на день рождения	Хотите незабываемо провести свой день рождения или другое торжество? Ищете оригинальный подарок имениннику? Соскучились по интеллектуальным сражениям? Примите участие в игре GO!КВИЗ в онлайн-формате в удобное вам время. Собирайте команду, подключайтесь к трансляции и приготовьтесь к захватывающей битве умов.	Актуально с 2020-04-17 	events/temp_8MqvNSD.jpeg	Онлайн 	\N
4354	новогодние праздники в ЭТНОМИРе	Насыщенная программа с развлечениями и экскурсиями не даст вам заскучать на протяжении всех десяти дней новогодних каникул.	2021-01-01 	events/temp_tf4uplT.jpeg	Москва Калужская обл.,  Боровский р-н, дер. Петрово	\N
4355	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	Присоединяйтесь к пробному бесплатному уроку, предваряющему полноценный курс английского. Узнайте ваш реальный уровень знания языка и получите советы от преподавателя.	Нет точной даты	events/temp_YOohm1u.jpeg	Онлайн 	\N
4356	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	Познавательная прогулка под сводами самой маленькой, но одной из красивейших сталинских высоток.	Актуально с 2020-11-22  до 2020-12-27 	events/temp_u1xzqOV.jpeg	Москва ул. Каланчёвская, д. 21/40	\N
4357	бонусы от Tele2 для абонентов на катке в парке Горького	Искрящийся лёд, смех, музыка и возможность сделать классные фотографии — то, за что все любят каток. Этой зимой абонентов Tele2 на катке в парке Горького ждут приятные бонусы: скидка на катание и бесплатный кофе. А в специальных фотозонах можно сделать классные снимки, которые украсят вашу страничку в соцсетях.	Нет точной даты	events/temp_uMGdMfr.jpeg	Москва ул. Крымский Вал, д. 9	\N
4358	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	В программе концерта прозвучит музыка из любимых фильмов о дружбе, любви и волшебстве.	2020-12-27 	events/temp_EgKl99Y.jpeg	Москва пер. Гранатный, д. 7, стр. 1	\N
4359	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	Топовые университеты и дизайн-школы из Великобритании, США, Европы и России представят на выставке образовательные программы в области искусства, дизайна, архитектуры и моды.	2021-03-20 	events/temp_1qkjmfK.jpeg	Москва Космодамианская набережная, д. 52, стр. 7	\N
4360	вечер настольных игр от FastLife	Хотите стать участником уникальной вечеринки, которая проходит в игровой форме, пообщаться с интересными людьми и, возможно, даже встретить свою половинку? Компания «ФастЛайф» приглашает всех любителей настолок и «Мафии».	Актуально с 2017-05-13  до 2020-12-26 	events/temp_QxGt0Ux.jpeg	Москва ул. Старая Басманная, д. 18, стр. 4.	\N
4361	тур по барам Москвы от City Pub Crawl	City Pub Crawl знают, как организовать незабываемую вечеринку, — по выходным компания устраивает игровые туры с путешествиями по барам и пабам города, увлекательными и неожиданными заданиями, танцами и, разумеется, знакомствами!	Актуально с 2018-03-31  до 2021-01-23 	events/temp_3cukOst.jpeg	Москва Чистопрудный бул.	\N
4362	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	Крупнейший производитель молока в России и Европе*, компания «ЭкоНива», приглашает на бесплатную экскурсию с обзором в 360 градусов. Вы увидите, как живут коровы и телята на ферме, как заготавливают корма и как устроена доильная «Карусель».	Нет точной даты	events/temp_dHiuk6n.jpeg	Онлайн 	\N
4363	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	Хотите побывать на крыше легендарного World Trade Center и узнать историю знаменитых небоскрёбов столицы? Тогда не пропустите авторскую экскурсию, в маршрут которой войдут главные высотные здания Пресни.	Актуально с 2020-03-07  до 2020-12-27 	events/temp_73qQeL4.jpeg	Москва ул. Красная Пресня	\N
4364	ночной концерт «Моцарт. Реквием»	Уникальная акустика Кафедрального собора Петра и Павла поможет солистам, хору и оркестру выразить грандиозность замысла Моцарта.	Актуально с 2017-02-05  до 2020-12-28 	events/temp_Ykfl1Ak.jpeg	Москва пер. Старосадский, д. 7/10, стр. 10	\N
4365	новогодняя распродажа в аутлете Velocity	Хотите подарить велосипед или самокат ребёнку на Новый год? А может быть, ищете спортивный подарок для друга или любимого человека? Тогда не пропустите новогоднюю распродажу в Velocity — скидки достигнут 70%!	2020-12-14 	events/temp_EpR8iFA.jpeg	Москва Огородный пр-д, д. 6.	\N
4366	спектакль «Цветы для Элджернона» в РАМТе	Кинорежиссер Юрий Грымов поставил спектакль по нашумевшему в Америке бестселлеру Дэна Киза. Научно-фантастический рассказ, написанный в 1958-м и за несколько следующих лет доработанный автором до масштабов романа, стал основой нескольких фильмов и спектаклей.	Актуально с 2015-09-22  до 2021-01-08 	events/temp_nJ1DGI1.jpeg	Москва пл. Театральная, д. 2	\N
4367	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	Фраза Eye gazing ни о чём вам не говорит? Тогда расскажем о ней подробнее. С английского словосочетание можно перевести как «Зрительный контакт». Speed Dating такого формата подразумевает встречу, во время которой люди общаются без слов. Говорят, глаза — зеркало души. Приходите на вечеринку быстрых свиданий от «ФастЛайф», чтобы в этом убедиться.	Актуально с 2017-05-20  до 2021-01-09 	events/temp_ywSXI7x.jpeg	Москва ул. Старая Басманная, д. 18, стр. 4.	\N
4368	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	Чтобы научиться метко стрелять, совсем не обязательно каждый день смотреть фильмы про ковбоев. Опытные инструкторы клуба «Лабиринт» помогут освоить этот навык. На мини-курсе из четырёх занятий вы сможете получить базовые навыки и научиться управляться с пневматическими пистолетами. А если захотите отточить мастерство, возьмите курс стрельбы из боевого оружия.	Актуально с 2017-11-01  до 2020-11-01 	events/temp_umvQddN.jpeg	Москва ул. Самокатная, д. 4 стр. 1.	\N
4369	спектакль «Бумажный брак»	Режиссёр Александр Огарёв создал спектакль о несемейной жизни по необычному сценарию со звёздами в главных ролях.	Актуально с 2016-06-29  до 2020-12-27 	events/temp_lBlPc0M.jpeg	Москва ул. Земляной Вал, д. 76/21	\N
4370	быстрые свидания (speed dating) от FastLife	FastLife ждёт всех, кто находится в поиске своей половинки или просто жаждет новых знакомств. 10-20 быстрых свиданий за вечер — и это не предел... А на следующий день вы можете созвониться с понравившимися вам людьми, которые тоже прониклись к вам симпатией.	Актуально с 2015-08-25 	events/temp_CNI5XIz.png	Москва 	\N
4371	квест «Последний Пепелац» от компании «Кубикулум»	Представьте, что вы оказались на другой планете и единственный шанс вернуться домой — угнать самый необычный космический корабль! Компания «Кубикулум» предлагает любителям межгалактических путешествий и советского кинохита «Кин-Дза-Дза!» повторить приключения героев в невероятном квесте.	Актуально с 2018-01-01  до 2020-11-28 	events/temp_48Jp0TX.jpeg	Москва ул. Б. Новодмитровская, д. 36, стр. 3,  дизайн-квартал Флакон	\N
4372	экскурсия «Дед Мороз и хаски» в питомнике хаски «Северный»	Хотите отправиться в сказочное путешествие вместе с Дедом Морозом и покататься на настоящей собачьей упряжке? Приезжайте в питомник хаски «Северный», здесь творятся новогодние чудеса!	2020-12-20 	events/temp_E7JtWdA.jpeg	Москва 1-я Северная линия, д. 31, стр.1.	\N
4373	закрытая vip-вечеринка от FastLife	Организаторы «ФастЛайф» приглашают на закрытые вечеринки самых популярных гостей: молодых людей и девушек, кто имел наибольший успех среди участников прошедших встреч.	Актуально с 2017-05-13  до 2021-01-16 	events/temp_jQfpRIR.jpeg	Москва пер. 1-й Люсиновский, д. 3Б.	\N
4374	специальное предложение на верчений подъём от смотровой площадки PANORAMA360	Не упустите возможность полюбоваться вечерней Москвой с 89-го этажа по приятное цене. На смотровой площадке PANORAMA360 появилась новая фотозона и уголок для отдыха.	Нет точной даты	events/temp_tH6eb4v.jpeg	Москва наб. Пресненская, д. 12,  московский международный деловой центр «Москва-Сити», башня «Федерация-Восток», этаж 89.	\N
4375	акция «Скидка 5% на салюты» от компании «Легенда»	Фейерверки и салюты — это добрая традиция и неотъемлемая часть новогоднего торжества. Чтобы ваш праздник был ярким и искрящимся, не забудьте приобрести качественный фейерверк. Сделать это можно в интернет-магазине «Легенда», где для читателей KudaGo действует скидка 5%.	2020-12-05 	events/temp_D3fk0rZ.jpeg	Москва 	\N
4376	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	Дистанционный проект MBM.MOS (ГБУ «Малый бизнес Москвы»)  создан для тех, кто хочет открыть своё дело, а также для действующих предпринимателей.	Нет точной даты	events/temp_4gKcn9L.jpeg	Онлайн 	\N
4377	выставка «Моя семья — моя история. Создание семьи»	Когда мужчинам разрешили заниматься акушерством? Почему в начале прошлого века крестьянки приносили младенцев в подоле? Откуда взялись необычные имена Нинель, Победослав и Ленден? Сколько лет в СССР существовал налог на бездетность? Интерактивная выставка в центрах госуслуг даст ответы на эти и другие вопросы.	Нет точной даты	events/temp_I5jmhjE.jpeg	Москва 	\N
4378	реальные прогулки с виртуальными людьми по Москве	Хотите заново открыть Москву в компании digital-гида? Тогда заходите в чат и отправляйтесь в увлекательное путешествие по городу, в котором вас ждёт много приятных сюрпризов.	Нет точной даты	events/temp_7FIO1Aa.png	Москва 	\N
4379	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	Участники бесплатного вебинара познакомятся с профессией тестировщика и узнают, как быстро влиться в IT-сферу и получить конкурентноспособную зарплату уже на начальных этапах новой карьеры.	Актуально с 2020-03-26 	events/temp_erBrTkG.jpeg	Онлайн 	\N
4380	акция «Проведи новогодние праздники в бассейне под открытым небом „Чайка“!»	Бассейн под открытым небом «Чайка» приглашает провести новогодние праздники активно и с пользой для здоровья. До 10 января здесь действуют выгодные цены на клубные карты и разовые дневные посещения.	2020-12-15 	events/temp_VM0kckf.png	Москва пер. Турчанинов, д. 3/1	\N
4381	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	Освоить вдохновляющее хобби, а возможно, и новую профессию, поможет ARTLIFE ACADEMY. За курс вы пройдёте путь от первого знакомства со скетчингом до самостоятельной работы маркерами.	Нет точной даты	events/temp_tj8AEzf.jpeg	Онлайн 	\N
4382	арт-вечеринка с рисованием картин Painty офлайн и онлайн	Ярко провести корпоратив, день рождения или любой другой праздник поможет команда Painty. Здесь каждый создаст свою собственную картину, а главное — проведёт время весело и незабываемо.	Актуально с 2017-10-23 	events/temp_7ut6Vel.jpeg	Москва 	\N
4383	новогодние шоу на высоте на смотровой площадке PANORAMA360	Волшебные представления с чудесами и угощением на одной из самых высоких смотровых площадок Европы.	2020-12-25 	events/temp_NXJbX7o.jpeg	Москва наб. Пресненская, д. 12,  московский международный деловой центр «Москва-Сити», башня «Федерация-Восток», этаж 89.	\N
4384	вебинар «Смерть: отношение в разных культурах»	Лектор проекта Level One Константин Михайлов расскажет о погребальных традициях и обрядах, обусловленных этнической культурой, о представлениях о загробной жизни и об отношении к смерти у представителей разных народов мира.	2025-12-31 	events/temp_yRRiUtw.jpeg	Онлайн 	\N
4385	новогодний концерт «Штраус-гала»	Под сводами собора прозвучит музыка Иоганна Штрауса, которая для миллионов людей по всему миру символизирует Новый год.	2020-12-31 	events/temp_R0K7otX.jpeg	Москва пер. Старосадский, д. 7/10, стр. 10	\N
4386	новогодние представления в Доме сказок «Жили-были»	Дом сказок «Жили-были» и его филиал «Буратино-Пиноккио» подготовили для юных гостей новогодние квесты и интерактивные праздничные программы с подарками от Деда Мороза.	2020-12-16 	events/temp_IaBr2X1.jpeg	Москва ш. Измайловское, д. 73ж	\N
4387	акция «Праздник к вам приходит!» в комплексе водных развлечений «Мореон»	Хотите лета посреди зимы? Окунуться в летние развлечения всей семьёй и зарядиться праздничным настроением можно в аквапарке «Мореон». До 31 декабря здесь дарят скидки до 50% в будни и до 35% по выходным!	Нет точной даты	events/temp_VAsS1YH.png	Москва ул. Голубинская, д. 16	\N
4388	спектакль «Аудиенция» в постановке Театра Наций	Королевская аудиенция, как символ постоянства в изменчивом мире — знаменитая пьеса британца Питера Моргана, адаптированная для российской сцены.	Актуально с 2017-04-25  до 2020-12-21 	events/temp_QMsm3od.jpeg	Москва ул. Арбат, д. 26	\N
4389	онлайн-лекции по искусству, моде и кино от Vekarta	Вы знали о том, что логотип «Чупа-чупса» придумал Сальвадор Дали, а «Звёздная ночь» Ван Гога вдохновлена японской гравюрой? Об этом и многом другом рассказывают эксперты онлайн-лектория Vekarta. Они приглашают слушателей в захватывающее путешествие по миру живописи, архитектуры, литературы, моды и кино.	Нет точной даты	events/temp_Vmmdj7V.jpeg	Онлайн 	\N
4390	онлайн-концерт группы «Би-2»	Группа «Би-2» приглашает отметить завершение 2020-го грандиозным шоу «Happy NewBest» в формате онлайн и с полновесной программой хитов и премьер.	2020-12-27 	events/temp_WsmO37e.jpeg	Онлайн 	\N
4391	«Стартап-школа МБМ»	Хотите открыть своё дело, но не знаете, с чего начать? Не пропустите бесплатный пятидневный онлайн-интенсив, разработанный командой MBM.MOS (ГБУ «Малый бизнес Москвы», подведомственное Департаменту предпринимательства и инновационного развития города Москвы).	2020-10-19 	events/temp_RWX1dni.jpeg	Онлайн 	\N
4392	новогодний корпоратив в частном кинотеатре «Секрет»	Проводите уходящий год с коллегами в уютном кинотеатре с развлечениями, чтобы стать ещё более сплочённой командой.	2020-12-07 	events/temp_J9b3mse.jpeg	Москва ул. Волочаевская, д. 25	\N
4393	вечеринка «Новогодняя Discoteka 90-х»	Уникальная возможность вернуться в золотое время школьных дискотек и первой любви под музыку из прошлого.	Актуально с 2020-09-26  до 2021-01-02 	events/temp_XJ8Fqdn.jpeg	Москва ул. Большая Лубянка, д. 13/16	\N
4394	джазовый концерт для детей и родителей JazzLike	JazzLike приглашает гостей на концерт джаза, который с удовольствием послушают не только взрослые, но и дети. Профессиональные музыканты сыграют для вас исключительно живую музыку.	Актуально с 2017-02-26  до 2021-01-03 	events/temp_LoQZP3a.jpeg	Москва ул. Пресненский Вал, д. 6, стр. 1	\N
4395	бесплатный онлайн-курс «Только спокойствие»	Курс для тех, кто хочет выйти из самоизоляции счастливым и уравновешенным.	Нет точной даты	events/temp_ScvglyM.jpeg	Онлайн 	\N
4396	занятия по метанию ножей в клубе «Лабиринт»	Вам не даёт покоя слава викингов и берсерков? Тогда научитесь метать ножи и топоры в клубе «Лабиринт» на захватывающих занятиях с профессиональными тренерами. Такое оригинальное хобби отлично развивает меткость и ловкость!	Актуально с 2017-11-01  до 2020-11-01 	events/temp_L3yXtsd.jpeg	Москва ул. Самокатная, д. 4 стр. 1.	\N
4397	новогодний розыгрыш 50 000 рублей и тематических подарков в торговом центре «Нора»	До 27 декабря «Нора» дарит новогоднее настроение и скидки до 50%. Кроме того, покупатели могут участвовать в онлайн-розыгрыше призов и денежных сертификатов.	2020-12-10 	events/temp_hxFqLNn.jpeg	Москва пр-т Андропова, д. 22.	\N
4398	акция «Скидка 15% на все пакеты мероприятий» в центре виртуальной реальности WARPOINT ARENA	В WARPOINT ARENA можно организовать незабываемый праздник по выгодной цене. Приходите с семьёй, друзьями или коллегами, чтобы принять участие в увлекательных командных соревнованиях.	2020-12-01 	events/temp_q0vI2lX.jpeg	Москва Волгоградский пр-т, д. 32, к. 8.	\N
4399	спектакль «Мастер и Маргарита» в Театре на Таганке	Далеко не каждый режиссер рискнет ставить «Мастера и Маргариту». На то есть причины объективные — материал невероятно сложен, и мистические — роман считают проклятым. Вопреки потусторонним силам, или, возможно, при их содействии спектакль Юрия Любимова и Владимира Дьячина уже более 25 лет собирает полные залы.	Актуально с 2015-10-05  до 2020-12-27 	events/temp_Wdk79Cx.jpeg	Москва ул. Земляной Вал, д. 76/21	\N
4400	Фестиваль лучших локальных обжарщиков «Кофе-фест»	Смарт-кофейня Fibbee приглашает отдохнуть от предновогодней суеты и зарядиться бодростью перед встречей 2021 года.	2020-12-17 	events/temp_d4XNyoK.jpeg	Москва ул. Кировоградская, д. 13A	\N
4401	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	Комедия с интригующим название и потрясающим актерским составом.	Актуально с 2016-10-19  до 2021-01-28 	events/temp_YzsT5yz.jpeg	Москва ул. Лесная,  д. 18	\N
4402	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	Студия рисования и живописи ZuART приглашает марафон по рисованию мандал, узоров и зентангл! Участники смогут научиться рисовать узоры в стиле разных эпох, изучить основы объема и перспективы, создать карту желаний и узнать, как продавать свои работы. Самые креативные и трудолюбивые получат подарки!	Актуально с 2018-05-27 	events/temp_Yyry3LE.jpeg	Онлайн 	\N
4403	бесплатные уроки по английскому языку в школах Wall Street English	Не упустите возможность прокачать свой английский бесплатно! Школа английского языка Wall Street English проводит открытые занятия на разные темы и для разных уровней подготовки.	Актуально с 2019-11-23  до 2020-12-24 	events/temp_jJng82E.jpeg	Москва просп. Вернадского, д. 6, ТЦ «Капитолий», 3-й эт.	\N
4418	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	«Люмьер-Холл» представляет мультимедийный проект, посвящённый творчеству трёх совершенно разных художников — Ивана Айвазовского, Василия Кандинского и Бэнкси. Ощутить себя «внутри» известных произведений позволяют мощные современные технологии.	Актуально с 2017-01-01 	events/temp_OPyVxWZ.png	Санкт-Петербург наб. Обводного канала, д. 74Д	\N
4404	новый год — 2021 в Петербурге	В этом году наслаждаться каникулами петербуржцы и гости города будут до 10 января, а это значит, что у нас есть куча времени для развлечений и поддержания рождественского духа. И пусть массовые ограничения не испортят ваше настроение, ведь волшебство всегда внутри нас! Читайте новогоднюю инструкцию от команды KudaGo по воплощению праздника в жизнь и берите идеи на заметку.	Актуально с 2019-12-30  до 2020-12-31 	events/temp_SjmYsep.jpeg	Санкт-Петербург 	\N
4405	Спектакль «Профсоюз работников ада» от Pop-up театра	Спектакль Семёна Александровского, в ходе которого зритель посещает четыре бара и знакомится с альтернативной теорией развития человечества.	Актуально с 2020-08-10  до 2020-12-04 	events/temp_Zz5NH12.jpeg	Санкт-Петербург 	\N
4406	спектакль «Киса» в театре «Приют комедианта»	Персонаж романа «Двенадцать стульев» — не совсем такой, каким мы его знаем, ведь его биография была вырезана советской цензурой. Восстановить справедливость и рассказать об истинном Кисе Воробьянинове решился режиссёр Семён Серзин.	Актуально с 2020-12-19  до 2021-01-18 	events/temp_UqhY9D5.jpeg	Санкт-Петербург ул. Садовая, д. 27/9	\N
4407	спектакль «Нана» на Новой сцене Александринского театра	Режиссёр-экспериментатор Андрий Жолдак представляет спектакль по мотивам одноимённого романа Эмиля Золя.	Актуально с 2020-03-03  до 2020-12-25 	events/temp_iQa0HuZ.jpeg	Санкт-Петербург наб. реки Фонтанки, д. 49А	\N
4408	концерт группы «Аквариум»	На масштабном концерте Борис Гребенщиков и «Аквариум» представят петербургской публике альбом «Знак Огня».	2021-05-20 	events/temp_7SHwZQi.jpeg	Санкт-Петербург Лиговский просп., д. 6	\N
4409	рождественская ярмарка на Манежной площади	Сказочные домики с волшебными прилавками, яркие гирлянды и зимние аттракционы украсили площадь и близлежащие улицы.	Актуально с 2019-12-12  до 2020-12-19 	events/temp_TPG1z5n.jpeg	Санкт-Петербург пл. Манежная	\N
4410	Фестиваль «Артдокфест»	«Выключи телевизор, включи „Артдокфест“», — гласит неофициальный слоган фестиваля.	Актуально с 2017-12-06  до 2021-04-03 	events/temp_OBf9XTe.jpeg	Санкт-Петербург ул. Малая Морская, д. 24	\N
4411	VK Fest 2021	Один из крупнейших опэн-эйров страны снова в Петербурге! В середине лета пользователи «ВКонтакте» по традиции выйдут из онлайна в офлайн и зажгут не по-детски.	2021-07-24 	events/temp_VHGa3rM.jpeg	Санкт-Петербург просп. Приморский, д. 74	\N
4412	выставка «Сад сновидений 2.0. Мистические миры»	На выставке показывают уникальные световые и интерактивные инсталляции, так или иначе затрагивающие тему сновидений. Знакомая петербуржцам экспозиция пополнилась новыми локациями с кошмарами и мифическими грёзами.	Актуально с 2020-01-01  до 2020-07-07 	events/temp_kC9fImF.jpeg	Санкт-Петербург наб. Обводного канала, д. 74Д	\N
4416	новогоднее шоу «Старый отель» в «Ленинград Центре»	Предвкушение чуда, роскошный бал, таинственные гости... «Ленинград Центр» представляет новогодний аттракцион с участием звёздных артистов — яркую постановку Феликса Михайлова, наполненную атмосферой волшебства и верой в прекрасное будущее.	Актуально с 2020-12-25  до 2020-12-29 	events/temp_RPQ3Oxe.jpeg	Санкт-Петербург ул. Потёмкинская, д. 4	\N
4417	мастер-класс «Рождественский венок своими руками» в студии ZuArt	Учимся создавать своими руками простые и экологичные украшения к праздникам. Участники сделают рождественский венок, яркую композицию к столу или ёлочку.	Актуально с 2020-01-03 	events/temp_MwDmWCH.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4432	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	«ТИТИКАКА» — необычная выставка, где каждый экспонат удивляет, развлекает, а подчас и шокирует.	Актуально с 2017-06-23 	events/temp_hKhy1HV.jpeg	Санкт-Петербург улица Казанская, дом 7, этаж 2	\N
4419	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	В центре Петербурга состоится выставка хендмейд-изделий, где вы сможете приобрести уникальные подарки к новому году, украшения, одежду, аксессуары для дома и посуду!	Актуально с 2015-10-17  до 2020-12-26 	events/temp_Z3hLj00.jpeg	Санкт-Петербург Инженерная улица, дом 13	\N
4420	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	Приезжайте всей семьёй на базу отдыха «Пасторское озеро», чтобы встретить Новый год в стиле хюгге. В новогоднюю ночь здесь состоится большой праздник, а в течение каникул гостей будут ждать зимние забавы и другие развлечения.	2020-12-31 	events/temp_O0XGRqq.jpeg	Санкт-Петербург обл. Ленинградская, ш. Выборгское, 39-й километр	\N
4424	выставка «Маэстро Филип Трейси»	В честь своего 10-летия Эрарта представляет выставку фантазийных шляп знаменитого дизайнера Филипа Трейси, на которой можно увидеть «звёздные» работы мастера и феерические новинки.	Актуально с 2015-02-06  до 2020-11-20 	events/temp_cysmyAK.jpeg	Санкт-Петербург 29-я линия В. О., д. 2	\N
4425	быстрые свидания «ЛавСешн»	Повстречайте любовь всей жизни уже в ближайший уик-энд, посетив одну из еженедельных вечеринок, объединяющих одинокие сердца.	Актуально с 2015-11-22  до 2021-01-16 	events/temp_1gUxVFP.jpeg	Санкт-Петербург ул. Ломоносова, д. 1	\N
4426	Вечеринки в Comedy Place	Эксклюзивные вечеринки Comedy Club Санкт-Петербург и Central StandUp переместились в новое место — Comedy Place. Стены здесь пропитаны юмором, а окна сотрясаются от смеха.	Актуально с 2020-10-14  до 2020-12-24 	events/temp_168WcAM.jpeg	Санкт-Петербург наб. канала Грибоедова, д. 36	\N
4427	Новый год и рождественские каникулы в гостинице «Репинская»	Гостиница «Репинская» приглашает незабываемо провести праздничные выходные и встретить всей семьёй Новый год на берегу Финского залива.	2020-12-31 	events/temp_9qng21i.jpeg	Санкт-Петербург Курортный р-н, пос. Репино, Приморское ш., д. 428	\N
4428	рождественская выставка в Галерее Кустановича	По традиции известный петербургский художник Дмитрий Кустанович проводит атмосферную зимнюю выставку, где можно не только увидеть выразительные работы в стиле пространственный реализм, но и приобрести понравившееся произведение для себя или в подарок.	2020-12-03 	events/temp_QDR3TJ0.jpeg	Санкт-Петербург ул. Б. Конюшенная, д. 11 (второй двор Капеллы)	\N
4429	концерт «Рождественский орган» от Amadeus Concerts	В преддверии европейского Рождества гости кафедрального собора святых Петра и Павла получат возможность проникнуться праздничной органной классикой.	Актуально с 2018-12-22  до 2020-12-26 	events/temp_4Oxc6BH.jpeg	Санкт-Петербург просп. Невский, д. 22–24	\N
4430	фестиваль «Новое кино Китая»	Фестиваль познакомит с жанровым разнообразием современного китайского кинематографа — от обласканных критикой лент до картин, снискавших любовь массового зрителя.	2020-12-17 	events/temp_HQNMICp.jpeg	Санкт-Петербург Невский просп., д. 60	\N
4431	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	История каллиграфии уходит корнями в глубокую древность, и искусство красивого письма продолжает развиваться по сей день. О том, как это происходит в Петербурге, рассказывают работы Петра Чобитько и его учеников.	2020-12-01 	events/temp_7SsAFwF.jpeg	Санкт-Петербург ул. 7-я Красноармейская, д. 30	\N
4433	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	Зрители погрузятся в события прошлого и совершат путешествие по воспоминаниям главного героя – учителя, рядового солдата. Дорога поведет от родного дома сквозь поля и горы до улиц европейских городов. Это интерактивный проект, где каждый увидит: история намного ближе, чем кажется.	Актуально с 2020-01-02  до 2020-01-09 	events/temp_jpAKADz.jpeg	Санкт-Петербург Кожевенная линия, д. 40	\N
4434	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	Новая ярмарка современного дизайна и локальной идентичности пройдёт в «Севкабель Порту». Здесь можно будет купить необычные вещи из натуральных материалов от локальных брендов.	2021-03-13 	events/temp_ckAFUDA.jpeg	Санкт-Петербург Кожевенная линия, д. 40	\N
4436	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	Арт-свидание в Zuart — это романтическая и творческая встреча с возлюбленным или возлюбленной, на память о которой вы унесёте с собой собственное произведение искусства. Чтобы отправиться на творческое свидание, не обязательно уметь рисовать — преподаватель студии покажет и подскажет, как создать красоту.	Актуально с 2019-04-02 	events/temp_X1RswRu.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4440	Новый год и розыгрыш 1 000 000 рублей в ТРЦ «Галерея»	Лучший подарок — тот, что вы выбрали сами! С 11 декабря по 7 января в Галерее без подарков не останется никто: сканируйте чеки, обменивайте бонусы на призы и участвуйте в розыгрыше 1 000 000 рублей на исполнение своей мечты.	2020-12-11 	events/temp_4ScDg1J.jpeg	Санкт-Петербург Лиговский просп., д. 30А	\N
4441	экскурсия «Мифы и легенды Петербурга»	Вечерний автобусный тур по мистическим местам Северной Пальмиры.	Актуально с 2020-01-01  до 2020-11-13 	events/temp_AYyHSCJ.jpeg	Санкт-Петербург 	\N
4442	новогодние корпоративные мастер-классы от Handy Class	Если вы с коллегами хотите нестандартно отметить Новый год или другой праздник, то погружение в мир творчества — отличная идея! Школа флористики Handy Class проведёт корпоративный мастер-класс в удобном для вас месте.	Нет точной даты	events/temp_xnE8y26.jpeg	Санкт-Петербург 20-я линия В.О., д. 13	\N
4443	большой концерт шоу «Импровизация»	Новогодний концерт от шоу «Импровизация» — юмористические итоги года, который определённо заслужил свою долю феерических шуток.	2021-04-10 	events/temp_CIt8tSw.jpeg	Санкт-Петербург Каменноостровский просп.,  д. 42	\N
4444	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	«Высотный город» устраивает новогодний квест для детей от 6 лет по мотивам знаменитого фильма. Отважные спасатели праздника пройдут увлекательные испытания, одолеют злодея и получат подарки. Для читателей KudaGo действуют специальные скидки!	Нет точной даты	events/temp_cHZDEBd.png	Санкт-Петербург просп. Приморский, д. 72.	\N
4445	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	Пронзительная история о любви, жертвенности и столкновении культур — один из лучших мюзиклов мира в постановке нидерландского режиссёра Корнелиуса Балтуса, автора русской версии культового «Бала вампиров».	Актуально с 2020-12-11  до 2020-12-29 	events/temp_nevtuNy.jpeg	Санкт-Петербург ул. Итальянская, д. 13	\N
4446	шоу «Женский Стендап»	Без запретных тем и стереотипов! Умницы и красавицы из шоу «Женский Стендап» на ТНТ покажут, как шутят женщины.	2021-04-24 	events/temp_xFOooXk.png	Санкт-Петербург Каменноостровский просп.,  д. 42	\N
4447	вечер джаза JazzLike в оранжерее Таврического сада	Приходите зарядиться солнечным настроением на концерт джазовой музыки в оранжерее Таврического сада.	2021-01-30 	events/temp_w8h1R1R.png	Санкт-Петербург ул. Шпалерная, д. 43	\N
4448	выставка Post Factum	Уникальные снимки из частных архивов иллюстрируют бурную историю ленинградского нонконформизма.	2020-10-20 	events/temp_nbWPcKq.jpeg	Санкт-Петербург Лиговский просп., д. 53	\N
4449	инсталляция ARRIVAL от группы 404.Zero в пространстве «Севкабель Порт»	Увидеть аудиовизуальную инсталляцию, которую уже оценили жители Нью-Йорка, теперь можно в Петербурге в пространстве «Севкабель Порт». Однако опыт петербуржцев будет иным, так как благодаря математическим алгоритмам сценарий шоу не повторяется.	Актуально с 2020-12-25  до 2021-01-11 	events/temp_a1Uh2Vm.jpeg	Санкт-Петербург Кожевенная линия, д. 40	\N
4450	автобусная экскурсия «Вечерний новогодний Петербург с Дедом Морозом»	Поездка по нарядным улицам Петербурга в компании доброго волшебника поможет зарядиться новогодним настроением.	Актуально с 2020-12-27  до 2020-12-29 	events/temp_zLe89Ko.jpeg	Санкт-Петербург 	\N
4452	спектакль «Дон Кихот» в постановке Театра балета имени Л. Якобсона	Хореограф из Дании Йохан Кобборг выпустил спектакль на основе балета Мариуса Петипа. Постановка посвящена 200-летию великого балетмейстера.	Актуально с 2017-12-14  до 2020-12-25 	events/temp_WFKqwu8.jpeg	Санкт-Петербург пл. Островского, д. 6	\N
4453	мастер-классы по абстрактной живописи в технике жидкого акрила	Порой цветовые переходы и восхитительные смешения оттенков могут передать больше эмоций, чем чёткий сюжет. Попробуйте выразить настроение с помощью акриловых красок на мастер-классе!	Актуально с 2018-05-06 	events/temp_VvNMc9C.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4454	выставка картин Светланы Мучновой «Дорога через века»	Художница Светлана Мучнова сама изготавливает краски и создаёт с их помощью удивительные картины. Познакомиться с её творчеством и прикоснуться к мудрости веков можно на выставке в галерее «Тутти Кванти».	2020-11-06 	events/temp_0DwZpKM.jpeg	Санкт-Петербург ул. Радищева, д. 37	\N
4455	мастер-классы по живописи «Картина за 3 часа»	Мечтаете раскрыть свой творческий потенциал? Давно задумываетесь о новом хобби? Хотите сделать необычный подарок своими руками? Студия Artista приглашает на увлекательные мастер-классы по живописи. Создайте с нуля свою картину под руководством опытного преподавателя всего за три часа!	Актуально с 2019-02-07  до 2020-11-01 	events/temp_dpCUhe8.jpeg	Санкт-Петербург Тучков пер., 11/5.	\N
4456	курс «Как понимать современное искусство?» в лектории Artista	Если вы хотите научиться разбираться в современных художественных стилях и узнать о главных феноменах арт-культуры XX и XXI века, приходите в лекторий Artista. Здесь проходит краткий и ёмкий курс, который даст базовые знания о современном искусстве.	Актуально с 2020-11-28  до 2020-12-26 	events/temp_szMxeZD.jpeg	Санкт-Петербург Тучков пер., 11/5.	\N
4457	экскурсия-квест в Музее железнодорожного транспорта «По железной дороге в новогоднюю сказку»	В Музее железнодорожного транспорта подготовили сказочный новогодний квест для любознательных юных гостей. Ребят ждут хитроумные шифры и загадки, поиски потерянных реликвий и настоящие новогодние чудеса.	Актуально с 2020-12-12  до 2020-12-29 	events/temp_FE7wrW8.jpeg	Санкт-Петербург 	\N
4459	экскурсия в особняк Матильды Кшесинской	Экскурсия по восхитительному памятнику эпохи модерн — бывшему особняку балерины Императорских театров Матильды Кшесинской.	Актуально с 2020-01-05  до 2020-12-27 	events/temp_oJBvRgz.jpeg	Санкт-Петербург 	\N
4461	ночной тур «Ползком по клубам и барам»	«Ползком по клубам и барам» — экскурсия, щедрая на развлечения, истории о барной культуре Петербурга, танцы, песни, знакомства и напитки. Эксперты ночной жизни всё покажут, расскажут и не дадут никому заскучать!	Актуально с 2017-05-19  до 2021-01-04 	events/temp_4vWyOuv.jpeg	Санкт-Петербург Лиговский просп., д. 50	\N
4462	выставка «Знаки Победы»	Как в военные годы работали предприятия Гознака? Куда эвакуировали Ленинградский монетный двор и Московскую печатную фабрику? Где чеканилась медаль «За оборону Ленинграда»? Ответы вы найдёте на выставке «Знаки Победы».	Нет точной даты	events/temp_k9UEaQ8.jpeg	Санкт-Петербург Петропавловская крепость, дом 3, литер «Ш»	\N
4463	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	Три вечера рождественских органных мелодий в окружении сотен горящих свечей позволят прочувствовать атмосферу витающего в воздухе новогоднего волшебства.	Актуально с 2019-12-27  до 2020-12-26 	events/temp_gtpXKlZ.jpeg	Санкт-Петербург ул. Декабристов, д.54, л.А	\N
4465	праздник в виртуальной реальности в клубе Anvio VR	Зовите друзей и отправляйтесь в захватывающее приключение с полным погружением во вселенную VR!	2020-12-01 	events/temp_qKxhBEd.jpeg	Санкт-Петербург Конюшенная площадь, д. 2, этаж 3	\N
4466	новогодние подарки от «Магазина купцов Елисеевых»	В наборах от знаменитого «Магазина Купцов Елисеевых» — того самого, что на Невском проспекте, 56 — собраны угощения на любой вкус. На Новый год магазин предлагает дарить самым дорогим людям сундучки разного размера, вкуса и содержания. Они помогут сделать праздник ещё ярче.	Нет точной даты	events/temp_EUX8ZPF.jpeg	Санкт-Петербург Невский просп., д. 56/8	\N
4470	автобусная экскурсия «Сказочное путешествие по новогоднему Петербургу»	На волшебном автобусе в компании личного шофёра Деда Мороза ребята и их родители отправятся в удивительное путешествие в зимнюю сказку за новогодними приключениями и праздничными чудесами.	Актуально с 2020-12-26  до 2020-12-27 	events/temp_XVf4hP1.jpeg	Санкт-Петербург 	\N
4471	осенняя гаражная распродажа в «Севкабель Порту»	«Севкабель Порт» приглашает на осеннюю гаражную распродажу. Здесь можно будет обзавестись не только эксклюзивной одеждой и обувью, но и винтажной посудой, мебелью, виниловыми пластинками и другими редкостями.	2021-02-06 	events/temp_ptD0g4a.jpeg	Санкт-Петербург Кожевенная линия, д. 40	\N
4472	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	Вам нравится абстрактная живопись? Хотите создать собственную неповторимую работу в этой технике? Приходите на мастер-класс по рисованию спиртовыми чернилами в студию ZuART! Вы нарисуете необычную картину для интерьера, которую специалисты студии оформят для вас в белую раму с паспарту.	Актуально с 2019-04-30 	events/temp_qStb8me.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4473	экскурсия в Саблинских пещерах «Старик Шубин и сокровища Али-Бабы»	В компании таинственного хранителя Саблинских пещер юные исследователи и их родители отправятся в путешествие по залитым мерцающим светом подземельям, чтобы отыскать сокровище Али-Бабы.	Актуально с 2020-12-27  до 2021-01-03 	events/temp_uIg71iF.jpeg	Санкт-Петербург 	\N
4475	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	У вас дома есть пустующая стена, а в душе — жажда творчества? Приходите в студию рисования и живописи Zuart и под руководством чутких преподавателей создайте собственную абстрактную картину, которая впишется в интерьер. Согласитесь, это круче, чем купить постер?	Актуально с 2019-02-06 	events/temp_wGC8lBX.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4476	спектакль-прогулка «Зима. Город Достоевского. 730 шагов с Родионом Раскольниковым»	Зима— красивое время для прогулок по городу! А фантазии на тему произведений Достоевского — идеальный путеводитель. Пройдите вместе с Родионом Раскольниковым те самые 730 шагов к дому старухи-процентщицы в рамках пешеходного спектакля-прогулки.	Актуально с 2018-07-27  до 2021-01-13 	events/temp_NE4eJFP.jpeg	Санкт-Петербург ул. Казначейская, д. 7	\N
4477	день рождения в Музее Мозга	Проведите детский день рождения в одном из самых необычных музеев Петербурга! Здесь можно узнать множество удивительных фактов о работе мозга и научиться управлять роботом силой мысли.	Нет точной даты	events/temp_zs757Qp.jpeg	Санкт-Петербург ул. Марата, д. 86, ТРК «Планета Нептун», 2-й этаж	\N
4478	новогодние корпоративы в ресторане «Чайхана Пахвала & Вкусновица»	Чтобы незабываемо встретить Новый год, стоит подготовиться к празднику заранее. В ресторане «Чайхана Пахвала & Вкусновица» уже принимают заявки на декабрьские корпоративы с развлекательной программой и разнообразным банкетным меню.	2020-12-17 	events/temp_9KYVnKS.jpeg	Санкт-Петербург Пулковское шоссе, д. 25/1, ТРК «Лето», 2 этаж	\N
4479	новогодние арт-корпоративы в студии живописи ZuART	Задаётесь вопросом, где провести незабываемый праздник или корпоратив? Студия живописи Zuart предлагает новый взгляд на организацию подобных мероприятий — это арт-день рождения, арт-тимбилдинг или арт-девичник. Оригинальная программа позволит вам, вашим коллегам и друзьям раскрыть свой творческий потенциал и отвлечёт от будничной рутины.	Актуально с 2018-05-07 	events/temp_vabb4l1.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4480	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	На экскурсии по пожарной части ребята познакомятся с профессиональными пожарными, смогут примерить боевое облачение борцов с огнём и узнают всё о безопасном обращении с пиротехникой.	Актуально с 2020-11-05  до 2021-01-05 	events/temp_PB71wwK.jpeg	Санкт-Петербург 	\N
4481	акция «Crazy понедельник» в магазинах «Планета Фейерверков»	Купить качественную и эффектную пиротехнику со скидкой 25% можно в интернет-магазине «Планета Фейерверков». Успейте сделать выгодную покупку, акция действует только один день — 21 декабря!	2020-12-21 	events/temp_jWzRMIl.jpeg	Санкт-Петербург 	\N
4482	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	Во время экскурсии по одной из самых впечатляющих великокняжеских резиденций Петербурга участники познакомятся с историей и великолепным внутренним убранством этого архитектурного шедевра.	Актуально с 2019-09-14  до 2021-01-06 	events/temp_xuFpK9m.jpeg	Санкт-Петербург 	\N
4484	спектакль «С Чарльзом Буковски за барной стойкой»	Спектакль, в котором зритель сидит не в зале, а в баре, поставил Семён Александровский — основатель проекта и один из лидеров в поиске нового театрального языка.	Актуально с 2017-05-02  до 2020-12-04 	events/temp_z1u9KG1.jpeg	Санкт-Петербург ул. Рубинштейна, д. 5.	\N
4485	спектакль «Фаза зеркала» в постановке Pop-up театра	Режиссёр Семён Александровский продолжает экспериментировать с локациями и представляет спектакль в пространстве отеля. Зрителей ждёт новый опыт взаимодействия с театром и окружающим миром.	Актуально с 2020-12-17  до 2020-12-22 	events/temp_8KjNAMJ.jpeg	Санкт-Петербург ул. 2-я Советская, д. 4 Б, стр.1.	\N
4486	мастер-классы «Картина за 3 часа» в студии живописи ZuART	После напряжённых рабочих дней, студенческих лекций или школьных уроков вам хочется отвлечься от забот и ощутить порыв вдохновения? Тогда берите в руки кисти и начинайте творить, а преподаватели студии ZuART направят действия в нужное русло на увлекательных мастер-классах.	Актуально с 2018-09-07 	events/temp_6aXJ6y9.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4487	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	Умение выступать перед публикой важно не только для артистов. В повседневной жизни каждый сталкивается с необходимостью говорить публично: на работе, презентациях, праздниках и не только. Чтобы чувствовать себя уверенно и говорить убедительно, пройдите мастер-класс от профессиональных актёров.	Нет точной даты	events/temp_u9HWFHM.jpeg	Санкт-Петербург наб. канала Грибоедова, д. 93	\N
4488	концерт «Музыка в темноте»	Уникальное мультимедийное шоу «Музыка в темноте» Евгении Зимы объединит мелодии классиков с ультрасовременными сценическими технологиями.	2021-03-10 	events/temp_Cf7pwGX.jpeg	Санкт-Петербург Лиговский просп., д. 6	\N
4489	детские мастер-классы по рисованию от студии живописи ZuART	Студия живописи ZuART приглашает малышей и подростков от 3 до 15 на творческие мастер-классы! Забавные и необычные задания помогут развить мелкую моторику, фантазию, творческие способности и смелость.	Актуально с 2018-06-14 	events/temp_KTLjFFh.jpeg	Санкт-Петербург Каменноостровский пр., д. 38/96, 3 этаж, домофон 77	\N
4490	обзорная экскурсия по Петербургу «Новогодние огни»	Участники сказочной экскурсии прогуляются по украшенным улицам Петербурга, полюбуются праздничной иллюминацией и услышат увлекательный рассказ об истории новогодних традиций.	Актуально с 2019-10-02  до 2021-01-02 	events/temp_Q0ISTQf.jpeg	Санкт-Петербург 	\N
4491	видеоэксурсии Музея железных дорог России	Музей приглашает попутешествовать во времени и узнать много нового о железных дорогах. Присоединяйтесь к новым видеоэкскурсиям в официальном паблике музея ВКонтакте.	Нет точной даты	events/temp_OdoirHx.jpeg	Онлайн 	\N
4492	экскурсия-моноспектакль «Тайны Северной столицы»	На небольшом автобусе вы отправитесь на трёхчасовую обзорную экскурсию в необычном формате. Опытный гид расскажет историю Санкт-Петербурга в форме моноспектакля, где факты из учебников переплетутся с интересными гипотезами.	Актуально с 2020-01-01  до 2020-11-13 	events/temp_G35KSzu.jpeg	Санкт-Петербург 	\N
4493	экскурсия-квест в Константиновском дворце «Новогодний детский саммит»	На торжественном новогоднем саммите в Константиновском дворце дети встретятся со сказочными персонажами и познакомятся с самыми удивительными традициями встречи Нового года.	2020-12-29 	events/temp_uUJYDng.jpeg	Санкт-Петербург 	\N
4494	обзорная автобусная экскурсия «Знакомство с Петербургом»	Эта непродолжительная по времени, но насыщенная экскурсия позволит составить общее представление о Санкт-Петербурге и увидеть некоторые его главные достопримечательности.	Актуально с 2020-01-01  до 2020-11-13 	events/temp_WI4auiQ.jpeg	Санкт-Петербург 	\N
4495	онлайн-курс дизайна интерьера	Мечтаете о профессии дизайнера интерьера? Познакомиться с особенностями работы и получить все базовые знания и навыки, необходимые успешному дизайнеру, смогут слушатели познавательного онлайн-курса.	Актуально с 2020-04-07  до 2020-12-14 	events/temp_X1Fl0HV.jpeg	Онлайн 	\N
4622	концерт Tricky	Ветеран бристольского саунда Tricky представит екатеринбургским поклонникам электронной сцены новый альбом Fall To Pieces.	2021-03-26 	events/temp_VBBdpnQ.jpeg	Екатеринбург Центральный рынок, д. 6	\N
4623	концерт Sirotkin	Звёзды российской инди-сцены Sirotkin привезут в Екатеринбург программу на основе новейшего мини-альбома.	2021-03-20 	events/temp_nNHZUFg.jpeg	Екатеринбург Центральный рынок, д. 6	\N
4516	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	Хотите освоить новое хобби или пополнить своё портфолио иллюстратора? Тогда записывайтесь на курс с востребованной художницей Юджи Кай, мастером нежных акварельных зарисовок.	Нет точной даты	events/temp_WK6xgpH.jpeg	Онлайн 	\N
4517	онлайн-курс видеоблогинга	Мечтаете завести канал на Youtube и стать успешным блогером? На вебинарах курса подробно разберут все навыки и умения, необходимые для создания, продвижения и монетизации видеоблога.	Актуально с 2020-03-01  до 2020-12-14 	events/temp_IjPUDJ8.jpeg	Онлайн 	\N
4518	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	Присоединяйтесь к курсу от всемирно известной художницы Блэр Брайтенштайн! Иллюстратор Недели моды в Нью-Йорке расскажет и покажет, как создавать выразительные образы на бумаге и найти собственный стиль. Курс поможет освоить новую профессию и расширить навыки художника.	Нет точной даты	events/temp_eNZOpFg.jpeg	Онлайн 	\N
4519	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	Анализировать и строить объекты в пространстве одинаково важно и для опытных художников, и для начинающих. На курсе дизайнер-урбанист из Малайзии покажет, как создавать архитектурные скетчи быстро и с высокой степенью точности. Это умение выведет ваши работы на новый уровень!	Нет точной даты	events/temp_XAlcsEI.jpeg	Онлайн 	\N
4520	онлайн-курс продюсеров	Что должен уметь продюсер? Как рассчитать стоимость проекта? Что входит в понятие «постпродакшен»? Обо всех секретах профессии, необходимых новичку навыках, умениях и знаниях расскажут на вебинарах онлайн-курса.	Актуально с 2020-03-01 	events/temp_rkpVJRc.jpeg	Онлайн 	\N
4521	онлайн-курс контекстной рекламы	Слушатели онлайн-курса получат базовые знания и навыки, необходимые специалисту по контекстной рекламе, и научатся разрабатывать успешные рекламные компании.	Актуально с 2020-03-01 	events/temp_QFMALz1.jpeg	Онлайн 	\N
4522	онлайн-выставка «Знамя Победы»	Наряду с Аркадием Шайхетом, Всеволодом Тарасевичем, Сергеем Струнниковым и Эммануилом Евзерихиным Евгений Халдей является одной из ключевых фигур фотожурналистики военного периода. 1418 дней войны прошли для него и его «Лейки» на разных фронтах, а результатом стали сотни уникальных снимков — фотолетопись этого времени.	Актуально с 2015-04-30 	events/temp_wDMiU2q.jpeg	Онлайн 	\N
4523	вебинар «Буддизм: это про что?»	Религиовед Константин Михайлов и проект Level One помогут разобраться в основах буддизма и узнать больше о его становлении в качестве мировой религии, главных принципах и философских категориях.	2021-01-04 	events/temp_IIf7wM6.jpeg	Онлайн 	\N
4624	концерт Everthe8	Свежие идеи и звуки в мире российского хип-хопа. Бурятский рэпер Everthe8 отправляется покорять страну с заездом в Екатеринбург.	2021-04-14 	events/temp_o40QmI7.jpeg	Екатеринбург пер. Центральный рынок, д. 6	\N
4524	вебинар «Классика кино: от братьев Люмьер до наших дней»	Искусствовед Олег Грознов организует для слушателей увлекательное путешествие по истории кинематографа, поговорит о великих режиссёрах прошлого и настоящего, а также даст ответ на вопрос, почему по прошествии многих лет кино остаётся самым массовым видом искусства.	Актуально с 2020-12-24  до 2021-01-07 	events/temp_kNOS3oI.jpeg	Онлайн 	\N
4525	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	Образовательный проект Level One и историк искусства Алина Аксёнова приглашают познакомиться с удивительным миром постимпрессионизма и узнать больше о творчестве двух его выдающихся деятелей — Ван Гога и Сезанна.	2021-01-14 	events/temp_OHj35vz.jpeg	Онлайн 	\N
4526	вебинар «Как не запутаться в мировой истории и запомнить главное»	Хорошо ориентироваться в исторических событиях, помнить даты и знать персоналии под силу не только университетским профессорам, эрудитам и исследователям. Это докажут на увлекательной лекции образовательного проекта Level One.	2020-12-27 	events/temp_yR8PUqd.jpeg	Онлайн 	\N
4527	вебинар «Тёмная сторона сказки»	Сюжетные повороты этой необычной сказки предстоит определить участникам игровой лекции проекта Level One. Интерактивный формат события позволит узнать много нового об истоках и специфике фольклора, а заодно и развлечься, выбирая варианты развития волшебных событий.	2020-12-30 	events/temp_7EwO2UD.jpeg	Онлайн 	\N
4528	вебинар «Теории заговора: конспирология от древности до наших дней»	Историк Константин Михайлов и образовательный проект Level One приглашают на увлекательную лекцию, посвящённую всевозможным конспирологическим теориям. Масонский заговор, коварные иезуиты, теневое правительство, рептилоиды, иллюминаты — на встрече расскажут о самых странных сюжетах и мифах со всего мира.	2021-01-08 	events/temp_ibHpMMk.jpeg	Онлайн 	\N
4529	вебинар «Сюрреализм: искусство бессознательного»	Образовательный проект Level One и историк искусства Алина Аксёнова подготовили познавательный вебинар, посвящённый сюрреализму — стилю, похожему на парадоксальный и фантасмагоричный сон.	2021-01-04 	events/temp_Trv584l.jpeg	Онлайн 	\N
4530	вебинар «Как устроена музыка: научный взгляд»	Математик Роман Олейников познакомит слушателей с естественнонаучным подходом к изучению музыки и подробно расскажет о том, каким математическим законам подчиняются все музыкальные произведения.	2020-12-24 	events/temp_ZEDugcb.jpeg	Онлайн 	\N
4531	онлайн-курс режиссуры	Основы монтажа, работа со сценарием, координация членов съёмочной группы на площадке, подбор актёров — слушатели курса смогут освоить эти и другие навыки, необходимые начинающему режиссёру.	Актуально с 2020-03-01  до 2020-12-15 	events/temp_VhBc36Z.jpeg	Онлайн 	\N
4532	онлайн-курс НЛП	Психологические техники, вербальные и невербальные шаблоны поведения, методы влияния на собеседника — на вебинарах онлайн-курса слушателям предстоит познакомиться с основами нейролингвистического программирования.	Актуально с 2020-03-01 	events/temp_QPoRHDX.jpeg	Онлайн 	\N
4533	вебинар «Японское кино: от Куросавы до Китано»	Искусствовед Олег Грознов познакомит слушателей с этапами развития японского кинематографа, расскажет о фильмах, приёмах и жанрах, которые передают особенности японского взгляда на мир.	2020-12-29 	events/temp_mibVJw4.jpeg	Онлайн 	\N
4534	вебинар «Как снимать портрет, природу и архитектуру»	Профессиональный фотограф поделится со слушателями лайфхаками, научит делать качественные снимки на смартфон, обрабатывать фотографии и грамотно строить композицию кадра.	2020-12-22 	events/temp_Gy1uuMS.jpeg	Онлайн 	\N
4535	вебинар «Что мы едим: польза и вред глазами химика»	Химик-полимерщик Сакина Зейналова поможет слушателям взглянуть на продукты питания с нового ракурса, а также развенчает некоторые мифы о безопасности или вреде химии в продуктах, которые мы едим.	2020-12-21 	events/temp_clLvCS4.jpeg	Онлайн 	\N
4536	вебинар «Подделки и шедевры: как разбираться в искусстве»	Образовательный проект Level One и историк искусств Алина Аксёнова приглашают на лекцию, посвящённую увлекательной странице в истории искусства — истории фальсификаций. На лекции слушатели узнают о поддельщиках искусства и методах их разоблачения.	2021-01-10 	events/temp_6WENV9R.jpeg	Онлайн 	\N
4537	онлайн-курс писательского мастерства	На занятиях слушателям предстоит изучить композиционные правила, разобрать процесс написания художественного произведения и создания диалогов, а также освоить необходимые писателю навыки.	Актуально с 2020-03-01  до 2021-01-12 	events/temp_YAFlBz3.jpeg	Онлайн 	\N
4538	онлайн-курс по ведению и продвижению Instagram	Мечтаете о карьере инстаграм-блогера, но не знаете, с чего начать? На вебинарах онлайн-курса поделятся секретами о развитии профиля в Instagram, которые будут полезны будущим интернет-знаменитостям.	Актуально с 2020-03-01 	events/temp_L9sxllj.jpeg	Онлайн 	\N
4539	онлайн-курс детской психологии для родителей	Хотите научиться ладить с детьми? Мечтаете развить в ребёнке ответственность, дисциплину и чувство собственного достоинства? Узнать всё о детской психологии помогут слушателям познавательного онлайн-курса.	Нет точной даты	events/temp_r5eE0pK.jpeg	Онлайн 	\N
4540	онлайн-курс психологии отношений	Есть ли отличия между женской и мужской психологией? Можно ли строить отношения, опираясь на знание особенностей собственного характера? На занятиях онлайн-курса расскажут всё о психологии отношений.	Нет точной даты	events/temp_AzYMwBc.jpeg	Онлайн 	\N
4541	вебинар «Петербург: история города от основания до наших дней»	Образовательный проект Level One и историк Арина Данилова приглашают на лекцию, посвящённую Северной столице. На встрече слушатели узнают о самых сокровенных, трудных и торжественных страницах в истории города.	2021-01-09 	events/temp_n2Wu5gB.jpeg	Онлайн 	\N
4542	вебинар «Как устроена геометрия: от Евклида до Перельмана»	Современная геометрия разнообразна и выходит далеко за границы школьной программы. На лекции проекта Level One слушателям помогут разобраться в математической науке и лучше понять основы геометрии.	2020-12-21 	events/temp_28pPCAI.jpeg	Онлайн 	\N
4543	вебинар «Как картины становятся шедеврами»	Корректно ли использовать термин «шедевр»? Почему сознание зрителя острее реагирует на некоторые картины? Из чего складывается аукционная стоимость произведения? На эти и другие вопросы ответят слушателям увлекательной лекции.	2020-12-26 	events/temp_KcdnGIv.png	Онлайн 	\N
4544	вебинар «Импрессионизм: сюжеты, техники, герои»	Образовательный проект Level One и историк искусства Алина Аксёнова приглашают всех увлечённых живописью на лекцию, посвящённую творчеству художников-импрессионистов.	2021-01-05 	events/temp_AyelklE.jpeg	Онлайн 	\N
4545	вебинар «Как превратить достижение целей в игру»	Эксперт по эмоциональному интеллекту и бизнес-тренер Анастасия Высоцкая объяснит слушателям, как устроен процесс достижения и постановки целей, раскроет секреты верной формулировки цели и грамотной самомотивации.	2020-12-23 	events/temp_S5AkTrx.jpeg	Онлайн 	\N
4546	вебинар «Михаил Барышников: легенда современной хореографии»	На лекции проекта Level One историк театра и балета Ангелина Дронова расскажет слушателям о современной хореографии, а также поможет научиться интерпретировать визуальный язык танцевального модерна.	Актуально с 2020-12-27  до 2021-01-09 	events/temp_xffAOoL.png	Онлайн 	\N
4547	вебинар «Рождение СССР: как это было»	Сергей Соловьёв и проект Level One приглашают узнать больше о том, как на развалинах великой империи была создана новая мировая держава — уникальное государственное образование под аббревиатурой СССР.	2020-12-21 	events/temp_O6V5r9U.jpeg	Онлайн 	\N
4548	онлайн-курс общей психологии	Как устроен человеческий мозг? Есть ли разница между психологическим, биологическим и социальным возрастом? Чем обусловлены зрительные иллюзии? На эти и другие вопросы ответят слушателям онлайн-курса по психологии.	Нет точной даты	events/temp_zArcdBw.jpeg	Онлайн 	\N
4549	онлайн-курс анимации	Хотите научиться создавать мультфильмы с нуля? На увлекательных вебинарах онлайн-курса расскажут всё, что необходимо знать начинающему художнику-аниматору.	Актуально с 2020-03-01  до 2020-12-15 	events/temp_deilbjE.jpeg	Онлайн 	\N
4550	вебинар «История английской монархии: от основания до Елизаветы II»	Почему Британия до сих пор является королевством? Сколько лет британской монархии? Чем примечательна британская модель государства? На вебинаре проекта Level One слушатели познакомятся с историей Англии.	2020-12-21 	events/temp_OSyaUjo.png	Онлайн 	\N
4551	вебинар «История балета: от Матильды до Дианы Вишневой»	Участники встречи познакомятся с историей русского балета сквозь призму биографии известных балерин. Вклад каждой из них изменил мировую балетную сцену и стал своеобразным рубежом в истории этого искусства.	2021-01-04 	events/temp_E7zmSSD.jpeg	Онлайн 	\N
4552	онлайн-курс Influencer marketing	Всего за пять практических онлайн-занятий слушатели курса смогут освоить новую профессию, научиться запускать эффективные рекламные кампании и выстраивать продуктивные рабочие отношения с лидерами мнений.	Нет точной даты	events/temp_Wou1FJc.jpeg	Онлайн 	\N
4553	онлайн-курс копирайтинга	Какие материалы интересны пользователям? Чем рекламный текст отличается от журналистского? Что такое информационный стиль? На эти и другие вопросы ответят слушателям познавательного онлайн-курса.	Актуально с 2020-04-06 	events/temp_eWYrvXM.jpeg	Онлайн 	\N
4554	онлайн-курс обработки фотографии	Под руководством фотографа и ретушёра слушателям курса предстоит освоить инструменты профессионального фоторедактора, научиться ориентироваться в фотошопе и редактировать снимки любого качества.	Актуально с 2020-03-01 	events/temp_iDBMGaO.jpeg	Онлайн 	\N
4555	онлайн-курс фотографии для начинающих	Опытный преподаватель поможет слушателям курса освоить азы фотографии, разобраться в настройках фотокамеры, научиться грамотно выстраивать композицию кадра, работать со светом и снимать в ручных режимах.	Нет точной даты	events/temp_Jc8OGx4.jpeg	Онлайн 	\N
4556	вебинар «Иудаизм: ответы на частые вопросы»	Почему евреи на протяжении двух тысяч лет подвергались гонениям, как объяснить запрет на работу в субботний день, какое отношение каббала имеет к иудаизму, является ли синагога храмом, что символизируют пейсы и кто такие хасиды — об этом и многом другом пойдёт речь на лекции проекта Level One.	2021-01-09 	events/temp_JrKFe41.jpeg	Онлайн 	\N
4557	вебинар «Прерафаэлиты: красота Средневековья»	Искусствовед Алина Аксёнова и проект Level One приглашают на лекцию, посвящённую искусству прерафаэлитов — британских романтиков конца XVIII века, ориентировавшихся на высокие образцы гуманистического искусства позднего Средневековья.	2021-01-09 	events/temp_f8y9KjN.jpeg	Онлайн 	\N
4558	онлайн-курс таргетированной рекламы	Как привлечь трафик на сайт? Как составить портрет целевой аудитории? Что нужно знать о рекламных объявлениях? Для чего нужны UTM-метки? На эти и другие вопросы ответят слушателям познавательного онлайн-курса.	Актуально с 2020-03-01 	events/temp_nTrsDd1.jpeg	Онлайн 	\N
4559	онлайн-курс создания и продвижения сайтов	На вебинарах слушателей курса познакомят с особенностями работы инструментов поискового маркетинга, способами повышения продаж, продвижения сайтов в поисковых системах, расскажут об источниках интернет-трафика и других необходимых для работы SEO-специалиста моментах.	Актуально с 2020-03-01 	events/temp_v7SPeRi.jpeg	Онлайн 	\N
4560	онлайн-курс скорочтения	Хотите в короткие сроки готовиться к любым экзаменам, с лёгкостью понимать сложные тексты, запоминать большие объёмы информации? На курсе скорочтения расскажут, как освоить все эти навыки.	Актуально с 2020-03-01 	events/temp_ehCajxm.jpeg	Онлайн 	\N
4561	вебинар «Как менялись иконы: от истоков до современности»	Что общего у древнеримских скульптур и христианских икон? Как выглядели первые иконы? Какие новшества привнесло во внешний вид икон современное церковное искусство? На эти и другие вопросы ответят участникам вебинара.	2020-12-23 	events/temp_VgDYl8g.jpeg	Онлайн 	\N
4562	вебинар «Как росла Москва: от деревянного города до первого трамвая»	Когда в столице появился первый централизованный водопровод? Как на архитектуру Москвы повлияло появление железных дорог и развитие промышленности? На эти и другие вопросы из истории города ответят участникам вебинара.	2021-01-05 	events/temp_9JbF1uK.jpeg	Онлайн 	\N
4563	вебинар «Альбрехт Дюрер: главное»	Альбрехт Дюрер — художник эпохи Возрождения, современник Рафаэля и Леонардо, блестящий гравер и график. На лекции образовательного проекта Level One слушатели познакомятся с биографией знаменитого мастера немецкого Ренессанса.	2021-01-19 	events/temp_Oa4Tghu.jpeg	Онлайн 	\N
4564	онлайн-курс сценарного мастерства	Что волнует зрителя? Как заинтересовать сюжетом? Кто такой антигерой? Как написать цельный сценарий? На эти и другие вопросы ответят слушателям онлайн-курса по сценарному мастерству.	Актуально с 2020-03-01  до 2021-01-12 	events/temp_48CarAS.jpeg	Онлайн 	\N
4565	онлайн-курс психологии общения	Участники онлайн-курса смогут познакомиться с основами психологии межличностного общения, научиться эффективно коммуницировать с незнакомыми и близкими людьми, справиться с проблемой скованности в разговоре.	Нет точной даты	events/temp_2FLrcBv.jpeg	Онлайн 	\N
4566	вебинар «Как монголо-татарское иго изменило Русь»	Как Монгольской империи удалось завоевать полмира? Как возникла империя Чингисхана? В чём проявлялась зависимость Руси от Золотой Орды? Ответы на эти и другие вопросы о монголо-татарском иге получат участники вебинара.	2021-01-05 	events/temp_EiRL4zP.jpeg	Онлайн 	\N
4567	онлайн-курс CorelDraw	Владение инструментами CorelDraw — навык, необходимый каждому графическому дизайнеру. На вебинарах онлайн-курса разберут все возможности программы и подробно расскажут о создании макетов.	Актуально с 2020-03-01  до 2020-12-16 	events/temp_avLEBLx.jpeg	Онлайн 	\N
4568	онлайн-курс журналистики	Где искать инфоповоды? Как найти достоверную информацию? Что такое информационный стиль? Зачем журналисту SEO-оптимизация? На все эти вопросы ответят слушателям онлайн-курса.	Актуально с 2020-03-01  до 2020-12-22 	events/temp_WjlEGpF.jpeg	Онлайн 	\N
4569	онлайн-курс веб-аналитики	Как увеличить эффективность рекламной кампании и оптимизировать бизнес-процессы? В чём тонкости работы с Яндекс.Метрикой и Google Analytics? Ответы на эти и другие вопросы смогут получить слушатели онлайн-курса.	Нет точной даты	events/temp_VQ9S51T.jpeg	Онлайн 	\N
4570	онлайн-курс создания презентаций в PowerPoint	Слушатели онлайн-курса смогут всего за шесть практических занятий научиться создавать качественные и простые презентации, освоить все возможности и инструменты программы PowerPoint.	Нет точной даты	events/temp_YSJL4T8.jpeg	Онлайн 	\N
4571	онлайн-курс SMM-продвижения	Настройка таргетированной рекламы, адаптация контента под вкусы аудитории, работа с метриками, разработка плана SMM-продвижения, генерация оригинального контента — об этом и многом другом расскажут на вебинарах курса.	Актуально с 2020-03-01 	events/temp_gIBJxHY.jpeg	Онлайн 	\N
4572	онлайн-курс визуального мерчандайзинга	Чтобы товар продавался, мало расположить его на полках — покупатель с большей охотой купит вещь, если она правильно представлена. Как превратить торговый зал в настоящую галерею и повысить продажи, расскажут слушателям курса.	Актуально с 2020-03-01  до 2020-12-14 	events/temp_goPHGoQ.jpeg	Онлайн 	\N
4573	онлайн-курс продаж для менеджеров	Какими качествами должен обладать менеджер по продажам? Как выстроить долгосрочные отношения с клиентом? Что делать в конфликтной ситуации? Ответы на все эти вопросы начинающие менеджеры смогут найти на вебинарах онлайн-курса.	Актуально с 2020-03-01 	events/temp_qaPlac3.jpeg	Онлайн 	\N
4574	онлайн-курс SEO-копирайтинга	Слушатели курса познакомятся с понятиями «семантическое ядро» и «релевантность», научатся писать уникальные тексты с ключевыми словами, а также освоят другие навыки, необходимые SEO-копирайтеру.	Актуально с 2020-03-01 	events/temp_L6ZQMLE.jpeg	Онлайн 	\N
4575	лекция «Русский авангард: главное»	Искусствовед Анастасия Мамаева расскажет об одной из самых ярких страниц в истории русского искусства и познакомит слушателей с творчеством, идеалами и стремлениями дерзких художников-авангардистов.	2021-01-08 	events/temp_CE2mbmg.jpeg	Онлайн 	\N
4576	вебинар «Как устроены звёзды: рождение, жизнь и смерть»	Лектор образовательного проекта Level One Дмитрий Трушин подробно расскажет слушателям вебинара об устройстве, формировании, процессе эволюции и окончании пути главных космических объектов.	2020-12-25 	events/temp_Amhzkb5.jpeg	Онлайн 	\N
4577	вебинар «Жизнь замечательных князей: Романовы»	Под руководством историка Ирины Даниловой участникам вебинара проекта Level One предстоит попробовать разобраться в родственных связях императорской династии и поговорить о роли великих князей Романовых в истории государства.	2021-01-07 	events/temp_1ohyBfB.png	Онлайн 	\N
4578	вебинар «Как ориентироваться в храме»	Лектор образовательного проекта Level One историк Дмитрий Антонов расскажет об иконографических сюжетах, образах, символических композициях и других визуальных составляющих, которые встречаются в православных храмах.	2021-01-03 	events/temp_UJzVwUv.jpeg	Онлайн 	\N
4579	вебинар «Безопасность в интернете: как защитить личные данные»	Образовательный проект Level One и специалист в области телекоммуникаций Андрей Аксёнов приглашают на познавательную лекцию о безопасности личных данныхв интернете.	2021-01-06 	events/temp_pxGqcLR.jpeg	Онлайн 	\N
4580	вебинар «Как устроены триллеры: от Хичкока до Финчера»	Киновед Олег Грознов объяснит слушателям, чем триллер отличается от фильма ужасов, расскажет о зарождении и развитии жанра, творчестве известных режиссёров и особенностях триллера в разных странах.	2021-01-06 	events/temp_qkF7tzU.jpeg	Онлайн 	\N
4581	вебинар «Блокада Ленинграда: как это было»	На лекции образовательного проекта Level One историк Ирина Данилова с помощью архивных документов, писем, дневников и мемуаров расскажет слушателям о блокадных буднях ленинградцев.	2020-12-27 	events/temp_vTPlrrt.jpeg	Онлайн 	\N
4582	онлайн-курс Microsoft Power BI	Как подготовить данные к анализу? Для чего нужны формулы и функции? Какой тип визуализации подобрать для отчёта? На все эти вопросы найдут ответы участники онлайн-курса по работе в Microsoft Power BI.	Актуально с 2020-03-01 	events/temp_UXlVjGg.jpeg	Онлайн 	\N
4583	онлайн-курс email-маркетинга	Опытный преподаватель подробно расскажет слушателям онлайн-курса, как подбирать контент для email-рассылки, научит составлять грамотную стратегию рекламной кампании, пользоваться сервисами и приложениями для email-маркетологов.	Нет точной даты	events/temp_nSWQBll.jpeg	Онлайн 	\N
4585	онлайн-курс UX дизайна	Что должен уметь UX дизайнер? Как создать понятный и удобный в использовании пользовательский интерфейс? Как мыслит типичный посетитель сайта? Ответы на эти и другие вопросы смогут получить слушатели онлайн-курса.	Актуально с 2020-03-01  до 2020-12-22 	events/temp_Ch0XUOE.jpeg	Онлайн 	\N
4586	вебинар «Российское кино: от Тарковского до Звягинцева»	Под руководством искусствоведа Олега Грознова участникам вебинара предстоит посмотреть отрывки из работ Балабанова, Тарковского, Муратова, Сокурова, Звягинцева и попробовать разобраться в смыслах, которые наполняют российский кинематограф.	2020-12-22 	events/temp_TBpCYSt.png	Онлайн 	\N
4587	вебинар «Иконы и люди» из курса «Русская икона»	Историк Дмитрий Антонов и образовательный проект Level One подготовили познавательный курс лекций, посвящённый русской иконописной традиции. На одной из лекций курса расскажут о практике почитания икон в современной России и на Руси, а также обсудят отличия православной иконы от католических образов.	2020-12-22 	events/temp_unK4hJR.jpeg	Онлайн 	\N
4588	вебинар «Иван Грозный: как тиран изменил Россию»	Историк Арина Данилова познакомит слушателей с увлекательной биографией, основными вехами правления, прогрессивными реформами одного из самых противоречивых правителей России.	2020-12-26 	events/temp_e65K34J.jpeg	Онлайн 	\N
4589	онлайн-проект «Из метро»	Ездить в метро доводилось всем, но многие ли знают, как оно устроено? В период карантина Московский метрополитен запускает серию онлайн-экскурсий, которые познакомят всех желающих с самыми загадочными уголками столичной подземки.	2020-03-23 	events/temp_EFuJB05.jpeg	Онлайн 	\N
4590	онлайн-выставка «Лица Фриды»	Более 200 работ мексиканской художницы выложили в открытый доступ в высоком разрешении.	Нет точной даты	events/temp_itNSFsJ.jpeg	Онлайн 	\N
4591	онлайн-программа «Говорит и показывает Кунсткамера»	Лекции, документальные фильмы и видеоэкскурсии от Музея антропологии и этнографии имени Петра Великого.	Нет точной даты	events/temp_BphnFhs.jpeg	Онлайн 	\N
4592	виртуальная выставка нейросетевого искусства	«Яндекс» собрал галерею из нескольких тысяч картин, созданных искусственным интеллектом.	Актуально с 2020-03-22 	events/temp_KTSgBvU.jpeg	Онлайн 	\N
4593	Онлайн-путешествие на Фарерские острова	Взамен дорогостоящей и невозможной сейчас поездки на Фарерские острова предлагаем отправиться туда прямиком из квартиры с помощью путешествия-видеоигры.	Нет точной даты	events/temp_IThAzHg.jpeg	Онлайн 	\N
4594	Декабрьский кинолекторий Дома Гоголя	Декабрьский сезон кинолектория перенесёт слушателей в Золотой века Голливуда: познакомимся поближе с культовыми вестернами, нуарными детективами и главными рождественскими хитами.	Актуально с 2020-12-02  до 2020-12-30 	events/temp_xoM1jYM.jpeg	Онлайн 	\N
4595	онлайн-выставка «Кандинский. Контрапункт: „Композиция VI“ — „Композиция VII“»	Картины Василия Кандинского из Третьяковской галереи и Эрмитажа встретились на виртуальной выставке.	Нет точной даты	events/temp_0rj4Zlu.jpeg	Онлайн 	\N
4645	забеги ParkRun	ParkRun — это еженедельные общедоступные забеги на 5 километров для всех желающих. Присоединяйтесь!	Нет точной даты	events/temp_CtkdyFo.jpeg	Екатеринбург 	\N
4693	лекторий в Доме Поклевских-Козелл	Музейно-выставочный центр «Дом Поклевских-Козелл» приглашает на ежемесячные лекции историко-краеведческого характера.	Нет точной даты	events/temp_kf4VpGJ.jpeg	Екатеринбург ул. Малышева, д. 46	\N
4795	киноночи в «Циферблате» на Щапова	Артхаус, классика, мейнстрим — смотрим хорошее кино самых разных направлений и жанров.	Нет точной даты	events/temp_DNrNDnt.jpeg	Казань ул. Щапова, д. 47	\N
4796	джазовые вечера в «Циферблате» на Щапова	Душевные посиделки под классический и современный джаз.	Нет точной даты	events/temp_aHYVX2t.jpeg	Казань ул. Щапова, д. 47	\N
4797	школа акварельного скетчинга в «Циферблате» на Университетской	Учимся делать яркие и выразительные зарисовки при помощи акварели.	Нет точной даты	events/temp_9lcYEoQ.jpeg	Казань ул. Университетская, д. 14	\N
4798	English Workout в «Циферблате» на Щапова: Advanced & Beginners	Продвинутый английский для тех, кто уже в теме.	Нет точной даты	events/temp_EecCDt4.jpeg	Казань ул. Щапова, д. 47	\N
4819	игровые знакомства Speed Dating №1 в Казани от Fastlife	Мечтаете найти любовь? Увеличьте свои шансы и отлично проведите время в компании интересных людей на вечере быстрых свиданий от компании Fastlife. Вас ждут приятное общение, улыбки, лёгкий флирт и десятки знакомств за один вечер.	Актуально с 2020-10-28 	events/temp_6rqEHGE.jpeg	Казань ул. Бутлерова, д. 43	\N
4820	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	Чтобы новогодние каникулы стали ярким и весёлым приключением, отправляйтесь на необычную ёлку в отеле Korston. Здесь проводят детские праздники уже 10 лет и точно знают, как сделать их незабываемыми.	2020-12-30 	events/temp_Xcac3kT.jpeg	Казань ул. Н. Ершова, д.1а	\N
4827	выставка «Татарская золотая кладовая»	Экспозиция знаменитой «Татарской золотой кладовой», где представлены уникальные золотые и серебряные головные, шейно-нагрудные и наручные украшения, созданные в XVII-XIX веках. На выставке можно увидеть также украшения в сочетании с традиционными мужскими и женскими татарскими костюмами. Особое внимание заслуживают футляры для миниатюрных Коранов.	Нет точной даты	events/temp_eP90989.jpeg	Казань ул. Кремлевская, д. 2	\N
4828	выставка «Казанская художественная школа»	Выставка художественных произведений, авторы которых обучались или преподавали в Казанской художественной школе. Это учебное заведение сыграло огромную роль в развитии изобразительного искусства этого края, а также традиции школы сказались на становлении нынешнего художественного стиля.	Нет точной даты	events/temp_ExFEj1c.jpeg	Казань ул. К.Маркса, 64	\N
4829	выставка «Советские игровые автоматы»	Посетители Музея советских игровых автоматов с головой окунутся в детство. Ведь экспонаты выставки можно не только рассмотреть, но и поиграть на них, попробовав свои силы и скорость реакции в стрелялках и качалках. Каждый победитель награждается граненым стаканом газировки за три копейки. А при желании действующие автоматы можно арендовать на вечеринку, которую, кстати, можно провести и в самом музее.	Нет точной даты	events/temp_DnKGMKd.jpeg	Казань ул. Кремлевская, д.21	\N
4830	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	Продолжатель традиций и новатор в одном лице. «Белые комнаты» Селиха Сайдашева помогут осмыслить творчество композитора с разных сторон.	Нет точной даты	events/temp_HnPkKk6.jpeg	Казань ул. Горького, д. 13	\N
4831	выставка «Древняя история Татарстана»	Историческая выставка, посвященная жизни населяющего Татарстан народа в древности. В экспозиции представлены предметы, найденные во время археологических раскопок, рассказывающие о повседневном быте и занятиях простых людей.	Нет точной даты	events/temp_HiD3Tyu.jpeg	Казань ул. Кремлевская, д. 2	\N
4832	экскурсия по музею-квартире Мусы Джалиля	Личная библиотека и снимки друзей выдающегося поэта сохранились в квартире, где в предвоенные годы жил Муса Джалиль.	Нет точной даты	events/temp_7cMU8iZ.jpeg	Казань ул. Горького, д. 17, кв. 28	\N
4833	выставка «Казанская губерния в XVIII веке»	Выставка, рассказывающая о влиянии русских монархов на развитие Казанской губернии, проводившиеся там реформы, экономическую ситуацию в крае. Экспозиция делится на две части, одна из которых посвящается развитию Казани во времена правления Петра I, а вторая – изменениям в городе, происходившим в годы царствования Екатерины II.	Нет точной даты	events/temp_3UY4RqV.jpeg	Казань ул. Кремлевская, д. 2	\N
4834	выставка «Казанские университеты М. Горького»	Выставка посвящена времени, проведенному Максимом Горьким в расположенном недалеко от Казани селе Красновидово. Музей размещен в здании бакалейной лавки, которой владел друг писателя. Посетители познакомятся с обстановкой комнаты Горького, его письмами и фотографиями, а также интересными документами.	Нет точной даты	events/temp_XtZQNZd.jpeg	Казань ул. Максима Горького, д. 10	\N
4835	выставка «Гроза двенадцатого года»	Историческая выставка, на которой представлены малоизвестные документы, предметы быта и некоторые исторические издания, посвященные периоду Отечественной войны 1812-го года. Хотя бои не проходили непосредственно в Казанской губернии, однако татары входили в регулярные части русской армии и мужественно сражались за победу.	Нет точной даты	events/temp_yjzlILc.jpeg	Казань ул. Кремлевская, д. 2	\N
4836	экскурсия по музею Каюма Насыри	Знакомство со знаменитым татарским ученым через обстановку, в которой он жил и работал.	Нет точной даты	events/temp_ERQ8Lmg.jpeg	Казань ул. Парижской Коммуны, д. 35	\N
4837	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	Дом, в который Ленин вернулся из своей первой ссылки: книги и документы, окружающие молодого Владимира Ильича.	Нет точной даты	events/temp_m48siaK.jpeg	Казань ул. Ульянова-Ленина, д. 58	\N
\.


--
-- Data for Name: content_event_looking_for_a_company; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.content_event_looking_for_a_company (id, event_id, profile_id) FROM stdin;
\.


--
-- Data for Name: content_intent; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.content_intent (id, visited, event_id, profile_id) FROM stdin;
26	f	4308	2
28	f	4309	2
\.


--
-- Data for Name: content_profile; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.content_profile (id, gender, about, vk_link, user_id, vk_id) FROM stdin;
12	\N	\N	\N	20	\N
15	M	Сайт говно		23	\N
2	M	Я админ этого сайта	https://vk.com/jimiliani	6	290500055
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
15	2020-11-02 22:36:41.356053+03	1	dima	2	[{"changed": {"fields": ["\\u0418\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u044b", "\\u0418\\u0434\\u0435\\u043d\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432\\u043e \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435", "\\u0418\\u0434\\u0435\\u043d\\u0442\\u0438\\u0444\\u0438\\u043a\\u0430\\u0442\\u043e\\u0440 \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432 \\u0438\\u043d\\u0441\\u0442\\u0430\\u0433\\u0440\\u0430\\u043c\\u0435"]}}]	9	6
16	2020-11-02 22:37:16.431729+03	1	Сходка	2	[{"changed": {"fields": ["\\u0421\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u044b"]}}]	7	6
17	2020-11-02 22:37:24.488366+03	1	Сходка	2	[{"changed": {"fields": ["\\u0421\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u044b"]}}]	7	6
18	2020-11-02 22:40:11.275153+03	1	Сходка	2	[{"changed": {"fields": ["\\u0421\\u0432\\u044f\\u0437\\u0430\\u043d\\u043d\\u044b\\u0435 \\u0438\\u043d\\u0442\\u0435\\u0440\\u0435\\u0441\\u044b"]}}]	7	6
19	2020-11-02 22:43:01.633616+03	2	Художественный фильм "Спиздили"	1	[{"added": {}}]	7	6
20	2020-11-13 20:41:08.216739+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
21	2020-11-13 20:48:46.721721+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
22	2020-11-13 20:50:07.683233+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
23	2020-11-13 20:53:33.716594+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
24	2020-11-13 21:04:08.906372+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
25	2020-11-13 22:10:04.636886+03	7	user1	1	[{"added": {}}]	4	6
26	2020-11-13 22:32:56.541016+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
27	2020-11-13 22:33:10.135604+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
28	2020-11-13 22:43:03.206822+03	1	Сходка	2	[]	7	6
29	2020-11-13 23:54:33.051382+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
30	2020-11-13 23:55:35.846381+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
31	2020-11-13 23:58:27.923996+03	11	OneToOneRoom object (11)	3		11	6
32	2020-11-14 00:02:19.03813+03	1	Сходка	2	[{"changed": {"fields": ["\\u0418\\u0449\\u0443\\u0442 \\u043a\\u043e\\u043c\\u043f\\u0430\\u043d\\u0438\\u044e"]}}]	7	6
33	2020-11-14 00:20:45.646163+03	12	OneToOneRoom object (12)	3		11	6
34	2020-11-14 00:21:21.231764+03	13	OneToOneRoom object (13)	3		11	6
35	2020-11-14 00:44:27.922527+03	14	OneToOneRoom object (14)	3		11	6
36	2020-11-14 11:43:41.780367+03	19	OneToOneRoom object (19)	3		11	6
37	2020-11-14 11:43:41.784914+03	18	OneToOneRoom object (18)	3		11	6
38	2020-11-14 11:46:42.769304+03	20	OneToOneRoom object (20)	3		11	6
39	2020-11-14 11:52:03.306816+03	21	OneToOneRoom object (21)	3		11	6
40	2020-11-23 23:06:49.55538+03	7	user1	2	[{"changed": {"fields": ["Email address"]}}]	4	6
41	2020-11-23 23:13:22.871965+03	7	user1	2	[{"changed": {"fields": ["Email address", "Last login"]}}]	4	6
42	2020-12-05 17:23:59.745537+03	1	Google	1	[{"added": {}}]	24	6
43	2020-12-05 17:25:03.023067+03	2	domain.com	1	[{"added": {}}]	20	6
44	2020-12-05 17:25:23.634935+03	1	doamin.com	2	[{"changed": {"fields": ["Domain name", "Display name"]}}]	20	6
45	2020-12-05 17:25:45.772161+03	2	domain.com	3		20	6
46	2020-12-05 17:25:51.448076+03	1	domain.com	2	[{"changed": {"fields": ["Domain name"]}}]	20	6
47	2020-12-05 17:47:33.776417+03	1	Google	2	[{"changed": {"fields": ["Client id", "Secret key"]}}]	24	6
48	2020-12-05 18:02:42.544705+03	15	user	3		4	6
49	2020-12-05 18:04:58.562314+03	5	dima	3		4	6
50	2020-12-09 01:05:19.942666+03	3	user1	2	[{"changed": {"fields": ["Id \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432\\u043e \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435"]}}]	9	6
51	2020-12-09 01:05:57.893982+03	3	user1	2	[{"changed": {"fields": ["Id \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432\\u043e \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435"]}}]	9	6
52	2020-12-09 01:07:42.072359+03	2	user1 Сходка	1	[{"added": {}}]	10	6
53	2020-12-11 11:41:09.818687+03	357	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	3		7	6
54	2020-12-11 11:41:09.824987+03	356	экскурсия по музею Каюма Насыри	3		7	6
55	2020-12-11 11:41:09.826867+03	355	экскурсия по музею-квартире Мусы Джалиля	3		7	6
56	2020-12-11 11:41:09.828954+03	354	выставка «Гроза двенадцатого года»	3		7	6
57	2020-12-11 11:41:09.834104+03	353	выставка «Казанские университеты М. Горького»	3		7	6
58	2020-12-11 11:41:09.83644+03	352	выставка «Древняя история Татарстана»	3		7	6
59	2020-12-11 11:41:09.838451+03	351	выставка «Казанская губерния в XVIII веке»	3		7	6
60	2020-12-11 11:41:09.839912+03	350	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	3		7	6
61	2020-12-11 11:41:09.842029+03	349	выставка «Казанская художественная школа»	3		7	6
62	2020-12-11 11:41:09.844533+03	348	выставка «Татарская золотая кладовая»	3		7	6
63	2020-12-11 11:41:09.846505+03	347	выставка «Советские игровые автоматы»	3		7	6
64	2020-12-11 11:41:09.84847+03	345	игровые знакомства Speed Dating №1 в Казани от Fastlife	3		7	6
65	2020-12-11 11:41:09.850631+03	344	English Workout в «Циферблате» на Щапова: Advanced & Beginners	3		7	6
66	2020-12-11 11:41:09.852592+03	343	школа акварельного скетчинга в «Циферблате» на Университетской	3		7	6
67	2020-12-11 11:41:09.854643+03	342	джазовые вечера в «Циферблате» на Щапова	3		7	6
68	2020-12-11 11:41:09.858636+03	341	киноночи в «Циферблате» на Щапова	3		7	6
69	2020-12-11 11:41:09.862465+03	340	экспозиция «Архитектура Каменного пояса»	3		7	6
70	2020-12-11 11:41:09.866122+03	339	забеги ParkRun	3		7	6
71	2020-12-11 11:41:09.869914+03	335	онлайн-курс таргетированной рекламы	3		7	6
72	2020-12-11 11:41:09.87306+03	334	онлайн-курс SMM-продвижения	3		7	6
73	2020-12-11 11:41:09.877123+03	332	онлайн-курс веб-аналитики	3		7	6
74	2020-12-11 11:41:09.881976+03	331	онлайн-курс создания и продвижения сайтов	3		7	6
75	2020-12-11 11:41:09.885117+03	327	онлайн-курс сценарного мастерства	3		7	6
76	2020-12-11 11:41:09.902289+03	326	онлайн-курс визуального мерчандайзинга	3		7	6
77	2020-12-11 11:41:09.906914+03	322	онлайн-курс обработки фотографии	3		7	6
78	2020-12-11 11:41:09.912549+03	321	онлайн-курс психологии общения	3		7	6
79	2020-12-11 11:41:09.917422+03	318	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
80	2020-12-11 11:41:09.922031+03	317	онлайн-курс Influencer marketing	3		7	6
81	2020-12-11 11:41:09.926876+03	315	онлайн-курс скорочтения	3		7	6
82	2020-12-11 11:41:09.936755+03	314	онлайн-курс копирайтинга	3		7	6
83	2020-12-11 11:41:09.947003+03	313	онлайн-курс CorelDraw	3		7	6
84	2020-12-11 11:41:09.959439+03	312	онлайн-курс «Как идеи управляют людьми»	3		7	6
85	2020-12-11 11:41:09.977848+03	307	онлайн-курс фотографии для начинающих	3		7	6
86	2020-12-11 11:41:10.003913+03	305	онлайн-курс общей психологии	3		7	6
87	2020-12-11 11:41:10.009671+03	304	онлайн-курс анимации	3		7	6
88	2020-12-11 11:41:10.01518+03	301	онлайн-курс детской психологии для родителей	3		7	6
89	2020-12-11 11:41:10.022763+03	300	вебинар «Тёмная сторона сказки»	3		7	6
90	2020-12-11 11:41:10.027388+03	298	онлайн-курс режиссуры	3		7	6
91	2020-12-11 11:41:10.04106+03	296	онлайн-курс по ведению и продвижению Instagram	3		7	6
92	2020-12-11 11:41:10.046544+03	294	онлайн-курс «Кино глазами режиссёров»	3		7	6
93	2020-12-11 11:41:10.06207+03	292	онлайн-курс психологии отношений	3		7	6
94	2020-12-11 11:41:10.08464+03	291	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
95	2020-12-11 11:41:10.090098+03	290	онлайн-курс НЛП	3		7	6
96	2020-12-11 11:41:10.100212+03	288	онлайн-курс писательского мастерства	3		7	6
97	2020-12-11 11:41:10.11073+03	280	онлайн-выставка «Знамя Победы»	3		7	6
98	2020-12-11 11:41:10.11611+03	278	онлайн-курс контекстной рекламы	3		7	6
99	2020-12-11 11:41:10.120137+03	276	онлайн-курс продюсеров	3		7	6
100	2020-12-11 11:41:10.124214+03	274	онлайн-курс видеоблогинга	3		7	6
101	2020-12-11 11:41:10.12798+03	272	аудиокурс «Книги великих писателей»	3		7	6
102	2020-12-11 11:41:10.132641+03	271	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
103	2020-12-11 11:41:10.1374+03	270	курс обучающих рассылок «50 зданий Москвы»	3		7	6
104	2020-12-11 11:41:10.142244+03	269	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
105	2020-12-11 11:41:10.155295+03	268	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
106	2020-12-11 11:41:10.159168+03	267	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
107	2020-12-11 11:41:10.164693+03	265	онлайн-курс дизайна интерьера	3		7	6
108	2020-12-11 11:41:10.168814+03	264	онлайн-курс «Гид по истории искусства»	3		7	6
109	2020-12-11 11:41:10.173797+03	263	видеоэксурсии Музея железных дорог России	3		7	6
110	2020-12-11 11:41:10.17948+03	261	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	3		7	6
111	2020-12-11 11:41:10.187156+03	260	сольный концерт Виктора Комарова в шоу-пространстве «Альпенхаус»	3		7	6
112	2020-12-11 11:41:10.192406+03	259	караоке-спектакль «Гуляй, шальная!» в постановке Театра Двух	3		7	6
113	2020-12-11 11:41:10.197605+03	258	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	3		7	6
114	2020-12-11 11:41:10.200852+03	257	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
115	2020-12-11 11:41:10.203598+03	256	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	3		7	6
116	2020-12-11 11:41:10.206202+03	252	мастер-классы «Картина за 3 часа» в студии живописи ZuART	3		7	6
117	2020-12-11 11:41:10.209081+03	251	день рождения в Музее Мозга	3		7	6
118	2020-12-11 11:41:10.211911+03	250	акция «Ночь распродаж» сноубордов в магазине Dosok.net	3		7	6
119	2020-12-11 11:41:10.214698+03	247	экскурсия «Центр наизнанку —  неформальный Петербург»	3		7	6
120	2020-12-11 11:41:10.217307+03	246	новогодние мастер-классы от школы флористики Handy Class	3		7	6
121	2020-12-11 11:41:10.22026+03	245	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	3		7	6
122	2020-12-11 11:41:10.222359+03	244	спектакль-прогулка «Осень. Город Достоевского. 730 шагов с Родионом Раскольниковым»	3		7	6
123	2020-12-11 11:41:10.22461+03	243	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	3		7	6
124	2020-12-11 11:41:10.226761+03	242	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	3		7	6
125	2020-12-11 11:41:10.229405+03	241	экскурсия «Весь центр Петербурга с крыши»	3		7	6
126	2020-12-11 11:41:10.235937+03	240	выставка «Город-парк»	3		7	6
127	2020-12-11 11:41:10.239272+03	239	ярмарка «Продовольствие в удовольствие. Новогоднее застолье»	3		7	6
128	2020-12-11 11:41:10.243644+03	236	благотворительный фестиваль «Добрый Питер»	3		7	6
129	2020-12-11 11:41:10.24764+03	235	новогодние арт-корпоративы в студии живописи ZuART	3		7	6
130	2020-12-11 11:41:10.251575+03	234	экскурсия в особняк Матильды Кшесинской	3		7	6
131	2020-12-11 11:41:10.254607+03	233	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	3		7	6
132	2020-12-11 11:41:10.258223+03	231	концерт «Rock при свечах»	3		7	6
133	2020-12-11 11:41:10.262353+03	230	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	3		7	6
134	2020-12-11 11:41:10.266616+03	229	мастер-классы по абстрактной живописи в технике жидкого акрила	3		7	6
135	2020-12-11 11:41:10.271073+03	227	курс «Как понимать современное искусство?» в лектории Artista	3		7	6
136	2020-12-11 11:41:10.274949+03	223	мастер-классы по живописи «Картина за 3 часа»	3		7	6
137	2020-12-11 11:41:10.279757+03	220	выставка-ярмарка «Подарки к Новому году»	3		7	6
138	2020-12-11 11:41:10.28368+03	215	экскурсия «Мифы и легенды Петербурга»	3		7	6
139	2020-12-11 11:41:10.287051+03	214	концерт «Рождественский орган» от Amadeus Concerts	3		7	6
140	2020-12-11 11:41:10.29069+03	213	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	3		7	6
141	2020-12-11 11:41:10.294848+03	212	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	3		7	6
142	2020-12-11 11:41:10.298983+03	209	быстрые свидания «ЛавСешн»	3		7	6
143	2020-12-11 11:41:10.30229+03	208	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	3		7	6
144	2020-12-11 11:41:10.305434+03	207	новогодняя выставка «Сокровища Петербурга»	3		7	6
145	2020-12-11 11:41:10.309471+03	206	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	3		7	6
146	2020-12-11 11:41:10.313582+03	205	выставка «Маэстро Филип Трейси»	3		7	6
147	2020-12-11 11:41:10.317415+03	204	новогоднее шоу «Старый отель» в «Ленинград Центре»	3		7	6
148	2020-12-11 11:41:10.320943+03	203	мастер-класс «Рождественский венок своими руками» в студии ZuArt	3		7	6
149	2020-12-11 11:41:10.324542+03	202	Вечеринки в Comedy Place	3		7	6
150	2020-12-11 11:41:10.32831+03	200	вечер живого джаза JazzLike в Музее советских игровых автоматов	3		7	6
151	2020-12-11 11:41:10.332065+03	199	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	3		7	6
152	2020-12-11 11:41:10.335303+03	198	интерактивное мультимедийное путешествие «Тайны мироздания» в цифровом арт-пространстве Hyper Port	3		7	6
153	2020-12-11 11:41:10.338298+03	197	выставка «Сад сновидений 2.0. Мистические миры»	3		7	6
154	2020-12-11 11:41:10.341455+03	195	Фестиваль «Артдокфест»	3		7	6
155	2020-12-11 11:41:10.344988+03	194	рождественская ярмарка на Манежной площади	3		7	6
156	2020-12-11 11:41:10.348637+03	193	спектакль «Летов. Дурачок» в Большом театре кукол	3		7	6
157	2020-12-11 11:41:10.352071+03	192	опера «52» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
158	2020-12-11 11:41:10.355083+03	191	спектакль «Нана» на Новой сцене Александринского театра	3		7	6
159	2020-12-11 11:41:10.358703+03	190	спектакль «Questioning / Кто ты?» в постановке Pop-up театра и театра Magic Garden (Швейцария)	3		7	6
160	2020-12-11 11:41:10.362556+03	189	спектакль «Слава» в БДТ имени Г. А. Товстоногова	3		7	6
161	2020-12-11 11:41:10.366272+03	187	спектакль «Волнение» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
162	2020-12-11 11:41:10.36938+03	186	Спектакль «Профсоюз работников ада» от Pop-up театра	3		7	6
163	2020-12-11 11:41:10.372636+03	185	новый год — 2021 в Петербурге	3		7	6
164	2020-12-11 11:41:10.376181+03	184	занятия по метанию ножей в клубе «Лабиринт»	3		7	6
165	2020-12-11 11:41:10.380071+03	183	концерт Ольги Максимовой «Арфа в темноте»	3		7	6
166	2020-12-11 11:41:10.383249+03	182	экскурсия «Великий мастер русского модерна»	3		7	6
167	2020-12-11 11:41:10.386904+03	180	бесплатный онлайн-курс «Только спокойствие»	3		7	6
168	2020-12-11 11:41:10.390473+03	179	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	3		7	6
169	2020-12-11 11:41:10.394714+03	178	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	3		7	6
170	2020-12-11 11:41:10.39891+03	177	спектакль «Мастер и Маргарита» в Театре на Таганке	3		7	6
171	2020-12-11 11:41:10.402213+03	175	игровые знакомства Speed Dating для гостей 18-30 лет от FastLife	3		7	6
172	2020-12-11 11:41:10.405301+03	171	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
173	2020-12-11 11:41:10.408578+03	168	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
174	2020-12-11 11:41:10.412264+03	167	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	3		7	6
175	2020-12-11 11:41:10.416203+03	166	арт-вечеринка с рисованием картин Painty офлайн и онлайн	3		7	6
176	2020-12-11 11:41:10.419444+03	165	Котельническая. Лекция в сталинской высотке с видом на Кремль	3		7	6
177	2020-12-11 11:41:10.422612+03	164	ярмарка «Блошиный рынок»	3		7	6
178	2020-12-11 11:41:10.426857+03	163	закрытая vip-вечеринка от FastLife	3		7	6
179	2020-12-11 11:41:10.431023+03	162	выставка «Моя семья — моя история. Создание семьи»	3		7	6
180	2020-12-11 11:41:10.434653+03	161	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
181	2020-12-11 11:41:10.438458+03	160	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	3		7	6
182	2020-12-11 11:41:10.44381+03	159	спектакль «Свободная пара»	3		7	6
183	2020-12-11 11:41:10.447845+03	158	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
184	2020-12-11 11:41:10.451182+03	154	быстрые свидания (speed dating) от FastLife	3		7	6
185	2020-12-11 11:41:10.454319+03	153	спектакль «Бумажный брак»	3		7	6
186	2020-12-11 11:41:10.457379+03	150	бонусы от Tele2 для абонентов на катке в парке Горького	3		7	6
187	2020-12-11 11:41:10.460433+03	149	спектакль «Аудиенция» в постановке Театра Наций	3		7	6
188	2020-12-11 11:41:10.463992+03	148	ночной концерт «Моцарт. Реквием»	3		7	6
189	2020-12-11 11:41:10.467083+03	147	вечеринка «Большой Speed Dating» от компании FastLife	3		7	6
190	2020-12-11 11:41:10.470225+03	146	вечер настольных игр от FastLife	3		7	6
191	2020-12-11 11:41:10.473295+03	145	стендап-вечеринки от резидентов LiteStandUp и звёзд ТВ	3		7	6
192	2020-12-11 11:41:10.476505+03	144	опера «История Кая и Герды» в Большом театре	3		7	6
193	2020-12-11 11:41:10.479893+03	143	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	3		7	6
194	2020-12-11 11:41:10.483943+03	142	органный вечер «Бах-гала» в Кафедральном соборе святых Петра и Павла	3		7	6
195	2020-12-11 11:41:10.487202+03	140	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	3		7	6
196	2020-12-11 11:41:10.499397+03	139	новогодние праздники с квестами от компании «Кубикулум»	3		7	6
197	2020-12-11 11:41:10.512121+03	138	спектакль «Цветы для Элджернона» в РАМТе	3		7	6
198	2020-12-11 11:41:10.516601+03	137	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
199	2020-12-11 11:41:10.528013+03	136	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	3		7	6
200	2020-12-11 11:41:10.538683+03	134	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
201	2020-12-11 11:41:10.543218+03	133	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	3		7	6
202	2020-12-11 11:41:10.546976+03	132	тур по барам Москвы от City Pub Crawl	3		7	6
203	2020-12-11 11:41:10.550213+03	131	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
204	2020-12-11 11:41:10.553293+03	130	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
205	2020-12-11 11:41:10.55565+03	129	Фабрика «Красный Октябрь». Фотоэкскурсия с подъёмом на крышу	3		7	6
206	2020-12-11 11:41:10.559161+03	128	игровые знакомства Speed Dating № 1 в Москве от FastLife	3		7	6
207	2020-12-11 11:41:10.562193+03	127	астроэкскурсия во время полного солнечного затмения	3		7	6
208	2020-12-11 11:41:10.56533+03	126	интеллектуальные вечеринки GO!КВИЗ	3		7	6
209	2020-12-11 11:41:10.568419+03	125	квест «Последний Пепелац» от компании «Кубикулум»	3		7	6
210	2020-12-11 11:41:10.57093+03	123	концерт «Времена года. Вивальди — Пьяццолла»	3		7	6
211	2020-12-11 11:41:10.573762+03	121	экскурсия «Москва–Волга» по зданию Северного речного вокзала	3		7	6
212	2020-12-11 11:41:10.577111+03	120	концерты в пабе Lion's Head	3		7	6
213	2020-12-11 11:41:10.580943+03	119	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	3		7	6
214	2020-12-11 11:41:10.583787+03	118	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	3		7	6
215	2020-12-11 11:41:10.586254+03	117	японские свидания GOKON	3		7	6
216	2020-12-11 11:41:10.588597+03	116	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
217	2020-12-11 11:41:10.591377+03	114	стендап-вечера с участием комиков из ТВ и YouTube проектов	3		7	6
218	2020-12-11 11:41:10.594563+03	113	мюзикл TODD. Живой звук	3		7	6
219	2020-12-11 11:41:10.597939+03	111	рождественская ярмарка European Christmas Market в отеле «Мариотт» на Петровке	3		7	6
220	2020-12-11 11:41:10.600832+03	110	маркет «4 сезона»	3		7	6
596	2020-12-11 12:03:21.558353+03	898	экскурсия по музею Каюма Насыри	3		7	6
221	2020-12-11 11:41:10.603511+03	109	полёт на воздушном шаре в воздухоплавательном клубе «Меджик Флайт»	3		7	6
222	2020-12-11 11:41:10.605899+03	107	квест «Красная кнопка»	3		7	6
223	2020-12-11 11:41:10.609609+03	106	индийский маркет и фуд-корт «Delhi базар»	3		7	6
224	2020-12-11 11:41:10.61275+03	105	аудиовизуальный арт-проект дополненной реальности Tonandi	3		7	6
225	2020-12-11 11:41:10.615381+03	103	рисование в виртуальной реальности	3		7	6
226	2020-12-11 11:41:10.617876+03	102	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	3		7	6
227	2020-12-11 11:41:10.619942+03	100	зимние каникулы в комплексе «Мореон»	3		7	6
228	2020-12-11 11:41:10.62181+03	99	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
229	2020-12-11 11:41:10.624682+03	97	Увлекательные приключения в семейных музеях Москвы	3		7	6
230	2020-12-11 11:41:10.627306+03	96	капсульные концерты на крыше	3		7	6
231	2020-12-11 11:41:10.630178+03	95	Онлайн-проект «За каждой работой — Я»	3		7	6
232	2020-12-11 11:41:10.635775+03	94	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	3		7	6
233	2020-12-11 11:41:10.637753+03	93	проект VR Gallery	3		7	6
234	2020-12-11 11:41:10.63949+03	92	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	3		7	6
235	2020-12-11 11:41:10.642081+03	90	стендап-шоу от комиков ТНТ и YouTube в атмосферных заведениях Москвы	3		7	6
236	2020-12-11 11:41:10.644303+03	89	спектакль «Сказка про последнего ангела» в Театре Наций	3		7	6
237	2020-12-11 11:41:10.646637+03	88	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	3		7	6
238	2020-12-11 11:41:10.648936+03	87	иммерсивное шоу «Зеркало Карлоса Сантоса»	3		7	6
239	2020-12-11 11:41:10.650835+03	86	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	3		7	6
240	2020-12-11 11:41:10.652576+03	85	концерт Sirotkin	3		7	6
241	2020-12-11 11:41:10.654281+03	84	концерт Tricky	3		7	6
242	2020-12-11 11:41:10.655958+03	83	концерт Everthe8	3		7	6
243	2020-12-11 11:41:10.658506+03	82	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
244	2020-12-11 11:41:10.661295+03	81	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
245	2020-12-11 11:41:10.663504+03	80	вебинар «Николай II: история правления последнего императора»	3		7	6
246	2020-12-11 11:41:10.665573+03	79	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
247	2020-12-11 11:41:10.667311+03	78	вебинар «Как различать психологические типы»	3		7	6
248	2020-12-11 11:41:10.668975+03	77	вебинар «Депрессия: как распознать и бороться»	3		7	6
249	2020-12-11 11:41:10.670698+03	76	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
250	2020-12-11 11:41:10.672733+03	75	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
251	2020-12-11 11:41:10.676752+03	74	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
252	2020-12-11 11:41:10.680852+03	73	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
253	2020-12-11 11:41:10.684367+03	72	вебинар «Как развить эмоциональный интеллект»	3		7	6
254	2020-12-11 11:41:10.688173+03	71	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
255	2020-12-11 11:41:10.69197+03	70	вебинар «Манга: всё о японских комиксах»	3		7	6
256	2020-12-11 11:41:10.695761+03	69	вебинар «Рождение СССР: как это было»	3		7	6
257	2020-12-11 11:41:10.699472+03	68	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
258	2020-12-11 11:41:10.702629+03	67	вебинар «Как картины становятся шедеврами»	3		7	6
259	2020-12-11 11:41:10.705891+03	66	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
260	2020-12-11 11:41:10.70905+03	65	вебинар «Первая мировая война: главное»	3		7	6
261	2020-12-11 11:41:10.712265+03	64	вебинар «Петербург: история города от основания до наших дней»	3		7	6
262	2020-12-11 11:41:10.715474+03	63	вебинар «Москва во время Второй мировой: как это было»	3		7	6
263	2020-12-11 11:41:10.718539+03	62	вебинар «Как устроена музыка: научный взгляд»	3		7	6
264	2020-12-11 11:41:10.721798+03	61	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
265	2020-12-11 11:41:10.725028+03	60	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
266	2020-12-11 11:41:10.728516+03	59	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
267	2020-12-11 11:41:10.741077+03	58	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
268	2020-12-11 11:41:10.745554+03	57	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
269	2020-12-11 11:41:10.749606+03	56	вебинар «Буддизм: это про что?»	3		7	6
270	2020-12-11 11:41:10.75348+03	55	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
271	2020-12-11 11:41:10.75695+03	54	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
272	2020-12-11 11:41:10.761063+03	53	вебинар «Сальвадор Дали: главное»	3		7	6
273	2020-12-11 11:41:10.764969+03	52	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
274	2020-12-11 11:41:10.768427+03	51	онлайн-курс «Ликбез по экономике»	3		7	6
275	2020-12-11 11:41:10.772175+03	50	онлайн-курс «Критическое мышление»	3		7	6
276	2020-12-11 11:41:10.776034+03	49	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
277	2020-12-11 11:41:10.779949+03	48	Онлайн-Акселератор МБМ	3		7	6
278	2020-12-11 11:41:10.783406+03	47	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
279	2020-12-11 11:41:10.786525+03	46	«Стартап-школа МБМ»	3		7	6
280	2020-12-11 11:41:10.790326+03	45	экскурсия «Петропавловская крепость для детей»	3		7	6
281	2020-12-11 11:41:10.794498+03	44	вебинар «Смерть: отношение в разных культурах»	3		7	6
282	2020-12-11 11:41:10.798404+03	43	праздник в виртуальной реальности в клубе Anvio VR	3		7	6
283	2020-12-11 11:41:10.801792+03	42	фестиваль «Новое кино Китая»	3		7	6
284	2020-12-11 11:41:10.804938+03	41	Фестиваль дружбы народов	3		7	6
285	2020-12-11 11:41:10.808158+03	40	осенняя гаражная распродажа в «Севкабель Порту»	3		7	6
286	2020-12-11 11:41:10.811643+03	39	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	3		7	6
287	2020-12-11 11:41:10.815334+03	38	концерт «Орган. В предчувствии Рождества» в Петрикирхе	3		7	6
288	2020-12-11 11:41:10.818737+03	37	Гала DANCE OPEN	3		7	6
289	2020-12-11 11:41:10.821722+03	36	шоу «Женский Стендап»	3		7	6
290	2020-12-11 11:41:10.825684+03	35	выставка картин Светланы Мучновой «Дорога через века»	3		7	6
291	2020-12-11 11:41:10.829629+03	34	большой концерт шоу «Импровизация»	3		7	6
292	2020-12-11 11:41:10.833399+03	33	рождественская выставка в Галерее Кустановича	3		7	6
293	2020-12-11 11:41:10.837081+03	32	вечер джаза JazzLike в оранжерее Таврического сада	3		7	6
294	2020-12-11 11:41:10.841369+03	31	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	3		7	6
295	2020-12-11 11:41:10.84495+03	30	выставка Concept Cars: la Grande Bellezza	3		7	6
296	2020-12-11 11:41:10.848772+03	29	Новый год и рождественские каникулы в гостинице «Репинская»	3		7	6
297	2020-12-11 11:41:10.851904+03	28	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	3		7	6
298	2020-12-11 11:41:10.854978+03	27	VK Fest 2021	3		7	6
299	2020-12-11 11:41:10.857864+03	26	концерт группы «Аквариум»	3		7	6
300	2020-12-11 11:41:10.860926+03	25	новогодняя распродажа в аутлете Velocity	3		7	6
301	2020-12-11 11:41:10.86417+03	24	новогодний корпоратив в частном кинотеатре «Секрет»	3		7	6
302	2020-12-11 11:41:10.867189+03	23	концерт Niletto в барном кластере Bla Bla Bar	3		7	6
303	2020-12-11 11:41:10.870527+03	22	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
304	2020-12-11 11:41:10.873615+03	21	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
305	2020-12-11 11:41:10.876896+03	20	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	3		7	6
306	2020-12-11 11:41:10.881556+03	19	рождественский концерт Посольства Германии в России «Гендель-гала»	3		7	6
307	2020-12-11 11:41:10.885355+03	18	Онлайн МЕГА-квест по спасению Нового года	3		7	6
308	2020-12-11 11:41:10.888875+03	17	праздничный концерт «Новогоднее чудо»	3		7	6
309	2020-12-11 11:41:10.893234+03	16	онлайн-курс «Как устроен наш мозг»	3		7	6
310	2020-12-11 11:41:10.897808+03	15	онлайн-курс «О чём молчат картины»	3		7	6
311	2020-12-11 11:41:10.90185+03	14	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
312	2020-12-11 11:41:10.905139+03	13	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	3		7	6
313	2020-12-11 11:41:10.909452+03	12	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
314	2020-12-11 11:41:10.913877+03	11	онлайн-курс «Гид по винной культуре»	3		7	6
315	2020-12-11 11:41:10.917724+03	10	спектакль «Лавр» во МХАТе имени Горького	3		7	6
316	2020-12-11 11:41:10.92158+03	9	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	3		7	6
317	2020-12-11 11:41:10.925257+03	8	выставка-продажа «Что происходит на свете? А просто зима»	3		7	6
318	2020-12-11 11:41:10.936151+03	7	выставка в музее Like Space	3		7	6
319	2020-12-11 11:41:10.944923+03	6	Научная ёлка 2021	3		7	6
320	2020-12-11 11:41:10.951568+03	5	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
321	2020-12-11 11:41:10.957561+03	4	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	3		7	6
322	2020-12-11 11:41:10.969973+03	3	иммерсивный спектакль RESET 2.0	3		7	6
323	2020-12-11 11:41:10.978631+03	2	Художественный фильм "Спиздили"	3		7	6
324	2020-12-11 11:41:10.984387+03	1	Сходка	3		7	6
325	2020-12-11 11:44:17.75746+03	628	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	3		7	6
326	2020-12-11 11:44:17.760602+03	627	экскурсия по музею Каюма Насыри	3		7	6
327	2020-12-11 11:44:17.762254+03	626	экскурсия по музею-квартире Мусы Джалиля	3		7	6
328	2020-12-11 11:44:17.764066+03	625	выставка «Гроза двенадцатого года»	3		7	6
329	2020-12-11 11:44:17.765851+03	624	выставка «Казанские университеты М. Горького»	3		7	6
330	2020-12-11 11:44:17.769183+03	623	выставка «Древняя история Татарстана»	3		7	6
331	2020-12-11 11:44:17.771152+03	622	выставка «Казанская губерния в XVIII веке»	3		7	6
332	2020-12-11 11:44:17.77279+03	621	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	3		7	6
333	2020-12-11 11:44:17.774151+03	620	выставка «Казанская художественная школа»	3		7	6
334	2020-12-11 11:44:17.77553+03	619	выставка «Татарская золотая кладовая»	3		7	6
335	2020-12-11 11:44:17.778368+03	618	выставка «Советские игровые автоматы»	3		7	6
336	2020-12-11 11:44:17.78001+03	617	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	3		7	6
337	2020-12-11 11:44:17.781802+03	616	игровые знакомства Speed Dating №1 в Казани от Fastlife	3		7	6
338	2020-12-11 11:44:17.783363+03	615	English Workout в «Циферблате» на Щапова: Advanced & Beginners	3		7	6
339	2020-12-11 11:44:17.784783+03	614	школа акварельного скетчинга в «Циферблате» на Университетской	3		7	6
340	2020-12-11 11:44:17.786109+03	613	джазовые вечера в «Циферблате» на Щапова	3		7	6
341	2020-12-11 11:44:17.787429+03	612	киноночи в «Циферблате» на Щапова	3		7	6
342	2020-12-11 11:44:17.788727+03	611	экспозиция «Архитектура Каменного пояса»	3		7	6
343	2020-12-11 11:44:17.790021+03	610	забеги ParkRun	3		7	6
344	2020-12-11 11:44:17.791329+03	609	концерт Sirotkin	3		7	6
345	2020-12-11 11:44:17.792968+03	608	концерт Tricky	3		7	6
346	2020-12-11 11:44:17.794595+03	607	концерт Everthe8	3		7	6
347	2020-12-11 11:44:17.796214+03	606	онлайн-курс таргетированной рекламы	3		7	6
348	2020-12-11 11:44:17.797793+03	605	онлайн-курс SMM-продвижения	3		7	6
349	2020-12-11 11:44:17.799639+03	604	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
350	2020-12-11 11:44:17.801639+03	603	онлайн-курс веб-аналитики	3		7	6
351	2020-12-11 11:44:17.803141+03	602	онлайн-курс создания и продвижения сайтов	3		7	6
352	2020-12-11 11:44:17.804627+03	601	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
353	2020-12-11 11:44:17.80614+03	600	вебинар «Николай II: история правления последнего императора»	3		7	6
354	2020-12-11 11:44:17.808056+03	599	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
355	2020-12-11 11:44:17.810018+03	598	онлайн-курс сценарного мастерства	3		7	6
356	2020-12-11 11:44:17.811589+03	597	онлайн-курс визуального мерчандайзинга	3		7	6
357	2020-12-11 11:44:17.813551+03	596	вебинар «Как различать психологические типы»	3		7	6
358	2020-12-11 11:44:17.815233+03	595	вебинар «Депрессия: как распознать и бороться»	3		7	6
359	2020-12-11 11:44:17.816728+03	594	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
360	2020-12-11 11:44:17.818219+03	593	онлайн-курс обработки фотографии	3		7	6
361	2020-12-11 11:44:17.819691+03	592	онлайн-курс психологии общения	3		7	6
362	2020-12-11 11:44:17.821185+03	591	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
363	2020-12-11 11:44:17.82298+03	590	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
364	2020-12-11 11:44:17.825891+03	589	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
365	2020-12-11 11:44:17.830308+03	588	онлайн-курс Influencer marketing	3		7	6
366	2020-12-11 11:44:17.834403+03	587	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
367	2020-12-11 11:44:17.838433+03	586	онлайн-курс скорочтения	3		7	6
368	2020-12-11 11:44:17.841758+03	585	онлайн-курс копирайтинга	3		7	6
369	2020-12-11 11:44:17.84552+03	584	онлайн-курс CorelDraw	3		7	6
370	2020-12-11 11:44:17.849335+03	583	онлайн-курс «Как идеи управляют людьми»	3		7	6
371	2020-12-11 11:44:17.853227+03	582	вебинар «Как развить эмоциональный интеллект»	3		7	6
372	2020-12-11 11:44:17.856408+03	581	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
373	2020-12-11 11:44:17.859583+03	580	вебинар «Манга: всё о японских комиксах»	3		7	6
374	2020-12-11 11:44:17.863181+03	579	вебинар «Рождение СССР: как это было»	3		7	6
375	2020-12-11 11:44:17.866986+03	578	онлайн-курс фотографии для начинающих	3		7	6
376	2020-12-11 11:44:17.871115+03	577	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
377	2020-12-11 11:44:17.87429+03	576	онлайн-курс общей психологии	3		7	6
378	2020-12-11 11:44:17.877858+03	575	онлайн-курс анимации	3		7	6
379	2020-12-11 11:44:17.88203+03	574	вебинар «Как картины становятся шедеврами»	3		7	6
380	2020-12-11 11:44:17.886163+03	573	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
381	2020-12-11 11:44:17.889902+03	572	онлайн-курс детской психологии для родителей	3		7	6
382	2020-12-11 11:44:17.893609+03	571	вебинар «Тёмная сторона сказки»	3		7	6
383	2020-12-11 11:44:17.898021+03	570	вебинар «Первая мировая война: главное»	3		7	6
384	2020-12-11 11:44:17.902512+03	569	онлайн-курс режиссуры	3		7	6
385	2020-12-11 11:44:17.90504+03	568	вебинар «Петербург: история города от основания до наших дней»	3		7	6
386	2020-12-11 11:44:17.907279+03	567	онлайн-курс по ведению и продвижению Instagram	3		7	6
387	2020-12-11 11:44:17.910277+03	566	вебинар «Москва во время Второй мировой: как это было»	3		7	6
388	2020-12-11 11:44:17.913127+03	565	онлайн-курс «Кино глазами режиссёров»	3		7	6
389	2020-12-11 11:44:17.916086+03	564	вебинар «Как устроена музыка: научный взгляд»	3		7	6
390	2020-12-11 11:44:17.918733+03	563	онлайн-курс психологии отношений	3		7	6
391	2020-12-11 11:44:17.921095+03	562	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
392	2020-12-11 11:44:17.9235+03	561	онлайн-курс НЛП	3		7	6
393	2020-12-11 11:44:17.926302+03	560	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
394	2020-12-11 11:44:17.929387+03	559	онлайн-курс писательского мастерства	3		7	6
395	2020-12-11 11:44:17.931863+03	558	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
396	2020-12-11 11:44:17.934181+03	557	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
397	2020-12-11 11:44:17.93751+03	556	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
398	2020-12-11 11:44:17.941478+03	555	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
399	2020-12-11 11:44:17.944841+03	554	вебинар «Буддизм: это про что?»	3		7	6
400	2020-12-11 11:44:17.947628+03	553	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
401	2020-12-11 11:44:17.950584+03	552	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
402	2020-12-11 11:44:17.953596+03	551	онлайн-выставка «Знамя Победы»	3		7	6
403	2020-12-11 11:44:17.955951+03	550	вебинар «Сальвадор Дали: главное»	3		7	6
404	2020-12-11 11:44:17.958384+03	549	онлайн-курс контекстной рекламы	3		7	6
405	2020-12-11 11:44:17.960869+03	548	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
406	2020-12-11 11:44:17.963655+03	547	онлайн-курс продюсеров	3		7	6
407	2020-12-11 11:44:17.967035+03	546	онлайн-курс «Ликбез по экономике»	3		7	6
408	2020-12-11 11:44:17.96957+03	545	онлайн-курс видеоблогинга	3		7	6
409	2020-12-11 11:44:17.973022+03	544	онлайн-курс «Критическое мышление»	3		7	6
410	2020-12-11 11:44:17.975294+03	543	аудиокурс «Книги великих писателей»	3		7	6
411	2020-12-11 11:44:17.978482+03	542	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
412	2020-12-11 11:44:17.981343+03	541	курс обучающих рассылок «50 зданий Москвы»	3		7	6
413	2020-12-11 11:44:17.984321+03	540	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
414	2020-12-11 11:44:17.987328+03	539	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
415	2020-12-11 11:44:17.990119+03	538	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
416	2020-12-11 11:44:17.992621+03	537	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
417	2020-12-11 11:44:17.995775+03	536	онлайн-курс дизайна интерьера	3		7	6
418	2020-12-11 11:44:17.999156+03	535	онлайн-курс «Гид по истории искусства»	3		7	6
419	2020-12-11 11:44:18.002027+03	534	видеоэксурсии Музея железных дорог России	3		7	6
420	2020-12-11 11:44:18.004448+03	533	Онлайн-Акселератор МБМ	3		7	6
421	2020-12-11 11:44:18.006799+03	532	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	3		7	6
422	2020-12-11 11:44:18.009431+03	531	сольный концерт Виктора Комарова в шоу-пространстве «Альпенхаус»	3		7	6
423	2020-12-11 11:44:18.012453+03	530	караоке-спектакль «Гуляй, шальная!» в постановке Театра Двух	3		7	6
424	2020-12-11 11:44:18.014769+03	529	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	3		7	6
425	2020-12-11 11:44:18.01704+03	528	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
426	2020-12-11 11:44:18.019269+03	527	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	3		7	6
427	2020-12-11 11:44:18.021594+03	526	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
428	2020-12-11 11:44:18.02387+03	525	«Стартап-школа МБМ»	3		7	6
429	2020-12-11 11:44:18.026149+03	524	экскурсия «Петропавловская крепость для детей»	3		7	6
430	2020-12-11 11:44:18.028641+03	523	мастер-классы «Картина за 3 часа» в студии живописи ZuART	3		7	6
431	2020-12-11 11:44:18.032612+03	522	день рождения в Музее Мозга	3		7	6
432	2020-12-11 11:44:18.03533+03	521	акция «Ночь распродаж» сноубордов в магазине Dosok.net	3		7	6
433	2020-12-11 11:44:18.037825+03	520	вебинар «Смерть: отношение в разных культурах»	3		7	6
434	2020-12-11 11:44:18.040807+03	519	праздник в виртуальной реальности в клубе Anvio VR	3		7	6
435	2020-12-11 11:44:18.044457+03	518	экскурсия «Центр наизнанку —  неформальный Петербург»	3		7	6
436	2020-12-11 11:44:18.049165+03	517	новогодние мастер-классы от школы флористики Handy Class	3		7	6
437	2020-12-11 11:44:18.053064+03	516	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	3		7	6
438	2020-12-11 11:44:18.056355+03	515	спектакль-прогулка «Осень. Город Достоевского. 730 шагов с Родионом Раскольниковым»	3		7	6
439	2020-12-11 11:44:18.059751+03	514	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	3		7	6
440	2020-12-11 11:44:18.063764+03	513	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	3		7	6
441	2020-12-11 11:44:18.06762+03	512	экскурсия «Весь центр Петербурга с крыши»	3		7	6
442	2020-12-11 11:44:18.070845+03	511	выставка «Город-парк»	3		7	6
443	2020-12-11 11:44:18.073841+03	510	ярмарка «Продовольствие в удовольствие. Новогоднее застолье»	3		7	6
444	2020-12-11 11:44:18.077723+03	509	фестиваль «Новое кино Китая»	3		7	6
445	2020-12-11 11:44:18.08155+03	508	Фестиваль дружбы народов	3		7	6
446	2020-12-11 11:44:18.085162+03	507	благотворительный фестиваль «Добрый Питер»	3		7	6
447	2020-12-11 11:44:18.08821+03	506	новогодние арт-корпоративы в студии живописи ZuART	3		7	6
448	2020-12-11 11:44:18.091224+03	505	экскурсия в особняк Матильды Кшесинской	3		7	6
449	2020-12-11 11:44:18.09505+03	504	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	3		7	6
450	2020-12-11 11:44:18.098973+03	503	осенняя гаражная распродажа в «Севкабель Порту»	3		7	6
451	2020-12-11 11:44:18.103175+03	502	концерт «Rock при свечах»	3		7	6
452	2020-12-11 11:44:18.10621+03	501	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	3		7	6
453	2020-12-11 11:44:18.109363+03	500	мастер-классы по абстрактной живописи в технике жидкого акрила	3		7	6
454	2020-12-11 11:44:18.112885+03	499	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	3		7	6
455	2020-12-11 11:44:18.116476+03	498	курс «Как понимать современное искусство?» в лектории Artista	3		7	6
456	2020-12-11 11:44:18.12033+03	497	концерт «Орган. В предчувствии Рождества» в Петрикирхе	3		7	6
457	2020-12-11 11:44:18.12339+03	496	Гала DANCE OPEN	3		7	6
458	2020-12-11 11:44:18.12692+03	495	шоу «Женский Стендап»	3		7	6
459	2020-12-11 11:44:18.130588+03	494	мастер-классы по живописи «Картина за 3 часа»	3		7	6
460	2020-12-11 11:44:18.134427+03	493	выставка картин Светланы Мучновой «Дорога через века»	3		7	6
461	2020-12-11 11:44:18.137685+03	492	большой концерт шоу «Импровизация»	3		7	6
462	2020-12-11 11:44:18.141473+03	491	выставка-ярмарка «Подарки к Новому году»	3		7	6
463	2020-12-11 11:44:18.145654+03	490	рождественская выставка в Галерее Кустановича	3		7	6
464	2020-12-11 11:44:18.148924+03	489	вечер джаза JazzLike в оранжерее Таврического сада	3		7	6
465	2020-12-11 11:44:18.15189+03	488	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	3		7	6
466	2020-12-11 11:44:18.155441+03	487	выставка Concept Cars: la Grande Bellezza	3		7	6
467	2020-12-11 11:44:18.158437+03	486	экскурсия «Мифы и легенды Петербурга»	3		7	6
468	2020-12-11 11:44:18.162896+03	485	концерт «Рождественский орган» от Amadeus Concerts	3		7	6
469	2020-12-11 11:44:18.16692+03	484	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	3		7	6
470	2020-12-11 11:44:18.170238+03	483	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	3		7	6
471	2020-12-11 11:44:18.173326+03	482	Новый год и рождественские каникулы в гостинице «Репинская»	3		7	6
472	2020-12-11 11:44:18.176466+03	480	быстрые свидания «ЛавСешн»	3		7	6
473	2020-12-11 11:44:18.179707+03	479	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	3		7	6
474	2020-12-11 11:44:18.183512+03	478	новогодняя выставка «Сокровища Петербурга»	3		7	6
475	2020-12-11 11:44:18.187308+03	477	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	3		7	6
476	2020-12-11 11:44:18.190328+03	476	выставка «Маэстро Филип Трейси»	3		7	6
477	2020-12-11 11:44:18.19396+03	475	новогоднее шоу «Старый отель» в «Ленинград Центре»	3		7	6
478	2020-12-11 11:44:18.198251+03	474	мастер-класс «Рождественский венок своими руками» в студии ZuArt	3		7	6
479	2020-12-11 11:44:18.202567+03	473	Вечеринки в Comedy Place	3		7	6
480	2020-12-11 11:44:18.206499+03	472	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	3		7	6
481	2020-12-11 11:44:18.210274+03	471	вечер живого джаза JazzLike в Музее советских игровых автоматов	3		7	6
482	2020-12-11 11:44:18.21512+03	470	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	3		7	6
483	2020-12-11 11:44:18.218714+03	469	интерактивное мультимедийное путешествие «Тайны мироздания» в цифровом арт-пространстве Hyper Port	3		7	6
484	2020-12-11 11:44:18.221857+03	468	выставка «Сад сновидений 2.0. Мистические миры»	3		7	6
485	2020-12-11 11:44:18.224863+03	467	VK Fest 2021	3		7	6
486	2020-12-11 11:44:18.228135+03	466	Фестиваль «Артдокфест»	3		7	6
487	2020-12-11 11:44:18.231317+03	465	рождественская ярмарка на Манежной площади	3		7	6
488	2020-12-11 11:44:18.234309+03	464	спектакль «Летов. Дурачок» в Большом театре кукол	3		7	6
489	2020-12-11 11:44:18.237895+03	463	опера «52» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
490	2020-12-11 11:44:18.240951+03	462	спектакль «Нана» на Новой сцене Александринского театра	3		7	6
491	2020-12-11 11:44:18.244605+03	461	спектакль «Questioning / Кто ты?» в постановке Pop-up театра и театра Magic Garden (Швейцария)	3		7	6
492	2020-12-11 11:44:18.248339+03	460	спектакль «Слава» в БДТ имени Г. А. Товстоногова	3		7	6
493	2020-12-11 11:44:18.253021+03	459	концерт группы «Аквариум»	3		7	6
494	2020-12-11 11:44:18.256168+03	458	спектакль «Волнение» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
495	2020-12-11 11:44:18.260225+03	457	Спектакль «Профсоюз работников ада» от Pop-up театра	3		7	6
496	2020-12-11 11:44:18.264342+03	456	новый год — 2021 в Петербурге	3		7	6
497	2020-12-11 11:44:18.269566+03	455	занятия по метанию ножей в клубе «Лабиринт»	3		7	6
498	2020-12-11 11:44:18.272767+03	454	концерт Ольги Максимовой «Арфа в темноте»	3		7	6
499	2020-12-11 11:44:18.276841+03	453	экскурсия «Великий мастер русского модерна»	3		7	6
500	2020-12-11 11:44:18.280647+03	452	новогодняя распродажа в аутлете Velocity	3		7	6
501	2020-12-11 11:44:18.284838+03	451	бесплатный онлайн-курс «Только спокойствие»	3		7	6
502	2020-12-11 11:44:18.287881+03	450	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	3		7	6
503	2020-12-11 11:44:18.291565+03	449	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	3		7	6
504	2020-12-11 11:44:18.295539+03	448	спектакль «Мастер и Маргарита» в Театре на Таганке	3		7	6
505	2020-12-11 11:44:18.299441+03	447	новогодний корпоратив в частном кинотеатре «Секрет»	3		7	6
506	2020-12-11 11:44:18.30313+03	446	игровые знакомства Speed Dating для гостей 18-30 лет от FastLife	3		7	6
507	2020-12-11 11:44:18.306102+03	445	концерт Niletto в барном кластере Bla Bla Bar	3		7	6
508	2020-12-11 11:44:18.30964+03	444	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
509	2020-12-11 11:44:18.314152+03	443	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
510	2020-12-11 11:44:18.317929+03	442	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
511	2020-12-11 11:44:18.321416+03	441	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	3		7	6
512	2020-12-11 11:44:18.325643+03	440	рождественский концерт Посольства Германии в России «Гендель-гала»	3		7	6
513	2020-12-11 11:44:18.329087+03	439	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
514	2020-12-11 11:44:18.332838+03	438	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	3		7	6
515	2020-12-11 11:44:18.336826+03	437	арт-вечеринка с рисованием картин Painty офлайн и онлайн	3		7	6
516	2020-12-11 11:44:18.34006+03	436	Котельническая. Лекция в сталинской высотке с видом на Кремль	3		7	6
517	2020-12-11 11:44:18.343634+03	435	ярмарка «Блошиный рынок»	3		7	6
518	2020-12-11 11:44:18.347658+03	434	закрытая vip-вечеринка от FastLife	3		7	6
519	2020-12-11 11:44:18.351561+03	433	выставка «Моя семья — моя история. Создание семьи»	3		7	6
520	2020-12-11 11:44:18.355246+03	432	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
521	2020-12-11 11:44:18.359399+03	431	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	3		7	6
522	2020-12-11 11:44:18.363498+03	430	спектакль «Свободная пара»	3		7	6
523	2020-12-11 11:44:18.367539+03	429	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
524	2020-12-11 11:44:18.371006+03	428	Онлайн МЕГА-квест по спасению Нового года	3		7	6
525	2020-12-11 11:44:18.374132+03	427	праздничный концерт «Новогоднее чудо»	3		7	6
526	2020-12-11 11:44:18.377265+03	426	онлайн-курс «Как устроен наш мозг»	3		7	6
527	2020-12-11 11:44:18.381162+03	425	быстрые свидания (speed dating) от FastLife	3		7	6
528	2020-12-11 11:44:18.385035+03	424	спектакль «Бумажный брак»	3		7	6
529	2020-12-11 11:44:18.388403+03	423	онлайн-курс «О чём молчат картины»	3		7	6
530	2020-12-11 11:44:18.391554+03	422	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
531	2020-12-11 11:44:18.395306+03	421	бонусы от Tele2 для абонентов на катке в парке Горького	3		7	6
532	2020-12-11 11:44:18.399341+03	420	спектакль «Аудиенция» в постановке Театра Наций	3		7	6
533	2020-12-11 11:44:18.403567+03	419	ночной концерт «Моцарт. Реквием»	3		7	6
534	2020-12-11 11:44:18.406693+03	418	вечеринка «Большой Speed Dating» от компании FastLife	3		7	6
535	2020-12-11 11:44:18.410502+03	417	вечер настольных игр от FastLife	3		7	6
536	2020-12-11 11:44:18.414611+03	416	стендап-вечеринки от резидентов LiteStandUp и звёзд ТВ	3		7	6
537	2020-12-11 11:44:18.418824+03	415	опера «История Кая и Герды» в Большом театре	3		7	6
538	2020-12-11 11:44:18.422958+03	414	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	3		7	6
539	2020-12-11 11:44:18.426885+03	413	органный вечер «Бах-гала» в Кафедральном соборе святых Петра и Павла	3		7	6
540	2020-12-11 11:44:18.431152+03	412	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	3		7	6
541	2020-12-11 11:44:18.435048+03	411	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	3		7	6
542	2020-12-11 11:44:18.438295+03	410	новогодние праздники с квестами от компании «Кубикулум»	3		7	6
543	2020-12-11 11:44:18.441956+03	409	спектакль «Цветы для Элджернона» в РАМТе	3		7	6
544	2020-12-11 11:44:18.445537+03	408	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
545	2020-12-11 11:44:18.449304+03	407	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	3		7	6
546	2020-12-11 11:44:18.452644+03	406	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
547	2020-12-11 11:44:18.455836+03	405	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
548	2020-12-11 11:44:18.458996+03	404	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	3		7	6
549	2020-12-11 11:44:18.462792+03	403	тур по барам Москвы от City Pub Crawl	3		7	6
550	2020-12-11 11:44:18.466446+03	402	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
551	2020-12-11 11:44:18.470247+03	401	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
552	2020-12-11 11:44:18.47425+03	400	Фабрика «Красный Октябрь». Фотоэкскурсия с подъёмом на крышу	3		7	6
553	2020-12-11 11:44:18.478394+03	399	игровые знакомства Speed Dating № 1 в Москве от FastLife	3		7	6
554	2020-12-11 11:44:18.482839+03	398	астроэкскурсия во время полного солнечного затмения	3		7	6
555	2020-12-11 11:44:18.485738+03	397	интеллектуальные вечеринки GO!КВИЗ	3		7	6
556	2020-12-11 11:44:18.488337+03	396	квест «Последний Пепелац» от компании «Кубикулум»	3		7	6
557	2020-12-11 11:44:18.490385+03	395	онлайн-курс «Гид по винной культуре»	3		7	6
558	2020-12-11 11:44:18.493493+03	394	концерт «Времена года. Вивальди — Пьяццолла»	3		7	6
559	2020-12-11 11:44:18.496344+03	393	спектакль «Лавр» во МХАТе имени Горького	3		7	6
560	2020-12-11 11:44:18.499031+03	392	экскурсия «Москва–Волга» по зданию Северного речного вокзала	3		7	6
561	2020-12-11 11:44:18.501671+03	391	концерты в пабе Lion's Head	3		7	6
562	2020-12-11 11:44:18.503775+03	390	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	3		7	6
563	2020-12-11 11:44:18.505614+03	389	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	3		7	6
564	2020-12-11 11:44:18.507554+03	388	японские свидания GOKON	3		7	6
565	2020-12-11 11:44:18.51006+03	387	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
566	2020-12-11 11:44:18.512661+03	386	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	3		7	6
567	2020-12-11 11:44:18.515222+03	385	стендап-вечера с участием комиков из ТВ и YouTube проектов	3		7	6
568	2020-12-11 11:44:18.518044+03	384	мюзикл TODD. Живой звук	3		7	6
569	2020-12-11 11:44:18.521257+03	383	выставка-продажа «Что происходит на свете? А просто зима»	3		7	6
570	2020-12-11 11:44:18.524823+03	382	рождественская ярмарка European Christmas Market в отеле «Мариотт» на Петровке	3		7	6
571	2020-12-11 11:44:18.529023+03	381	маркет «4 сезона»	3		7	6
572	2020-12-11 11:44:18.533046+03	380	полёт на воздушном шаре в воздухоплавательном клубе «Меджик Флайт»	3		7	6
573	2020-12-11 11:44:18.536508+03	379	выставка в музее Like Space	3		7	6
574	2020-12-11 11:44:18.540829+03	378	квест «Красная кнопка»	3		7	6
575	2020-12-11 11:44:18.545325+03	377	индийский маркет и фуд-корт «Delhi базар»	3		7	6
576	2020-12-11 11:44:18.549482+03	376	аудиовизуальный арт-проект дополненной реальности Tonandi	3		7	6
577	2020-12-11 11:44:18.553043+03	375	Научная ёлка 2021	3		7	6
578	2020-12-11 11:44:18.556284+03	374	рисование в виртуальной реальности	3		7	6
579	2020-12-11 11:44:18.559457+03	373	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	3		7	6
580	2020-12-11 11:44:18.562969+03	372	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
581	2020-12-11 11:44:18.566+03	371	зимние каникулы в комплексе «Мореон»	3		7	6
582	2020-12-11 11:44:18.569399+03	370	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
583	2020-12-11 11:44:18.572438+03	369	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	3		7	6
584	2020-12-11 11:44:18.575588+03	368	Увлекательные приключения в семейных музеях Москвы	3		7	6
585	2020-12-11 11:44:18.579061+03	367	капсульные концерты на крыше	3		7	6
586	2020-12-11 11:44:18.582846+03	366	Онлайн-проект «За каждой работой — Я»	3		7	6
587	2020-12-11 11:44:18.586803+03	365	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	3		7	6
588	2020-12-11 11:44:18.590157+03	364	проект VR Gallery	3		7	6
589	2020-12-11 11:44:18.594157+03	363	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	3		7	6
590	2020-12-11 11:44:18.598244+03	362	иммерсивный спектакль RESET 2.0	3		7	6
591	2020-12-11 11:44:18.602086+03	361	стендап-шоу от комиков ТНТ и YouTube в атмосферных заведениях Москвы	3		7	6
592	2020-12-11 11:44:18.60585+03	360	спектакль «Сказка про последнего ангела» в Театре Наций	3		7	6
593	2020-12-11 11:44:18.609149+03	359	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	3		7	6
594	2020-12-11 11:44:18.613609+03	358	иммерсивное шоу «Зеркало Карлоса Сантоса»	3		7	6
595	2020-12-11 12:03:21.554686+03	899	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	3		7	6
597	2020-12-11 12:03:21.562255+03	897	экскурсия по музею-квартире Мусы Джалиля	3		7	6
598	2020-12-11 12:03:21.564555+03	896	выставка «Гроза двенадцатого года»	3		7	6
599	2020-12-11 12:03:21.566629+03	895	выставка «Казанские университеты М. Горького»	3		7	6
600	2020-12-11 12:03:21.568582+03	894	выставка «Древняя история Татарстана»	3		7	6
601	2020-12-11 12:03:21.570601+03	893	выставка «Казанская губерния в XVIII веке»	3		7	6
602	2020-12-11 12:03:21.572235+03	892	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	3		7	6
603	2020-12-11 12:03:21.573956+03	891	выставка «Казанская художественная школа»	3		7	6
604	2020-12-11 12:03:21.575521+03	890	выставка «Татарская золотая кладовая»	3		7	6
605	2020-12-11 12:03:21.577553+03	889	выставка «Советские игровые автоматы»	3		7	6
606	2020-12-11 12:03:21.579567+03	888	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	3		7	6
607	2020-12-11 12:03:21.581199+03	887	игровые знакомства Speed Dating №1 в Казани от Fastlife	3		7	6
608	2020-12-11 12:03:21.582787+03	886	English Workout в «Циферблате» на Щапова: Advanced & Beginners	3		7	6
609	2020-12-11 12:03:21.584293+03	885	школа акварельного скетчинга в «Циферблате» на Университетской	3		7	6
610	2020-12-11 12:03:21.586067+03	884	джазовые вечера в «Циферблате» на Щапова	3		7	6
611	2020-12-11 12:03:21.588262+03	883	киноночи в «Циферблате» на Щапова	3		7	6
612	2020-12-11 12:03:21.590295+03	882	экспозиция «Архитектура Каменного пояса»	3		7	6
613	2020-12-11 12:03:21.592816+03	881	забеги ParkRun	3		7	6
614	2020-12-11 12:03:21.596762+03	880	концерт Sirotkin	3		7	6
615	2020-12-11 12:03:21.600997+03	879	концерт Tricky	3		7	6
616	2020-12-11 12:03:21.657172+03	878	концерт Everthe8	3		7	6
617	2020-12-11 12:03:21.661444+03	877	онлайн-курс таргетированной рекламы	3		7	6
618	2020-12-11 12:03:21.665618+03	876	онлайн-курс SMM-продвижения	3		7	6
619	2020-12-11 12:03:21.669126+03	875	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
620	2020-12-11 12:03:21.672262+03	874	онлайн-курс веб-аналитики	3		7	6
621	2020-12-11 12:03:21.675929+03	873	онлайн-курс создания и продвижения сайтов	3		7	6
622	2020-12-11 12:03:21.67994+03	872	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
623	2020-12-11 12:03:21.683741+03	871	вебинар «Николай II: история правления последнего императора»	3		7	6
624	2020-12-11 12:03:21.687615+03	870	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
625	2020-12-11 12:03:21.691307+03	869	онлайн-курс сценарного мастерства	3		7	6
626	2020-12-11 12:03:21.694867+03	868	онлайн-курс визуального мерчандайзинга	3		7	6
627	2020-12-11 12:03:21.699189+03	867	вебинар «Как различать психологические типы»	3		7	6
628	2020-12-11 12:03:21.702793+03	866	вебинар «Депрессия: как распознать и бороться»	3		7	6
629	2020-12-11 12:03:21.757253+03	865	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
630	2020-12-11 12:03:21.76128+03	864	онлайн-курс обработки фотографии	3		7	6
631	2020-12-11 12:03:21.765508+03	863	онлайн-курс психологии общения	3		7	6
632	2020-12-11 12:03:21.769592+03	862	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
633	2020-12-11 12:03:21.772694+03	861	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
634	2020-12-11 12:03:21.776936+03	860	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
635	2020-12-11 12:03:21.78088+03	859	онлайн-курс Influencer marketing	3		7	6
636	2020-12-11 12:03:21.785111+03	858	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
637	2020-12-11 12:03:21.789249+03	857	онлайн-курс скорочтения	3		7	6
638	2020-12-11 12:03:21.793666+03	856	онлайн-курс копирайтинга	3		7	6
639	2020-12-11 12:03:21.798401+03	855	онлайн-курс CorelDraw	3		7	6
640	2020-12-11 12:03:21.802498+03	854	онлайн-курс «Как идеи управляют людьми»	3		7	6
641	2020-12-11 12:03:21.857028+03	853	вебинар «Как развить эмоциональный интеллект»	3		7	6
642	2020-12-11 12:03:21.859869+03	852	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
643	2020-12-11 12:03:21.862318+03	851	вебинар «Манга: всё о японских комиксах»	3		7	6
644	2020-12-11 12:03:21.864525+03	850	вебинар «Рождение СССР: как это было»	3		7	6
645	2020-12-11 12:03:21.86655+03	849	онлайн-курс фотографии для начинающих	3		7	6
646	2020-12-11 12:03:21.868381+03	848	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
647	2020-12-11 12:03:21.870205+03	847	онлайн-курс общей психологии	3		7	6
648	2020-12-11 12:03:21.871901+03	846	онлайн-курс анимации	3		7	6
649	2020-12-11 12:03:21.873688+03	845	вебинар «Как картины становятся шедеврами»	3		7	6
650	2020-12-11 12:03:21.876451+03	844	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
651	2020-12-11 12:03:21.878856+03	843	онлайн-курс детской психологии для родителей	3		7	6
652	2020-12-11 12:03:21.881323+03	842	вебинар «Тёмная сторона сказки»	3		7	6
653	2020-12-11 12:03:21.883565+03	841	вебинар «Первая мировая война: главное»	3		7	6
654	2020-12-11 12:03:21.885514+03	840	онлайн-курс режиссуры	3		7	6
655	2020-12-11 12:03:21.887627+03	839	вебинар «Петербург: история города от основания до наших дней»	3		7	6
656	2020-12-11 12:03:21.891621+03	838	онлайн-курс по ведению и продвижению Instagram	3		7	6
657	2020-12-11 12:03:21.896155+03	837	вебинар «Москва во время Второй мировой: как это было»	3		7	6
658	2020-12-11 12:03:21.90059+03	836	онлайн-курс «Кино глазами режиссёров»	3		7	6
659	2020-12-11 12:03:21.957759+03	835	вебинар «Как устроена музыка: научный взгляд»	3		7	6
660	2020-12-11 12:03:21.960605+03	834	онлайн-курс психологии отношений	3		7	6
661	2020-12-11 12:03:21.963003+03	833	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
662	2020-12-11 12:03:21.96489+03	832	онлайн-курс НЛП	3		7	6
663	2020-12-11 12:03:21.966601+03	831	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
664	2020-12-11 12:03:21.968281+03	830	онлайн-курс писательского мастерства	3		7	6
665	2020-12-11 12:03:21.969835+03	829	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
666	2020-12-11 12:03:21.971369+03	828	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
667	2020-12-11 12:03:21.973113+03	827	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
668	2020-12-11 12:03:21.974534+03	826	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
669	2020-12-11 12:03:21.976098+03	825	вебинар «Буддизм: это про что?»	3		7	6
670	2020-12-11 12:03:21.977926+03	824	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
671	2020-12-11 12:03:21.97985+03	823	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
672	2020-12-11 12:03:21.981517+03	822	онлайн-выставка «Знамя Победы»	3		7	6
673	2020-12-11 12:03:21.983091+03	821	вебинар «Сальвадор Дали: главное»	3		7	6
674	2020-12-11 12:03:21.984757+03	820	онлайн-курс контекстной рекламы	3		7	6
675	2020-12-11 12:03:21.986371+03	819	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
676	2020-12-11 12:03:21.98799+03	818	онлайн-курс продюсеров	3		7	6
677	2020-12-11 12:03:21.989611+03	817	онлайн-курс «Ликбез по экономике»	3		7	6
678	2020-12-11 12:03:21.991676+03	816	онлайн-курс видеоблогинга	3		7	6
679	2020-12-11 12:03:21.993463+03	815	онлайн-курс «Критическое мышление»	3		7	6
680	2020-12-11 12:03:21.995304+03	814	аудиокурс «Книги великих писателей»	3		7	6
681	2020-12-11 12:03:21.997277+03	813	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
682	2020-12-11 12:03:21.999086+03	812	курс обучающих рассылок «50 зданий Москвы»	3		7	6
683	2020-12-11 12:03:22.001026+03	811	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
684	2020-12-11 12:03:22.002846+03	810	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
685	2020-12-11 12:03:22.004457+03	809	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
686	2020-12-11 12:03:22.006057+03	808	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
687	2020-12-11 12:03:22.007958+03	807	онлайн-курс дизайна интерьера	3		7	6
688	2020-12-11 12:03:22.009845+03	806	онлайн-курс «Гид по истории искусства»	3		7	6
689	2020-12-11 12:03:22.011685+03	805	видеоэксурсии Музея железных дорог России	3		7	6
690	2020-12-11 12:03:22.013827+03	804	Онлайн-Акселератор МБМ	3		7	6
691	2020-12-11 12:03:22.015622+03	803	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	3		7	6
692	2020-12-11 12:03:22.017272+03	802	сольный концерт Виктора Комарова в шоу-пространстве «Альпенхаус»	3		7	6
693	2020-12-11 12:03:22.018944+03	801	караоке-спектакль «Гуляй, шальная!» в постановке Театра Двух	3		7	6
694	2020-12-11 12:03:22.020632+03	800	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	3		7	6
695	2020-12-11 12:03:22.02229+03	799	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
696	2020-12-11 12:03:22.024005+03	798	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	3		7	6
697	2020-12-11 12:03:22.025804+03	797	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
698	2020-12-11 12:03:22.027548+03	796	«Стартап-школа МБМ»	3		7	6
699	2020-12-11 12:03:22.029272+03	795	экскурсия «Петропавловская крепость для детей»	3		7	6
700	2020-12-11 12:03:22.030933+03	794	мастер-классы «Картина за 3 часа» в студии живописи ZuART	3		7	6
701	2020-12-11 12:03:22.032649+03	793	день рождения в Музее Мозга	3		7	6
702	2020-12-11 12:03:22.034353+03	792	акция «Ночь распродаж» сноубордов в магазине Dosok.net	3		7	6
703	2020-12-11 12:03:22.03604+03	791	вебинар «Смерть: отношение в разных культурах»	3		7	6
704	2020-12-11 12:03:22.037716+03	790	праздник в виртуальной реальности в клубе Anvio VR	3		7	6
705	2020-12-11 12:03:22.039297+03	789	экскурсия «Центр наизнанку —  неформальный Петербург»	3		7	6
706	2020-12-11 12:03:22.040946+03	788	новогодние мастер-классы от школы флористики Handy Class	3		7	6
707	2020-12-11 12:03:22.042681+03	787	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	3		7	6
708	2020-12-11 12:03:22.044868+03	786	спектакль-прогулка «Осень. Город Достоевского. 730 шагов с Родионом Раскольниковым»	3		7	6
709	2020-12-11 12:03:22.046831+03	785	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	3		7	6
710	2020-12-11 12:03:22.0487+03	784	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	3		7	6
711	2020-12-11 12:03:22.050493+03	783	экскурсия «Весь центр Петербурга с крыши»	3		7	6
712	2020-12-11 12:03:22.052326+03	782	выставка «Город-парк»	3		7	6
713	2020-12-11 12:03:22.054206+03	781	ярмарка «Продовольствие в удовольствие. Новогоднее застолье»	3		7	6
714	2020-12-11 12:03:22.056103+03	780	фестиваль «Новое кино Китая»	3		7	6
715	2020-12-11 12:03:22.058465+03	779	Фестиваль дружбы народов	3		7	6
716	2020-12-11 12:03:22.061221+03	778	благотворительный фестиваль «Добрый Питер»	3		7	6
717	2020-12-11 12:03:22.063924+03	777	новогодние арт-корпоративы в студии живописи ZuART	3		7	6
718	2020-12-11 12:03:22.066296+03	776	экскурсия в особняк Матильды Кшесинской	3		7	6
719	2020-12-11 12:03:22.068545+03	775	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	3		7	6
720	2020-12-11 12:03:22.07103+03	774	осенняя гаражная распродажа в «Севкабель Порту»	3		7	6
721	2020-12-11 12:03:22.073193+03	773	концерт «Rock при свечах»	3		7	6
722	2020-12-11 12:03:22.075977+03	772	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	3		7	6
723	2020-12-11 12:03:22.07848+03	771	мастер-классы по абстрактной живописи в технике жидкого акрила	3		7	6
724	2020-12-11 12:03:22.081076+03	770	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	3		7	6
725	2020-12-11 12:03:22.083313+03	769	курс «Как понимать современное искусство?» в лектории Artista	3		7	6
726	2020-12-11 12:03:22.085438+03	768	концерт «Орган. В предчувствии Рождества» в Петрикирхе	3		7	6
727	2020-12-11 12:03:22.087484+03	767	Гала DANCE OPEN	3		7	6
728	2020-12-11 12:03:22.089656+03	766	шоу «Женский Стендап»	3		7	6
729	2020-12-11 12:03:22.092235+03	765	мастер-классы по живописи «Картина за 3 часа»	3		7	6
730	2020-12-11 12:03:22.094949+03	764	выставка картин Светланы Мучновой «Дорога через века»	3		7	6
731	2020-12-11 12:03:22.097485+03	763	большой концерт шоу «Импровизация»	3		7	6
732	2020-12-11 12:03:22.100605+03	762	выставка-ярмарка «Подарки к Новому году»	3		7	6
733	2020-12-11 12:03:22.103719+03	761	рождественская выставка в Галерее Кустановича	3		7	6
734	2020-12-11 12:03:22.107096+03	760	вечер джаза JazzLike в оранжерее Таврического сада	3		7	6
735	2020-12-11 12:03:22.111709+03	759	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	3		7	6
736	2020-12-11 12:03:22.115808+03	758	выставка Concept Cars: la Grande Bellezza	3		7	6
737	2020-12-11 12:03:22.119101+03	757	экскурсия «Мифы и легенды Петербурга»	3		7	6
738	2020-12-11 12:03:22.122307+03	756	концерт «Рождественский орган» от Amadeus Concerts	3		7	6
739	2020-12-11 12:03:22.126175+03	755	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	3		7	6
740	2020-12-11 12:03:22.129951+03	754	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	3		7	6
741	2020-12-11 12:03:22.134116+03	753	Новый год и рождественские каникулы в гостинице «Репинская»	3		7	6
742	2020-12-11 12:03:22.137582+03	751	быстрые свидания «ЛавСешн»	3		7	6
743	2020-12-11 12:03:22.14131+03	750	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	3		7	6
744	2020-12-11 12:03:22.145362+03	749	новогодняя выставка «Сокровища Петербурга»	3		7	6
745	2020-12-11 12:03:22.149837+03	748	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	3		7	6
746	2020-12-11 12:03:22.153714+03	747	выставка «Маэстро Филип Трейси»	3		7	6
747	2020-12-11 12:03:22.158477+03	746	новогоднее шоу «Старый отель» в «Ленинград Центре»	3		7	6
748	2020-12-11 12:03:22.162241+03	745	мастер-класс «Рождественский венок своими руками» в студии ZuArt	3		7	6
749	2020-12-11 12:03:22.165431+03	744	Вечеринки в Comedy Place	3		7	6
750	2020-12-11 12:03:22.168195+03	743	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	3		7	6
751	2020-12-11 12:03:22.17068+03	742	вечер живого джаза JazzLike в Музее советских игровых автоматов	3		7	6
752	2020-12-11 12:03:22.17285+03	741	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	3		7	6
753	2020-12-11 12:03:22.175313+03	740	интерактивное мультимедийное путешествие «Тайны мироздания» в цифровом арт-пространстве Hyper Port	3		7	6
754	2020-12-11 12:03:22.17784+03	739	выставка «Сад сновидений 2.0. Мистические миры»	3		7	6
755	2020-12-11 12:03:22.18045+03	738	VK Fest 2021	3		7	6
756	2020-12-11 12:03:22.182899+03	737	Фестиваль «Артдокфест»	3		7	6
757	2020-12-11 12:03:22.185173+03	736	рождественская ярмарка на Манежной площади	3		7	6
918	2020-12-11 14:47:36.365142+03	946	вебинар «Буддизм: это про что?»	3		7	6
758	2020-12-11 12:03:22.187477+03	735	спектакль «Летов. Дурачок» в Большом театре кукол	3		7	6
759	2020-12-11 12:03:22.190997+03	734	опера «52» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
760	2020-12-11 12:03:22.195613+03	733	спектакль «Нана» на Новой сцене Александринского театра	3		7	6
761	2020-12-11 12:03:22.200427+03	732	спектакль «Questioning / Кто ты?» в постановке Pop-up театра и театра Magic Garden (Швейцария)	3		7	6
762	2020-12-11 12:03:22.204307+03	731	спектакль «Слава» в БДТ имени Г. А. Товстоногова	3		7	6
763	2020-12-11 12:03:22.208987+03	730	концерт группы «Аквариум»	3		7	6
764	2020-12-11 12:03:22.213172+03	729	спектакль «Волнение» в Большом драматическом театре имени Г. А. Товстоногова	3		7	6
765	2020-12-11 12:03:22.217499+03	728	Спектакль «Профсоюз работников ада» от Pop-up театра	3		7	6
766	2020-12-11 12:03:22.220699+03	727	новый год — 2021 в Петербурге	3		7	6
767	2020-12-11 12:03:22.224634+03	726	занятия по метанию ножей в клубе «Лабиринт»	3		7	6
768	2020-12-11 12:03:22.227127+03	725	концерт Ольги Максимовой «Арфа в темноте»	3		7	6
769	2020-12-11 12:03:22.229934+03	724	экскурсия «Великий мастер русского модерна»	3		7	6
770	2020-12-11 12:03:22.232954+03	723	новогодняя распродажа в аутлете Velocity	3		7	6
771	2020-12-11 12:03:22.236291+03	722	бесплатный онлайн-курс «Только спокойствие»	3		7	6
772	2020-12-11 12:03:22.239338+03	721	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	3		7	6
773	2020-12-11 12:03:22.243184+03	720	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	3		7	6
774	2020-12-11 12:03:22.246457+03	719	спектакль «Мастер и Маргарита» в Театре на Таганке	3		7	6
775	2020-12-11 12:03:22.249255+03	718	новогодний корпоратив в частном кинотеатре «Секрет»	3		7	6
776	2020-12-11 12:03:22.251812+03	717	игровые знакомства Speed Dating для гостей 18-30 лет от FastLife	3		7	6
777	2020-12-11 12:03:22.253849+03	716	концерт Niletto в барном кластере Bla Bla Bar	3		7	6
778	2020-12-11 12:03:22.255723+03	715	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
779	2020-12-11 12:03:22.258138+03	714	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
780	2020-12-11 12:03:22.26139+03	713	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
781	2020-12-11 12:03:22.264392+03	712	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	3		7	6
782	2020-12-11 12:03:22.267071+03	711	рождественский концерт Посольства Германии в России «Гендель-гала»	3		7	6
783	2020-12-11 12:03:22.269258+03	710	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
784	2020-12-11 12:03:22.271237+03	709	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	3		7	6
785	2020-12-11 12:03:22.273273+03	708	арт-вечеринка с рисованием картин Painty офлайн и онлайн	3		7	6
786	2020-12-11 12:03:22.276007+03	707	Котельническая. Лекция в сталинской высотке с видом на Кремль	3		7	6
787	2020-12-11 12:03:22.278574+03	706	ярмарка «Блошиный рынок»	3		7	6
788	2020-12-11 12:03:22.280988+03	705	закрытая vip-вечеринка от FastLife	3		7	6
789	2020-12-11 12:03:22.283456+03	704	выставка «Моя семья — моя история. Создание семьи»	3		7	6
790	2020-12-11 12:03:22.28549+03	703	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
791	2020-12-11 12:03:22.287326+03	702	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	3		7	6
792	2020-12-11 12:03:22.289224+03	701	спектакль «Свободная пара»	3		7	6
793	2020-12-11 12:03:22.291599+03	700	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
794	2020-12-11 12:03:22.293937+03	699	Онлайн МЕГА-квест по спасению Нового года	3		7	6
795	2020-12-11 12:03:22.296597+03	698	праздничный концерт «Новогоднее чудо»	3		7	6
796	2020-12-11 12:03:22.299081+03	697	онлайн-курс «Как устроен наш мозг»	3		7	6
797	2020-12-11 12:03:22.301176+03	696	быстрые свидания (speed dating) от FastLife	3		7	6
798	2020-12-11 12:03:22.303122+03	695	спектакль «Бумажный брак»	3		7	6
799	2020-12-11 12:03:22.305021+03	694	онлайн-курс «О чём молчат картины»	3		7	6
800	2020-12-11 12:03:22.30727+03	693	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
801	2020-12-11 12:03:22.310216+03	692	бонусы от Tele2 для абонентов на катке в парке Горького	3		7	6
802	2020-12-11 12:03:22.313023+03	691	спектакль «Аудиенция» в постановке Театра Наций	3		7	6
803	2020-12-11 12:03:22.315634+03	690	ночной концерт «Моцарт. Реквием»	3		7	6
804	2020-12-11 12:03:22.317786+03	689	вечеринка «Большой Speed Dating» от компании FastLife	3		7	6
805	2020-12-11 12:03:22.319769+03	688	вечер настольных игр от FastLife	3		7	6
806	2020-12-11 12:03:22.321708+03	687	стендап-вечеринки от резидентов LiteStandUp и звёзд ТВ	3		7	6
807	2020-12-11 12:03:22.3239+03	686	опера «История Кая и Герды» в Большом театре	3		7	6
808	2020-12-11 12:03:22.326729+03	685	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	3		7	6
809	2020-12-11 12:03:22.3292+03	684	органный вечер «Бах-гала» в Кафедральном соборе святых Петра и Павла	3		7	6
810	2020-12-11 12:03:22.331793+03	683	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	3		7	6
811	2020-12-11 12:03:22.334563+03	682	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	3		7	6
812	2020-12-11 12:03:22.336573+03	681	новогодние праздники с квестами от компании «Кубикулум»	3		7	6
813	2020-12-11 12:03:22.338525+03	680	спектакль «Цветы для Элджернона» в РАМТе	3		7	6
814	2020-12-11 12:03:22.341189+03	679	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
815	2020-12-11 12:03:22.343545+03	678	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	3		7	6
816	2020-12-11 12:03:22.346012+03	677	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
817	2020-12-11 12:03:22.348628+03	676	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
818	2020-12-11 12:03:22.350986+03	675	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	3		7	6
819	2020-12-11 12:03:22.35302+03	674	тур по барам Москвы от City Pub Crawl	3		7	6
820	2020-12-11 12:03:22.355001+03	673	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
821	2020-12-11 12:03:22.357097+03	672	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
822	2020-12-11 12:03:22.359711+03	671	Фабрика «Красный Октябрь». Фотоэкскурсия с подъёмом на крышу	3		7	6
823	2020-12-11 12:03:22.362245+03	670	игровые знакомства Speed Dating № 1 в Москве от FastLife	3		7	6
824	2020-12-11 12:03:22.364629+03	669	астроэкскурсия во время полного солнечного затмения	3		7	6
825	2020-12-11 12:03:22.366738+03	668	интеллектуальные вечеринки GO!КВИЗ	3		7	6
826	2020-12-11 12:03:22.368744+03	667	квест «Последний Пепелац» от компании «Кубикулум»	3		7	6
827	2020-12-11 12:03:22.371+03	666	онлайн-курс «Гид по винной культуре»	3		7	6
828	2020-12-11 12:03:22.373509+03	665	концерт «Времена года. Вивальди — Пьяццолла»	3		7	6
829	2020-12-11 12:03:22.376189+03	664	спектакль «Лавр» во МХАТе имени Горького	3		7	6
830	2020-12-11 12:03:22.378456+03	663	экскурсия «Москва–Волга» по зданию Северного речного вокзала	3		7	6
831	2020-12-11 12:03:22.380863+03	662	концерты в пабе Lion's Head	3		7	6
832	2020-12-11 12:03:22.382832+03	661	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	3		7	6
833	2020-12-11 12:03:22.384693+03	660	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	3		7	6
834	2020-12-11 12:03:22.386499+03	659	японские свидания GOKON	3		7	6
835	2020-12-11 12:03:22.388528+03	658	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
836	2020-12-11 12:03:22.390337+03	657	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	3		7	6
837	2020-12-11 12:03:22.392504+03	656	стендап-вечера с участием комиков из ТВ и YouTube проектов	3		7	6
838	2020-12-11 12:03:22.395421+03	655	мюзикл TODD. Живой звук	3		7	6
839	2020-12-11 12:03:22.398487+03	654	выставка-продажа «Что происходит на свете? А просто зима»	3		7	6
840	2020-12-11 12:03:22.40081+03	653	рождественская ярмарка European Christmas Market в отеле «Мариотт» на Петровке	3		7	6
841	2020-12-11 12:03:22.403128+03	652	маркет «4 сезона»	3		7	6
842	2020-12-11 12:03:22.405457+03	651	полёт на воздушном шаре в воздухоплавательном клубе «Меджик Флайт»	3		7	6
843	2020-12-11 12:03:22.407623+03	650	выставка в музее Like Space	3		7	6
844	2020-12-11 12:03:22.40992+03	649	квест «Красная кнопка»	3		7	6
845	2020-12-11 12:03:22.412653+03	648	индийский маркет и фуд-корт «Delhi базар»	3		7	6
846	2020-12-11 12:03:22.415622+03	647	аудиовизуальный арт-проект дополненной реальности Tonandi	3		7	6
847	2020-12-11 12:03:22.418008+03	646	Научная ёлка 2021	3		7	6
848	2020-12-11 12:03:22.420417+03	645	рисование в виртуальной реальности	3		7	6
849	2020-12-11 12:03:22.422705+03	644	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	3		7	6
850	2020-12-11 12:03:22.425643+03	643	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
851	2020-12-11 12:03:22.428543+03	642	зимние каникулы в комплексе «Мореон»	3		7	6
852	2020-12-11 12:03:22.431719+03	641	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
853	2020-12-11 12:03:22.434992+03	640	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	3		7	6
854	2020-12-11 12:03:22.43811+03	639	Увлекательные приключения в семейных музеях Москвы	3		7	6
855	2020-12-11 12:03:22.440901+03	638	капсульные концерты на крыше	3		7	6
856	2020-12-11 12:03:22.443857+03	637	Онлайн-проект «За каждой работой — Я»	3		7	6
857	2020-12-11 12:03:22.446952+03	636	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	3		7	6
858	2020-12-11 12:03:22.449614+03	635	проект VR Gallery	3		7	6
859	2020-12-11 12:03:22.45195+03	634	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	3		7	6
860	2020-12-11 12:03:22.454418+03	633	иммерсивный спектакль RESET 2.0	3		7	6
861	2020-12-11 12:03:22.45682+03	632	стендап-шоу от комиков ТНТ и YouTube в атмосферных заведениях Москвы	3		7	6
862	2020-12-11 12:03:22.4593+03	631	спектакль «Сказка про последнего ангела» в Театре Наций	3		7	6
863	2020-12-11 12:03:22.461776+03	630	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	3		7	6
864	2020-12-11 12:03:22.464369+03	629	иммерсивное шоу «Зеркало Карлоса Сантоса»	3		7	6
865	2020-12-11 14:47:36.201898+03	999	онлайн-курс SMM-продвижения	3		7	6
866	2020-12-11 14:47:36.206398+03	998	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
867	2020-12-11 14:47:36.208106+03	997	онлайн-курс создания презентаций в PowerPoint	3		7	6
868	2020-12-11 14:47:36.209705+03	996	онлайн-курс веб-аналитики	3		7	6
869	2020-12-11 14:47:36.211088+03	995	онлайн-курс создания и продвижения сайтов	3		7	6
870	2020-12-11 14:47:36.212908+03	994	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
871	2020-12-11 14:47:36.215153+03	993	вебинар «Николай II: история правления последнего императора»	3		7	6
872	2020-12-11 14:47:36.21705+03	992	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
873	2020-12-11 14:47:36.219002+03	991	онлайн-курс сценарного мастерства	3		7	6
874	2020-12-11 14:47:36.220833+03	990	онлайн-курс визуального мерчандайзинга	3		7	6
875	2020-12-11 14:47:36.222472+03	989	вебинар «Как различать психологические типы»	3		7	6
876	2020-12-11 14:47:36.224091+03	988	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
877	2020-12-11 14:47:36.225479+03	987	онлайн-курс обработки фотографии	3		7	6
878	2020-12-11 14:47:36.226862+03	986	онлайн-курс психологии общения	3		7	6
879	2020-12-11 14:47:36.228496+03	985	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
880	2020-12-11 14:47:36.230337+03	984	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
881	2020-12-11 14:47:36.232175+03	983	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
882	2020-12-11 14:47:36.234038+03	982	вебинар «Депрессия: как распознать и бороться»	3		7	6
883	2020-12-11 14:47:36.237027+03	981	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
884	2020-12-11 14:47:36.240141+03	980	онлайн-курс скорочтения	3		7	6
885	2020-12-11 14:47:36.2432+03	979	онлайн-курс копирайтинга	3		7	6
886	2020-12-11 14:47:36.247111+03	978	онлайн-курс CorelDraw	3		7	6
887	2020-12-11 14:47:36.251776+03	977	онлайн-курс Influencer marketing	3		7	6
888	2020-12-11 14:47:36.255482+03	976	онлайн-курс «Как идеи управляют людьми»	3		7	6
889	2020-12-11 14:47:36.258656+03	975	вебинар «Как развить эмоциональный интеллект»	3		7	6
890	2020-12-11 14:47:36.261876+03	974	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
891	2020-12-11 14:47:36.265233+03	973	вебинар «Манга: всё о японских комиксах»	3		7	6
892	2020-12-11 14:47:36.269152+03	972	вебинар «Рождение СССР: как это было»	3		7	6
893	2020-12-11 14:47:36.273261+03	971	онлайн-курс фотографии для начинающих	3		7	6
894	2020-12-11 14:47:36.276616+03	970	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
895	2020-12-11 14:47:36.28032+03	969	онлайн-курс общей психологии	3		7	6
896	2020-12-11 14:47:36.284302+03	968	онлайн-курс анимации	3		7	6
897	2020-12-11 14:47:36.288235+03	967	вебинар «Как картины становятся шедеврами»	3		7	6
898	2020-12-11 14:47:36.291982+03	966	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
899	2020-12-11 14:47:36.29581+03	965	онлайн-курс детской психологии для родителей	3		7	6
900	2020-12-11 14:47:36.300202+03	964	вебинар «Тёмная сторона сказки»	3		7	6
901	2020-12-11 14:47:36.304143+03	963	вебинар «Первая мировая война: главное»	3		7	6
902	2020-12-11 14:47:36.307523+03	962	онлайн-курс режиссуры	3		7	6
903	2020-12-11 14:47:36.311543+03	961	вебинар «Петербург: история города от основания до наших дней»	3		7	6
904	2020-12-11 14:47:36.314729+03	960	онлайн-курс по ведению и продвижению Instagram	3		7	6
905	2020-12-11 14:47:36.317928+03	959	вебинар «Москва во время Второй мировой: как это было»	3		7	6
906	2020-12-11 14:47:36.321084+03	958	вебинар «Как устроена музыка: научный взгляд»	3		7	6
907	2020-12-11 14:47:36.324143+03	957	онлайн-курс «Кино глазами режиссёров»	3		7	6
908	2020-12-11 14:47:36.327137+03	956	онлайн-курс психологии отношений	3		7	6
909	2020-12-11 14:47:36.330175+03	955	онлайн-курс НЛП	3		7	6
910	2020-12-11 14:47:36.333877+03	954	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
911	2020-12-11 14:47:36.338197+03	953	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
912	2020-12-11 14:47:36.341713+03	952	онлайн-курс писательского мастерства	3		7	6
913	2020-12-11 14:47:36.344852+03	951	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
914	2020-12-11 14:47:36.349134+03	950	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
915	2020-12-11 14:47:36.353514+03	949	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
916	2020-12-11 14:47:36.357384+03	948	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
917	2020-12-11 14:47:36.360842+03	947	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
919	2020-12-11 14:47:36.370201+03	945	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
920	2020-12-11 14:47:36.37569+03	944	онлайн-выставка «Знамя Победы»	3		7	6
921	2020-12-11 14:47:36.379685+03	943	вебинар «Сальвадор Дали: главное»	3		7	6
922	2020-12-11 14:47:36.383982+03	942	онлайн-курс контекстной рекламы	3		7	6
923	2020-12-11 14:47:36.388927+03	941	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
924	2020-12-11 14:47:36.392814+03	940	онлайн-курс продюсеров	3		7	6
925	2020-12-11 14:47:36.396487+03	939	онлайн-курс видеоблогинга	3		7	6
926	2020-12-11 14:47:36.400746+03	938	онлайн-курс «Ликбез по экономике»	3		7	6
927	2020-12-11 14:47:36.404879+03	937	аудиокурс «Книги великих писателей»	3		7	6
928	2020-12-11 14:47:36.408343+03	936	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
929	2020-12-11 14:47:36.411543+03	935	онлайн-курс «Критическое мышление»	3		7	6
930	2020-12-11 14:47:36.415134+03	934	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
931	2020-12-11 14:47:36.419292+03	933	курс обучающих рассылок «50 зданий Москвы»	3		7	6
932	2020-12-11 14:47:36.422733+03	932	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
933	2020-12-11 14:47:36.425809+03	931	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
934	2020-12-11 14:47:36.428922+03	930	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
935	2020-12-11 14:47:36.433807+03	929	онлайн-курс дизайна интерьера	3		7	6
936	2020-12-11 14:47:36.437673+03	928	онлайн-курс «Гид по истории искусства»	3		7	6
937	2020-12-11 14:47:36.441068+03	927	видеоэксурсии Музея железных дорог России	3		7	6
938	2020-12-11 14:47:36.444129+03	926	Онлайн-Акселератор МБМ	3		7	6
939	2020-12-11 14:47:36.447386+03	925	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
940	2020-12-11 14:47:36.450981+03	924	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
941	2020-12-11 14:47:36.455006+03	923	«Стартап-школа МБМ»	3		7	6
942	2020-12-11 14:47:36.458299+03	922	вебинар «Смерть: отношение в разных культурах»	3		7	6
943	2020-12-11 14:47:36.46147+03	921	бесплатный онлайн-курс «Только спокойствие»	3		7	6
944	2020-12-11 14:47:36.465656+03	920	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
945	2020-12-11 14:47:36.46994+03	919	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
946	2020-12-11 14:47:36.47346+03	918	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
947	2020-12-11 14:47:36.477229+03	917	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
948	2020-12-11 14:47:36.481139+03	916	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
949	2020-12-11 14:47:36.48455+03	915	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
950	2020-12-11 14:47:36.487963+03	914	Онлайн МЕГА-квест по спасению Нового года	3		7	6
951	2020-12-11 14:47:36.490951+03	913	онлайн-курс «Как устроен наш мозг»	3		7	6
952	2020-12-11 14:47:36.494216+03	912	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
953	2020-12-11 14:47:36.49846+03	911	онлайн-курс «О чём молчат картины»	3		7	6
954	2020-12-11 14:47:36.502395+03	910	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
955	2020-12-11 14:47:36.506019+03	909	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
956	2020-12-11 14:47:36.50924+03	908	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
957	2020-12-11 14:47:36.512346+03	907	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
958	2020-12-11 14:47:36.515771+03	906	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
959	2020-12-11 14:47:36.519307+03	905	астроэкскурсия во время полного солнечного затмения	3		7	6
960	2020-12-11 14:47:36.52323+03	904	онлайн-курс «Гид по винной культуре»	3		7	6
961	2020-12-11 14:47:36.526516+03	903	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
962	2020-12-11 14:47:36.530229+03	902	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
963	2020-12-11 14:47:36.534536+03	901	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
964	2020-12-11 14:47:36.539291+03	900	Онлайн-проект «За каждой работой — Я»	3		7	6
965	2020-12-11 14:49:35.81593+03	1299	онлайн-курс SMM-продвижения	3		7	6
966	2020-12-11 14:49:35.818261+03	1298	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
967	2020-12-11 14:49:35.820525+03	1297	онлайн-курс создания презентаций в PowerPoint	3		7	6
968	2020-12-11 14:49:35.823155+03	1296	онлайн-курс веб-аналитики	3		7	6
969	2020-12-11 14:49:35.825458+03	1295	онлайн-курс создания и продвижения сайтов	3		7	6
970	2020-12-11 14:49:35.828563+03	1294	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
1344	2020-12-11 15:27:45.852512+03	3221	концерт Tricky	3		7	6
971	2020-12-11 14:49:35.831203+03	1293	вебинар «Николай II: история правления последнего императора»	3		7	6
972	2020-12-11 14:49:35.833271+03	1292	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
973	2020-12-11 14:49:35.835264+03	1291	онлайн-курс сценарного мастерства	3		7	6
974	2020-12-11 14:49:35.83774+03	1290	онлайн-курс визуального мерчандайзинга	3		7	6
975	2020-12-11 14:49:35.839746+03	1289	вебинар «Как различать психологические типы»	3		7	6
976	2020-12-11 14:49:35.841603+03	1288	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
977	2020-12-11 14:49:35.844217+03	1287	онлайн-курс обработки фотографии	3		7	6
978	2020-12-11 14:49:35.84659+03	1286	онлайн-курс психологии общения	3		7	6
979	2020-12-11 14:49:35.848393+03	1285	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
980	2020-12-11 14:49:35.850332+03	1284	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
981	2020-12-11 14:49:35.852463+03	1283	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
982	2020-12-11 14:49:35.854091+03	1282	вебинар «Депрессия: как распознать и бороться»	3		7	6
983	2020-12-11 14:49:35.855787+03	1281	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
984	2020-12-11 14:49:35.858126+03	1280	онлайн-курс скорочтения	3		7	6
985	2020-12-11 14:49:35.86001+03	1279	онлайн-курс копирайтинга	3		7	6
986	2020-12-11 14:49:35.862038+03	1278	онлайн-курс CorelDraw	3		7	6
987	2020-12-11 14:49:35.863653+03	1277	онлайн-курс Influencer marketing	3		7	6
988	2020-12-11 14:49:35.865208+03	1276	онлайн-курс «Как идеи управляют людьми»	3		7	6
989	2020-12-11 14:49:35.867068+03	1275	вебинар «Как развить эмоциональный интеллект»	3		7	6
990	2020-12-11 14:49:35.868903+03	1274	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
991	2020-12-11 14:49:35.870277+03	1273	вебинар «Манга: всё о японских комиксах»	3		7	6
992	2020-12-11 14:49:35.871812+03	1272	вебинар «Рождение СССР: как это было»	3		7	6
993	2020-12-11 14:49:35.873596+03	1271	онлайн-курс фотографии для начинающих	3		7	6
994	2020-12-11 14:49:35.875312+03	1270	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
995	2020-12-11 14:49:35.877185+03	1269	онлайн-курс общей психологии	3		7	6
996	2020-12-11 14:49:35.879148+03	1268	онлайн-курс анимации	3		7	6
997	2020-12-11 14:49:35.880962+03	1267	вебинар «Как картины становятся шедеврами»	3		7	6
998	2020-12-11 14:49:35.882616+03	1266	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
999	2020-12-11 14:49:35.884199+03	1265	онлайн-курс детской психологии для родителей	3		7	6
1000	2020-12-11 14:49:35.885846+03	1264	вебинар «Тёмная сторона сказки»	3		7	6
1001	2020-12-11 14:49:35.88779+03	1263	вебинар «Первая мировая война: главное»	3		7	6
1002	2020-12-11 14:49:35.889808+03	1262	онлайн-курс режиссуры	3		7	6
1003	2020-12-11 14:49:35.89182+03	1261	вебинар «Петербург: история города от основания до наших дней»	3		7	6
1004	2020-12-11 14:49:35.894034+03	1260	онлайн-курс по ведению и продвижению Instagram	3		7	6
1005	2020-12-11 14:49:35.896097+03	1259	вебинар «Москва во время Второй мировой: как это было»	3		7	6
1006	2020-12-11 14:49:35.898073+03	1258	вебинар «Как устроена музыка: научный взгляд»	3		7	6
1007	2020-12-11 14:49:35.899972+03	1257	онлайн-курс «Кино глазами режиссёров»	3		7	6
1008	2020-12-11 14:49:35.901646+03	1256	онлайн-курс психологии отношений	3		7	6
1009	2020-12-11 14:49:35.903113+03	1255	онлайн-курс НЛП	3		7	6
1010	2020-12-11 14:49:35.90511+03	1254	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
1011	2020-12-11 14:49:35.90697+03	1253	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
1012	2020-12-11 14:49:35.909456+03	1252	онлайн-курс писательского мастерства	3		7	6
1013	2020-12-11 14:49:35.911562+03	1251	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
1014	2020-12-11 14:49:35.913252+03	1250	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
1015	2020-12-11 14:49:35.914903+03	1249	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
1016	2020-12-11 14:49:35.916812+03	1248	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
1017	2020-12-11 14:49:35.918738+03	1247	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
1018	2020-12-11 14:49:35.920434+03	1246	вебинар «Буддизм: это про что?»	3		7	6
1019	2020-12-11 14:49:35.921978+03	1245	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
1020	2020-12-11 14:49:35.923919+03	1244	онлайн-выставка «Знамя Победы»	3		7	6
1021	2020-12-11 14:49:35.925833+03	1243	вебинар «Сальвадор Дали: главное»	3		7	6
1022	2020-12-11 14:49:35.928003+03	1242	онлайн-курс контекстной рекламы	3		7	6
1023	2020-12-11 14:49:35.9301+03	1241	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
1024	2020-12-11 14:49:35.932137+03	1240	онлайн-курс продюсеров	3		7	6
1025	2020-12-11 14:49:35.933882+03	1239	онлайн-курс видеоблогинга	3		7	6
1026	2020-12-11 14:49:35.935506+03	1238	онлайн-курс «Ликбез по экономике»	3		7	6
1345	2020-12-11 15:27:45.855796+03	3220	концерт Everthe8	3		7	6
1027	2020-12-11 14:49:35.937254+03	1237	аудиокурс «Книги великих писателей»	3		7	6
1028	2020-12-11 14:49:35.939572+03	1236	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
1029	2020-12-11 14:49:35.941695+03	1235	онлайн-курс «Критическое мышление»	3		7	6
1030	2020-12-11 14:49:35.943882+03	1234	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
1031	2020-12-11 14:49:35.945959+03	1233	курс обучающих рассылок «50 зданий Москвы»	3		7	6
1032	2020-12-11 14:49:35.947697+03	1232	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
1033	2020-12-11 14:49:35.949355+03	1231	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
1034	2020-12-11 14:49:35.950967+03	1230	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
1035	2020-12-11 14:49:35.952568+03	1229	онлайн-курс дизайна интерьера	3		7	6
1036	2020-12-11 14:49:35.954055+03	1228	онлайн-курс «Гид по истории искусства»	3		7	6
1037	2020-12-11 14:49:35.95572+03	1227	видеоэксурсии Музея железных дорог России	3		7	6
1038	2020-12-11 14:49:35.957668+03	1226	Онлайн-Акселератор МБМ	3		7	6
1039	2020-12-11 14:49:35.959913+03	1225	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
1040	2020-12-11 14:49:35.961679+03	1224	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
1041	2020-12-11 14:49:35.963223+03	1223	«Стартап-школа МБМ»	3		7	6
1042	2020-12-11 14:49:35.964744+03	1222	вебинар «Смерть: отношение в разных культурах»	3		7	6
1043	2020-12-11 14:49:35.966913+03	1221	бесплатный онлайн-курс «Только спокойствие»	3		7	6
1044	2020-12-11 14:49:35.968583+03	1220	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
1045	2020-12-11 14:49:35.970205+03	1219	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
1046	2020-12-11 14:49:35.971794+03	1218	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
1047	2020-12-11 14:49:35.974313+03	1217	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
1048	2020-12-11 14:49:35.976423+03	1216	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
1049	2020-12-11 14:49:35.978731+03	1215	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
1050	2020-12-11 14:49:35.980961+03	1214	Онлайн МЕГА-квест по спасению Нового года	3		7	6
1051	2020-12-11 14:49:35.982658+03	1213	онлайн-курс «Как устроен наш мозг»	3		7	6
1052	2020-12-11 14:49:35.98424+03	1212	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
1053	2020-12-11 14:49:35.985892+03	1211	онлайн-курс «О чём молчат картины»	3		7	6
1054	2020-12-11 14:49:35.988091+03	1210	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
1055	2020-12-11 14:49:35.99236+03	1209	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
1056	2020-12-11 14:49:35.997068+03	1208	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
1057	2020-12-11 14:49:36.001142+03	1207	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
1058	2020-12-11 14:49:36.00461+03	1206	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
1059	2020-12-11 14:49:36.009296+03	1205	астроэкскурсия во время полного солнечного затмения	3		7	6
1060	2020-12-11 14:49:36.014073+03	1204	онлайн-курс «Гид по винной культуре»	3		7	6
1061	2020-12-11 14:49:36.017848+03	1203	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
1062	2020-12-11 14:49:36.021151+03	1202	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
1063	2020-12-11 14:49:36.024679+03	1201	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
1064	2020-12-11 14:49:36.0287+03	1200	Онлайн-проект «За каждой работой — Я»	3		7	6
1065	2020-12-11 15:16:53.465483+03	2047	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	3		7	6
1066	2020-12-11 15:16:53.477526+03	2046	экскурсия по музею Каюма Насыри	3		7	6
1067	2020-12-11 15:16:53.481741+03	2045	экскурсия по музею-квартире Мусы Джалиля	3		7	6
1068	2020-12-11 15:16:53.485648+03	2044	выставка «Гроза двенадцатого года»	3		7	6
1069	2020-12-11 15:16:53.489576+03	2043	выставка «Казанские университеты М. Горького»	3		7	6
1070	2020-12-11 15:16:53.493848+03	2042	выставка «Древняя история Татарстана»	3		7	6
1071	2020-12-11 15:16:53.497971+03	2041	выставка «Казанская губерния в XVIII веке»	3		7	6
1072	2020-12-11 15:16:53.502096+03	2040	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	3		7	6
1073	2020-12-11 15:16:53.505931+03	2039	выставка «Казанская художественная школа»	3		7	6
1074	2020-12-11 15:16:53.509938+03	2038	выставка «Татарская золотая кладовая»	3		7	6
1075	2020-12-11 15:16:53.513761+03	2037	выставка «Советские игровые автоматы»	3		7	6
1076	2020-12-11 15:16:53.517735+03	2029	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	3		7	6
1077	2020-12-11 15:16:53.521864+03	2025	игровые знакомства Speed Dating №1 в Казани от Fastlife	3		7	6
1078	2020-12-11 15:16:53.525975+03	1991	English Workout в «Циферблате» на Щапова: Advanced & Beginners	3		7	6
1079	2020-12-11 15:16:53.530178+03	1990	школа акварельного скетчинга в «Циферблате» на Университетской	3		7	6
1080	2020-12-11 15:16:53.535675+03	1989	джазовые вечера в «Циферблате» на Щапова	3		7	6
1081	2020-12-11 15:16:53.541135+03	1988	киноночи в «Циферблате» на Щапова	3		7	6
1082	2020-12-11 15:16:53.546927+03	1859	забеги ParkRun	3		7	6
1083	2020-12-11 15:16:53.555207+03	1834	концерт Sirotkin	3		7	6
1084	2020-12-11 15:16:53.560748+03	1833	концерт Tricky	3		7	6
1085	2020-12-11 15:16:53.567487+03	1832	концерт Everthe8	3		7	6
1086	2020-12-11 15:16:53.575373+03	1688	концерт «Битва Клавиров: Бах vs Шопен» от Amadeus Concerts	3		7	6
1087	2020-12-11 15:16:53.58169+03	1686	Супердискотека 90-х Радио Рекорд	3		7	6
1088	2020-12-11 15:16:53.587678+03	1685	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	3		7	6
1089	2020-12-11 15:16:53.596117+03	1684	сольный концерт Виктора Комарова в шоу-пространстве «Альпенхаус»	3		7	6
1090	2020-12-11 15:16:53.601945+03	1683	караоке-спектакль «Гуляй, шальная!» в постановке Театра Двух	3		7	6
1091	2020-12-11 15:16:53.607457+03	1681	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	3		7	6
1092	2020-12-11 15:16:53.615745+03	1680	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	3		7	6
1093	2020-12-11 15:16:53.621275+03	1677	экскурсия «Петропавловская крепость для детей»	3		7	6
1094	2020-12-11 15:16:53.625959+03	1676	мастер-классы «Картина за 3 часа» в студии живописи ZuART	3		7	6
1095	2020-12-11 15:16:53.632584+03	1674	день рождения в Музее Мозга	3		7	6
1096	2020-12-11 15:16:53.636985+03	1673	экскурсия «Центр наизнанку —  неформальный Петербург»	3		7	6
1097	2020-12-11 15:16:53.641485+03	1672	праздник в виртуальной реальности в клубе Anvio VR	3		7	6
1098	2020-12-11 15:16:53.648635+03	1671	акция «Ночь распродаж» сноубордов в магазине Dosok.net	3		7	6
1099	2020-12-11 15:16:53.653226+03	1669	спектакль-прогулка «Осень. Город Достоевского. 730 шагов с Родионом Раскольниковым»	3		7	6
1100	2020-12-11 15:16:53.657813+03	1668	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	3		7	6
1101	2020-12-11 15:16:53.664182+03	1667	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	3		7	6
1102	2020-12-11 15:16:53.669696+03	1666	ярмарка «Продовольствие в удовольствие. Новогоднее застолье»	3		7	6
1103	2020-12-11 15:16:53.67593+03	1665	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	3		7	6
1104	2020-12-11 15:16:53.679799+03	1664	выставка «Город-парк»	3		7	6
1105	2020-12-11 15:16:53.684024+03	1660	благотворительный фестиваль «Добрый Питер»	3		7	6
1106	2020-12-11 15:16:53.688429+03	1659	новогодние арт-корпоративы в студии живописи ZuART	3		7	6
1107	2020-12-11 15:16:53.691997+03	1658	фестиваль «Новое кино Китая»	3		7	6
1108	2020-12-11 15:16:53.695864+03	1657	экскурсия в особняк Матильды Кшесинской	3		7	6
1109	2020-12-11 15:16:53.699845+03	1655	осенняя гаражная распродажа в «Севкабель Порту»	3		7	6
1110	2020-12-11 15:16:53.703689+03	1654	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	3		7	6
1111	2020-12-11 15:16:53.7072+03	1653	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	3		7	6
1112	2020-12-11 15:16:53.710767+03	1652	концерт «Rock при свечах»	3		7	6
1113	2020-12-11 15:16:53.715164+03	1650	мастер-классы по абстрактной живописи в технике жидкого акрила	3		7	6
1114	2020-12-11 15:16:53.719575+03	1649	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	3		7	6
1115	2020-12-11 15:16:53.724635+03	1647	курс «Как понимать современное искусство?» в лектории Artista	3		7	6
1116	2020-12-11 15:16:53.729979+03	1646	концерт «Орган. В предчувствии Рождества» в Петрикирхе	3		7	6
1117	2020-12-11 15:16:53.736183+03	1645	Гала DANCE OPEN	3		7	6
1118	2020-12-11 15:16:53.741436+03	1643	шоу «Женский Стендап»	3		7	6
1119	2020-12-11 15:16:53.74672+03	1642	мастер-классы по живописи «Картина за 3 часа»	3		7	6
1120	2020-12-11 15:16:53.75261+03	1641	выставка картин Светланы Мучновой «Дорога через века»	3		7	6
1121	2020-12-11 15:16:53.758256+03	1637	большой концерт шоу «Импровизация»	3		7	6
1122	2020-12-11 15:16:53.76461+03	1636	вечер джаза JazzLike в оранжерее Таврического сада	3		7	6
1123	2020-12-11 15:16:53.770388+03	1635	рождественская выставка в Галерее Кустановича	3		7	6
1124	2020-12-11 15:16:53.775606+03	1634	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	3		7	6
1125	2020-12-11 15:16:53.780839+03	1632	экскурсия «Мифы и легенды Петербурга»	3		7	6
1126	2020-12-11 15:16:53.786039+03	1629	концерт «Рождественский орган» от Amadeus Concerts	3		7	6
1127	2020-12-11 15:16:53.791348+03	1628	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	3		7	6
1128	2020-12-11 15:16:53.796346+03	1626	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	3		7	6
1129	2020-12-11 15:16:53.802276+03	1623	Новый год и рождественские каникулы в гостинице «Репинская»	3		7	6
1130	2020-12-11 15:16:53.807731+03	1621	быстрые свидания «ЛавСешн»	3		7	6
1131	2020-12-11 15:16:53.813216+03	1619	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	3		7	6
1132	2020-12-11 15:16:53.819403+03	1618	новогодняя выставка «Сокровища Петербурга»	3		7	6
1133	2020-12-11 15:16:53.825096+03	1617	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	3		7	6
1134	2020-12-11 15:16:53.830396+03	1616	выставка «Маэстро Филип Трейси»	3		7	6
1135	2020-12-11 15:16:53.836409+03	1615	новогоднее шоу «Старый отель» в «Ленинград Центре»	3		7	6
1136	2020-12-11 15:16:53.841898+03	1614	мастер-класс «Рождественский венок своими руками» в студии ZuArt	3		7	6
1137	2020-12-11 15:16:53.847473+03	1613	Вечеринки в Comedy Place	3		7	6
1138	2020-12-11 15:16:53.853059+03	1611	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	3		7	6
1139	2020-12-11 15:16:53.858425+03	1610	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	3		7	6
1140	2020-12-11 15:16:53.86385+03	1609	вечер живого джаза JazzLike в Музее советских игровых автоматов	3		7	6
1141	2020-12-11 15:16:53.870244+03	1605	выставка «Сад сновидений 2.0. Мистические миры»	3		7	6
1142	2020-12-11 15:16:53.875487+03	1604	VK Fest 2021	3		7	6
1143	2020-12-11 15:16:53.880932+03	1603	Фестиваль «Артдокфест»	3		7	6
1144	2020-12-11 15:16:53.886661+03	1602	рождественская ярмарка на Манежной площади	3		7	6
1145	2020-12-11 15:16:53.891915+03	1601	спектакль «Летов. Дурачок» в Большом театре кукол	3		7	6
1146	2020-12-11 15:16:53.897359+03	1600	спектакль «Нана» на Новой сцене Александринского театра	3		7	6
1147	2020-12-11 15:16:53.903289+03	1599	спектакль «Questioning / Кто ты?» в постановке Pop-up театра и театра Magic Garden (Швейцария)	3		7	6
1148	2020-12-11 15:16:53.908635+03	1598	концерт группы «Аквариум»	3		7	6
1149	2020-12-11 15:16:53.914098+03	1597	Спектакль «Профсоюз работников ада» от Pop-up театра	3		7	6
1150	2020-12-11 15:16:53.920019+03	1596	новый год — 2021 в Петербурге	3		7	6
1151	2020-12-11 15:16:53.925505+03	1595	новогодняя распродажа в аутлете Velocity	3		7	6
1152	2020-12-11 15:16:53.931002+03	1594	экскурсия «Великий мастер русского модерна»	3		7	6
1153	2020-12-11 15:16:53.937037+03	1592	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	3		7	6
1154	2020-12-11 15:16:53.942888+03	1591	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	3		7	6
1155	2020-12-11 15:16:53.949534+03	1590	акция «Праздник к вам приходит!» в комплексе водных развлечений «Мореон»	3		7	6
1156	2020-12-11 15:16:53.955511+03	1589	спектакль «Мастер и Маргарита» в Театре на Таганке	3		7	6
1157	2020-12-11 15:16:53.960823+03	1588	новогодний корпоратив в частном кинотеатре «Секрет»	3		7	6
1158	2020-12-11 15:16:53.966325+03	1587	игровые знакомства Speed Dating для гостей 18-30 лет от FastLife	3		7	6
1159	2020-12-11 15:16:53.972003+03	1586	концерт Niletto в барном кластере Bla Bla Bar	3		7	6
1160	2020-12-11 15:16:53.977282+03	1582	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	3		7	6
1161	2020-12-11 15:16:53.982849+03	1581	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	3		7	6
1162	2020-12-11 15:16:53.988838+03	1579	рождественский концерт Посольства Германии в России «Гендель-гала»	3		7	6
1163	2020-12-11 15:16:53.994123+03	1578	арт-вечеринка с рисованием картин Painty офлайн и онлайн	3		7	6
1164	2020-12-11 15:16:53.999373+03	1577	Котельническая. Лекция в сталинской высотке с видом на Кремль	3		7	6
1165	2020-12-11 15:16:54.003598+03	1576	закрытая vip-вечеринка от FastLife	3		7	6
1166	2020-12-11 15:16:54.007461+03	1575	выставка «Моя семья — моя история. Создание семьи»	3		7	6
1167	2020-12-11 15:16:54.011524+03	1574	ярмарка «Блошиный рынок»	3		7	6
1168	2020-12-11 15:16:54.015531+03	1572	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	3		7	6
1169	2020-12-11 15:16:54.019458+03	1571	спектакль «Свободная пара»	3		7	6
1170	2020-12-11 15:16:54.023237+03	1569	праздничный концерт «Новогоднее чудо»	3		7	6
1171	2020-12-11 15:16:54.026804+03	1567	быстрые свидания (speed dating) от FastLife	3		7	6
1172	2020-12-11 15:16:54.030526+03	1566	спектакль «Бумажный брак»	3		7	6
1173	2020-12-11 15:16:54.034728+03	1565	специальное предложение на верчений подъём от смотровой площадки PANORAMA360	3		7	6
1174	2020-12-11 15:16:54.038388+03	1561	спектакль «Аудиенция» в постановке Театра Наций	3		7	6
1175	2020-12-11 15:16:54.041932+03	1560	ночной концерт «Моцарт. Реквием»	3		7	6
1176	2020-12-11 15:16:54.046141+03	1559	бонусы от Tele2 для абонентов на катке в парке Горького	3		7	6
1177	2020-12-11 15:16:54.052261+03	1558	вечеринка «Большой Speed Dating» от компании FastLife	3		7	6
1178	2020-12-11 15:16:54.058044+03	1557	вечер настольных игр от FastLife	3		7	6
1179	2020-12-11 15:16:54.063649+03	1556	стендап-вечеринки от резидентов LiteStandUp и звёзд ТВ	3		7	6
1180	2020-12-11 15:16:54.069286+03	1555	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	3		7	6
1181	2020-12-11 15:16:54.075072+03	1554	опера «История Кая и Герды» в Большом театре	3		7	6
1182	2020-12-11 15:16:54.080667+03	1553	органный вечер «Бах-гала» в Кафедральном соборе святых Петра и Павла	3		7	6
1183	2020-12-11 15:16:54.087037+03	1552	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	3		7	6
1184	2020-12-11 15:16:54.093054+03	1551	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	3		7	6
1185	2020-12-11 15:16:54.099664+03	1550	спектакль «Цветы для Элджернона» в РАМТе	3		7	6
1186	2020-12-11 15:16:54.105825+03	1548	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	3		7	6
1187	2020-12-11 15:16:54.112474+03	1547	новогодние праздники с квестами от компании «Кубикулум»	3		7	6
1188	2020-12-11 15:16:54.118668+03	1544	тур по барам Москвы от City Pub Crawl	3		7	6
1189	2020-12-11 15:16:54.124304+03	1543	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	3		7	6
1190	2020-12-11 15:16:54.129788+03	1540	игровые знакомства Speed Dating № 1 в Москве от FastLife	3		7	6
1191	2020-12-11 15:16:54.136012+03	1539	Фабрика «Красный Октябрь». Фотоэкскурсия с подъёмом на крышу	3		7	6
1192	2020-12-11 15:16:54.141471+03	1537	интеллектуальные вечеринки GO!КВИЗ	3		7	6
1193	2020-12-11 15:16:54.14691+03	1536	квест «Последний Пепелац» от компании «Кубикулум»	3		7	6
1194	2020-12-11 15:16:54.152861+03	1534	концерт «Времена года. Вивальди — Пьяццолла»	3		7	6
1195	2020-12-11 15:16:54.158763+03	1533	спектакль «Лавр» во МХАТе имени Горького	3		7	6
1196	2020-12-11 15:16:54.164463+03	1532	концерты в пабе Lion's Head	3		7	6
1197	2020-12-11 15:16:54.170349+03	1531	экскурсия «Москва–Волга» по зданию Северного речного вокзала	3		7	6
1198	2020-12-11 15:16:54.175842+03	1530	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	3		7	6
1199	2020-12-11 15:16:54.181612+03	1529	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	3		7	6
1200	2020-12-11 15:16:54.187779+03	1528	японские свидания GOKON	3		7	6
1201	2020-12-11 15:16:54.193468+03	1526	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	3		7	6
1202	2020-12-11 15:16:54.199721+03	1525	стендап-вечера с участием комиков из ТВ и YouTube проектов	3		7	6
1203	2020-12-11 15:16:54.205658+03	1524	мюзикл TODD. Живой звук	3		7	6
1204	2020-12-11 15:16:54.211497+03	1523	выставка-продажа «Что происходит на свете? А просто зима»	3		7	6
1205	2020-12-11 15:16:54.218173+03	1522	маркет «4 сезона»	3		7	6
1206	2020-12-11 15:16:54.22357+03	1521	выставка в музее Like Space	3		7	6
1207	2020-12-11 15:16:54.228719+03	1520	квест «Красная кнопка»	3		7	6
1208	2020-12-11 15:16:54.234472+03	1519	индийский маркет и фуд-корт «Delhi базар»	3		7	6
1209	2020-12-11 15:16:54.24026+03	1518	аудиовизуальный арт-проект дополненной реальности Tonandi	3		7	6
1210	2020-12-11 15:16:54.246033+03	1517	Научная ёлка 2021	3		7	6
1211	2020-12-11 15:16:54.252604+03	1516	рисование в виртуальной реальности	3		7	6
1212	2020-12-11 15:16:54.257884+03	1515	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	3		7	6
1213	2020-12-11 15:16:54.263204+03	1513	зимние каникулы в комплексе «Мореон»	3		7	6
1214	2020-12-11 15:16:54.269447+03	1511	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	3		7	6
1215	2020-12-11 15:16:54.275248+03	1510	капсульные концерты на крыше	3		7	6
1216	2020-12-11 15:16:54.280934+03	1509	Увлекательные приключения в семейных музеях Москвы	3		7	6
1217	2020-12-11 15:16:54.286899+03	1507	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	3		7	6
1218	2020-12-11 15:16:54.292854+03	1506	проект VR Gallery	3		7	6
1219	2020-12-11 15:16:54.299376+03	1505	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	3		7	6
1220	2020-12-11 15:16:54.30506+03	1504	иммерсивный спектакль RESET 2.0	3		7	6
1221	2020-12-11 15:16:54.311041+03	1503	спектакль «Сказка про последнего ангела» в Театре Наций	3		7	6
1222	2020-12-11 15:16:54.317551+03	1502	спектакль «Горбачёв» в Театре Наций	3		7	6
1223	2020-12-11 15:16:54.323555+03	1501	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	3		7	6
1224	2020-12-11 15:16:54.32955+03	1500	иммерсивное шоу «Зеркало Карлоса Сантоса»	3		7	6
1225	2020-12-11 15:16:54.335484+03	1499	онлайн-курс SMM-продвижения	3		7	6
1226	2020-12-11 15:16:54.342068+03	1498	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
1227	2020-12-11 15:16:54.348369+03	1497	онлайн-курс создания презентаций в PowerPoint	3		7	6
1228	2020-12-11 15:16:54.354148+03	1496	онлайн-курс веб-аналитики	3		7	6
1229	2020-12-11 15:16:54.359942+03	1495	онлайн-курс создания и продвижения сайтов	3		7	6
1230	2020-12-11 15:16:54.366195+03	1494	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
1231	2020-12-11 15:16:54.372589+03	1493	вебинар «Николай II: история правления последнего императора»	3		7	6
1232	2020-12-11 15:16:54.378484+03	1492	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
1233	2020-12-11 15:16:54.384904+03	1491	онлайн-курс сценарного мастерства	3		7	6
1234	2020-12-11 15:16:54.39128+03	1490	онлайн-курс визуального мерчандайзинга	3		7	6
1235	2020-12-11 15:16:54.39704+03	1489	вебинар «Как различать психологические типы»	3		7	6
1236	2020-12-11 15:16:54.403622+03	1488	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
1237	2020-12-11 15:16:54.409441+03	1487	онлайн-курс обработки фотографии	3		7	6
1238	2020-12-11 15:16:54.415748+03	1486	онлайн-курс психологии общения	3		7	6
1239	2020-12-11 15:16:54.421965+03	1485	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
1240	2020-12-11 15:16:54.428497+03	1484	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
1241	2020-12-11 15:16:54.434489+03	1483	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
1242	2020-12-11 15:16:54.440475+03	1482	вебинар «Депрессия: как распознать и бороться»	3		7	6
1243	2020-12-11 15:16:54.446111+03	1481	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
1244	2020-12-11 15:16:54.451888+03	1480	онлайн-курс скорочтения	3		7	6
1245	2020-12-11 15:16:54.457501+03	1479	онлайн-курс копирайтинга	3		7	6
1246	2020-12-11 15:16:54.463153+03	1478	онлайн-курс CorelDraw	3		7	6
1247	2020-12-11 15:16:54.469256+03	1477	онлайн-курс Influencer marketing	3		7	6
1248	2020-12-11 15:16:54.474973+03	1476	онлайн-курс «Как идеи управляют людьми»	3		7	6
1249	2020-12-11 15:16:54.480752+03	1475	вебинар «Как развить эмоциональный интеллект»	3		7	6
1250	2020-12-11 15:16:54.486823+03	1474	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
1251	2020-12-11 15:16:54.492578+03	1473	вебинар «Манга: всё о японских комиксах»	3		7	6
1252	2020-12-11 15:16:54.499049+03	1472	вебинар «Рождение СССР: как это было»	3		7	6
1253	2020-12-11 15:16:54.505081+03	1471	онлайн-курс фотографии для начинающих	3		7	6
1254	2020-12-11 15:16:54.511699+03	1470	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
1255	2020-12-11 15:16:54.517665+03	1469	онлайн-курс общей психологии	3		7	6
1256	2020-12-11 15:16:54.523782+03	1468	онлайн-курс анимации	3		7	6
1257	2020-12-11 15:16:54.529293+03	1467	вебинар «Как картины становятся шедеврами»	3		7	6
1258	2020-12-11 15:16:54.535411+03	1466	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
1259	2020-12-11 15:16:54.541441+03	1465	онлайн-курс детской психологии для родителей	3		7	6
1260	2020-12-11 15:16:54.546923+03	1464	вебинар «Тёмная сторона сказки»	3		7	6
1261	2020-12-11 15:16:54.552722+03	1463	вебинар «Первая мировая война: главное»	3		7	6
1262	2020-12-11 15:16:54.557546+03	1462	онлайн-курс режиссуры	3		7	6
1263	2020-12-11 15:16:54.562354+03	1461	вебинар «Петербург: история города от основания до наших дней»	3		7	6
1264	2020-12-11 15:16:54.566991+03	1460	онлайн-курс по ведению и продвижению Instagram	3		7	6
1265	2020-12-11 15:16:54.571864+03	1459	вебинар «Москва во время Второй мировой: как это было»	3		7	6
1266	2020-12-11 15:16:54.57636+03	1458	вебинар «Как устроена музыка: научный взгляд»	3		7	6
1267	2020-12-11 15:16:54.581699+03	1457	онлайн-курс «Кино глазами режиссёров»	3		7	6
1268	2020-12-11 15:16:54.586708+03	1456	онлайн-курс психологии отношений	3		7	6
1269	2020-12-11 15:16:54.591369+03	1455	онлайн-курс НЛП	3		7	6
1270	2020-12-11 15:16:54.595944+03	1454	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
1271	2020-12-11 15:16:54.600738+03	1453	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
1272	2020-12-11 15:16:54.605771+03	1452	онлайн-курс писательского мастерства	3		7	6
1273	2020-12-11 15:16:54.610317+03	1451	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
1274	2020-12-11 15:16:54.615784+03	1450	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
1275	2020-12-11 15:16:54.620711+03	1449	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
1276	2020-12-11 15:16:54.625094+03	1448	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
1277	2020-12-11 15:16:54.629742+03	1447	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
1278	2020-12-11 15:16:54.63486+03	1446	вебинар «Буддизм: это про что?»	3		7	6
1279	2020-12-11 15:16:54.639653+03	1445	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
1280	2020-12-11 15:16:54.644208+03	1444	онлайн-выставка «Знамя Победы»	3		7	6
1281	2020-12-11 15:16:54.649461+03	1443	вебинар «Сальвадор Дали: главное»	3		7	6
1282	2020-12-11 15:16:54.654501+03	1442	онлайн-курс контекстной рекламы	3		7	6
1283	2020-12-11 15:16:54.659131+03	1441	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
1284	2020-12-11 15:16:54.663732+03	1440	онлайн-курс продюсеров	3		7	6
1285	2020-12-11 15:16:54.668704+03	1439	онлайн-курс видеоблогинга	3		7	6
1286	2020-12-11 15:16:54.673162+03	1438	онлайн-курс «Ликбез по экономике»	3		7	6
1287	2020-12-11 15:16:54.677847+03	1437	аудиокурс «Книги великих писателей»	3		7	6
1288	2020-12-11 15:16:54.6829+03	1436	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
1289	2020-12-11 15:16:54.687364+03	1435	онлайн-курс «Критическое мышление»	3		7	6
1290	2020-12-11 15:16:54.69168+03	1434	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
1291	2020-12-11 15:16:54.696315+03	1433	курс обучающих рассылок «50 зданий Москвы»	3		7	6
1292	2020-12-11 15:16:54.701078+03	1432	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
1293	2020-12-11 15:16:54.705707+03	1431	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
1294	2020-12-11 15:16:54.710312+03	1430	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
1295	2020-12-11 15:16:54.715886+03	1429	онлайн-курс дизайна интерьера	3		7	6
1296	2020-12-11 15:16:54.721868+03	1428	онлайн-курс «Гид по истории искусства»	3		7	6
1297	2020-12-11 15:16:54.727036+03	1427	видеоэксурсии Музея железных дорог России	3		7	6
1298	2020-12-11 15:16:54.732935+03	1426	Онлайн-Акселератор МБМ	3		7	6
1299	2020-12-11 15:16:54.738249+03	1425	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
1300	2020-12-11 15:16:54.74401+03	1424	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
1301	2020-12-11 15:16:54.750003+03	1423	«Стартап-школа МБМ»	3		7	6
1302	2020-12-11 15:16:54.755506+03	1422	вебинар «Смерть: отношение в разных культурах»	3		7	6
1303	2020-12-11 15:16:54.760436+03	1421	бесплатный онлайн-курс «Только спокойствие»	3		7	6
1304	2020-12-11 15:16:54.76585+03	1420	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
1305	2020-12-11 15:16:54.771006+03	1419	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
1306	2020-12-11 15:16:54.776115+03	1418	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
1307	2020-12-11 15:16:54.781486+03	1417	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
1308	2020-12-11 15:16:54.78764+03	1416	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
1309	2020-12-11 15:16:54.793006+03	1415	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
1310	2020-12-11 15:16:54.799457+03	1414	Онлайн МЕГА-квест по спасению Нового года	3		7	6
1311	2020-12-11 15:16:54.805789+03	1413	онлайн-курс «Как устроен наш мозг»	3		7	6
1312	2020-12-11 15:16:54.811772+03	1412	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
1313	2020-12-11 15:16:54.817583+03	1411	онлайн-курс «О чём молчат картины»	3		7	6
1314	2020-12-11 15:16:54.822996+03	1410	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
1315	2020-12-11 15:16:54.828294+03	1409	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
1316	2020-12-11 15:16:54.834147+03	1408	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
1317	2020-12-11 15:16:54.840057+03	1407	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
1318	2020-12-11 15:16:54.845857+03	1406	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
1319	2020-12-11 15:16:54.851999+03	1405	астроэкскурсия во время полного солнечного затмения	3		7	6
1320	2020-12-11 15:16:54.857259+03	1404	онлайн-курс «Гид по винной культуре»	3		7	6
1321	2020-12-11 15:16:54.862457+03	1403	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
1322	2020-12-11 15:16:54.868615+03	1402	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
1323	2020-12-11 15:16:54.87417+03	1401	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
1324	2020-12-11 15:16:54.879687+03	1400	Онлайн-проект «За каждой работой — Я»	3		7	6
1325	2020-12-11 15:27:45.78534+03	3435	выставка «Мемориальная экспозиция дома-музея В.И.Ленина»	3		7	6
1326	2020-12-11 15:27:45.788063+03	3434	экскурсия по музею Каюма Насыри	3		7	6
1327	2020-12-11 15:27:45.789524+03	3433	экскурсия по музею-квартире Мусы Джалиля	3		7	6
1328	2020-12-11 15:27:45.791282+03	3432	выставка «Гроза двенадцатого года»	3		7	6
1329	2020-12-11 15:27:45.793314+03	3431	выставка «Казанские университеты М. Горького»	3		7	6
1330	2020-12-11 15:27:45.795064+03	3430	выставка «Древняя история Татарстана»	3		7	6
1331	2020-12-11 15:27:45.796597+03	3429	выставка «Казанская губерния в XVIII веке»	3		7	6
1332	2020-12-11 15:27:45.798425+03	3428	выставка «Жизнь и творчество Селиха Сайдашева. Белые комнаты»	3		7	6
1333	2020-12-11 15:27:45.802038+03	3427	выставка «Казанская художественная школа»	3		7	6
1334	2020-12-11 15:27:45.805233+03	3426	выставка «Татарская золотая кладовая»	3		7	6
1335	2020-12-11 15:27:45.809658+03	3425	выставка «Советские игровые автоматы»	3		7	6
1336	2020-12-11 15:27:45.813857+03	3417	новогоднее детское интерактивное шоу «Диско-Ёлка. Новогодняя перезагрузка»	3		7	6
1337	2020-12-11 15:27:45.817146+03	3413	игровые знакомства Speed Dating №1 в Казани от Fastlife	3		7	6
1338	2020-12-11 15:27:45.821038+03	3379	English Workout в «Циферблате» на Щапова: Advanced & Beginners	3		7	6
1339	2020-12-11 15:27:45.825476+03	3378	школа акварельного скетчинга в «Циферблате» на Университетской	3		7	6
1340	2020-12-11 15:27:45.828942+03	3377	джазовые вечера в «Циферблате» на Щапова	3		7	6
1341	2020-12-11 15:27:45.832027+03	3376	киноночи в «Циферблате» на Щапова	3		7	6
1342	2020-12-11 15:27:45.845609+03	3247	забеги ParkRun	3		7	6
1343	2020-12-11 15:27:45.849361+03	3222	концерт Sirotkin	3		7	6
1346	2020-12-11 15:27:45.859636+03	3176	онлайн-курс SMM-продвижения	3		7	6
1347	2020-12-11 15:27:45.865528+03	3175	вебинар «Третий рейх: от возникновения нацистской идеологии до гибели»	3		7	6
1348	2020-12-11 15:27:45.869069+03	3174	онлайн-курс создания презентаций в PowerPoint	3		7	6
1349	2020-12-11 15:27:45.880634+03	3173	онлайн-курс веб-аналитики	3		7	6
1350	2020-12-11 15:27:45.88457+03	3172	онлайн-курс создания и продвижения сайтов	3		7	6
1351	2020-12-11 15:27:45.888322+03	3171	вебинар «История Японии: история самурайства с XII по XIX век» из курса «Как понять Японию»	3		7	6
1352	2020-12-11 15:27:45.892873+03	3170	вебинар «Николай II: история правления последнего императора»	3		7	6
1353	2020-12-11 15:27:45.896756+03	3169	вебинар «Как устроена геометрия: от Евклида до Перельмана»	3		7	6
1354	2020-12-11 15:27:45.900955+03	3168	онлайн-курс сценарного мастерства	3		7	6
1355	2020-12-11 15:27:45.905106+03	3167	онлайн-курс визуального мерчандайзинга	3		7	6
1356	2020-12-11 15:27:45.909749+03	3166	вебинар «Как различать психологические типы»	3		7	6
1357	2020-12-11 15:27:45.91375+03	3165	вебинар «Волны в физике: от света и звука до радиации»	3		7	6
1358	2020-12-11 15:27:45.917649+03	3164	онлайн-курс обработки фотографии	3		7	6
1359	2020-12-11 15:27:45.921032+03	3163	онлайн-курс психологии общения	3		7	6
1360	2020-12-11 15:27:45.925097+03	3162	вебинар «История эпидемий: как болезни влияли на мир»	3		7	6
1361	2020-12-11 15:27:45.928985+03	3161	вебинар «Прерафаэлиты: красота Средневековья»	3		7	6
1362	2020-12-11 15:27:45.932573+03	3160	вебинар «Как говорить с близкими о смерти» из курса «Жить (не) страшно»	3		7	6
1363	2020-12-11 15:27:45.941487+03	3159	вебинар «Депрессия: как распознать и бороться»	3		7	6
1364	2020-12-11 15:27:45.945381+03	3158	вебинар «История английской монархии: от основания до Елизаветы II»	3		7	6
1365	2020-12-11 15:27:45.949107+03	3157	онлайн-курс скорочтения	3		7	6
1366	2020-12-11 15:27:45.952323+03	3156	онлайн-курс копирайтинга	3		7	6
1367	2020-12-11 15:27:45.955487+03	3155	онлайн-курс CorelDraw	3		7	6
1368	2020-12-11 15:27:45.959979+03	3154	онлайн-курс Influencer marketing	3		7	6
1369	2020-12-11 15:27:45.963726+03	3153	онлайн-курс «Как идеи управляют людьми»	3		7	6
1370	2020-12-11 15:27:45.966887+03	3152	вебинар «Как развить эмоциональный интеллект»	3		7	6
1371	2020-12-11 15:27:45.970083+03	3151	вебинар «Иудаизм: ответы на частые вопросы»	3		7	6
1372	2020-12-11 15:27:45.973395+03	3150	вебинар «Манга: всё о японских комиксах»	3		7	6
1373	2020-12-11 15:27:45.977098+03	3149	вебинар «Рождение СССР: как это было»	3		7	6
1374	2020-12-11 15:27:45.981266+03	3148	онлайн-курс фотографии для начинающих	3		7	6
1375	2020-12-11 15:27:45.98491+03	3147	вебинар «Импрессионизм: сюжеты, техники, герои»	3		7	6
1376	2020-12-11 15:27:45.988974+03	3146	онлайн-курс общей психологии	3		7	6
1377	2020-12-11 15:27:45.993306+03	3145	онлайн-курс анимации	3		7	6
1378	2020-12-11 15:27:45.997213+03	3144	вебинар «Как картины становятся шедеврами»	3		7	6
1379	2020-12-11 15:27:46.000882+03	3143	вебинар «Что мы едим: польза и вред глазами химика»	3		7	6
1380	2020-12-11 15:27:46.004818+03	3142	онлайн-курс детской психологии для родителей	3		7	6
1381	2020-12-11 15:27:46.00902+03	3141	вебинар «Тёмная сторона сказки»	3		7	6
1382	2020-12-11 15:27:46.011516+03	3140	вебинар «Первая мировая война: главное»	3		7	6
1383	2020-12-11 15:27:46.013792+03	3139	онлайн-курс режиссуры	3		7	6
1384	2020-12-11 15:27:46.015685+03	3138	вебинар «Петербург: история города от основания до наших дней»	3		7	6
1385	2020-12-11 15:27:46.017671+03	3137	онлайн-курс по ведению и продвижению Instagram	3		7	6
1386	2020-12-11 15:27:46.019608+03	3136	вебинар «Москва во время Второй мировой: как это было»	3		7	6
1387	2020-12-11 15:27:46.021499+03	3135	вебинар «Как устроена музыка: научный взгляд»	3		7	6
1388	2020-12-11 15:27:46.024098+03	3134	онлайн-курс «Кино глазами режиссёров»	3		7	6
1389	2020-12-11 15:27:46.026509+03	3133	онлайн-курс психологии отношений	3		7	6
1390	2020-12-11 15:27:46.028815+03	3132	онлайн-курс НЛП	3		7	6
1391	2020-12-11 15:27:46.030826+03	3131	вебинар «Как снимать портрет, природу и архитектуру»	3		7	6
1392	2020-12-11 15:27:46.032766+03	3130	вебинар «Подделки и шедевры: как разбираться в искусстве»	3		7	6
1393	2020-12-11 15:27:46.041701+03	3129	онлайн-курс писательского мастерства	3		7	6
1394	2020-12-11 15:27:46.045644+03	3128	вебинар «Теории заговора: конспирология от древности до наших дней»	3		7	6
1395	2020-12-11 15:27:46.049694+03	3127	вебинар «Живопись после импрессионистов: Ван Гог и Сезанн»	3		7	6
1396	2020-12-11 15:27:46.052958+03	3126	вебинар «Японское кино: от Куросавы до Китано»	3		7	6
1397	2020-12-11 15:27:46.056762+03	3125	вебинар «Как не запутаться в мировой истории и запомнить главное»	3		7	6
1398	2020-12-11 15:27:46.060641+03	3124	вебинар «Сюрреализм: искусство бессознательного»	3		7	6
1399	2020-12-11 15:27:46.064544+03	3123	вебинар «Буддизм: это про что?»	3		7	6
1400	2020-12-11 15:27:46.068282+03	3122	вебинар «Классика кино: от братьев Люмьер до наших дней»	3		7	6
1401	2020-12-11 15:27:46.07209+03	3121	онлайн-выставка «Знамя Победы»	3		7	6
1402	2020-12-11 15:27:46.076617+03	3120	вебинар «Сальвадор Дали: главное»	3		7	6
1403	2020-12-11 15:27:46.081021+03	3119	онлайн-курс контекстной рекламы	3		7	6
1404	2020-12-11 15:27:46.084325+03	3118	личные встречи с представителем топовых университетов гостиничного бизнеса, кулинарии и туризма SEG	3		7	6
1405	2020-12-11 15:27:46.087511+03	3117	онлайн-курс продюсеров	3		7	6
1406	2020-12-11 15:27:46.090749+03	3116	онлайн-курс видеоблогинга	3		7	6
1407	2020-12-11 15:27:46.094014+03	3115	онлайн-курс «Ликбез по экономике»	3		7	6
1408	2020-12-11 15:27:46.097229+03	3114	аудиокурс «Книги великих писателей»	3		7	6
1409	2020-12-11 15:27:46.100033+03	3113	онлайн-курс «Fashion-иллюстрация» с ведущим художником Vogue от ARTLIFE ACADEMY	3		7	6
1410	2020-12-11 15:27:46.102816+03	3112	онлайн-курс «Критическое мышление»	3		7	6
1411	2020-12-11 15:27:46.105575+03	3111	онлайн-курс «Основы перспективы» с художником-урбанистом из Малайзии от ARTLIFE ACADEMY	3		7	6
1412	2020-12-11 15:27:46.108878+03	3110	курс обучающих рассылок «50 зданий Москвы»	3		7	6
1413	2020-12-11 15:27:46.112161+03	3109	онлайн-курс «Зарисовки путешествий» с тайваньской художницей Юджи Кай от ARTLIFE ACADEMY	3		7	6
1414	2020-12-11 15:27:46.115322+03	3108	онлайн-курс «Психология личности: 7 вебинаров, чтобы понять себя»	3		7	6
1415	2020-12-11 15:27:46.118071+03	3107	онлайн-курс «Классическая музыка: великие композиторы»	3		7	6
1416	2020-12-11 15:27:46.120587+03	3106	онлайн-курс дизайна интерьера	3		7	6
1417	2020-12-11 15:27:46.123576+03	3105	онлайн-курс «Гид по истории искусства»	3		7	6
1418	2020-12-11 15:27:46.126609+03	3104	видеоэксурсии Музея железных дорог России	3		7	6
1419	2020-12-11 15:27:46.129494+03	3076	концерт «Битва Клавиров: Бах vs Шопен» от Amadeus Concerts	3		7	6
1420	2020-12-11 15:27:46.132233+03	3075	Онлайн-Акселератор МБМ	3		7	6
1421	2020-12-11 15:27:46.137816+03	3074	Супердискотека 90-х Радио Рекорд	3		7	6
1422	2020-12-11 15:27:46.140613+03	3073	экскурсия в пожарную часть «Новогодние салюты весело и безопасно!»	3		7	6
1423	2020-12-11 15:27:46.143347+03	3072	сольный концерт Виктора Комарова в шоу-пространстве «Альпенхаус»	3		7	6
1424	2020-12-11 15:27:46.145736+03	3071	караоке-спектакль «Гуляй, шальная!» в постановке Театра Двух	3		7	6
1425	2020-12-11 15:27:46.148254+03	3070	онлайн-марафон по рисованию мандал, узоров и зентангл от студии рисования и живописи ZuART	3		7	6
1426	2020-12-11 15:27:46.150631+03	3069	экскурсия по Дому учёных (дворцу князя Владимира Александровича)	3		7	6
1427	2020-12-11 15:27:46.152624+03	3068	мастер-класс по ораторскому искусству в центре актёрского мастерства «Свобода слова!»	3		7	6
1428	2020-12-11 15:27:46.15478+03	3067	онлайн-курс «Киноклубы с „Синхронизацией“»	3		7	6
1429	2020-12-11 15:27:46.158138+03	3066	«Стартап-школа МБМ»	3		7	6
1430	2020-12-11 15:27:46.160723+03	3065	экскурсия «Петропавловская крепость для детей»	3		7	6
1431	2020-12-11 15:27:46.163787+03	3064	мастер-классы «Картина за 3 часа» в студии живописи ZuART	3		7	6
1432	2020-12-11 15:27:46.166253+03	3063	вебинар «Смерть: отношение в разных культурах»	3		7	6
1433	2020-12-11 15:27:46.168313+03	3062	день рождения в Музее Мозга	3		7	6
1434	2020-12-11 15:27:46.170182+03	3061	экскурсия «Центр наизнанку —  неформальный Петербург»	3		7	6
1435	2020-12-11 15:27:46.172592+03	3060	праздник в виртуальной реальности в клубе Anvio VR	3		7	6
1436	2020-12-11 15:27:46.1748+03	3059	акция «Ночь распродаж» сноубордов в магазине Dosok.net	3		7	6
1437	2020-12-11 15:27:46.177093+03	3057	спектакль-прогулка «Осень. Город Достоевского. 730 шагов с Родионом Раскольниковым»	3		7	6
1438	2020-12-11 15:27:46.17908+03	3056	концерт «Музыка при свечах. Мелодии Рождества» от Amadeus Concerts	3		7	6
1439	2020-12-11 15:27:46.180791+03	3055	мастер-класс «Создай свою картину для интерьера» в студии рисования и живописи Zuart	3		7	6
1440	2020-12-11 15:27:46.182382+03	3054	ярмарка «Продовольствие в удовольствие. Новогоднее застолье»	3		7	6
1441	2020-12-11 15:27:46.183941+03	3053	мастер-класс «Интерьерная картина спиртовыми чернилами» в студии ZuART	3		7	6
1442	2020-12-11 15:27:46.185663+03	3052	выставка «Город-парк»	3		7	6
1443	2020-12-11 15:27:46.187359+03	3048	благотворительный фестиваль «Добрый Питер»	3		7	6
1444	2020-12-11 15:27:46.189428+03	3047	новогодние арт-корпоративы в студии живописи ZuART	3		7	6
1445	2020-12-11 15:27:46.191342+03	3046	фестиваль «Новое кино Китая»	3		7	6
1446	2020-12-11 15:27:46.194024+03	3045	экскурсия в особняк Матильды Кшесинской	3		7	6
1447	2020-12-11 15:27:46.197737+03	3043	осенняя гаражная распродажа в «Севкабель Порту»	3		7	6
1448	2020-12-11 15:27:46.200853+03	3042	новогодняя программа «Гринч — похититель Рождества» в верёвочном парке «Высотный город»	3		7	6
1449	2020-12-11 15:27:46.204075+03	3041	мюзикл «Мисс Сайгон» в Театре музыкальной комедии	3		7	6
1450	2020-12-11 15:27:46.208346+03	3040	концерт «Rock при свечах»	3		7	6
1451	2020-12-11 15:27:46.21209+03	3038	мастер-классы по абстрактной живописи в технике жидкого акрила	3		7	6
1452	2020-12-11 15:27:46.215725+03	3037	выставка «Каллиграфия — музыка для глаз. Пётр Чобитько и его ученики»	3		7	6
1453	2020-12-11 15:27:46.219834+03	3035	курс «Как понимать современное искусство?» в лектории Artista	3		7	6
1454	2020-12-11 15:27:46.224136+03	3034	концерт «Орган. В предчувствии Рождества» в Петрикирхе	3		7	6
1455	2020-12-11 15:27:46.227855+03	3033	Гала DANCE OPEN	3		7	6
1456	2020-12-11 15:27:46.231138+03	3031	шоу «Женский Стендап»	3		7	6
1457	2020-12-11 15:27:46.238061+03	3030	мастер-классы по живописи «Картина за 3 часа»	3		7	6
1458	2020-12-11 15:27:46.241396+03	3029	выставка картин Светланы Мучновой «Дорога через века»	3		7	6
1459	2020-12-11 15:27:46.244567+03	3025	большой концерт шоу «Импровизация»	3		7	6
1460	2020-12-11 15:27:46.247871+03	3024	вечер джаза JazzLike в оранжерее Таврического сада	3		7	6
1461	2020-12-11 15:27:46.251934+03	3023	рождественская выставка в Галерее Кустановича	3		7	6
1462	2020-12-11 15:27:46.256032+03	3022	городская ярмарка Seaside Bazaar в пространстве «Севкабель Порт»	3		7	6
1463	2020-12-11 15:27:46.259733+03	3020	экскурсия «Мифы и легенды Петербурга»	3		7	6
1464	2020-12-11 15:27:46.263354+03	3017	концерт «Рождественский орган» от Amadeus Concerts	3		7	6
1465	2020-12-11 15:27:46.26661+03	3016	романтическое арт-свидание для двоих в студии рисования и живописи Zuart	3		7	6
1466	2020-12-11 15:27:46.269691+03	3014	выставка мировых рекордов и невероятных фактов «ТИТИКАКА»	3		7	6
1467	2020-12-11 15:27:46.273018+03	3011	Новый год и рождественские каникулы в гостинице «Репинская»	3		7	6
1468	2020-12-11 15:27:46.27623+03	3009	быстрые свидания «ЛавСешн»	3		7	6
1469	2020-12-11 15:27:46.279376+03	3007	трёхмерная панорама «Память говорит. Дорога через войну» в пространстве «Севкабель Порт»	3		7	6
1470	2020-12-11 15:27:46.282658+03	3006	новогодняя выставка «Сокровища Петербурга»	3		7	6
1471	2020-12-11 15:27:46.285774+03	3005	выставка ручного творчества, ювелирного мастерства и подарков «Авторские штучки»	3		7	6
1472	2020-12-11 15:27:46.288949+03	3004	выставка «Маэстро Филип Трейси»	3		7	6
1473	2020-12-11 15:27:46.292465+03	3003	новогоднее шоу «Старый отель» в «Ленинград Центре»	3		7	6
1474	2020-12-11 15:27:46.296666+03	3002	мастер-класс «Рождественский венок своими руками» в студии ZuArt	3		7	6
1475	2020-12-11 15:27:46.300176+03	3001	Вечеринки в Comedy Place	3		7	6
1476	2020-12-11 15:27:46.303495+03	2999	скандинавские новогодние каникулы на базе отдыха «Пасторское озеро»	3		7	6
1477	2020-12-11 15:27:46.307067+03	2998	мультимедийный проект «Айвазовский, Кандинский и Бэнкси. Ожившие полотна»​​	3		7	6
1478	2020-12-11 15:27:46.311632+03	2997	вечер живого джаза JazzLike в Музее советских игровых автоматов	3		7	6
1479	2020-12-11 15:27:46.315908+03	2993	выставка «Сад сновидений 2.0. Мистические миры»	3		7	6
1480	2020-12-11 15:27:46.319248+03	2992	VK Fest 2021	3		7	6
1481	2020-12-11 15:27:46.323043+03	2991	Фестиваль «Артдокфест»	3		7	6
1482	2020-12-11 15:27:46.326823+03	2990	рождественская ярмарка на Манежной площади	3		7	6
1483	2020-12-11 15:27:46.330412+03	2989	спектакль «Летов. Дурачок» в Большом театре кукол	3		7	6
1484	2020-12-11 15:27:46.333584+03	2988	спектакль «Нана» на Новой сцене Александринского театра	3		7	6
1485	2020-12-11 15:27:46.336613+03	2987	спектакль «Questioning / Кто ты?» в постановке Pop-up театра и театра Magic Garden (Швейцария)	3		7	6
1486	2020-12-11 15:27:46.340343+03	2986	концерт группы «Аквариум»	3		7	6
1487	2020-12-11 15:27:46.344357+03	2985	Спектакль «Профсоюз работников ада» от Pop-up театра	3		7	6
1488	2020-12-11 15:27:46.347694+03	2984	новый год — 2021 в Петербурге	3		7	6
1489	2020-12-11 15:27:46.350887+03	2983	новогодняя распродажа в аутлете Velocity	3		7	6
1490	2020-12-11 15:27:46.354033+03	2982	экскурсия «Великий мастер русского модерна»	3		7	6
1491	2020-12-11 15:27:46.358477+03	2981	бесплатный онлайн-курс «Только спокойствие»	3		7	6
1492	2020-12-11 15:27:46.362336+03	2980	концерт «Все кантаты Баха» с Романом Насоновым в Кафедральном соборе святых Петра и Павла	3		7	6
1493	2020-12-11 15:27:46.365613+03	2979	спектакль «В Бореньке чего-то нет» в постановке «Квартета И»	3		7	6
1494	2020-12-11 15:27:46.368953+03	2978	акция «Праздник к вам приходит!» в комплексе водных развлечений «Мореон»	3		7	6
1495	2020-12-11 15:27:46.372554+03	2977	спектакль «Мастер и Маргарита» в Театре на Таганке	3		7	6
1496	2020-12-11 15:27:46.376353+03	2976	новогодний корпоратив в частном кинотеатре «Секрет»	3		7	6
1497	2020-12-11 15:27:46.379995+03	2975	игровые знакомства Speed Dating для гостей 18-30 лет от FastLife	3		7	6
1498	2020-12-11 15:27:46.383983+03	2974	концерт Niletto в барном кластере Bla Bla Bar	3		7	6
1499	2020-12-11 15:27:46.387561+03	2973	онлайн-курс «История Европы: от Античности до Евросоюза»	3		7	6
1500	2020-12-11 15:27:46.392191+03	2972	онлайн-курс «Скетчинг от А до Я» от ARTLIFE ACADEMY	3		7	6
1501	2020-12-11 15:27:46.395863+03	2971	Онлайн-выпуск PechaKucha Night Show. Terra Incognita	3		7	6
1502	2020-12-11 15:27:46.399296+03	2970	новогодние скидки на питбайки и кроссовые мотоциклы BSE от BSE Russia	3		7	6
1503	2020-12-11 15:27:46.402772+03	2969	Гостиница «Ленинградская». Фотоэкскурсия в высотку-шедевр сталинской эклектики	3		7	6
1504	2020-12-11 15:27:46.407918+03	2968	онлайн-лекции по искусству, моде и кино от Vekarta	3		7	6
1505	2020-12-11 15:27:46.412542+03	2967	рождественский концерт Посольства Германии в России «Гендель-гала»	3		7	6
1506	2020-12-11 15:27:46.416122+03	2966	арт-вечеринка с рисованием картин Painty офлайн и онлайн	3		7	6
1507	2020-12-11 15:27:46.419725+03	2965	Котельническая. Лекция в сталинской высотке с видом на Кремль	3		7	6
1508	2020-12-11 15:27:46.422979+03	2964	закрытая vip-вечеринка от FastLife	3		7	6
1509	2020-12-11 15:27:46.426087+03	2963	выставка «Моя семья — моя история. Создание семьи»	3		7	6
1510	2020-12-11 15:27:46.429468+03	2962	ярмарка «Блошиный рынок»	3		7	6
1511	2020-12-11 15:27:46.431851+03	2961	вебинар «Как за 1 месяц овладеть профессией „Тестировщик ПО“»	3		7	6
1512	2020-12-11 15:27:46.43775+03	2960	экскурсия «Высотки Пресни» с подъёмом на крышу небоскрёба	3		7	6
1513	2020-12-11 15:27:46.440784+03	2959	спектакль «Свободная пара»	3		7	6
1514	2020-12-11 15:27:46.443319+03	2958	дистанционные курсы для предпринимателей в «Онлайн-Академии МБМ»	3		7	6
1515	2020-12-11 15:27:46.445836+03	2957	праздничный концерт «Новогоднее чудо»	3		7	6
1516	2020-12-11 15:27:46.448115+03	2956	Онлайн МЕГА-квест по спасению Нового года	3		7	6
1517	2020-12-11 15:27:46.450223+03	2955	быстрые свидания (speed dating) от FastLife	3		7	6
1518	2020-12-11 15:27:46.452169+03	2954	спектакль «Бумажный брак»	3		7	6
1519	2020-12-11 15:27:46.454275+03	2953	специальное предложение на верчений подъём от смотровой площадки PANORAMA360	3		7	6
1520	2020-12-11 15:27:46.457116+03	2952	онлайн-курс «Как устроен наш мозг»	3		7	6
1521	2020-12-11 15:27:46.459749+03	2951	детские онлайн-экскурсии с Мышонком в Музее железных дорог России	3		7	6
1522	2020-12-11 15:27:46.462313+03	2950	онлайн-курс «О чём молчат картины»	3		7	6
1523	2020-12-11 15:27:46.464555+03	2949	спектакль «Аудиенция» в постановке Театра Наций	3		7	6
1524	2020-12-11 15:27:46.466568+03	2948	ночной концерт «Моцарт. Реквием»	3		7	6
1525	2020-12-11 15:27:46.468657+03	2947	бонусы от Tele2 для абонентов на катке в парке Горького	3		7	6
1526	2020-12-11 15:27:46.470614+03	2946	вечеринка «Большой Speed Dating» от компании FastLife	3		7	6
1527	2020-12-11 15:27:46.472942+03	2945	вечер настольных игр от FastLife	3		7	6
1528	2020-12-11 15:27:46.475541+03	2944	стендап-вечеринки от резидентов LiteStandUp и звёзд ТВ	3		7	6
1529	2020-12-11 15:27:46.478133+03	2943	занятия по стрельбе из пистолета в пневматическом тире клуба «Лабиринт»	3		7	6
1530	2020-12-11 15:27:46.480433+03	2942	опера «История Кая и Герды» в Большом театре	3		7	6
1531	2020-12-11 15:27:46.482404+03	2941	органный вечер «Бах-гала» в Кафедральном соборе святых Петра и Павла	3		7	6
1532	2020-12-11 15:27:46.484275+03	2940	выставка образовательных программ «Арт. Дизайн. Архитектура. Мода»	3		7	6
1533	2020-12-11 15:27:46.486244+03	2939	концерт «Музыкальный мир фэнтези: Хогвартс и „Хроники Нарнии“»	3		7	6
1534	2020-12-11 15:27:46.488453+03	2938	спектакль «Цветы для Элджернона» в РАМТе	3		7	6
1535	2020-12-11 15:27:46.491383+03	2937	бесплатные онлайн-уроки по английскому языку в школах Wall Street English	3		7	6
1536	2020-12-11 15:27:46.493985+03	2936	вечеринка «EYEGAZING, или Свидания без слов» от FastLife	3		7	6
1537	2020-12-11 15:27:46.496221+03	2935	новогодние праздники с квестами от компании «Кубикулум»	3		7	6
1538	2020-12-11 15:27:46.498503+03	2934	виртуальное путешествие 360° на молочную ферму «ЭкоНивы»	3		7	6
1539	2020-12-11 15:27:46.501694+03	2933	виртуальная выставка каллиграфии «Образ и буква»	3		7	6
1540	2020-12-11 15:27:46.504959+03	2932	тур по барам Москвы от City Pub Crawl	3		7	6
1541	2020-12-11 15:27:46.509645+03	2931	занятия по стрельбе из лука и арбалета в клубе «Лабиринт»	3		7	6
1542	2020-12-11 15:27:46.513732+03	2930	Онлайн-игра GO!КВИЗ на день рождения	3		7	6
1543	2020-12-11 15:27:46.517061+03	2929	кулинарные мастер-классы и розыгрыш призов на «Ломоносовской ярмарке»	3		7	6
1544	2020-12-11 15:27:46.520082+03	2928	игровые знакомства Speed Dating № 1 в Москве от FastLife	3		7	6
1545	2020-12-11 15:27:46.524015+03	2927	Фабрика «Красный Октябрь». Фотоэкскурсия с подъёмом на крышу	3		7	6
1546	2020-12-11 15:27:46.528075+03	2926	астроэкскурсия во время полного солнечного затмения	3		7	6
1547	2020-12-11 15:27:46.531835+03	2925	интеллектуальные вечеринки GO!КВИЗ	3		7	6
1548	2020-12-11 15:27:46.535064+03	2924	квест «Последний Пепелац» от компании «Кубикулум»	3		7	6
1549	2020-12-11 15:27:46.538578+03	2923	онлайн-курс «Гид по винной культуре»	3		7	6
1550	2020-12-11 15:27:46.542978+03	2922	концерт «Времена года. Вивальди — Пьяццолла»	3		7	6
1551	2020-12-11 15:27:46.546726+03	2921	спектакль «Лавр» во МХАТе имени Горького	3		7	6
1552	2020-12-11 15:27:46.549923+03	2920	концерты в пабе Lion's Head	3		7	6
1553	2020-12-11 15:27:46.553044+03	2919	экскурсия «Москва–Волга» по зданию Северного речного вокзала	3		7	6
1554	2020-12-11 15:27:46.556407+03	2918	квест в реальности «Карты, деньги, два стола» от проекта «Кубикулум»	3		7	6
1555	2020-12-11 15:27:46.5603+03	2917	Рассветомания. Фотоэкскурсия на крышу небоскрёба на рассвете	3		7	6
1556	2020-12-11 15:27:46.564224+03	2916	японские свидания GOKON	3		7	6
1557	2020-12-11 15:27:46.567544+03	2915	онлайн-урок «Арт-терапия. Нейрографика» от студии живописи ZuART	3		7	6
1558	2020-12-11 15:27:46.570647+03	2914	выставка «Карл Фаберже и Фёдор Рюкерт. Шедевры русской эмали»	3		7	6
1559	2020-12-11 15:27:46.574829+03	2913	стендап-вечера с участием комиков из ТВ и YouTube проектов	3		7	6
1560	2020-12-11 15:27:46.578675+03	2912	мюзикл TODD. Живой звук	3		7	6
1561	2020-12-11 15:27:46.58208+03	2911	выставка-продажа «Что происходит на свете? А просто зима»	3		7	6
1562	2020-12-11 15:27:46.585652+03	2910	маркет «4 сезона»	3		7	6
1563	2020-12-11 15:27:46.589835+03	2909	выставка в музее Like Space	3		7	6
1564	2020-12-11 15:27:46.594225+03	2908	квест «Красная кнопка»	3		7	6
1565	2020-12-11 15:27:46.597698+03	2907	индийский маркет и фуд-корт «Delhi базар»	3		7	6
1566	2020-12-11 15:27:46.601048+03	2906	аудиовизуальный арт-проект дополненной реальности Tonandi	3		7	6
1567	2020-12-11 15:27:46.60437+03	2905	Научная ёлка 2021	3		7	6
1568	2020-12-11 15:27:46.607756+03	2904	рисование в виртуальной реальности	3		7	6
1569	2020-12-11 15:27:46.610951+03	2903	стендап от комиков ТНТ, СТС и интернет-проектов по всей Москве	3		7	6
1570	2020-12-11 15:27:46.614197+03	2902	благотворительный онлайн-фестиваль «Собаки, которые любят»	3		7	6
1571	2020-12-11 15:27:46.617937+03	2901	зимние каникулы в комплексе «Мореон»	3		7	6
1572	2020-12-11 15:27:46.621304+03	2900	быстрые свидания онлайн для участников 18-40 лет от компании Fastlife	3		7	6
1573	2020-12-11 15:27:46.626011+03	2899	мультимедийно-голографический спектакль «Fluids: метасоединение искусства и технологий»	3		7	6
1574	2020-12-11 15:27:46.630257+03	2898	капсульные концерты на крыше	3		7	6
1575	2020-12-11 15:27:46.634103+03	2897	Увлекательные приключения в семейных музеях Москвы	3		7	6
1576	2020-12-11 15:27:46.640088+03	2896	Онлайн-проект «За каждой работой — Я»	3		7	6
1577	2020-12-11 15:27:46.643758+03	2895	мультимедийные выставки «Айвазовский. Кандинский. Ван Гог и Климт. Ожившие полотна»​​	3		7	6
1578	2020-12-11 15:27:46.646695+03	2894	проект VR Gallery	3		7	6
1579	2020-12-11 15:27:46.64981+03	2893	стендап «Проверка материала» от комиков с ТВ и интернет-проектов	3		7	6
1580	2020-12-11 15:27:46.651849+03	2892	иммерсивный спектакль RESET 2.0	3		7	6
1581	2020-12-11 15:27:46.654005+03	2891	спектакль «Сказка про последнего ангела» в Театре Наций	3		7	6
1582	2020-12-11 15:27:46.656726+03	2890	спектакль «Горбачёв» в Театре Наций	3		7	6
1583	2020-12-11 15:27:46.659005+03	2889	спектакль «Ракеты взлетают и разбиваются рассыпаются в воздухе» в Центре имени Мейерхольда	3		7	6
1584	2020-12-11 15:27:46.661132+03	2888	иммерсивное шоу «Зеркало Карлоса Сантоса»	3		7	6
1585	2020-12-11 15:56:00.290359+03	4291	Приключения Ам Няма	3		7	6
1586	2020-12-11 15:56:00.294282+03	4290	Маша и Медведь	3		7	6
1587	2020-12-11 15:56:00.297162+03	4289	Вне игры	3		7	6
1588	2020-12-11 15:56:00.299688+03	4288	Бесстыдники	3		7	6
1589	2020-12-11 15:56:00.302615+03	4287	Кухня	3		7	6
1590	2020-12-11 15:56:00.305285+03	4286	Тобол	3		7	6
1591	2020-12-11 15:56:00.307721+03	4285	ИП Пирогова	3		7	6
1592	2020-12-11 15:56:00.310165+03	4284	Хороший человек	3		7	6
1593	2020-12-11 15:56:00.313481+03	4283	Родители	3		7	6
1594	2020-12-11 15:56:00.31583+03	4282	Бывшие	3		7	6
1595	2020-12-11 15:56:00.317996+03	4281	Фитнес	3		7	6
1596	2020-12-11 15:56:00.321226+03	4280	Шерлок в России	3		7	6
1597	2020-12-11 15:56:00.323816+03	4279	Содержанки	3		7	6
1598	2020-12-11 15:56:00.325838+03	4278	Новенький	3		7	6
1599	2020-12-11 15:56:00.327723+03	4277	257 причин чтобы жить	3		7	6
1600	2020-12-11 15:56:00.329645+03	4276	Гранд	3		7	6
1601	2020-12-11 16:46:34.511218+03	7	user1	3		4	6
1602	2020-12-11 16:46:34.515582+03	8	user2	3		4	6
1603	2020-12-11 16:46:34.519382+03	9	user3	3		4	6
1604	2020-12-11 16:46:34.522267+03	10	user4	3		4	6
1605	2020-12-11 16:46:34.525361+03	11	user5	3		4	6
1606	2020-12-11 16:46:34.52753+03	12	user6	3		4	6
1607	2020-12-11 16:46:34.529379+03	13	user7	3		4	6
1608	2020-12-11 16:46:34.531061+03	14	user8	3		4	6
1609	2020-12-11 17:41:01.750937+03	16	dikorolyov2	3		4	6
1610	2020-12-11 17:42:17.131053+03	17	dikorolyov2	3		4	6
1611	2020-12-11 17:44:31.901228+03	18	dikorolyov2	3		4	6
1612	2020-12-11 17:48:33.801683+03	4308	Художественный фильм "Спиздили"	1	[{"added": {}}]	7	6
1613	2020-12-11 19:42:28.838212+03	25	OneToOneRoom object (25)	3		11	6
1614	2020-12-19 14:57:19.922403+03	4309	вфоывфыждвфждыьвжфывйжцлвлфждьывлдьйцлвтфыжлвтжйдцьвжытьвлйцтвдлфытвдфлтывлйцжвлыфвллжйцтвффывдйцлтв	1	[{"added": {}}]	7	6
1615	2020-12-19 14:57:46.116544+03	4309	вфоывфыждвфжд жфывйжцлвлфждьывлдьйцлвтфыжлвтжйдцьвжытьвлйцтвдлф ытвдфлтывлйцжвлыфвл лжйцтвффывдйцлтв	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	7	6
1616	2020-12-19 14:59:03.796851+03	4309	просто слова просто слова просто слова просто слова просто слова просто слова просто слова просто сл	2	[{"changed": {"fields": ["\\u041d\\u0430\\u0437\\u0432\\u0430\\u043d\\u0438\\u0435"]}}]	7	6
1617	2020-12-19 15:27:41.03707+03	4309	просто слова просто слова просто слова просто слова просто слова просто слова просто слова просто сл	2	[{"changed": {"fields": ["\\u041e\\u043f\\u0438\\u0441\\u0430\\u043d\\u0438\\u0435"]}}]	7	6
1618	2020-12-19 16:44:23.289224+03	6	Jimiliani	2	[{"changed": {"fields": ["First name"]}}]	4	6
1619	2020-12-19 18:53:28.16608+03	27	OneToOneRoom object (27)	3		11	6
1620	2020-12-19 18:54:10.62228+03	28	OneToOneRoom object (28)	3		11	6
1621	2020-12-19 18:55:40.555094+03	29	OneToOneRoom object (29)	3		11	6
1622	2020-12-19 18:56:37.027029+03	30	OneToOneRoom object (30)	3		11	6
1623	2020-12-20 18:44:46.398442+03	11	dikorolyov2	2	[{"changed": {"fields": ["\\u0421\\u0441\\u044b\\u043b\\u043a\\u0430 \\u043d\\u0430 \\u043f\\u0440\\u043e\\u0444\\u0438\\u043b\\u044c \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432\\u043e \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435"]}}]	9	6
1624	2020-12-20 18:45:55.70501+03	11	dikorolyov2	2	[{"changed": {"fields": ["Id \\u043f\\u043e\\u043b\\u044c\\u0437\\u043e\\u0432\\u0430\\u0442\\u0435\\u043b\\u044f \\u0432\\u043e \\u0432\\u043a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u0435"]}}]	9	6
1625	2020-12-20 18:48:00.964687+03	27	dikorolyov2 Художественный фильм "Спиздили"	1	[{"added": {}}]	10	6
1626	2020-12-20 21:06:46.047358+03	19	dikorolyov2	3		4	6
1627	2020-12-20 21:48:10.552835+03	21	dikorolyov2	3		4	6
1628	2020-12-20 21:48:56.149564+03	22	dikorolyov2	3		4	6
\.


--
-- Data for Name: django_celery_beat_clockedschedule; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_clockedschedule (id, clocked_time) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_crontabschedule; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year, timezone) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_intervalschedule; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_periodictask; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_periodictask (id, name, task, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description, crontab_id, interval_id, solar_id, one_off, start_time, priority, headers, clocked_id, expire_seconds) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_periodictasks; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: django_celery_beat_solarschedule; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_beat_solarschedule (id, event, latitude, longitude) FROM stdin;
\.


--
-- Data for Name: django_celery_results_chordcounter; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_results_chordcounter (id, group_id, sub_tasks, count) FROM stdin;
\.


--
-- Data for Name: django_celery_results_taskresult; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_celery_results_taskresult (id, task_id, status, content_type, content_encoding, result, date_done, traceback, meta, task_args, task_kwargs, task_name, worker, date_created) FROM stdin;
1	8843232a-ed9c-4d24-98b2-6f91dc48314b	SUCCESS	application/json	utf-8	null	2020-11-23 21:07:19.967518+03	\N	{"children": []}	"()"	"{}"	notifier.celery.debug_task	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 21:07:19.963571+03
2	a1a82a19-428c-4541-bd55-7cb130f795d7	FAILURE	application/json	utf-8	{"exc_type": "NotRegistered", "exc_message": ["content.tasks.send_scheduled_email"], "exc_module": "celery.exceptions"}	2020-11-23 22:55:44.371766+03	\N	{"children": []}	null	null	\N	\N	2020-11-23 22:55:44.371709+03
3	4aa083c2-fcf7-41cc-bff5-055b8756c38f	FAILURE	application/json	utf-8	{"exc_type": "NotRegistered", "exc_message": ["content.tasks.send_scheduled_email"], "exc_module": "celery.exceptions"}	2020-11-23 22:55:52.820399+03	\N	{"children": []}	null	null	\N	\N	2020-11-23 22:55:52.820344+03
4	babef5e6-3aac-4b65-8728-2b18847b0405	FAILURE	application/json	utf-8	{"exc_type": "NotRegistered", "exc_message": ["send_scheduled_email"], "exc_module": "celery.exceptions"}	2020-11-23 22:56:12.438543+03	\N	{"children": []}	null	null	\N	\N	2020-11-23 22:56:12.438494+03
5	938d56f1-109e-4475-8111-1095c1322a76	FAILURE	application/json	utf-8	{"exc_type": "NotRegistered", "exc_message": ["send_scheduled_email"], "exc_module": "celery.exceptions"}	2020-11-23 22:56:21.374207+03	\N	{"children": []}	null	null	\N	\N	2020-11-23 22:56:21.374141+03
6	e456d213-18b6-4878-b88f-cce05c6512aa	SUCCESS	application/json	utf-8	null	2020-11-23 22:58:59.104931+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:58:59.099737+03
7	1f7a2f9b-6524-48f0-a179-fab41e5f4a46	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:07.575529+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:07.568753+03
8	20895134-930d-4029-be42-279855af5573	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:17.568891+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:17.562348+03
9	01d16501-53dd-47ee-8e5b-2edea3d2058d	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:27.56614+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:27.56073+03
10	2e4f3be2-8c56-45c9-beaa-4cb62e1f61d8	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:36.453561+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:36.448968+03
11	f45eb4c9-c20b-4362-a78d-f303164d9e0c	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:36.903168+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:36.899898+03
12	07c20edd-5fcb-487b-b06f-ca20846963a6	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:38.900306+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:38.892909+03
13	b4df6880-accb-4ec8-9d83-a17545b4f6bd	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:40.889852+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:40.88669+03
14	cd30c80a-728e-4a5d-b4e4-9f9348f9932e	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:42.89965+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:42.893265+03
15	0cefca97-31c1-4e14-bde8-75266fc3df34	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:44.89472+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:44.890292+03
16	5c29c0a3-0bd5-464b-af15-e9a83428be7f	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:46.924041+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:46.89112+03
17	ccf99dcf-6599-4576-be46-696593b82fa1	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:48.904549+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:48.899796+03
18	2162ebe1-50ec-4feb-8f63-65d2cb64fb0e	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:50.898205+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:50.891918+03
19	d1813291-2604-4da5-b009-27c9ead32e1d	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:52.897446+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:52.889989+03
20	3b8b85ca-3329-4f0d-95c3-348139d3cc74	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:54.916033+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:54.907109+03
21	6e69caa5-ec73-4d5d-9a54-65a5de1a6572	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:56.899335+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:56.893119+03
22	79f2e13a-b8c4-4547-b5de-c098b7109ee7	SUCCESS	application/json	utf-8	null	2020-11-23 22:59:58.902455+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 22:59:58.894816+03
23	02f5bce1-abf7-42f8-a657-d11ad9c2e0c0	SUCCESS	application/json	utf-8	null	2020-11-23 23:00:00.897045+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:00:00.892222+03
24	0ddb2c9a-be10-4e69-91ea-a45078722a37	SUCCESS	application/json	utf-8	null	2020-11-23 23:00:02.901485+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:00:02.893531+03
25	8c44fc96-3d56-40e9-adb6-ffb1a9b4c3b8	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:09.598817+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:09.590745+03
26	48f00685-5b17-4c36-9d1e-c2421dfad1e3	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:10.071916+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:10.056091+03
27	ec69a27e-827e-45e2-96aa-935680c8f2dc	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:12.066182+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:12.051924+03
28	01f731c1-2202-4645-814c-8d32c75c26e7	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:14.045155+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:14.036657+03
29	04db18ff-aeb5-4422-82ab-6b267d7622f9	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:16.068854+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:16.053281+03
30	4720c218-6956-423b-9625-63137a67f8d2	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:18.068169+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:18.053599+03
31	6bf6e9e2-e317-483c-a927-eb56fae99824	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:20.066221+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:20.052787+03
32	7546239c-c832-486a-9fd2-2c630e729991	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:22.052211+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:22.03829+03
33	fd089c1b-68eb-48c0-817e-1c55266303f7	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:53.893632+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:53.88798+03
34	0e9318b3-bd83-4b35-9f9c-347a5f182800	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:54.321624+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:54.312531+03
35	7400f47a-52df-423a-aaf1-053f030946f1	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:56.324985+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:56.315771+03
90	a4ee66d0-7a5d-4b9d-8ed2-30a007e738c3	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:35.53201+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:33.830982+03
36	a49bf640-59b4-4678-afb9-9e577f8aa830	SUCCESS	application/json	utf-8	null	2020-11-23 23:01:58.321587+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:01:58.313009+03
89	9b30aa68-da39-4071-8ae9-b7234b013953	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:35.870172+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:33.827461+03
37	358c8706-988c-4197-b8f2-94aa35e60cdb	SUCCESS	application/json	utf-8	null	2020-11-23 23:04:40.450305+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:04:38.641771+03
38	fec77f53-bb1a-402d-abf4-07adf77df859	SUCCESS	application/json	utf-8	null	2020-11-23 23:04:40.904896+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:04:39.11888+03
39	d98c7ffb-e101-4d7a-a8ad-0c88f4f49391	SUCCESS	application/json	utf-8	null	2020-11-23 23:04:42.422858+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:04:41.131246+03
40	5dd423bc-9c3a-4b88-bcb3-13ecbe5ae1b3	SUCCESS	application/json	utf-8	null	2020-11-23 23:04:44.446003+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:04:43.136917+03
41	d5b9eaf1-83ec-4d58-9a46-ca957092bfe6	SUCCESS	application/json	utf-8	null	2020-11-23 23:04:46.530867+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:04:45.136576+03
42	dd9e0b60-d7fc-4a17-862d-b00e0fc2a663	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:27.048432+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:25.660099+03
43	1db94f11-8f49-491c-8398-5ab6dc421fcb	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:28.058989+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:26.607636+03
44	3225dc68-82d6-4ed9-a637-26f4053bc544	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:30.089826+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:28.606135+03
45	6b89b431-13b7-4992-9dc4-d1474dfe04f1	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:31.968498+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:30.595658+03
46	52566f00-868e-4826-9d76-883c546ca249	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:33.856165+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:32.595289+03
47	e0f4f095-4f6a-4118-82fd-7806ee04729d	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:35.995299+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:34.59421+03
48	2a9141f1-6932-4a64-beb6-883be7265e36	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:38.056209+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:36.60246+03
49	0afcc974-2fdb-4ef3-a648-d334e6cf0b62	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:39.934199+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:38.59499+03
50	c23e8ed2-5ff8-4812-95a4-c91c023d906e	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:41.915398+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:40.595491+03
51	14117925-4b60-4fd0-b9eb-87bc2a4efa03	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:43.943057+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:42.602158+03
52	c69d7722-782b-4ed0-9260-90305d8b48ba	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:46.193976+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:44.602468+03
53	7bad365a-5575-4a13-a01b-d39dfc2783bf	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:47.885734+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:46.607782+03
54	a3e3227d-42d4-43f3-bcd0-e756aa95eca4	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:49.998496+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:48.609275+03
55	3d08f0a7-7b82-42d0-836d-e2eb1f92532a	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:52.053811+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:50.583637+03
56	f1b1b0f0-5deb-4317-b7e1-25b6f982d723	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:53.841116+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:52.607168+03
57	da79b9dc-4ed7-4f4d-938e-51c57c99f4e9	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:56.071457+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:54.604806+03
58	b16bbe55-97ad-437d-a664-b793a9a41105	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:58.13467+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:56.601731+03
59	b7c49c64-2ca4-4464-ac74-eff2fb363948	SUCCESS	application/json	utf-8	null	2020-11-23 23:07:59.837086+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:07:58.603784+03
60	c3a97481-7c1e-4d0c-89bc-20886ae68ceb	SUCCESS	application/json	utf-8	null	2020-11-23 23:08:01.962711+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:08:00.587897+03
62	07e115c0-800a-4ac0-b8ac-7a986a52a613	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:15.556163+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.681825+03
63	9c9e1bef-998e-4f74-a8b1-6ed695cdee8d	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:16.0046+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.684046+03
61	1fc15aff-92cd-4598-9da1-c41097d7ca7e	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:16.458824+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.678522+03
65	c9696faa-5f61-4daf-b618-4ea39b784356	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:16.909017+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.684321+03
66	503d235c-71d3-413c-a5ae-9a1dcb92d3a7	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:17.89341+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.690014+03
91	6ed84a55-9d7a-4a3b-bc80-fcd6f7788bec	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:36.741236+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:33.831201+03
68	08348fad-ce8a-4aca-a05a-6af8b3eb71ac	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:17.359111+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.699647+03
67	359ed3ba-2403-48e4-aa99-26a89d319346	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:18.310828+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.691852+03
93	2241383f-7f2c-4dff-905f-97f3ffcd99a5	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:38.670609+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:37.281793+03
64	90f207e5-18bc-48f3-8b11-88f58b1884f8	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:15.184784+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:13.685962+03
92	813d7e05-01ec-48cf-a0c5-b1bbcf28755b	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:36.320725+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:33.833884+03
94	6862b98c-c694-43bc-b6f6-1a28ab189c29	SUCCESS	application/json	utf-8	null	2020-11-23 23:14:44.21003+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:14:42.278082+03
69	24ea079e-fb9b-4baf-8144-0df5de43ebd9	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:19.159067+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:15.205521+03
70	206bc458-3d56-46c3-b10e-6b898c373968	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:19.612672+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:15.591607+03
71	2537af74-a6fc-4802-a6ee-0ccedaa8822c	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:19.905521+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:16.042502+03
72	72406388-2ea5-4e15-9b65-1ba1c0adc072	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:20.401308+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:16.495651+03
73	4a630686-5b74-4d3c-a3d4-8e5b808a5374	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:20.938911+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:16.944489+03
74	15b17150-fb8d-4df4-b58d-33d703c456a4	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:21.344036+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:17.393969+03
75	c4b4340f-6323-4377-b061-585923404ad4	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:21.818103+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:17.928405+03
76	9a003781-3d30-4c7c-a5a2-1c5fd7ed4711	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:22.314971+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:18.346525+03
77	35b0fd16-a3a4-405b-93f5-910601a98c85	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:22.706179+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:19.175264+03
78	fbdcbd0e-c930-4ee2-bb36-ce7eb0591c4e	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:23.21855+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:19.654047+03
79	5d76aa04-0f3d-4be8-840b-14c512b88dad	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:23.648065+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:19.925142+03
80	1cd10831-6540-4e0a-8cb9-9ae7edb44eb7	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:24.119208+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:20.4374+03
88	41a8445c-a090-4f85-9801-d845bea47c22	STARTED	application/json	utf-8	{"pid": 25708, "hostname": "celery@dima-Lenovo-IdeaPad-S340-14IWL"}	2020-11-23 23:10:24.156228+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:24.156174+03
81	cb290175-b67a-41cc-b194-2895e4194b13	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:24.569943+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:20.952658+03
82	5b013aeb-ae43-450b-b6d9-10f4fcf5fa30	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:25.002267+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:21.368845+03
83	b2646a55-d83f-4c26-8d90-4991a4da0af3	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:25.410899+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:21.835455+03
86	989e8cb6-c23c-46ff-a1c9-cc40ed783776	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:25.871197+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:23.257923+03
84	3b3536de-8651-45c2-a538-2727a1f0dfe4	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:26.272309+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:22.348557+03
85	20e4484c-82ee-4ede-964a-cb6091c2c005	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:26.709155+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:22.74264+03
87	d6e20575-f110-4724-8c4f-3e67d7569c43	SUCCESS	application/json	utf-8	null	2020-11-23 23:10:27.159207+03	\N	{"children": []}	"()"	"{}"	content.tasks.send_scheduled_email	dima-Lenovo-IdeaPad-S340-14IWL	2020-11-23 23:10:23.686297+03
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	content	event
8	content	interest
9	content	profile
10	content	intent
11	chats	onetooneroom
12	django_celery_beat	crontabschedule
13	django_celery_beat	intervalschedule
14	django_celery_beat	periodictask
15	django_celery_beat	periodictasks
16	django_celery_beat	solarschedule
17	django_celery_beat	clockedschedule
18	django_celery_results	taskresult
19	django_celery_results	chordcounter
20	sites	site
21	account	emailaddress
22	account	emailconfirmation
23	socialaccount	socialaccount
24	socialaccount	socialapp
25	socialaccount	socialtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-11-02 20:02:18.880704+03
2	auth	0001_initial	2020-11-02 20:02:18.9597+03
3	admin	0001_initial	2020-11-02 20:02:19.08073+03
4	admin	0002_logentry_remove_auto_add	2020-11-02 20:02:19.112233+03
5	admin	0003_logentry_add_action_flag_choices	2020-11-02 20:02:19.127877+03
6	contenttypes	0002_remove_content_type_name	2020-11-02 20:02:19.145089+03
7	auth	0002_alter_permission_name_max_length	2020-11-02 20:02:19.152773+03
8	auth	0003_alter_user_email_max_length	2020-11-02 20:02:19.160319+03
9	auth	0004_alter_user_username_opts	2020-11-02 20:02:19.167285+03
10	auth	0005_alter_user_last_login_null	2020-11-02 20:02:19.175935+03
11	auth	0006_require_contenttypes_0002	2020-11-02 20:02:19.178419+03
12	auth	0007_alter_validators_add_error_messages	2020-11-02 20:02:19.185256+03
13	auth	0008_alter_user_username_max_length	2020-11-02 20:02:19.196568+03
14	auth	0009_alter_user_last_name_max_length	2020-11-02 20:02:19.203954+03
15	auth	0010_alter_group_name_max_length	2020-11-02 20:02:19.211924+03
16	auth	0011_update_proxy_permissions	2020-11-02 20:02:19.219089+03
17	auth	0012_alter_user_first_name_max_length	2020-11-02 20:02:19.226759+03
18	content	0001_initial	2020-11-02 20:02:19.337617+03
19	sessions	0001_initial	2020-11-02 20:02:19.372686+03
20	content	0002_event_looking_for_a_company	2020-11-13 16:46:44.838164+03
21	chats	0001_initial	2020-11-13 16:46:44.91919+03
22	content	0003_auto_20201113_2040	2020-11-13 20:41:02.107553+03
23	chats	0002_auto_20201113_2245	2020-11-13 22:45:35.360062+03
24	content	0004_auto_20201123_1837	2020-11-23 18:37:57.650351+03
25	django_celery_beat	0001_initial	2020-11-23 19:34:32.377079+03
26	django_celery_beat	0002_auto_20161118_0346	2020-11-23 19:34:32.430017+03
27	django_celery_beat	0003_auto_20161209_0049	2020-11-23 19:34:32.44635+03
28	django_celery_beat	0004_auto_20170221_0000	2020-11-23 19:34:32.452627+03
29	django_celery_beat	0005_add_solarschedule_events_choices	2020-11-23 19:34:32.458658+03
30	django_celery_beat	0006_auto_20180322_0932	2020-11-23 19:34:32.484375+03
31	django_celery_beat	0007_auto_20180521_0826	2020-11-23 19:34:32.495196+03
32	django_celery_beat	0008_auto_20180914_1922	2020-11-23 19:34:32.509479+03
33	django_celery_beat	0006_auto_20180210_1226	2020-11-23 19:34:32.518157+03
34	django_celery_beat	0006_periodictask_priority	2020-11-23 19:34:32.525114+03
35	django_celery_beat	0009_periodictask_headers	2020-11-23 19:34:32.531466+03
36	django_celery_beat	0010_auto_20190429_0326	2020-11-23 19:34:32.631708+03
37	django_celery_beat	0011_auto_20190508_0153	2020-11-23 19:34:32.644531+03
38	django_celery_beat	0012_periodictask_expire_seconds	2020-11-23 19:34:32.663251+03
39	django_celery_beat	0013_auto_20200609_0727	2020-11-23 19:34:32.670511+03
40	django_celery_beat	0014_remove_clockedschedule_enabled	2020-11-23 19:34:32.67891+03
41	django_celery_results	0001_initial	2020-11-23 21:06:07.452942+03
42	django_celery_results	0002_add_task_name_args_kwargs	2020-11-23 21:06:07.471053+03
43	django_celery_results	0003_auto_20181106_1101	2020-11-23 21:06:07.474842+03
44	django_celery_results	0004_auto_20190516_0412	2020-11-23 21:06:07.512345+03
45	django_celery_results	0005_taskresult_worker	2020-11-23 21:06:07.516332+03
46	django_celery_results	0006_taskresult_date_created	2020-11-23 21:06:07.541126+03
47	django_celery_results	0007_remove_taskresult_hidden	2020-11-23 21:06:07.550109+03
48	django_celery_results	0008_chordcounter	2020-11-23 21:06:07.565015+03
49	account	0001_initial	2020-12-05 17:18:23.432927+03
50	account	0002_email_max_length	2020-12-05 17:18:23.515969+03
51	sites	0001_initial	2020-12-05 17:18:23.531757+03
52	sites	0002_alter_domain_unique	2020-12-05 17:18:23.553504+03
53	socialaccount	0001_initial	2020-12-05 17:18:23.678494+03
54	socialaccount	0002_token_max_lengths	2020-12-05 17:18:23.751475+03
55	socialaccount	0003_extra_data_default_dict	2020-12-05 17:18:23.761711+03
56	content	0005_auto_20201207_2303	2020-12-07 23:04:18.87615+03
57	content	0006_auto_20201207_2304	2020-12-07 23:04:18.939337+03
58	content	0007_auto_20201207_2305	2020-12-07 23:05:35.651452+03
59	content	0008_auto_20201209_0000	2020-12-09 00:00:31.443883+03
60	content	0009_auto_20201209_0021	2020-12-09 00:21:45.197067+03
61	content	0010_auto_20201211_0957	2020-12-11 09:57:25.505979+03
62	content	0011_auto_20201211_1138	2020-12-11 11:38:36.134373+03
63	content	0012_auto_20201211_1148	2020-12-11 11:49:16.72422+03
64	content	0013_auto_20201220_1847	2020-12-20 18:47:55.646286+03
65	content	0014_auto_20201220_2150	2020-12-20 21:51:01.837209+03
66	content	0015_auto_20201220_2153	2020-12-20 21:53:30.513001+03
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
blkietzmrk94f7p5z47x4exryq955khs	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1kZelT:NdNsAIinERXXnqTK05Ld7czZpNIVZ_IHffAXIWW88lk	2020-11-16 21:41:11.198047+03
121zfwl32pqt9fh0qmqo4zbyyzhottd8	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1kdZQQ:W75pkNgrC6NyeVHDIHOf_4pFORF4O1G9-k2UZkm73Cg	2020-11-27 16:47:38.640718+03
j5l4rbi2qpgxd2nb4kx2asdbk7lk5b5m	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdeiw:NdQaF9oFSWHwU74XjUuaf9m9dEIeF6GWczRcHRaMtcc	2020-11-27 22:27:06.688192+03
7btk0csn1gkxl39922866c7a56lt75gs	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdem7:Q1cpnfLJDQKPU6JxJ92MyNOBtMWM7kKwdSC0jpVjN5s	2020-11-27 22:30:23.468854+03
4239mka8uayoccbvtx4sc9zhthij3zjs	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdhFE:jb1cGiGkFSvGVvPP8LorrZUfNGBNds4h5YRYMjc_OAo	2020-11-28 01:08:36.174664+03
jsodr9v3szhqyy5qqj5g0fwispddva5d	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdhPw:cj9jQkFqVpSol9HkwUlCojq8Qo1CgaLqexQlr6ao37g	2020-11-28 01:19:40.070768+03
0hgwuhnyn4grdqoo8awlq8son29gf88b	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdr6w:yCMfDeG8UksrEsA9W3gUDDMmTjESrv_HjAjCnysgmG4	2020-11-28 11:40:42.832836+03
czuwrm6nx8hnskisf07a6ue51xm9wwz6	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdr8M:VZ-TPORP9VQpEzwpUaQiSc-9WARsMp7c3hU1qKvmsZo	2020-11-28 11:42:10.618516+03
v3z2oxmmo06fwhe4o9ocgs442jvojds1	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1kdrA7:PK00sGchcbIf68bg75QnlxxFh-cmiOB3aRT4er5gkR8	2020-11-28 11:43:59.450282+03
ykbovos1a9890uzy6evlucy88o2br5fb	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdrD3:PQ2DiwXE46ujoD_Ew7Ayetgzb8oEcThpq-Y_U9ql4Kw	2020-11-28 11:47:01.475849+03
zgjxzcx4sq8y3h8cgo9cxkk9pfkseqfg	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kdrIO:neruvtqRva77jdKvCiTI6ZQF5mNYQqMpejI1mHlBFhM	2020-11-28 11:52:32.203923+03
zuyhreqc9vhzmem1t3jh5vnn1ofg7rfs	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1keifh:lQWZdpHb_mDm3CWlp9PxBABYZ4ZiyhT8knnm6CHEmxE	2020-11-30 20:52:09.40661+03
he3crkqosuseuh1x5xpb1yn60lgjnyg6	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1keig3:QQm2TKdnlfWe1eUXkZ16tta2j41D6NpiHr5dgteBa9k	2020-11-30 20:52:31.451569+03
fdilesuyg8vz23wf1yf53dm26htb64lx	.eJxVjDsOwjAQBe_iGln-EceU9DmDtetd4wCypTipEHeHSCmgfTPzXiLCtpa4dV7iTOIivDj9bgjpwXUHdId6azK1ui4zyl2RB-1yasTP6-H-HRTo5Vun4FX2ONKAxmeDilGhZdCoMuSkWFs_Mpyd9jqQ02yIITvtBodsUxDvDwhzOLM:1kgmeq:VVB72eE2GWkq8S7_SaaMjWW-kI1yS6HDY-FfaQlSl_8	2020-12-06 13:31:48.279544+03
8k76l73menolqwnhp3q94z5wz35483z8	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1khEKv:_gL2uvI--gZyN4-g4WoKdy6uwwiYJ9XD1VNziAR_194	2020-12-07 19:05:05.48902+03
b78qhw1z0dqay3nssukudx8rzzld63tk	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1klZ7g:WrsfnONqRUKkfFcZUKQiLOsNbkaVsNZU_ut-oPuYVhg	2020-12-19 18:05:20.700375+03
kqt2gs03jvcybhtuz9ksqr0x80plhyyu	.eJxVjMEOwiAQBf-FsyHAQhc8evcbCLAgVQNJaU_Gf9cmPej1zcx7MR-2tfpt5MXPxM5sYqffLYb0yG0HdA_t1nnqbV3myHeFH3Twa6f8vBzu30ENo35rQK1dJAtos9FAMbkJAJUyaLEERShzcrnIIAVQcsZEgVZZjbYgJcHeH8dYNzU:1kmkDS:_HzAQONblLqYli0qjeOLtD7842GpFeu23swHdebOjRE	2020-12-23 00:08:10.274908+03
a06dsfx29w11bmdcxoir8u28di4kxz8p	.eJxVjMsOwiAQRf-FtSHDY4i4dO83kAGmUjWQlHbV-O9K0oXm7u45ObsItK0lbJ2XMGdxEU6cfr9I6cl1gPygem8ytbouc5RDkQft8tYyv66H-xco1MvIoqGJCSAaBWCVd4ieQE9oLAJg-s5op8B6o7RxdAbHmRQxMGftxPsDqT02hw:1knkZj:kgp20n8w5CaigWZTZ_zTEd706Ppan8WxRd_8PZfBtEU	2020-12-25 18:43:19.291249+03
tm5z2h8r537ofrca8g54wedswdyvtjyi	.eJxVjMEOgyAQRP-Fc2NAhWV7a3_ELMsSTA0mFU5N_73aeGiP82bmvdREreapbfKc5qiuyqC6_MJA_JByNLQsB-6IeW2ldt_NWW_dbU9S6sxU57Xcz9efKtOWd0-CYJAFPJAeILJEBOsDO7LeYI_RJxd6AnYwaEgiHkaCEREQKWir3h_zADyH:1knlVd:AbGyrtkTH3aUKDDfmX1xB4JQyapun-y3GeBd5lJ55L8	2020-12-25 19:43:09.977921+03
15l2b7fe19lr0tiw511rx140ui5x9ooh	.eJxVjMsOwiAQRf-FtSHDY4i4dO83kAGmUjWQlHbV-O9K0oXm7u45ObsItK0lbJ2XMGdxEU6cfr9I6cl1gPygem8ytbouc5RDkQft8tYyv66H-xco1MvIoqGJCSAaBWCVd4ieQE9oLAJg-s5op8B6o7RxdAbHmRQxMGftxPsDqT02hw:1knlVz:WIF1JjovUgJJOTwYe0aS-n-6_34FozF0DB5Lw_EjfRo	2020-12-25 19:43:31.946338+03
tbybiupxu2yq8o1zmycxncfqy9cowtvn	.eJxVjEsOwjAMBe-SNYraJG4cluw5Q2XHLi2gROpnhbg7VOoCtm9m3sv0tK1jvy0695OYs3GNOf2OTPmhZSdyp3KrNteyzhPbXbEHXey1ij4vh_t3MNIyfmvUpA21sQPxrUcRVBZRZEB1QWP0kgcFGSjDkHxH4oAROOTEFAOY9wctuTk-:1kqfPG:_lNWmFOV7V81bvplY7YLDkZQUHewYPU9ssOuRhPCuSk	2021-01-02 19:48:34.572979+03
hvwghfk7tdwzz58d249teusyyvw8577r	.eJxVjMsOwiAQRf-FtSHDY4i4dO83kAGmUjWQlHbV-O9K0oXm7u45ObsItK0lbJ2XMGdxEU6cfr9I6cl1gPygem8ytbouc5RDkQft8tYyv66H-xco1MvIoqGJCSAaBWCVd4ieQE9oLAJg-s5op8B6o7RxdAbHmRQxMGftxPsDqT02hw:1kr378:lw7IUUDEQfPtx5PqYRWIOmwN8macSOzbbU2TWf4iFy8	2021-01-03 21:07:26.785513+03
s3nlwmqh2aq7i4b8s37lcrvj0dhr1elt	.eJxVjMEOwiAQRP-Fs2mgLBS86Y-QhV1CY0MToSfjv9uaHvQ4b2beSwTceglb42eYSVzFqMXlF0ZMD65Hg8ty4AFTWrfah-_mrNtw2xPXPifs81rv5-tPVbCV3aOyJwSgzNqN3pBjm20CAkMyTpQcO5dB6ZjJAkZgVtJJmrw1YNFn8f4AArM9Kw:1kr3mI:BPTJjnBDC71zyBsT5rCF2i5vdyt_AYBlJbbY-VRg-vE	2021-01-03 21:49:58.625763+03
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.django_site (id, domain, name) FROM stdin;
1	domain.com	Google
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
8	google	106347514797555206473	2020-12-20 21:49:58.589633+03	2020-12-20 21:49:58.589674+03	{"id": "106347514797555206473", "email": "dikorolyov2@gmail.com", "verified_email": true, "name": "\\u0414\\u0438\\u043c\\u0430 \\u041a\\u043e\\u0440\\u043e\\u043b\\u0435\\u0432", "given_name": "\\u0414\\u0438\\u043c\\u0430", "family_name": "\\u041a\\u043e\\u0440\\u043e\\u043b\\u0435\\u0432", "picture": "https://lh6.googleusercontent.com/-JcGPd6OId-Y/AAAAAAAAAAI/AAAAAAAAAAA/AMZuucmoGcl4jAok3xGxFC9sI2rZYj7jNA/s96-c/photo.jpg", "locale": "ru"}	23
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
1	google	Google	1091617322175-tdq2ieknqmeuk8slbb9b69mfec7fmjam.apps.googleusercontent.com	dOC-o0NVPAO12ZydV7ZVKEQV	
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
1	1	1
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: notifier_admin
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
8	ya29.a0AfH6SMDNW72HIJvjRuBdJ8QQFziaTS2V42t3v3u028lE6JIpkt_78mGGdRiB8UXkqNJS7XF_-DWDz0879GiGWpVgBxfrBC_DSl_FyxCYvbjRWpF2-_rYTaeR3TwWPTvXU75cfVLlN6QqrTm4Mwx-VEq99yS_-i2hpcq2tIo4qA9V		2020-12-20 22:49:57.454815+03	8	1
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 8, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 100, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 23, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: chats_onetooneroom_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.chats_onetooneroom_id_seq', 46, true);


--
-- Name: content_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.content_event_id_seq', 5694, true);


--
-- Name: content_event_looking_for_a_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.content_event_looking_for_a_company_id_seq', 115, true);


--
-- Name: content_intent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.content_intent_id_seq', 28, true);


--
-- Name: content_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.content_profile_id_seq', 15, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1628, true);


--
-- Name: django_celery_beat_clockedschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_beat_clockedschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_beat_crontabschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_beat_intervalschedule_id_seq', 1, false);


--
-- Name: django_celery_beat_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_beat_periodictask_id_seq', 1, false);


--
-- Name: django_celery_beat_solarschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_beat_solarschedule_id_seq', 1, false);


--
-- Name: django_celery_results_chordcounter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_results_chordcounter_id_seq', 1, false);


--
-- Name: django_celery_results_taskresult_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_celery_results_taskresult_id_seq', 94, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 66, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.django_site_id_seq', 2, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 8, true);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, true);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, true);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: notifier_admin
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 8, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: chats_onetooneroom chats_onetooneroom_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom
    ADD CONSTRAINT chats_onetooneroom_pkey PRIMARY KEY (id);


--
-- Name: chats_onetooneroom chats_onetooneroom_room_name_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom
    ADD CONSTRAINT chats_onetooneroom_room_name_key UNIQUE (room_name);


--
-- Name: content_event_looking_for_a_company content_event_looking_fo_event_id_profile_id_51682fda_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event_looking_for_a_company
    ADD CONSTRAINT content_event_looking_fo_event_id_profile_id_51682fda_uniq UNIQUE (event_id, profile_id);


--
-- Name: content_event_looking_for_a_company content_event_looking_for_a_company_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event_looking_for_a_company
    ADD CONSTRAINT content_event_looking_for_a_company_pkey PRIMARY KEY (id);


--
-- Name: content_event content_event_name_ba4800a5_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event
    ADD CONSTRAINT content_event_name_ba4800a5_uniq UNIQUE (name);


--
-- Name: content_event content_event_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event
    ADD CONSTRAINT content_event_pkey PRIMARY KEY (id);


--
-- Name: content_intent content_intent_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_intent
    ADD CONSTRAINT content_intent_pkey PRIMARY KEY (id);


--
-- Name: content_profile content_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_profile
    ADD CONSTRAINT content_profile_pkey PRIMARY KEY (id);


--
-- Name: content_profile content_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_profile
    ADD CONSTRAINT content_profile_user_id_key UNIQUE (user_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_clockedschedule django_celery_beat_clockedschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_clockedschedule
    ADD CONSTRAINT django_celery_beat_clockedschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_crontabschedule django_celery_beat_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_crontabschedule
    ADD CONSTRAINT django_celery_beat_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_intervalschedule django_celery_beat_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_intervalschedule
    ADD CONSTRAINT django_celery_beat_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_name_key UNIQUE (name);


--
-- Name: django_celery_beat_periodictask django_celery_beat_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_periodictask_pkey PRIMARY KEY (id);


--
-- Name: django_celery_beat_periodictasks django_celery_beat_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictasks
    ADD CONSTRAINT django_celery_beat_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solar_event_latitude_longitude_ba64999a_uniq UNIQUE (event, latitude, longitude);


--
-- Name: django_celery_beat_solarschedule django_celery_beat_solarschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_solarschedule
    ADD CONSTRAINT django_celery_beat_solarschedule_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_chordcounter django_celery_results_chordcounter_group_id_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_group_id_key UNIQUE (group_id);


--
-- Name: django_celery_results_chordcounter django_celery_results_chordcounter_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_chordcounter
    ADD CONSTRAINT django_celery_results_chordcounter_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_pkey PRIMARY KEY (id);


--
-- Name: django_celery_results_taskresult django_celery_results_taskresult_task_id_key; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_results_taskresult
    ADD CONSTRAINT django_celery_results_taskresult_task_id_key UNIQUE (task_id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: chats_onetooneroom_event_id_847da130; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX chats_onetooneroom_event_id_847da130 ON public.chats_onetooneroom USING btree (event_id);


--
-- Name: chats_onetooneroom_room_name_d72a0f2c_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX chats_onetooneroom_room_name_d72a0f2c_like ON public.chats_onetooneroom USING btree (room_name varchar_pattern_ops);


--
-- Name: chats_onetooneroom_user1_id_8f84dcbc; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX chats_onetooneroom_user1_id_8f84dcbc ON public.chats_onetooneroom USING btree (user1_id);


--
-- Name: chats_onetooneroom_user2_id_e423cbc8; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX chats_onetooneroom_user2_id_e423cbc8 ON public.chats_onetooneroom USING btree (user2_id);


--
-- Name: content_event_looking_for_a_company_event_id_83a1d640; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX content_event_looking_for_a_company_event_id_83a1d640 ON public.content_event_looking_for_a_company USING btree (event_id);


--
-- Name: content_event_looking_for_a_company_profile_id_f0aa1704; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX content_event_looking_for_a_company_profile_id_f0aa1704 ON public.content_event_looking_for_a_company USING btree (profile_id);


--
-- Name: content_event_name_ba4800a5_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX content_event_name_ba4800a5_like ON public.content_event USING btree (name varchar_pattern_ops);


--
-- Name: content_intent_event_id_cfa69065; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX content_intent_event_id_cfa69065 ON public.content_intent USING btree (event_id);


--
-- Name: content_intent_profile_id_cd041950; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX content_intent_profile_id_cd041950 ON public.content_intent USING btree (profile_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_celery_beat_periodictask_clocked_id_47a69f82; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_beat_periodictask_clocked_id_47a69f82 ON public.django_celery_beat_periodictask USING btree (clocked_id);


--
-- Name: django_celery_beat_periodictask_crontab_id_d3cba168; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_beat_periodictask_crontab_id_d3cba168 ON public.django_celery_beat_periodictask USING btree (crontab_id);


--
-- Name: django_celery_beat_periodictask_interval_id_a8ca27da; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_beat_periodictask_interval_id_a8ca27da ON public.django_celery_beat_periodictask USING btree (interval_id);


--
-- Name: django_celery_beat_periodictask_name_265a36b7_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_beat_periodictask_name_265a36b7_like ON public.django_celery_beat_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: django_celery_beat_periodictask_solar_id_a87ce72c; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_beat_periodictask_solar_id_a87ce72c ON public.django_celery_beat_periodictask USING btree (solar_id);


--
-- Name: django_celery_results_chordcounter_group_id_1f70858c_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_chordcounter_group_id_1f70858c_like ON public.django_celery_results_chordcounter USING btree (group_id varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_date_created_099f3424; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_date_created_099f3424 ON public.django_celery_results_taskresult USING btree (date_created);


--
-- Name: django_celery_results_taskresult_date_done_49edada6; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_date_done_49edada6 ON public.django_celery_results_taskresult USING btree (date_done);


--
-- Name: django_celery_results_taskresult_status_cbbed23a; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a ON public.django_celery_results_taskresult USING btree (status);


--
-- Name: django_celery_results_taskresult_status_cbbed23a_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_status_cbbed23a_like ON public.django_celery_results_taskresult USING btree (status varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_id_de0d95bf_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_task_id_de0d95bf_like ON public.django_celery_results_taskresult USING btree (task_id varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_task_name_90987df3; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3 ON public.django_celery_results_taskresult USING btree (task_name);


--
-- Name: django_celery_results_taskresult_task_name_90987df3_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_task_name_90987df3_like ON public.django_celery_results_taskresult USING btree (task_name varchar_pattern_ops);


--
-- Name: django_celery_results_taskresult_worker_f8711389; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389 ON public.django_celery_results_taskresult USING btree (worker);


--
-- Name: django_celery_results_taskresult_worker_f8711389_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_celery_results_taskresult_worker_f8711389_like ON public.django_celery_results_taskresult USING btree (worker varchar_pattern_ops);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: notifier_admin
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chats_onetooneroom chats_onetooneroom_event_id_847da130_fk_content_event_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom
    ADD CONSTRAINT chats_onetooneroom_event_id_847da130_fk_content_event_id FOREIGN KEY (event_id) REFERENCES public.content_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chats_onetooneroom chats_onetooneroom_user1_id_8f84dcbc_fk_content_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom
    ADD CONSTRAINT chats_onetooneroom_user1_id_8f84dcbc_fk_content_profile_id FOREIGN KEY (user1_id) REFERENCES public.content_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: chats_onetooneroom chats_onetooneroom_user2_id_e423cbc8_fk_content_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.chats_onetooneroom
    ADD CONSTRAINT chats_onetooneroom_user2_id_e423cbc8_fk_content_profile_id FOREIGN KEY (user2_id) REFERENCES public.content_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_event_looking_for_a_company content_event_lookin_event_id_83a1d640_fk_content_e; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event_looking_for_a_company
    ADD CONSTRAINT content_event_lookin_event_id_83a1d640_fk_content_e FOREIGN KEY (event_id) REFERENCES public.content_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_event_looking_for_a_company content_event_lookin_profile_id_f0aa1704_fk_content_p; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_event_looking_for_a_company
    ADD CONSTRAINT content_event_lookin_profile_id_f0aa1704_fk_content_p FOREIGN KEY (profile_id) REFERENCES public.content_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_intent content_intent_event_id_cfa69065_fk_content_event_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_intent
    ADD CONSTRAINT content_intent_event_id_cfa69065_fk_content_event_id FOREIGN KEY (event_id) REFERENCES public.content_event(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_intent content_intent_profile_id_cd041950_fk_content_profile_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_intent
    ADD CONSTRAINT content_intent_profile_id_cd041950_fk_content_profile_id FOREIGN KEY (profile_id) REFERENCES public.content_profile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_profile content_profile_user_id_2b8f7fad_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.content_profile
    ADD CONSTRAINT content_profile_user_id_2b8f7fad_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_clocked_id_47a69f82_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_clocked_id_47a69f82_fk_django_ce FOREIGN KEY (clocked_id) REFERENCES public.django_celery_beat_clockedschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_crontab_id_d3cba168_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_crontab_id_d3cba168_fk_django_ce FOREIGN KEY (crontab_id) REFERENCES public.django_celery_beat_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_interval_id_a8ca27da_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_interval_id_a8ca27da_fk_django_ce FOREIGN KEY (interval_id) REFERENCES public.django_celery_beat_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_celery_beat_periodictask django_celery_beat_p_solar_id_a87ce72c_fk_django_ce; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.django_celery_beat_periodictask
    ADD CONSTRAINT django_celery_beat_p_solar_id_a87ce72c_fk_django_ce FOREIGN KEY (solar_id) REFERENCES public.django_celery_beat_solarschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: notifier_admin
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

