--
-- PostgreSQL database dump
--

-- Dumped from database version 17.4 (Debian 17.4-1.pgdg120+2)
-- Dumped by pg_dump version 17.4 (Debian 17.4-1.pgdg120+2)

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

--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: drills; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.drills (
    id integer NOT NULL,
    text text,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.drills OWNER TO postgres;

--
-- Name: drills_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.drills_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.drills_id_seq OWNER TO postgres;

--
-- Name: drills_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.drills_id_seq OWNED BY public.drills.id;


--
-- Name: ragtime_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ragtime_migrations (
    id character varying(255),
    created_at character varying(32)
);


ALTER TABLE public.ragtime_migrations OWNER TO postgres;

--
-- Name: restarts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.restarts (
    id integer NOT NULL,
    login character varying(32),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.restarts OWNER TO postgres;

--
-- Name: restarts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.restarts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.restarts_id_seq OWNER TO postgres;

--
-- Name: restarts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.restarts_id_seq OWNED BY public.restarts.id;


--
-- Name: results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.results (
    id integer NOT NULL,
    login character varying(32),
    pt integer DEFAULT 0,
    "timestamp" timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.results OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.results_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.results_id_seq OWNER TO postgres;

--
-- Name: results_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.results_id_seq OWNED BY public.results.id;


--
-- Name: roll_calls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roll_calls (
    id integer NOT NULL,
    login character varying(20),
    pt integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.roll_calls OWNER TO postgres;

--
-- Name: roll_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.roll_calls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.roll_calls_id_seq OWNER TO postgres;

--
-- Name: roll_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.roll_calls_id_seq OWNED BY public.roll_calls.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.schema_migrations (
    id bigint NOT NULL,
    applied timestamp without time zone,
    description character varying(1024)
);


ALTER TABLE public.schema_migrations OWNER TO postgres;

--
-- Name: stat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.stat (
    stat character varying(20),
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.stat OWNER TO postgres;

--
-- Name: drills id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drills ALTER COLUMN id SET DEFAULT nextval('public.drills_id_seq'::regclass);


--
-- Name: restarts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restarts ALTER COLUMN id SET DEFAULT nextval('public.restarts_id_seq'::regclass);


--
-- Name: results id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results ALTER COLUMN id SET DEFAULT nextval('public.results_id_seq'::regclass);


--
-- Name: roll_calls id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roll_calls ALTER COLUMN id SET DEFAULT nextval('public.roll_calls_id_seq'::regclass);


--
-- Data for Name: drills; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.drills (id, text, "timestamp") FROM stdin;
1	seen it, night and morning, during his whole residence\nin that place; also that Scrooge has as little of what\nis called fancy about him as any man in the city of\nLondon, even including--which is a bold word--the	2021-06-06 14:04:55.092608
2	we quote a low figure for our high quality paper;\nwe prefer to prepay the postage for the two quires;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\naqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj	2021-06-06 14:04:55.226889
3	Gentlemen:\nShip to our general office, by express, the following order:\n75 boxes, style 2**, 14.25" x 18.5", @ 60 cents each . . . . .$45.00\n5 boxes, style 3**, 16.25" x 20.5", @ 65 cents each . . . . .  3.25	2021-06-06 14:04:55.340303
4	Sincerely,\nMr. Smith\nDear Sirs:\nThank you for sending the diskettes so promptly.  How-	2021-06-06 14:04:55.454491
5	Kate says; Kate says she will stay till Friday;\nPaul will take Willa to the Park Sherry Theater;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\naqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj	2021-06-06 14:04:55.5754
6	kid kin kit keg key king kind know knee knot knew\nkey keg kid kit kin knew knot knee knob king kind\nit is in if ire ill ink inn imp idle item isle iron\nif in is it imp inn ill ire ink item idle iron isle	2021-06-06 14:04:55.689239
7	any sort of suit and any size seem to sell.  We are not rich\nbut we can soon step out or be sold out, if any such rate is\nto rule.\nAnn has not seen the ship as yet.  Rain or no rain, Ann	2021-06-06 14:04:55.808971
8	Come, call on me at the club.\nYours sincerely,\nDear Bea,\nI am glad you feel so for the farm in the East.  Even	2021-06-06 14:04:55.928191
9	Will you therefore represent this new deal and present the\nsituation to us in principle, sincerely, as you see it?  Other-\nwise, if you cannot make this provision now, I shall be glad to\ncall upon you later.	2021-06-06 14:04:56.254418
10	our division, I am to continue handling building material.\nMy judgment on all the evidence, which I send herewith\nenclosed in a second envelope, is one of complete approval.\nLet me have a contract covering the earliest delivery date.	2021-06-06 14:04:56.371139
11	Feel a dead faded leaf  Seeds fall as a faded leaf falls\nA lad sells seeds  Dad feels a seed  Dad adds a seed deal\nA deaf lad sells a false jade  Dad sells a deaf lad a sled\nIdle Sid seeks a salad  Sis aids Sid  A salad is laid aside	2021-06-06 14:04:56.488648
12	A selfish person has his own self-interest at heart.\nRaymond Investment Co.\n120 Wall Street\nNew York, NY 10005	2021-06-06 14:04:56.603598
13	O judgement, thou art fled to brutish beasts,\nAnd men have lost their reason!--Bear with me;\nMy heart is in the coffin there with Caesar,\nAnd I must pause till it come back to me.	2021-06-06 14:04:56.724556
14	the frosty fog.\nBut, soft! what light through yonder window breaks?\nIt is the east, and Juliet is the sun!--\nArise, fair sun, and kill the envious moon,	2021-06-06 14:04:56.843799
15	alter matter motor wider mother nature poster\nvoter better factor reader rather feature master\nwriter letter doctor modern either fixture register\nThe voter was required to register.	2021-06-06 14:04:56.963387
16	louder than words.  Words sometimes confuse as issue where\ndeeds clarify it.  The test of a man's sincerity is not what\nhe says but what he does.  Consider this well and you will\nnever be confused in estimating a man's worth.	2021-06-06 14:04:57.08154
17	asion esion ision osion usion\nation etion ition otion ution\naction motion quotation session caution ambition\nnation ration invention division exhibition attention	2021-06-06 14:04:57.203041
18	Who is already sick and pale with grief,\nThat thou her maid art far more fair than she:\nBe not her maid, since she is envious;\nHer vestal livery is but sick and green,	2021-06-06 14:04:57.323523
19	The reader made a study of the literature.\nThe actor was better in the theatre than in pictures.\nThe writer wrote a letter to his future sister-in-law.\nThe minister received a letter from his father and mother.	2021-06-06 14:04:57.444675
20	Gentlemen:\nFor many years our medium has been the leading adver-\ntising paper used by responsible investment firms who desire\nto obtain new accounts.	2021-06-06 14:04:57.559957
21	The quality of mercy is not strain'd;\nIt droppeth as the gentle rain from heaven\nUpon the place beneath: it is twice bless'd;\nIt blesseth him that gives and him that takes:	2021-06-06 14:04:57.687954
22	Sid seeks a lake  Sis is all silks  Sid likes silks\nA lad asks if Dad likes lilies  Dad is ill  Dad feels life dies as lilies fade\nDad slides all lilies aside  Dad is jaded\nSails fill as Sis sails a safe lake  Skill aids Sis  Dad	2021-06-06 14:04:57.804247
23	Are you advising me what increase in your discount is to be\nexpected?\nSecond, this forenoon I saw your son and he told me of\nhis marriage in February.  Although you had not entirely	2021-06-06 14:04:57.922539
24	Yours sincerely,\nDear Alex,\nWe are especially interested in the settlement run by a\nnew department at the University.  We appreciate the importance	2021-06-06 14:04:58.037405
25	Baby let the bird cage drop down with a blow.  The bird died.\nBoys put its dead body deep in a dark card case.  Baby also\nhas a ball and blue book to drop.  I put the boat away.  Its\ndeck did burn, but I care not as it does not cost a cent.	2021-06-06 14:04:58.33418
26	sick, it is up to you to stay by and show us how to save the\nship.  Ann has some sort of song to sing in the rain.  She\nsaid she sent it to you.\nDid you read of our sale?  We set out a big sign.  Now	2021-06-06 14:04:58.57502
27	frf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nfvf jmj fbf jnj fvf jmj fbf jnj fvf jmj fbf jnj\nThe Ben Mavis firm submitted the lowest quotation.\nc c c c dcd dcd dcd dcd , , , , k,k k,k k,k k,k	2021-06-06 14:04:58.705761
28	ever, the diskettes which you sent are for soft-sectored\ndrives.  As I stated in my original letter my system\naccepts only ten-sector, hard-sectored diskettes.\nI will return these two boxes as soon as I receive the	2021-06-06 14:04:58.824604
29	It is GOOD WORK; It is GOOD WORK; It is GOOD WORK;\nIt is GOOD WORK; It is GOOD WORK; It is GOOD WORK;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nThe TITLE of the REPORT is:  HOUSES FOR SALE	2021-06-06 14:04:58.948243
30	he will pay jed squire for the sugar this week;\nF F F F F F Fa Fa Fa Fa Fa Fa Fay Fay Fay Fay Fay Fay\nJ J J J J J Ja Ja Ja Ja Ja Ja Jay Jay Jay Jay Jay Jay\nR R R R R R Ra Ra Ra Ra Ra Ra Ray Ray Ray Ray Ray Ray	2021-06-06 14:04:59.069389
31	9 dozen boxes, style #7, @ $2 a doz. (less 10%) . . . . . . . 16.20\nWe will send our check January 4; less 2% for cash.\nVery truly yours,\nHe said, "I long to get home after seven days in the country."	2021-06-06 14:04:59.184701
32	for what he is, and respect for what he may become.\nNow, it is a fact, that there was nothing at all par-\nticular about the knocker on the door, except that it\nwas very large.  It is also a fact, that Scrooge had	2021-06-06 14:04:59.314098
33	frf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nThe PARK POSTER reads:  KEEP OFF THE GRASS\nThe PARK POSTER reads:  KEEP OFF THE GRASS\naqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj	2021-06-06 14:04:59.4365
34	5 1/4 inch, hard-sectored, ten-sector, single-sided, single-\ndensity diskettes.\nEnclosed is my check for $45.00.  Please rush this order, as I\ncan not use my system before they arrive.	2021-06-06 14:04:59.551209
35	record, the range in price being 38.5 high and 32.25 low.  As\nthe market improves the common and "B" stocks may pay 15%.\nA. C. White & Company\nIdaho Falls, Idaho	2021-06-06 14:04:59.671434
36	Sara Sara Sara; Lola Lola Lola; Will Will Will;\nGarry Garry Garry; Harry Harry Harry; Paula Paula;\nHarry Harry Harry; Taffy Taffy Taffy; Quail Quail;\nUriah Uriah Uriah; Yetta Yetta Yetta; Ollie Ollie;	2021-06-06 14:04:59.808195
37	later to 30, 36, 42, 48, or other rate that seems to fit.\nOn one day in June the heat ran to 106, 103, 98, 95, 92, in\nsome cities, but only to 40, 43, 47, 50, 51, 52, 60 in other\ncities.  Rain fell from .00 or .04 to .40 or to .68 inches.	2021-06-06 14:04:59.934944
38	as a girl of four or five I was ever so glad to find the\nfarm.  In my eyes it was all as good as gold.  Even my feet\nfelt good.  A girl can gain and grow fast on farm food and\nthe fine free air.  Why else did face and form grow full	2021-06-06 14:05:00.056353
39	Sincerely yours,\nDear Nathan,\nMy last shipment has probably been received, for the purchase was made\nThursday.  Tomorrow is Saturday, a pleasant day, for I go on my vacation.	2021-06-06 14:05:00.171505
40	Our city is absolutely too big.  With the automobile we can\ndistribute every person to his home along a line, our wide road,\nrun far out from the city.  The difference between country and\ncity grows less and less, in accordance with such use of the auto-	2021-06-06 14:05:00.292372
41	frf juj ded kik ftf jyj fgf jhj frf juj ftf jyj fgf jhj\nded kik sws lol ded kik sws lol frf juj ftf jyj fgf jhj\na a a a aaa aaa aaa aaa ; ; ; ; ;;; ;;; ;;; ;;;\naaa ;;; aaa ;;; aaa ;;; aaa ;;; aaa ;;; aaa ;;;	2021-06-06 14:05:00.427499
42	that is not to say that it should not have style.\nquick each white sweet dwell exist desire transfer\nquest touch where swell dwarf expose desert transact\nquiet cheap whole twist expect degree dislike transmit	2021-06-06 14:05:00.577348
43	must speedily be resolved upon; and it occurred to us at\nlast to go forth together and seek help in the neighbor-\ning hamlet.  No sooner said than done.  Bareheaded as we\nwere, we ran out at once in the gathering evening and	2021-06-06 14:05:00.699816
44	I speak not to disprove what Brutus spoke,\nBut here I am to speak what I do know.\nYou all did love him once,--not without cause:\nWhat cause withholds you, then, to mourn for him?	2021-06-06 14:05:00.820888
45	Mr. Z. Dexter\n250 Madison Avenue\nNew York, NY 10016\nDear Mr. Dexter:	2021-06-06 14:05:01.1667
46	fff fgf fff fgf fff fgf\nfff ggg fff ggg fff ggg\nfff gag fff lag fff flag fff\nfff sag fff slag fff hag fff	2021-06-06 14:05:01.286697
47	jjj jhj jjj jhj jjj jhj\njjj hhh jjj hhh jj hh j h j h\njjj had jjj ash jjj has jjj\njjj sash jjj hash jjj hall jjj	2021-06-06 14:05:01.413914
48	I thrice presented him a kingly crown,\nWhich he did thrice refuse:  was this ambition?\nYet Brutus says he was ambitious;\nAnd, sure, he is an honourable man.	2021-06-06 14:05:01.530728
49	Our records show that you are not now making use of the\nAdviser, and we ask that you consider its use in connection\nwith your new promotion effort.\nYours truly,	2021-06-06 14:05:01.649702
50	The best letter writers express themselves simply.  They\navoid long words where shorter words will do.  They have some-\nthing to say and they say it interestingly and to the point.\nA business letter should not be a literary masterpiece, but	2021-06-06 14:05:01.77294
51	body of the captain on the parlor floor, and the thought\nof that detestable blind beggar hovering near at hand,\nand ready to return, there were moments when, as the\nsaying goes, I jumped in my skin for terror.  Something	2021-06-06 14:05:01.891317
52	q q q q aqa aqa aqa aqa p p p p ;p; ;p; ;p; ;p;\naqa ;p; aqa ;p; aqa ;p; aqa ;p; aqa ;p; aqa ;p;\npa; pa; pa; pa; pa; pa; up; up; up; up; up; up;\npa; pa; pa; pa; pa; pa; up; up; up; up; up; up;	2021-06-06 14:05:02.008571
53	of its additional study to understand impossible conditions in\nthe poor parts of our city, and its use for adjustment of some\nparticular boy or girl.  Have you read our memorandum in this\nconnection?	2021-06-06 14:05:02.125313
54	finished the addition to your lake house by last December,\ncouldn't you exchange it, as it is, for my mountain home?\nYour son said that his young wife wants to live on this\nmountain to which all your children seem so attached.	2021-06-06 14:05:02.241728
55	and fair so fast?\nOn each foot of my farm I felt free from fear.  It\ngave me my fill of fun.  I felt no fear of any fire in the\nfall.  Now the fire is a fact and my farm is gone.  Give me	2021-06-06 14:05:02.366737
56	k9 d3 j8 f4 j7 f5 f6 j6 10 s2 j8 f4 j7 f5 f6 j6 k9 d3 ;- s2\nk98 d34 j87 f45 109 s23 k93 d39 j84 f48 j75 f57 j76 f56 102\n10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29\nAs soon as you can type at 12 words a minute, jump to 24;	2021-06-06 14:05:02.487483
57	(4) The most desirable kinds of success are gained honestly.\nThe common stock has paid from 8% to 27% cash before 1929.\nBoth the common and the "B" stocks have received 12% this\nyear, or $3 per share.  The class "B" stock has made a new	2021-06-06 14:05:02.616886
58	H H H H H H Ha Ha Ha Ha Ha Ha Hal Hal Hal Hal Hal Hal\nKay Kay Kay; Joe Joe Joe; Alf Alf Alf; Lou Lou Lou;\nJoe Joe Joe; Kay Kay Kay; Lou Lou Lou; Alf Alf Alf;\nDora Dora Dora; Ella Ella Ella; Pete Pete Pete;	2021-06-06 14:05:02.735278
59	The TITLE of the REPORT is:  HOUSES FOR SALE\naqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj\nWe quote LOW FIGURES for HIGHEST QUALITY paper;\nWe quote LOW FIGURES for HIGHEST QUALITY paper;	2021-06-06 14:05:02.850807
60	The quick brown fox jumped over the lazy dogs.\nDear Sirs:\nI have just purchased a Heathkit H89 computer system and would\nlike to order two boxes of diskettes for it.  This system uses	2021-06-06 14:05:02.966154
62	catalog his books we consider a favor.  Today his tailor, later\nwith a coat, loads on him a thousand pardons.  A normal Mon-\nday program allows a lazy forenoon to ocean and boat; after-\nnoon to various auto roads in orange season; night to play	2021-06-06 14:05:03.197092
63	aqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj\nThe DAILY DRILLS will HELP YOU type with EASE;\nThe DAILY DRILLS will HELP YOU type with EASE;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;	2021-06-06 14:05:03.513832
64	quote quote quote; paper paper paper; quite quite;\npaper paper paper; quite quite quite; quote quote;\nprefer prefer prefer; prepay prepay prepay; quires;\nprepay prepay prepay; prefer prefer prefer; quires;	2021-06-06 14:05:03.721798
65	I trust that you will be able to call upon us very soon.\nk( d# j* f$ j& f% j& f^ l) s@ ;_ d# ;` f% ;` f$ j^ s@\n(3 8% #9 2) @0 [@ *4 2_ $8 [% 3 1/5 3 @ 5 & 3^ $7 5* $8 `)\nas" nt" et" re" us" me" is" de" it" t." e." r," o," ?" ?" ?"	2021-06-06 14:05:03.877997
66	put cash in the bank and bear a bill or two.  The new deed\nhas done it.\nThe city has been busy but cold for two days.  Dear baby\nhas been to see her best aunt.  A band came by the door.	2021-06-06 14:05:04.019347
67	is at the right margin or other chosen point.\nFor example, if you want a date line to end at the\nright margin, place the carriage with the printing point\nindicator at the right margin and backspace once for	2021-06-06 14:05:04.145526
68	whatever else is required for the trip.  The car would also be a\npleasure after you return to New York.  May I persuade you in re-\nplying to state that you are planning to come promptly?  We will\nmake you one of the officers of the shipping business.	2021-06-06 14:05:04.274985
69	returning to this territory by September, our president has re-\nquested me as secretary to ask that you make a statement before\nour club the first Wednesday.\nLet me say something of the questions we have been receiving	2021-06-06 14:05:04.411306
70	try try try the the the yet yet yet get get get\nkey key key jit hit hit tie tie tie kit kit kit\ntie tie tie kit kit kit key key key hit hit hit\nhere here here they they they true true true	2021-06-06 14:05:04.553557
71	She sells seashells.\nSailfish sail idle seas.\nShe seeks a fig leaf.\nRed hair is like a fire.	2021-06-06 14:05:04.672937
72	And none but fools do wear it; cast it off.--\nIt is my lady; O, it is my love!\nO, that she knew she were!--\nShe speaks, yet she says nothing:  what of that?	2021-06-06 14:05:04.787506
73	one's attention exclusively along certain lines accounts for\nthe success of some people.  Diffusion of effort is considered\nan enemy of success.  We are told that this is an age of\nspecialization, and specialization demands concentration.	2021-06-06 14:05:04.904238
74	Very truly yours,\nStrive for typing accuracy.  Speed without accuracy is of little value.\nRhythm is the secret of typing skill.  Don't write one part of a word\nfaster than another.  Slow down so that you can maintain a regular rhythm.	2021-06-06 14:05:05.032638
75	And grievously hath Caesar answer'd it.\nHere, under leave of Brutus and the rest,--\nFor Brutus is an honourable man;\nSo are they all, all honourable men,--	2021-06-06 14:05:05.152637
76	Think of the letters before you strike them.  Strike the keys evenly, so\nthat the printing impression does not vary.  At the same time, try to\ndevelop your stroking speed and make it a habit to release the keys quickly.\nTo get up speed, type each exercise three or four times.	2021-06-06 14:05:05.269098
77	Come I to speak in Caesar's funeral.\nHe was my friend, faithful and just to me;\nBut Brutus says he was ambitious;\nAnd Brutus is an honourable man.	2021-06-06 14:05:05.388666
78	Her eye discourses, I will answer it.--\nI am too bold, 'tis not to me she speaks:\nTwo of the fairest stars in all the heaven,\nHaving some business, do entreat her eyes	2021-06-06 14:05:05.514524
79	ater oter etor utor ider ather other eture uture ister\neter uter itor ader oder ether uther iture aster oster\niter ator otor eder uder ither ature oture ester uster\nwater later actor order father future faster	2021-06-06 14:05:05.628407
80	A free red jade is fake.  Girls like silk.\nShe seeks a safe reef, if she sails.  A gale is rare.\nAlf fed her egg salad.  Gail likes hash.\njkl; fdsa ded fgf jhj k,k kik frf l.l	2021-06-06 14:05:05.753107
81	fgf jhj fgf jhj fgf jhj fgf jhj fgf jhj fgf jhj\nhit hit hit hit hit hit get get get get get get\nyet yet yet yet yet yet try try try try try try\nthe the the try try try get get get yet yet yet	2021-06-06 14:05:05.870518
82	for the year.  Recently I read that the old principle today still\napplies.  It is wonderful what our new knowledge has surprised us\ninto regarding as necessary for ourselves--sometimes things not\neven mentioned yesterday.	2021-06-06 14:05:06.032267
83	Yours sincerely,\nDear Son,\nI am beginning this afternoon to give my immediate attention\nto a Christmas that should be beautiful.  I have addressed, to be	2021-06-06 14:05:06.173654
84	ess ean ist ian cel apo col ary tra neo sur ity sub ele mis\nDear Dan,\nYes, I came out of the corn, back to the city, both to\ndraw and to do copy on the new cars.  To date I am able to	2021-06-06 14:05:06.286947
85	postage postage postage; quarter quarter quarter;\npoultry poultry poultry; quality quality quality;\ntwo quires of high quality paper were shipped today;\nwe shall pay you well to prepare the reports for us;	2021-06-06 14:05:06.426256
86	t( e# h* u$ h& u% h& u^ n) o@ s~ e# s/ u% s/ u$ h^ o@\n(3 8% #9 2) @0 [@ *4 2_ $8 [% 3 1/5 3 @ 5 & 3^ $7 5* $8 `)\nas" nt" et" re" us" me" is" de" it" t." e." r," o," ?" ?" ?"\nThe Herald, the Daily News, and the Post reported the story.	2021-06-06 14:05:06.545234
87	contract or follow the local opera.  As soon as he can account\nfor another book, our author is anxious to go abroad.\n"Has #4-4 gone?" she asked, rushing in out of the cold.\n"No--why $4?" the station agent* answered (he had won-	2021-06-06 14:05:06.668092
88	GOOD SALARIES are USUALLY PAID to FAST TYPISTS;\nGOOD SALARIES are USUALLY PAID to FAST TYPISTS;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\naqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj	2021-06-06 14:05:06.792714
89	In his speech on "Can a Business Man Be Honest?" he proved:\n(1) There are many ways, some hardly honest, to make money.\n(2) It may pay to treat fairly a business rival or employee.\n(3) Saving time and material often leads to a large profit.	2021-06-06 14:05:06.970291
90	The captain's order to mount at once and ride for Dr.\nLivesey would have left my mother alone and unprotected,\nwhich was not to be thought of.  Indeed, it seemed\nimpossible for either of us to remain much longer in the	2021-06-06 14:05:07.099196
91	go got get gas gag gap gay gig gray greed great;\ngo gig gay gap gas gag get gas gray great greed;\nher has had his hit hot hut hat hay hag had his;\nhis had hag hay hat hut hot hit his had has her;	2021-06-06 14:05:07.223474
92	He likes to go by bus (Overland Route), but it goes at 2:10.\n"Good morning," said the clerk.  "May I be of help to you?"\n"Thank you," she replied, "but I must wait to see Mr. Burd."\n"He will be in his office at 10:20," the clerk assured her.	2021-06-06 14:05:07.341802
93	quip quip quip; quit quit quit; aqua aqua aqua;\naqua aqua aqua; quip quip quip; quit quit quit;\npaid paid paid; pair pair pair; pass pass pass;\npair pair pair; pass pass pass; paid paid paid;	2021-06-06 14:05:07.459664
94	You should STRIKE ALL THE KEYS with EQUAL POWER;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nGOOD WORK will lead to a HAPPY LIFE for you;\nGOOD WORK will lead to a HAPPY LIFE for you;	2021-06-06 14:05:07.574495
95	------------------------------------------------------------\n*Red Wild (heir to $750,000 at 5%, working on the B. & O.).\nI said, "There is the city and this bus won't be long now."\nThe quick brown fox jumped over the lazy dogs.	2021-06-06 14:05:07.695315
96	better in September but both November and December seemed to\nbe much behind.  Monday morning my mail box became blocked\nby urgent requests of many families that small-sized homes\nbe built.  Some jobs may begin to come now from the Chamber	2021-06-06 14:05:07.811269
97	yes if you will take this trip.\nYours sincerely,\nDear "Cab,"\nCould you apply to the court to allow my claim as agent	2021-06-06 14:05:07.925395
98	costs too.  In each such case a chance cause can hit costs.\nAt his age a good song is the thing as he gets his dog and\ngun.  He is going to hunt again.  As night ends he sets out.\nAs soon as papa is deep in a nap Pat happens to pound in his	2021-06-06 14:05:08.047217
99	thing pleas ought quest ember count ditio state recei ction\nDear Gertrude,\nThis letter has no reference to shipments which you have\nso kindly purchased from me in the past.  Rather, as you are	2021-06-06 14:05:08.171166
269	word you are typing and throw the carriage for the\nnext line.\nDo not look up to watch for the end of the line; you\nmay lose your place in the copy.  Always keep your	2021-06-06 14:05:30.810918
100	and I am trusting that you will be thinking that it is possible for you to\nhelp put it into practice.\nIf you can possibly separate yourself from teachers and your\nteaching position sometime soon, plan to get a standard car and	2021-06-06 14:05:08.286532
101	To learn to typewrite is not difficult.  The keyboard\nof the typewriter may be mastered in a few hours, but to\nget speed in typewriting calls for a good deal of practice.\nOne of the best methods of getting up speed is to write a	2021-06-06 14:05:08.679664
102	Ambition should be made of sterner stuff:\nYet Brutus says he was ambitious;\nAnd Brutus is an honourable man.\nYou all did see that on the Lupercal	2021-06-06 14:05:08.973126
103	reports sent out by the company, and if at any time you have\nany questions regarding the report or the company, if you\nwill advise me, I shall be happy to give you any additional\ninformation that I may have.	2021-06-06 14:05:09.087514
104	Your communication of February 16 has been received.\nStudents are taught addition, subtraction, and division.\nYour attention is called to the action of the Commission.\nConcentration is a valuable faculty.  The ability to direct	2021-06-06 14:05:09.211503
105	Would through the airy region stream so bright\nThat birds would sing, and think it were not night.--\nSee how she leans her cheek upon her hand!\nO, that I were a glove upon that hand,	2021-06-06 14:05:09.345696
106	portion station intention possession connection situation\nlocation creation condition impression completion commission\nInformation on the invention has been sent you.\nThe cancellation of the exhibition was announced.	2021-06-06 14:05:09.46354
107	To twinkle in their spheres till they return.\nWhat if her eyes were there, they in her head?\nThe brightness of her cheek would shame those stars,\nAs daylight doth a lamp; her eyes in heaven	2021-06-06 14:05:09.583411
108	He hath brought many captives home to Rome.\nWhose ransoms did the general coffers fill:\nDid this in Caesar seem ambitious?\nWhen that the poor have cried, Caesar hath wept:	2021-06-06 14:05:09.695433
109	I am enclosing herewith the annual report of our corporation\nfor the year just ended; also table showing Profit and Loss\nAccount for the past ten years.\nI am placing your name on our mailing list for all future	2021-06-06 14:05:09.821626
110	Credit the cost to the estate.\nRecord your thoughts from time to time.\nAn effort should be made to settle the estate.\nRest assured you will succeed if you try hard.	2021-06-06 14:05:09.941925
111	Do you remember an original idea you proposed last November relative\nto planning for some shipping from my property?  My neighbor recently\ncalled it a plan in a thousand, and we must get together so that I can\nthank you properly.  This is a national as well as personal question,	2021-06-06 14:05:10.053788
112	as answering to the character of a gentleman.  Mother is enclosing\na few lines.\nYours sincerely,\nMy country friend is beginning to believe trouble is coming.	2021-06-06 14:05:10.17159
113	gi ci ri li fi gn pl gh ld sy rd ty ct ft ch nc dy dr ph ng\ns?  d?  e?  f?  r?  f?  t?  j?  n?  s:  d:  e:  r:  t:  n:\nk, i, d, e, f, r, k, u, f, t, k, y, d, c, k, n, k, h, l, o,\nChance can aid a nice choice.  It can teach one to count his	2021-06-06 14:05:10.293181
114	for Mr. Blank?  I could bring in his books and see about his\nbills.  If asked, he can cover the costs by checks on a bank\nthat did not break.\nWill you allow your child to come alone to see me?  He	2021-06-06 14:05:10.406556
115	of Commerce members.\nI said, "Never promise to take much money to such places."\nHow do I lose if I read a book that doesn't have much in it?\nnon ana dis dia cle pan ard pur ern eer off age suf ame amb	2021-06-06 14:05:10.522142
116	Paul quoted the old adage:  THE THRIFTY ARE WISE\nPaul quoted the old adage:  THE THRIFTY ARE WISE\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nYou should STRIKE ALL THE KEYS with EQUAL POWER;	2021-06-06 14:05:10.643593
117	dered why she was so worried).  But he wasn't to find out--\nfor a white hand pushed back $15 and picked up an old copy\nof Good Housekeeping from a seat.  She began to read.  When\nhe noted she had chosen "Winter Comfort" he was 100% amused.	2021-06-06 14:05:10.756343
118	Read "National Affairs" in Time for December 6, 1940.  You\nmay think that Snappy Stories has more news than Time.\nHe goes November 6, on Train #2 (North Coast), at 9:15 p.m.\nTrain #35-4 (Southern Route) leaves at 6:00 but stops often.	2021-06-06 14:05:10.875521
119	quay quay quay quay quay quip quip quip quip quip\nquay quay quay quay quay quip quip quip quip quip\napt apt apt; put put put; sip sip sip; hip hip hip;\nsip sip sip; hip hip hip; apt apt apt; put put put;	2021-06-06 14:05:11.022583
120	have faith.\nSkillful typists make very good salaries.  All\ntypes of firms require them.  So try your utmost to\ndevelop your skill.	2021-06-06 14:05:11.352016
121	house:  the fall of coals in the kitchen grate, the very\nticking of the clock, filled us with alarms.\nThe neighborhood, to our ears, seemed haunted by\napproaching footsteps; and what between the dead	2021-06-06 14:05:11.467376
123	truly say that money paid for this study is happily spent.\nToday typing plays a very practical part in acquiring a\npaying position.  We can use plenty of these days for exact\nwork in typing:  Monday, Tuesday, Wednesday, Thursday, Friday,	2021-06-06 14:05:11.709499
125	Can Jim complete it?  Is he quite capable?  Who knows?\nDo you set aside a definite amount of time each\nday for practice?  Do you start work promptly?  Can\nyou make the various machine adjustments quickly?	2021-06-06 14:05:11.941846
126	a cold azure sky.  It's near zero in the fire zone; and over\nthe ships now razed to the water's edge, a light haze hangs.\nI'm dazed as I gaze at my own ship; I'd never recognize that\ncrazy maze of still fizzing ruins as a deck.  What a fizzle!	2021-06-06 14:05:12.057455
127	By using the new banks of keys on the new keyboard, you\nare able to learn or excel with less labor.  These new banks\nhave been based on an exact table of words used.  You begin\nat once on the best bank.  On the old keyboard you have to	2021-06-06 14:05:12.183308
128	I did notice a number of the pretty places I passed in\nthe air nearly two months ago, and I can at length locate\nthe best.  If prices remain rather low, I will not return\nfor any person or be prompt at orders.  I can play a record	2021-06-06 14:05:12.307068
129	Do not hurry.  Set a nice rate.  Yet hit each letter fast.\nTo strike letters start easily and fast and use a light touch.\nYou can not type lightly and faster if you start to pound.\nIt is a slip if you do not use a letter in its right order,	2021-06-06 14:05:12.428243
130	The usual farm woman won't see a trade table or understand\nits terms, for she is tired with her efforts to train and teach\nher young.  She has tried to throw her value into her home, which\nto her is worth so much.  War can not be put under until these	2021-06-06 14:05:12.544011
165	and Saturday.  Have you this sized type to print your copy?\nWere you the judge in a case like this, could you do the\njust thing?  An old woman who keeps rooms hides her money\nunder a clock.  A man using one of the rooms motors rapidly	2021-06-06 14:05:17.224159
131	ful account I enclose?  Between brother and me lay this old man who did seem\ndead.  I can't express my feeling.  His head was covered with marks of blows.\nAlready we were anxious to go.  Yet his safe was open, as if to furnish us\nthe old books with the many expense charges against the college boys.  When I	2021-06-06 14:05:12.660255
132	Harvard in 1861; from Harvard Law School in 1866;\nadmitted to the Massachusetts Bar in 1867.\nf4f j7j f5f j6j d3d k8k f4f j7j f5f j6j d3d k8k\nor4 ru7 it5 by6 ie3 ok8 or4 ru7 it5 by6 ie3 ok8	2021-06-06 14:05:12.774959
133	each hand in place, or plan to end this or that poor slip,\nor plan to do its total lines in less hours.  As a rule, to\nplan and to do are also to learn.  The class plans to drop\nthe old action to clear the road.  Those old slips are lost.	2021-06-06 14:05:12.895696
134	he sees a horse ahead.  He tries hard to stop.  The car hits\nand then turns around.  The horse runs east at a great rate.\nIn order to raise a poor grade one tries to use good sense.\nAn error is a sure sign not to do the thing that one did.	2021-06-06 14:05:13.009945
135	lie 3 dye 3 pie 3 dye 3 Fiji 8 Fiji 8 Fiji 8\n18 cans grape juice; 138 cans prune juice; 4 lbs. coffee;\n47 cans prune juice; 143 cans grape juice; 8 lbs. onions;\nd3d k8k d3d k8k d3d k8k 183 381 813 318 138 381	2021-06-06 14:05:13.134406
137	abcdefghijklmnoprstuvwy\naaa aqa aaa qqq aaa aqa aaa\naaa quit aaa quad aaa quip aaa\nlacquer inquiry squirt quart	2021-06-06 14:05:13.368232
138	lll l>l lll l>l lll l>l lll\nl>l X>3 l>l Y>7 l>l Z>0 l>l\nl>l >>> l>l 9>9 l>l .>. l>l\nkkk k<k kkk k<k kkk k<k kkk	2021-06-06 14:05:13.603794
139	6745\n;;; ;'; ;;; ''' ;;; ;'; ;;;\n;'; it's ;'; 'till ;'; won't ;';\n;'; 'tis ;'; isn't ;'; 'tis too ;';	2021-06-06 14:05:13.869264
140	Fifteen dollars a month--measured in current dollars--is a good rate.\nThe clock ran out, signaling the end of\nthe second-half.  The game had been lost.\nThe paper just made an announce-	2021-06-06 14:05:13.999602
141	his land.  He asked for a great feast.  His\npeople prepared roasts.  His jester did a jig.\nAll the people left hoping to do it again.\njkj fdf jlj fsf j;j faf kik ded frf	2021-06-06 14:05:14.112197
142	right at the start.  The insane ones held their\ngold and later it paid off.\nOne fine afternoon the king had an idea.  He\nsent a letter to all the lords and ladies of	2021-06-06 14:05:14.235903
144	_T_R_L102\nShe had on a bluish-green dress.  But, no one noticed.\nAt macrame class last night, I made a hanging basket for the philo-\ndendron in our dining room.	2021-06-06 14:05:14.483743
145	The cow jumped over the moon.\nThe little dog laughed to see such sport,\nAnd the dish ran away with the spoon.\na;a sls dkd fjf sws jyj fvf dcd jmj ;-;	2021-06-06 14:05:14.595758
146	k*k i*i k*k *,* k*k 8*8 k*k\n;;; ;+; ;;; ;+; ;;; ;+; ;;;\n;+; 2+4 ;+; 7+5 ;+; 8+0 ;+;\n;+; +=+ ;+; -+- ;+; /+/ ;+;	2021-06-06 14:05:14.713819
147	10 a.m. and 4 p.m.\nf4f j7j f5f j6j d3d k8k s2s l9l ;0; ;-; ;0; ;-;\ns2s l9l ;-; ;=; d3d k8k f4f j7j ;0; ;-; ;0; ;-;\nMax Zale made a long-distance flight of 2,590 miles.	2021-06-06 14:05:14.832647
148	Dad and his son, Dan, are to go east on a great auto trip.\nThe phone rings.  Dan hopes the rain has not upset the trip.\nSoon the pair share a snug rug and start out in our red car.\nOn a poor, rough road, Dan dares to rush in the rain.  Soon	2021-06-06 14:05:14.947552
149	bid 3 bid 3 bid 3 bid 3 oak 8 oak 8 oak 8 oak 8\nd3d k8k d3d k8k d3d k8k d3d k8k 318 813 138 813 381\n13 lbs. lamb roast; 38 lbs. lamb chops; 8 lbs. bananas;\n31 lbs. lamb chops; 83 lbs. lamb roast; 3 lbs. peaches;	2021-06-06 14:05:15.089151
150	1767.  In 1817 he was appointed Secretary of State.\nHe died in 1848.\nOliver Wendell Holmes, American jurist, was born\nin Massachusetts on March 8, 1841; graduated from	2021-06-06 14:05:15.20975
151	Further to advance the evening, my brother advised us of an old address\nnear the freight yard where certain college boys brought this or that article\nand were allowed a few dollars.  As we went in, an old man came a step farther,\nfell forward and against me.  Brother charged him.  Will you believe this care-	2021-06-06 14:05:15.329076
152	it if he can act to fit his age.  Ask him not to act as a kid.\nYours sincerely,\nTo tell this class all there is to learn is not a real\nhelp later.  Let the class plan the loose ease that can hold	2021-06-06 14:05:15.451139
153	women see there is but one world, which truly is their world.\nWhere will you be while the thick wheat is harvested?  If\nnot across the water, would you visit us, using your voice to\nteach us these things?	2021-06-06 14:05:15.57281
154	or two, and not regret there is no report to be looked at.\nI want to be myself and regard nature, not people.\nTo obtain this latter result is the proper reason for\nmaking this quiet trip.  So far from the public, matter in	2021-06-06 14:05:15.691156
155	since in line after line each has its place on the paper.\nYou soon learn the usual order for all letters that you type\nand learn to print the letters in any necessary order.\nIt is easy at first to make errors by losing this usual order.	2021-06-06 14:05:15.808069
156	period and tried to be confident.  I think they did include\nFlorida and Rhode Island in their wide reading; and have\njust decided to dispose of Detroit, Grand Rapids, Richmond,\nProvidence, and Philadelphia next week.	2021-06-06 14:05:15.928068
157	Can he dance?  Does he swim?  Do you like tennis?\nDid you open the mail?  Did you read the note?\nDid you read the note?  Did you open the mail?\nCan Van do the work?  Will he require aid?  Who knows?	2021-06-06 14:05:16.044484
158	Owing to Dan's zeal, he'll get the point; he'll realize it's\nfaster.  He'll use it when amazed, as:  Whiz!  He'll use it\nwhen he feels real zest, as:  Zip!  Let's go!  It's a fire!\nA dozen small-sized craft frozen in the ice are afire under	2021-06-06 14:05:16.379315
159	So had I just an old motor car and some gas to make it jump,\nI would come at forty miles an hour, past fields of wheat,\ntill the grade grows high and rough, in keen air out West.\nPlease report the people who study typing.  You may	2021-06-06 14:05:16.498772
160	mad met mix men mask mark made main male made mint\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nfvf jmj fbf jnj dcd k,k sxs l.l aza ;/; aza ;/;\nLiza quickly mixed the very big jar of new soap.	2021-06-06 14:05:16.62115
162	Isn't there a lot of zip and zest to your work on a paper of\nthis size?  Don't you like to seize some amazing news item\nthat's good for the first page?  If Tom's hazy fire story is\na fizzle, why won't you squeeze it to a dozen lines?  Isn't	2021-06-06 14:05:16.856566
163	each lesson.\n? ? ? ? ? ? Who?  Who?  Who?  Who?  Who?  Who?\n? ? ? ? ? ? Why?  Why?  Why?  Why?  Why?  Why?\nHow much?  How many?  How soon?  How early?  How fast?	2021-06-06 14:05:16.986902
164	a skill for which there is a constant demand.\nbag big bug bit bud bed bid bun bale bend bank bask\nbut bid bed bun bid big bag bud bask bale band bank\nnot now nut nor note nose none nude noun nine nest	2021-06-06 14:05:17.106236
166	All you need is the will to learn.  The lessons in\nthis book do the rest of the job for you; they\nmake touch typing easy for you to learn.\nz z z z aza aza aza aza / / / / ;/; ;/; ;/; ;/;	2021-06-06 14:05:17.348879
167	March.\nOur place is miles away, but the real issue is that mu-\nsic means much to us.  A night of music, even one piece of\nmusic, has often meant more to me than my local paper and all	2021-06-06 14:05:17.480377
168	As I watch the wheels of events today, I think you value a\nthing it has taken me a third of my years to see.  In its total\ntrade the world is one whole, and each part in touch with the\nother at most times.	2021-06-06 14:05:17.59537
169	query as to zeppelins.  Criticize the quality of jazz music.\nAt the last minute he wrote that he knew it was done again.\ntrans ition there lease craft hyper etter esque ceive where\nDear Rollin,	2021-06-06 14:05:17.716608
170	8 lbs. Swiss Cheese; 13 lbs. Kraft Cheese; 4 lbs. pears;\n5 lbs. Kraft Cheese; 17 lbs. Swiss Cheese; 6 lbs. beans;\npie 3 dye 3 pie 3 dye 3 Fiji 8 Fiji 8 Fiji 8 Fiji 8\nThe sum of 13 and 83 and 153 and 75 and 47 is 371.	2021-06-06 14:05:17.866946
171	So Ted shuts the piano and stops at the phone to catch Ann.\nI ought to post Ted that he pounds the piano as I once did.\nI guess he is upset.  He has to catch Dad to get the cash.\nHe has to see Ann to each dance.  This is not a noisy night.	2021-06-06 14:05:17.99196
172	did the job.  It is the end of her car.  She has no use for a\ncar.  The fee is to be big.  She is in bed, but she can not\neat.  She can not eat a bit of egg.  It is no fun at all.\nIt is hot.  It is too hot for her fur hat, but I can buy	2021-06-06 14:05:18.111438
174	The zoo is shut.  His zest is dashed.  Dan dozes.  One sneeze\nand then a dozen seize Dan.  In a daze he sees the zoo seized.\nThe boat has been best to Boston.  On this basis no doubt one\nis bound to be a bit behind but boats beat both dust and heat.	2021-06-06 14:05:18.345827
175	Is flight number 377 for Florida a 707, a 727 or a 747?\nIt is a 727 with 4 stops.  With all those stops it takes almost 7 hours.\nkkk k8k kkk k8k kkk k8k kkk\nkkk k8i kkk 8,i kkk ,i8 kkk	2021-06-06 14:05:18.464317
176	ment about a commotion at the\ncollege.  Someone has just\nproduced a micro-organism in the\nDNA-research lab.  It is a	2021-06-06 14:05:18.583457
177	the 6:45 flight (which makes 5 stops).\n423 475 925 235 295 175 650\n598 693 602 672 315 604 587 307\n12.00 67.50 99.95 38.75 19.99	2021-06-06 14:05:18.965178
178	a!a Ah! a!a What! a!a Oh! a!a\nTomorrow's quiz!  What if we get caught?  We'll be expelled!\nHe'll never suspect a thing!  We'll get some answers wrong to fool him.\n;;; ;=; ;;; ;=; ;;; ;=; ;;;	2021-06-06 14:05:19.134766
179	quail quiver inquest marquis\nsss sxs sss xxx sss sxs sss\nsss ax sss ox sss vex sss wax xxx\nexamine ex-wife excellent boxer sixteen	2021-06-06 14:05:19.255574
180	Safety first.  This slogan is well known.  Yet many care-\nless people disregard it and so we have accidents.  It is pos-\nsible to avoid many types of accidents by a little forethought.\nDon't be careless.  Do your share to avoid mishaps.	2021-06-06 14:05:19.38124
181	rar rer rir ror rur br cr dr fr gr pr shr tr thr\nrare rural proper trader drier freer cracker\nrear broker prefer trapper dresser fresher grammar\nroar brewer prepare thrower shrewder creamer greater	2021-06-06 14:05:19.501239
182	;=; -=- ;=; '=' ;=; :=: ;=;\n;=; X=2 ;=; Y=3 ;=; Z=0 ;=;\nkkk k*k kkk k*k kkk k*k kkk\nk*k 3*2 k*k 5*6 k*k 9*7 k*k	2021-06-06 14:05:19.616133
183	exactly sphinx oxygen except thorax\naaa aza aaa zzz aaa aza aaa\naaa adz aaa azo aaa coz aaa\nquiz jazz quartz zinc dozen	2021-06-06 14:05:19.732652
184	special kind of bacteria that\nconsumes crude oil.  The talk is\nthat it is being patented for use\non oil spills at sea.	2021-06-06 14:05:19.851956
186	f4r d3e s2w a1q az1 sx2 dc3 fv4\njjj j7j jjj j7j jjj j7j jjj\njjj j7u jjj 7um jjj u7m jjj\n777 map 777 jug 777 rum 777	2021-06-06 14:05:20.082547
187	Nan is in Texas.  She is anxious to dine at six.  She sees a\ntaxi stand next to the sixth exit.  Taxis exist to aid one.\nAsk them to let us have the car if they both go to the show.\ndedc kik, frfv jujm swsx lol. aqaz ;p;p frfv jujm ftfb jyjn	2021-06-06 14:05:20.202927
188	a box for it.  I am due any day.  I can cut a day if I fly.\nIt is not far if I go by air.  If I go by car, I add a day.\nHow is Dan?  Did he get his job?  Dan had to beg for it\nif he did.  He is big and fat but not bad.  The boy can do	2021-06-06 14:05:20.323596
190	The sum of 47 and 75 and 153 and 83 and 13 is 371.\nJohn Jacob Astor was born in 1763 and died in\n1848.  He came to America from England in 1784 and\nset up a prosperous fur trade.  In 1811 he founded	2021-06-06 14:05:20.561821
191	His auto is a cheap one and no good on a night such as this.\nThe gang can use the piano and good songs to open the dance.\nIt is a good thing to use good habits each time you practice.\nthr pre rec ear ers ure urn gre art ore her are ter ere tru	2021-06-06 14:05:20.67477
192	dozen queries.  Only a quarter of the quotas qualified with\nzest.  Many had zero when the quiz asked:  In what zones are\nBrazil, Switzerland, Arizona, or Texas?  Zebras in our zoos\ngrow to what sizes?  Analyze and quote one great citizen's	2021-06-06 14:05:20.799091
193	Yours sincerely,\nDear Mrs. White,\nI wish to thank you for the words you wrote three weeks ago,\nand I trust you will write again on the wrong and waste of war.	2021-06-06 14:05:20.935908
194	Sincerely yours,\nDear Madam,\nI have your two later notes of March 1.  Maybe it is a\nlarge order for you to leave for the north in the month of	2021-06-06 14:05:21.285577
195	aza ;/; aza ;/; aza ;/; aza ;/; aza ;/; aza ;/;\nzip zip zip zip zip c/o c/o c/o c/o c/o c/o\nzip zip zip zip zip c/o c/o c/o c/o c/o c/o\nzest zest zest; lazy lazy lazy; size size size; zeal;	2021-06-06 14:05:21.409223
196	now not nor nut nose note nude none nine nest next\nvim vet van vex vet vast vote veto vase vine vial\nvan vex vet vim vex vial vine vase veto vote vast\nman mix mat mad made mail main make mark mask mine	2021-06-06 14:05:21.54831
197	away.  The old woman says her money is gone.  We join in a\nhunt for the man who is found in the West.  We take from him\nthe same sum of money.  We try to make him sweat and talk.\nI use my power to set his term at ten years.  After he is put	2021-06-06 14:05:21.670857
198	that easy for you?  I've wanted to see my name in print; I\nguess I'll sail in a zeppelin to see if you'll print that.\nA note from Ann says her friend prefers to change her\nreturn to Arizona from next February to November.  The reason	2021-06-06 14:05:21.78403
199	How many?  How much?  How fast?  How large?  How soon?\nWhere is Max?  Where is Mary?  What is Cora sewing?\nWhere is Sam?  Where is Paul?  What is Zeke fixing?\nCan Max swim?  Can he dance?  Can he play tennis?	2021-06-06 14:05:21.909633
200	even need a special talent for typing.\nx x x x sxs sxs sxs sxs . . . . l.l l.l l.l l.l\nsxs l.l sxs l.l sxs l.l sxs l.l sxs l.l sxs l.l\nsix six six six six six etc. etc. etc. etc. etc.	2021-06-06 14:05:22.026976
201	your right hand on the home keys when you throw the carriage?\nDo you use the paper release to remove your paper?\nDo you practice the words in which you made errors?  Do you\npractice them as explained in this book?  Do you follow the	2021-06-06 14:05:22.14282
202	e'l e's u'l h's d's n's s's e'r a's t's y's r's n't m's es'\nI'd never call Dan lazy; still, I can't say he wins prizes.\nDoesn't Dan know how to make an exclamation point?  He'll\nhave to hold down the spacer and hit the apostrophe and period.	2021-06-06 14:05:22.260417
203	Each guest did quail.  Could such quiet nerve ever avail?\nWith a move quite free and easy the lady let fall her glass.\nThe queen put this query in a quick voice to quell them all:\nWhy does the whole world love a lover?  Why do we value you?	2021-06-06 14:05:22.382618
204	Ship five dozen boxes of zinc trays by Zale Express.\nThe slant is controlled by the semicolon finger.\nIt is used in such abbreviations as n/c, which means\nNO CHARGE; and c/o, which means CARE OF.	2021-06-06 14:05:22.495493
205	Yours sincerely,\nImportant dinner company in our small apartment was\nnot common, and November ninth mamma was solemn in manner.\nThe moment nine American gentlemen were announced, fun and	2021-06-06 14:05:22.620727
206	Dear Dick\nI have a dollar.  I expect you to follow me and take dinner.\nFriday I didn't have cash, but a friend of the family had enough\nfor both of us.	2021-06-06 14:05:22.740403
207	seize the boat while the others, who are quite ready to serve the\ngirl, sleep.\nIt seems the girl has sense, for on a sheet of paper she\nwrites that her stock of gold is within reach from a round stone	2021-06-06 14:05:22.851983
208	would enjoy seeing the whole house next week.  Before then\nplease write her a letter to let her know how to get there\nfrom here.  We know you have moved to a very cozy new home.\nThe High dance opens at eight and the gang is going.	2021-06-06 14:05:22.976102
209	the letters that she has to print.  Is this order upset?\nIs she tired?  Then she needs a short rest.  Is it the rate?\nShe need not raise her rate too high.  Has she a good touch?\nHugh thought he ought to start that night although the	2021-06-06 14:05:23.098603
210	in the business world.\nd3d k8k d3d k8k d3d k8k d3d k8k d3d k8k d3d k8k\n131 313 311 181 818 381 381 381 183 138 318 813\nbid 3 bid 3 bid 3 bid 3 oak 8 oak 8 oak 8 oak 8	2021-06-06 14:05:23.210709
211	s2s s2s s2s s2s s2s s2s l9l l9l l9l l9l l9l l9l\ns2s l9l s2s l9l s2s l9l s2s l9l s2s l9l s2s l9l\nbow 2 bow 2 bow 2 bow 2 two 9 two 9 two 9 two 9\nbow 2 two 9 bow 2 two 9 bow 2 two 9 bow 2 two 9	2021-06-06 14:05:23.329167
212	Learn the sound as one uses loose hands to type out a line.\nAs one types his usual rate he ought to learn its sound until\nat this rate all the line has the usual, clean, clear sound.\nAs soon as the usual rate is lost one can hear it as a slip.	2021-06-06 14:05:23.450061
213	fff f5f fff 555 fff f5f fff\nf5f f54 f5f t5g f5f t5r f5f\nf5f five f5f two f5f four f5f\nf5f 453 f5f 585 f5f 475 f5f	2021-06-06 14:05:23.562455
214	fvf dcd sxs aza fbf\nman come body vacant many tax ribbon lining believing\nname can beam make examine none native baby commission\nvain sex not cancel even mention woman brick quicken	2021-06-06 14:05:23.688104
215	;;; (.) ;;; (.) ;;; (,) ;;;\n;); pole ;); loop ;); pile ;);\nYou (the buyer) should ask him (the seller) for the price (of the goods).\nIf (X-5) / (X-6) is 56, then what is (X/5) - (X/6)?	2021-06-06 14:05:24.095283
216	How much wood could a woodchuck chuck if a\nwoodchuck could chuck wood?  A woodchuck\nwould chuck all the wood that a woodchuck\ncould chuck, if a woodchuck could chuck wood.	2021-06-06 14:05:24.231561
217	Who sat down beside her\nAnd frightened Miss Muffet away.\nHey, diddle diddle--\nThe cat and the fiddle	2021-06-06 14:05:24.347924
218	j^j <^> j^j .^. j^j "^" j^j\n10 LET x=10\n20 LET y=20\n30 PRINT x+y/3	2021-06-06 14:05:24.46443
219	Jack fell down and broke his crown and Jill came tumbling after.\nLittle Miss Muffet sat on a tuffet\nEating her curds and whey.\nAlong came a spider	2021-06-06 14:05:24.587307
220	k<k X<0 k<k Y<2 k<k Z<8 k<k\nk<k <.> k<k >.< k<k <<< k<k\njjj j^j jjj ^^^ jjj j^j jjj\nj^j X^2 j^j Y^3 j^j Z^4 j^j	2021-06-06 14:05:24.705387
221	j6j 4567 j6j 7654 j6j 6754 j6j\nl(l (.l l(l 9(9 l(l\nl(l loop l(l oil l(l only l(l\n;;; ;); ;;; ;); ;;; ;);	2021-06-06 14:05:24.827016
222	sss sws sss www sss sws sss\nsss wet sss who sss was sss\nsws who sws what sws when sws where sws\nknowledge whatever Wimbledon know-it-all	2021-06-06 14:05:24.969768
223	kit free use type last lower drug light wheat proper your\nlot dear its rear were pretty grip quiet where proud yellow\nhear sweep old easy writer fresh group equip who please yes\njmj k,k l.l ;/; jnj	2021-06-06 14:05:25.089233
224	The 5 of us each carried 50 pound packs all 45 miles of the trip.\njjj j6j jjj 666 jjj j6j jjj\nj6j June j6j much j6j hum j6j\nj6j y6n j6j u6m j6j h76 j6j	2021-06-06 14:05:25.207582
225	One good way to develop this technique is to practice\nfamiliar words and phrases.  Type them over and over\nagain until you get the knack of hitting the keys quickly\nand releasing the fingers instantly.	2021-06-06 14:05:25.332645
226	its sense.  This, indeed, helps to hold each line until done.\nAs soon as one hits a hard place then one plans to drill on\nthis part.  Later one can drill this hard part again.  In\norder to end an error one can drill all the old line again.	2021-06-06 14:05:25.460328
227	An error seen once does not hurt.  As soon as an error is\nseen or heard again, note its sort and end it right there.\nHer error is a sign that this thing or that has upset her.\nDoes she care?  Is it a hard part?  She has to get used to	2021-06-06 14:05:25.573376
228	put your mind to it.  You should also, if possible,\nlearn shorthand.  Typing and shorthand are two very\nvaluable skills to have.\nThese two skills will help you get a good start	2021-06-06 14:05:25.693081
229	scene is set.  Each act can open in good shape.  I hope that\nenough cash is paid in so the cast need not stand the costs.\nOnly too well do we know about your house.  Mother told\nme you hope to be settled there quite soon.  Of course she	2021-06-06 14:05:25.813601
230	under the small shade tree.  She does not quote the boy, but does\nrefer to the sorry end of his short study, and in her reply to his\nfolks she will state how the gold may still be spent in the right\nway, which will stamp the story as real.	2021-06-06 14:05:25.924708
231	Father is having all the lot, except the garden, filled in\nduring the week.  Giving in to his desire, I intend to work the\nground.  Doctor says that my health is hardly an excuse, so I had\nbetter decide to make an effort.  Indeed, I am driven either to	2021-06-06 14:05:26.066513
232	argument began.  I remember one ancient gentleman, manager\nof much more income than mine, who was not solemn as imag-\nined, but funny and human, even if normal demand, planned\nmovements of modern machines to Canada, long term payments,	2021-06-06 14:05:26.200371
233	all was quiet.  Every one, save one alone, quit the dance.\nIn all their lives, to quote, was never a thing more grave.\nWho was the lady with the vivid hair in the dress of heavy\ngold?  Who was this queer one who dared so treat the queen?	2021-06-06 14:05:26.31665
234	zero zero zero; zest zest zest; lazy lazy lazy; zeal;\nblaze blaze blaze; amaze amaze amaze; zebra zebra;\ndizzy dizzy dizzy; blaze blaze blaze; amaze amaze;\nThe lazy zebra at the zoo quickly drank the mixture.	2021-06-06 14:05:26.436326
235	Do you keep your fingers curved?  Do you strike each key\nsharply with the tip of the finger?  Do you keep your eyes\non the copy?\nDo you throw the carriage without looking up?  Do you keep	2021-06-06 14:05:26.55537
236	even if the papers did quote his prison term as five years.\nEven her very quick smile never makes us quite at our ease.\nI don't know why he can't have a large-sized order for you.\nsen aze hen ose hat ous had ize tte see hin oze to- zoo n't	2021-06-06 14:05:26.704092
238	one letter over another.  Let your errors stand.\nFinish every line you start.\nYou correct your typing errors by practicing the\nwords in which you made errors.  You have been doing	2021-06-06 14:05:26.925177
239	copies without noise, or outside notice.  I am anxious to\navoid an action.  If I voice an official opinion, I will omit\nserious points.  Knowing conditions, I am hoping that I'll\nbe enjoying a glorious addition to my income.  I am going to	2021-06-06 14:05:27.048796
240	If you work with zeal and zest, you will soon be a\ncompetent typist.  The ability to type well is a\nvery valuable asset.\nYou can develop your typing skill quickly by the proper	2021-06-06 14:05:27.171686
241	in jail, the old woman finds her money still under the clock.\nHow do we know which way so wild a horse will kick or jump?\nWith that end in view I may soon have to put this question.\nave hav eve ver ove quo not ive giv qui vis que ved eiv tha	2021-06-06 14:05:27.286756
242	Last but not least, all else should still go on as usual.\nIn our queen city I used to value two covers set every\nday.  At these I used to serve a young man and a girl.  I did\nlove to see her quiet dress and quick smile favor her so.	2021-06-06 14:05:27.407504
243	instructions exactly as given?\nlax vex six tax fix taxed fixing mixing taxing vexing\nfix tax vex lax six fixed vexing taxing fixing mixing\nzip zoo zest zeal zinc zero lazy zone zoom zinc zealot	2021-06-06 14:05:27.527433
244	plan.  Don't forget.\nYours sincerely,\nI quit the quiz when I saw the quantity of queer hazy\nquestions.  To seize lesser prizes required answers to a	2021-06-06 14:05:27.653394
245	Your son has not called on me.  If he is to become almost an\nannual charge upon the county, the church will answer with action.\nYet, I am afraid his arrest can not assure his coming around and\nasking us for advice.  Of course he has to appear before August.	2021-06-06 14:05:27.771179
246	I know how some men keep in power, and some get only kicks.\nI am sick of dark ways to make money, of bribery and fraud.\nI want to hear the talk of folks who know hot sun and stock.\nI like to join in jokes with men whose names I do not ask.	2021-06-06 14:05:27.88618
247	must pull himself together (100%) to type his steady, smooth\nway over all upsets.\nMen are bound to believe that business is bad in winter\nmonths.  Maybe Mr. Smith remembers that most building became	2021-06-06 14:05:28.003236
248	the margin stop is reached; on other machines, it\nrings when there are six or seven spaces left.\nThe ring of the bell permits you to keep your eyes\non the copy.  When you hear the bell, finish the	2021-06-06 14:05:28.122844
249	Total lines that one turns out tell all that one is young.\nIn order that this class also can print a large line total,\nit still helps to spell; it also helps to print all the line\nas one line, and it helps less and less to drill single	2021-06-06 14:05:28.244434
250	in the center.  Strike the key quickly, letting the\nfinger spring back as though the key were red hot.\nStrike each key sharply with the fingertip and squarely\nin the center.  Strike the key quickly, letting the	2021-06-06 14:05:28.365308
251	valuable for personal use and as a means of getting\nan office job.\nTyping is a very valuable skill to acquire.  It is\nvaluable for personal use and as a means of getting	2021-06-06 14:05:28.475167
252	with your showing.  You have been like a soldier on duty in any and all\nweather.  Success is your teacher.\nWith my best regards,\nHe would separate the whole business and buy out their half.	2021-06-06 14:05:28.588561
253	weather might hurt his health.  Hal thought they ought to go\nto Arizona together the thirtieth of June.  Both hastened\nthrough the streets to their very high hotel.  Hal hesitated\nto start north without warm clothes.  Although he hated to	2021-06-06 14:05:28.706306
254	jmj number jmj stream jmj mankind jmj\n;;; ;-; ;;; --- ;;; ;-; ;;; ;-;\n;;; one-third ;;; one-half ;;; three-fifths ;;;\n;;; part-time ;;; self-made ;;; all-American ;;;	2021-06-06 14:05:28.826466
255	40 PRINT y/x*5\n50 STOP\n10 REM Program to find square roots with using ^.5 feature\n20 INPUT "What number do you want the square root of? ";s	2021-06-06 14:05:29.114864
256	driven vertical advent ventrical\nWhat a fine vineyard you have.\nDo you intend to play adventure every night?\nMary had a little lamb	2021-06-06 14:05:29.24799
257	Dear Mr. Mandrake:\nAll of us appreciated the fine performance of those magic\ntricks.  Please arrange to come to another of our meet-\nings, if possible.  Perhaps our Christmas meeting?	2021-06-06 14:05:29.370094
258	1 2 3 4 5 6 7 8 9 10\n1 little, 2 little, 3 little Indians,\n4 little, 5 little, 6 little Indians,\n7 little, 8 little, 9 little Indians,	2021-06-06 14:05:29.510782
259	Thanks,\nMrs. Carmichael\njfj dkd lsl a;a dcd jmj ;-; fbf juj\nmeteorology camera bituminous chimera phosphates	2021-06-06 14:05:29.622243
260	10 little Indian boys.\nIf we want to catch the 6:15 flight to Phoenix (which is the\nnon-stop), we will have to leave by 5:00 at the latest (in\ncase we run into traffic).  Otherwise, we will have to take	2021-06-06 14:05:29.74924
261	30 x = 2\n40 y = s/x\n50 x = (x+y)/2\n60 IF ABS(x^2 - s) > s/1000 THEN 40	2021-06-06 14:05:29.871021
262	Its fleece was white as snow\nAnd every where that Mary went\nThe lamb was sure to go.\nJack and Jill went up a hill to fetch a pail of water.	2021-06-06 14:05:29.982037
263	Peter Piper picked a peck of pickled peppers.\nMotion pictures often depict macabre scenes.\nOnce upon a time, marriages lasted longer than mortgages.\nThere are three uses of the hyphen.  It can be used to combine two words:	2021-06-06 14:05:30.104474
264	inter itude circu gious right cious after extra micro sible\nDear Thomas,\nFirst, I consider of definite interest anything from\nthe business of as good a customer as you.  As director of	2021-06-06 14:05:30.216862
265	an office job.  This skill is yours to use; it can\nnever be taken from you.\nSo why not put forth your best efforts to become a\ngood typist?  You can become a good typist if you	2021-06-06 14:05:30.332041
266	hurt his health, Hugh started north quickly on the sixteenth.\nDad and his son are to start on a trip in our red car.\nHouse cares are the sort that upset Dad and he is so tired\nthat he tries a nap in order to rest.  It rains at a great	2021-06-06 14:05:30.456155
267	letters.  Each one in the class can tell his total lines.\nDear Ted,\nA day ago Ann got a bad cut on her arm and a few by her\neye and ear.  It is an act of God she did not die.  Her car	2021-06-06 14:05:30.576721
268	finger spring back as though the key were red hot.\nTo type fast, it is just as important to release the\nkey quickly as it is to strike it quickly.  Expert\ntypists do this; you too, can do it, with practice.	2021-06-06 14:05:30.691296
465	ddd d#d ddd d#d ddd d#d ddd\nd#d d#e d#d 3#c d#d #c# d#d\nd#d cat d#d dog d#d eat d#d\nfff f$f fff f$f fff f$f fff	2021-06-06 14:05:56.788026
270	put it) the champion forces himself into the winning frame of\nmind.  Can the fast typist afford to do less?  A typist has\nto face such days of "mental torture" too.  Some days he has\nto force himself along.  He need not punish his machine.  He	2021-06-06 14:05:30.941978
271	and columns of numbers meant much more to him than to me.\nThough I don't seem to hear the doctor, I know he is early.\nstat each ning ieve ring side nder emen turn embe llow ours\nDear Mr. and Mrs. Blank,	2021-06-06 14:05:31.278192
272	I want to keep a camp, close to water, miles from any crowd.\nAt night, I want to enjoy a moon that shines on all the land.\nYet I am in this city room to type news items for the paper.\nI know the ins and outs of my city--its mayor, judge, jail.	2021-06-06 14:05:31.387466
273	finish the work in the near future or pay to have it done.\nI am hoping you will happen upon some kindly fellow to whom\na flower garden itself is fun, and inform me.  I shall direct him,\nas the entire effect will lie in the way we handle the ground	2021-06-06 14:05:31.503174
274	I have never quite seen her equal, or a girl so very alive.\nAfter I had given over this work, I went there to see them.\nOne night I saw a query form on her lips until she gave it\nup and took leave.  The way she quit the boy was very queer	2021-06-06 14:05:31.63097
276	habits of work.  You should realize that poor work is a\nmere waste of time.  Try to be exact.\nEvery business firm is dependent on the services of\ncompetent typists.  You are now equipping yourself with	2021-06-06 14:05:31.879587
277	At our new villa a very novel event was given for the navy.\nCovers were laid in the unique ivory room.  Even the king\nand queen were there with a quota of fair and lovely ladies.\nThe queen was ready to quaff when her glass fell.  At once	2021-06-06 14:05:31.995914
278	join society and be social with juniors and seniors alike.\nBound for some place where the sun sets in the west,\nsoon it is the night that I favor.  Next to the night and\nboat and water, maybe I judge our sail by its excellent bill	2021-06-06 14:05:32.115669
279	flag was adopted by Congress on June 14, 1777.  The\nhouse where Betsy Ross, designer of the flag, lived\nis now preserved as a shrine.\nDo not erase.  Do not cross out.  Do not strike	2021-06-06 14:05:32.228391
280	Your order of November 14 was shipped on December 17.\nYour order of December 11 was shipped on February 14.\nPolicy No. 141174 will expire on Monday, November 14.\nPolicy No. 471714 will expire on Friday, December 17.	2021-06-06 14:05:32.359866
281	Take pride in your typing product.\nf5f f5f f5f f5f f5f f5f j6j j6j j6j j6j j6j j6j\nf5f j6j f5f j6j f5f j6j f5f j6j f5f j6j f5f j6j\nif 5 by 6 if 5 by 6 if 6 by 6 if 5 by 6 if 5 by 6	2021-06-06 14:05:32.479376
282	a report on how to zone cities of any size; so he won't let\nus dance to radio jazz.  Tonight we're to try a play that\nhasn't any zest or zip.  Its prize is Tom's money, and he'll\nnot stay; he feels it's a fizzle.  My zeal for gazing on the	2021-06-06 14:05:32.60197
283	was wet why who win won what well wear west when what\nlad lid lot let log lie lag lug lip last sate sawn\nlip lag lug lie log let lot lid lad land lane last\nown out owl old one oak out oil off over oven open	2021-06-06 14:05:32.719611
284	boxes of wax with extreme care.  These boxes were\nreturned by Prof. Maxton of Knoxville College.\nThe Government tax experts were exceedingly\ncareful in examining the current tax receipts.  The	2021-06-06 14:05:32.838497
285	I know Nan will come if Bill does, and Ted likes to be with\nAnn.  I would never quite have the nerve to keep my good\nboard back when our club navy moves out into the quiet water.\nWe leave at an early hour when the sun is still under cover.	2021-06-06 14:05:32.955997
286	All did laugh.  The queen asked that, as a favor, you give us\nthose who have nerve, for they can love and serve.  Quite as\none who gave an equal favor, the queen sang over the radio.\nThe earliest possible sales lessen the total losses.	2021-06-06 14:05:33.071356
287	as accurate the picture of recent conditions, we can not crave\nto continue them.  We lack the tact to get the citizens to\nvote a split ticket.  Tax collectors try to collect taxes on\nvacant lots.  A discount for cash increases collections.	2021-06-06 14:05:33.190056
288	After at least four days you can order daily or on Friday.\nDear Ted,\nAfter I read your dandy note I felt sorry for the lady.\nHere is plenty of cash if you young people agree to spend it	2021-06-06 14:05:33.312489
289	The scene is a state in the South.  A sweet girl speaks of\nthe sound and sight of the river.  Seven men without shame raise\nthe stock sales and the boy tries to spend too much at the store.\nIn order to make a quiet and quick slide down the river, the men	2021-06-06 14:05:33.426492
290	"Up to this point," says Bobby, "I had played 33 holes in 11\nunder par.  I believe it was the best golf I ever played in\nmy life.  But after easing up on the mental side I played\nthe last three holes in 5 over par."	2021-06-06 14:05:33.544073
291	doctor is hurt by a first truck, another truck is struck,\nand three contractors are thrown to the street.  The girl's\nstrong brother has been hurt.  Further, there are arrests\nand the sort of extra details that enter into true stories.	2021-06-06 14:05:33.654949
292	eyes on the copy like the expert typist.\n;0; ;0; ;0; ;0; ;0; ;0; ;-; ;-; ;-; ;-; ;-; ;-;\n;0; ;-; ;0; ;-; ;0; ;-; ;0; ;-; ;0; ;-; ;0; ;-;\n10-room; 10-room; 10-room; 10-room; 10-room;	2021-06-06 14:05:33.770854
293	This chance scene passes too soon.  I hope it happens again.\nAt eight papa said that he ought to put out his good pipe\nand then get a good nap.  Soon papa is snug in a deep nap.\nAt eight ten I guess the dance gets going.  At ten it stops.	2021-06-06 14:05:33.882241
294	on soft sod and fish.  It is fun to feel a fish dash out fast.\nHello, is this Dan?  Hello, Dan, this is Ann.  No, Ann.  Did\nyou see Ted?  Is Nan at the house?  Then dash to the house.\nIs he at the house?  Has he his auto?  Did he tie on those	2021-06-06 14:05:34.166851
295	worked on perfecting the electrical telegraph, which was exhibited at New\nYork University in 1837.\nf4f j7j f5f j6j d3d k8k s2s l9l f4f j7j f5f j6j\ns2s l9l d3d k8k f4f j7j f5f j6j f4f j7j f5f j6j	2021-06-06 14:05:34.62278
296	I find nothing else to include.  We shall miss you greatly,\nand we shall be looking for you at our new home.\nYours sincerely,\nDear Patrick,	2021-06-06 14:05:34.75365
297	Dear Sylvia,\nI wonder if my sister talked to you on Sunday of the\nthirty things we wanted to do this summer?  We were trying\nall the spring season at school to secure a supply of sim-	2021-06-06 14:05:34.870113
298	s2s l9l s2s l9l s2s l9l s2s l9l s2s l9l s2s l9l s2s l9l\n12 lbs. coffee; 19 lbs. Cottage Cheese; 9 lbs. peaches;\n19 lbs. apples; 29 lbs. Cheddar Cheese; 2 lbs. bananas;\nlow 2 fro 9 low 2 fro 9 low 2 fro 9 low 2 fro 9 29 192;	2021-06-06 14:05:34.984335
299	poorly designed.  Those unstructured programs\nwill be very difficult to change.\nj7j f4f k8k d3d l9l s2s ;0; a1a\n4f4 7j7 3d3 8k8 2s2 9l9 1a1 0;0	2021-06-06 14:05:35.10055
300	If 11 men each catch 11 fish in 11 days, how many fish were caught?\nsss s2s sss s2s sss s2s\nsss s2w sss 2xw sss w2x sss\n222 saw 222 was 222 wet 222	2021-06-06 14:05:35.219444
466	ade fgh ijk lop rs; ?.,\nade fgh ijk lop rs; ?.,\nfff ftf fff ttt fff ftf fff\nftf the ftf top ftf ate ftf	2021-06-06 14:05:56.902852
301	All bills are to be paid in full.  If\nthere is no fee to be paid, return the\nbill and put n/a in the total due part.\nIn baseball, bunting is a kind of hit.  But, bunting also	2021-06-06 14:05:35.371168
302	j&j k*k l(l ;); j^j\nf$f d#d s@s a!a f%f\nPlease send me the book "Facts & Figures."\nSend us the items (3 dozen coats) right away.	2021-06-06 14:05:35.483111
304	jjj j&j jjj j&j jjj j&j jjj\nj&j 2&4 j&j 9&5 j&j 7&7 j&j\nj&j you&me j&j he&she j&j M&M j&j\nhas half hag gad gash glass sash ash slash shall flash	2021-06-06 14:05:35.72138
305	lll lol lll ooo lll lol\nlll log lll rod lll for lll\nlll load lll roll lll oleo lll\n;;; ;p; ;;; ppp ;;; ;p; ;;;	2021-06-06 14:05:35.836116
306	jjj jyj jjj yyy jjj jyj jjj\njjj why jjj you jjj try jjj rye jjj\njjj year jjj July jjj your jjj jury jjj\nWere your yard sales much better last year?	2021-06-06 14:05:35.958999
307	Why are you typing so slowly?\nfff fvf fff vvv fff fvf fff\nfff vat fff eve fff vow fff\nfvf vine fvf dove fvf ever fvf very fvf	2021-06-06 14:05:36.090188
308	had hall gas gaff gall glad dash ask slag shad ah\njuj kik lol ;p; jyj\nfrf ded sws aqa ftf\njug part ye aqua their hearty dry great why whose youth	2021-06-06 14:05:36.204761
309	;;; pad ;;; peg ;;; ape ;;;\n;;; poke ;;; pear ;;; peek ;;;\n;;; opera ;;; hope ;;; drape ;;;\naaa Pi aaa Lord aaa Jill aaa	2021-06-06 14:05:36.326424
310	refers to a kind of bird and the stuff that is used in\nflags.  English sure is a strange language.\njuj ded kik frf lol fgf ;p; jhj\nftf jnj ftf jnj fbf juj ;?; l.l k,k	2021-06-06 14:05:36.435774
311	The amount of the bill is $17,563.49; the discount is 2% 10 days, net 30 days.\nThe cards should be made up in the following sizes: 4 5/16 x 8 3/16 and\n3 5/8 x 6 7/8.\n2's 3's 4's 5's	2021-06-06 14:05:36.55278
312	l;l l:l k,k l.l ;/; ;?; :?: ;-;\naaa a1a aaa 111 aaa a1a\na1q qa1 qz1 az1 aq1 a1z\n111 and 111 ate 111 any 111	2021-06-06 14:05:36.687507
313	few people.  It was bad enough being referred to\nas 73218.  But now, we will have to remember\nnumbers like 73218-4208.  The worst hit will be\nthe companies whose mailing list programs were	2021-06-06 14:05:36.812948
314	9 lbs. Smoked Tongue; 2 lbs. tomatoes; 9 lbs. avocados;\n2 lbs. Cooked Tongue; 9 lbs. avocados; 2 lbs. tomatoes;\ns2s l9l s2s l9l 219 921 192 s2s l9l s2s 191 291 129\nThe sum of 29 and 86 and 33 and 92 and 52 is 292.	2021-06-06 14:05:36.930087
315	ple but strong materials for a camp in the valley.\nIt struck me as we were taking a walk down the street\nthat we would surely be unable to do as we stated unless you\ntook a sudden notion to help.  It seemed to me on second	2021-06-06 14:05:37.047043
316	I realize that this letter I am sending may subject you to some trouble.\nI am writing tonight without waiting to go through various reports on our\npresent program.  If I had thought that you would be willing to give me an\nextra day, perhaps I would have come myself.	2021-06-06 14:05:37.166845
317	odds and ends:  used suits, sun hats, shoes, and side tent?\nPapa can not plan to get us all there in such a car as this.\ndedc kik, frfv jujm swsx lol. aqaz ;p;p frfv jujm ftfb jyjn\naqsw az;p sxl. fvjm fvjn fbjn aqsw az;p sxl. fvjm fvjn fbjn	2021-06-06 14:05:37.282847
319	20-room; 20-room; 20-room; 20-room; 20-room;\nf4f j7j f5f j6j d3d k8k s2s l9l ;0; ;-; ;0; ;-;\none-half; one-fourth; one-eighth; three-quarters;\none-half; two-thirds; one-fourth; three-sevenths;	2021-06-06 14:05:37.515909
320	As papa put it, such singing upsets him enough for one night.\nGet the gang.  Catch this sign.  Get going.  Go up this high\npost and put a sign on top.  Put these copies on each post.\nI guess no one intends to stop us.  The cast is set.  Each	2021-06-06 14:05:37.632248
321	In our motor party on the return trip an attractive\nquartet first tried to tell thirty or forty short travel\nstories.  By turns they transferred to the theater, to art\nmatters, to court trial stories.  In the latter a certain	2021-06-06 14:05:37.747474
322	hand part king itio hing tory ding enti ting thou ving very\nDear Alice,\nI shall start my river story since you have shown you like\nmy style.	2021-06-06 14:05:37.86357
323	champion, Bobby Jones, "you know you can't afford to make\none careless slip."  A tired Bobby Jones (this was the way\nBobby told it to Rice) has stood on the 16th tee, leading\nSmith by 18 strokes.	2021-06-06 14:05:37.980136
324	It is fine, fresh stuff and our first fancy fruit this year.\nThis offer is only for fancy fresh fruit to be used as gifts.\nTry these and candy to suit the young lady.  They are dandy.\nYou can feel safe.  Sales are easy and final.  They go fast.	2021-06-06 14:05:38.11676
325	How are you all?  Now if you get a new car, let me run it.\nYours sincerely,\nIs it quite certain that the citizens could continue the\nold conditions if they voted a straight ticket?  If we accept	2021-06-06 14:05:38.235658
326	Please enclose the latest details in those lists yourself.\nOn almost all calls I could save six dollars, especially in\nJuly.  Tell the girls all the usual questions asked will be\nuseful shortly.  Use a small-sized envelope to post letters.	2021-06-06 14:05:38.347594
327	amount showed an excess of six million dollars over\nthe previous year.\nSixteen boxes of explosives were packed with the\nmost extreme care and shipped by Fox Express Company.	2021-06-06 14:05:38.467234
328	All day will be warm and novel.  The far banks will slide by\nwhile we gaze.  She is an out-and-out able boat, heavy but\nnever gives trouble.  She is never taxed in quick water.  I\nfeel the water jump and break.  Queer how I feel the bond	2021-06-06 14:05:38.582874
329	crowd is at zero.  They don't and can't pass any play quiz.\nIt's crazy for me to type news items on paper of this size!\nTo some extent he has been able to do the next best thing.\nabo bet bee ble bou bef ext ber six sib nex abl aby mbe box	2021-06-06 14:05:38.699672
331	this in the previous lessons.  Keep right on doing so.\nThat is the best practice for training your fingers\nto strike the right keys.\nTry your utmost to turn out attractive work.	2021-06-06 14:05:38.942274
332	What is the sum of 11 and 7 and 4 and 1 and 714?\nWhat is the sum of 17 and 4 and 7 and 1 and 174?\nFlorence is 7 years 14 months and 17 days old today.\nVeronica is 4 years 11 months and 14 days old today.	2021-06-06 14:05:39.072428
333	if 5 by 6 if 5 by 6 if 6 by 6 if 5 by 6 if 5 by 6\nf4f j7j f5f j6j f4f j7j f5f j6j f4f j7j f5f j6j\n15 lbs. coffee; 16 doz. eggs; 56 boxes oranges;\n65 lbs. coffee; 14 doz. eggs; 75 boxes oranges;	2021-06-06 14:05:39.348328
334	Henry Clay, American statesman and orator, was\nborn in Hanover County, Virginia, in 1777.\nOn June 14, 1777, John Paul Jones became commander\nof the American warship, THE RANGER.	2021-06-06 14:05:39.477902
335	to show the women from New Mexico and Wyoming how to swim in\nwinter.  We will work with them for a few weeks.  When they\ngo home we wonder if they will write from time to time.\nI'm going to obtain oil options tonight and to file my	2021-06-06 14:05:39.596129
336	exceed exceed exceed; excuse excuse excuse; excels;\nDr. Lux, tax expert, will examine the tax returns.\nMr. Cox examined the mixture with extreme care.\nMr. Roxbury and Mr. Saxton will examine the six	2021-06-06 14:05:39.71757
337	stopped.\nsub sum see sun set sit sin sip she ship shall shame\nsit sin sip set sub sum see sod sob slip sweep super\nwon win who why wet was weak wear west well what when	2021-06-06 14:05:39.836685
338	close so he cannot pay up taxes and bills before Christmas.\nDad says they all may have to exist on home-grown wax beans.\nDad adds that boys ought to be busy and maybe play ball or\nbox at the club.  Bill excels, but says he cannot box on	2021-06-06 14:05:39.953574
340	sanely.  Is it for a natty sail or only for golf?  Did you and\nDan play or fight?  Dan said he felt as if a full load of\ncoal hit his head.  Is that fact or fancy?\nYours sincerely,	2021-06-06 14:05:40.186159
341	In order to type fast you hit lightly after each short delay.\nIt seems to me that we want to know what was said just now.\nent ake mon mak tim kin orm omp rom ork mys kno com ome Mr.\nant may was way now job wit toi wri jus wil jul whi wou whe	2021-06-06 14:05:40.300049
342	He bought on credit, got behind in cash, and the amount became too\nbig.  I shall pay it.\nYou are an old couple, and I advise you to accept this.  Any-\nway, he is not a common boy and must have a chance.  He always does	2021-06-06 14:05:40.42058
343	can have every apple he can carry.  By the way, being clean\nand above board, you must be above bad cases, but you began\nto bring in off-color cases after April.\nI agree you do not cross the law, but why let men win	2021-06-06 14:05:40.544096
344	In 1919 Babe Ruth shot into the records with 29 home runs.\nYet few know that the Babe worked five years in big games\nbefore this start that led past Home Run #600.  You may\nhave cheered Jimmy Foxx and many another.  Yet you can still	2021-06-06 14:05:40.662202
345	You should hurry surely to Vancouver for some delicious\nyuletide fare.  It seems only yesterday that I was conscious\nof being young and vigorous enough to fly my buoyant plane.\nIf you lucky boys are victorious over any unusually furious,	2021-06-06 14:05:40.796749
346	Your typewriter is equipped with a bell which rings\nto warn you that you are approaching the end of the\nline.\nOn some machines, the bell rings five spaces before	2021-06-06 14:05:41.142205
347	is sold.  Late sales still total less than the one old deal.\nSunday is too soon.  It is not easy to stay and study this\ndandy day.  I need to study.  It is not easy on the eyes.\nOne needs to use faith if one fishes often.  It is fun to sit	2021-06-06 14:05:41.254933
348	Tonight Nan opens the piano.  She sings such good songs and\nsoon dashes into a dance.  Nan can dance.  The noise stops.\nNan gets us going.  The dance is on.  Ted pounds the piano\nas Ann stops to go to the phone.  She has to get the gang.	2021-06-06 14:05:41.385185
349	One-fourth may be typewritten like this:  1/4.\nOne-eighth may be typewritten like this:  1/8.\nf4f j7j f5f j6j d3d k8k s2s l9l ;0; ;-; ;0; ;-;\nEvery expert was once a beginner--with ambition.	2021-06-06 14:05:41.517295
350	subject, I saw a pretty yellow and silver dress within a win-\ndow on Main Street toward our corner.  Would you think it\nsuitable for the writer?\nSincerely yours,	2021-06-06 14:05:41.644058
351	As a rule call earlier on all orders as long as this one.\nals ple gla ulo clo ile ill oul all eas onl ion tle lea ndl\nAs a rule it is the real line drill that helps one to learn.\nIt helps to read a line as soon as one can.  It helps to see	2021-06-06 14:05:41.757323
352	It is my purpose to prepare a fast station-to-station service that should\nbe in running order soon.  I suppose it could be started next month.  Let me\nask, also, whether we could receipt each payment, as we receive it, on a\nregular form similar to those in the package shipped you Tuesday.  I am pleased	2021-06-06 14:05:41.88541
353	Quartz crystal watches were at one time extremely expensive.\nA quick brown fox jumped over the lazy dogs.\nA quick brown fox jumped over the lazy dogs.\nA quick brown fox jumped over the lazy dogs.	2021-06-06 14:05:41.999656
354	digits designate the local branch.  The numbering\nis roughly east to west.  That is, numbers\nstarting with 0 are in New England, numbers\nstarting with 1 are the New York area, etc.	2021-06-06 14:05:42.1163
355	Dad fell off a ladder.  Is he safe?\nIs he here?  Sal said he fell hard.\nDid she see his fall?  Jake heard he is OK.\nI hope people keep off high ladders.	2021-06-06 14:05:42.237065
356	f%f 12% f%f 10% f%f 20% f%f\nf%f two f%f ran f%f bug f%f\nIf a $25.00 item is sold at a 10% discount, it will cost $22.50.\nBut, a 10% markup on a item selling for $22.50 is only $24.75!  How come?	2021-06-06 14:05:42.350852
357	I have lived in Los Angeles, San Francisco, Portland, Chicago, St. Louis, and\nDenver; Robert has lived in Boston, Philadelphia, Jersey City, and Utica.\nj7j k8k l9l ;0; j6j\nf4f d3d s2s a1a f4f	2021-06-06 14:05:42.465118
358	jjj jmj jjj mmm jjj jmj jjj\njjj met jjj rim jjj map jjj\njmj man jmj men jmj ham jjj\njmj Mr. jmj Mrs. jmj Ms. jmj	2021-06-06 14:05:42.578295
359	150 PRINT\n175 PRINT "AX^2 + BX + C = 0"\n200 INPUT A,B,C\n210 IF A = 0 THEN 400	2021-06-06 14:05:42.693763
360	70 PRINT "The square root of ";s;" is ";x\n80 STOP\n100 REM PROGRAM TO SOLVE QUADRATIC EQUATION\n125 PRINT "ENTER THE VALUES OF A, B, AND C WHERE:"	2021-06-06 14:05:42.808597
361	become zero cave lazy benzine opening very branch textile\nDo you live in Scranton, Pennsylvania?\nMary Brown and Nancy Smith are in New York City.\nViolet, Helen, Dora, Jennie, and Elsie are staying at the Hotel Commodore.	2021-06-06 14:05:42.930768
362	ddd dcd ddd ccc ddd dcd\nddd cat ddd cup ddd can\ndcd duck dcd card dcd pack dcd\ndcd crate dcd scrap dcd trick dcd	2021-06-06 14:05:43.050805
363	Joe Kip Leif Peg Olaf Ira Heidi\na;a P.S. a;a I.R.S. a;a\n;;; ;?; ;;; ??? ;;; ;?; ;;;\n;;; He? ;;; She? ;;; I? ;;;	2021-06-06 14:05:43.167663
364	f$f r$v f$f v$4 f$f 4$r f$f\nf$f rave f$f fare f$f $10.00 f$f\nJoe keeps cryptic inventory bills like:  4# @ $5.00/# or 6# @ $4.50/#.\nfff f%f fff f%f fff f%f fff	2021-06-06 14:05:43.282731
365	There are notable exceptions to this rule,\nhowever.  The Virgin Islands are south of\nFlorida, but their Zip Codes start with 00.\nThe new nine digit zip codes have upset quite a	2021-06-06 14:05:43.400611
366	A quick brown fox jumped over the lazy dogs.\nabcd efg hijk lmnop qrs tuv wx yz\nabcdefghijklmnopqrstuvwxyz\nABCDEFGHIJKLMNOPQRSTUVWXYZ	2021-06-06 14:05:43.518875
367	rate.  Dan is too sure.  He has heard this road is poor in\nparts.  It is a great error, Dan, to rush a short turn on a\ngrade.  The car turns out and ends on its side.  Hurt?  No.\nDad had a short rest in order to start on the hard car trip.	2021-06-06 14:05:43.642456
368	As soon as this letter has reached you, and you have finished reading the\nseveral items about which I have written, I hope you can give extra working\ntime to my request for special records. These items will suggest a new plan as\nI picture it.  I shall add them to this note.	2021-06-06 14:05:43.769834
369	thought we should give thanks to you for giving tongue to our\nwishes last winter, for you turned the folks in our favor.\nMy sister was saying that girls from twenty states had\nsigned our pledge, so we are united.  Though this is off the	2021-06-06 14:05:43.888223
370	Two of the boys are to do it today and two of them next week.\nUp to date I can not see that the thing is as good as this one.\nuch pos oug ept ing ope hic ati sch cou get ice con goo ght\nNan is cute.  She can sing and dance.  She can tap a piano.	2021-06-06 14:05:44.0072
371	f4f j7j f5f j6j d3d k8k s2s l9l ;0; ;-; ;0; ;-;\n20-room house; 30-room house; 40-room house;\n50-room house; 60-room house; 70-room house;\nf4f j7j f5f j6j d3d k8k s2s l9l ;0; ;-; ;0; ;-;	2021-06-06 14:05:44.116146
373	shop and the phone sounds.  Pat is to paint and pass up noise.\nI hear there is an error in her other order.  The store sent\nher red dress to our door.  She is sure that it is too dear.\nI shall hold those ideal hotel lots at least until all land	2021-06-06 14:05:44.583847
374	picture the Babe after two strikes, smashing to the very\nspot he had "called" a famous home run.\nIt is the effort against odds that thrills.  We feel these\ndrives that never let down.  We feel (this was the way Rice	2021-06-06 14:05:44.713584
375	dangerous, or anxious double duty on this survey, write a\nquotable account yourself for the Journal.\nThey were often too tired to be certain they heard the hour.\nhood ight sion full ould able like ment ical tial ambi semi	2021-06-06 14:05:44.82696
376	in a black cause on any basis?  Why not build up your cases\nfrom among men of our own class?  Close the awful cases you\nnow carry along to court, and begin again.\nSincerely yours,	2021-06-06 14:05:44.940627
377	Let me have a horse where the wide West still runs wild.\nI must see the warm colors, and feel the wind on that land.\nI want to see a few cows among great rocks and sage brush.\nI like to hear a horse stamp.  I like the sweat on a horse.	2021-06-06 14:05:45.060163
378	appear to anyone as fit.  I run across copies of his art.  I can\nadvise your son, attend to his credit, and try to help him arrive\nat a change for the better.\nSincerely yours,	2021-06-06 14:05:45.173078
379	Sadness possesses her as she stands against the panes\nthat the sash separates.  She is sad because the same dress\nis not washed and in shape; and so she says it is useless to\nsave it.  She is sad also because she has to stay in Alabama	2021-06-06 14:05:45.29183
381	First, set a tab stop at the point to which you\nwish the carriage to jump.  Second, move the carriage\nback to the left margin.  Third, hold the tabulator\nbar or the tabulator key down until the carriage has	2021-06-06 14:05:45.522869
382	Dad just about broke down at the bad news.  Bill has no job.\nDad was vexed.  He said that he might as well burn his bonds\nnext.  He has sixty bonds but the prices sent all below par.\nDad talks about a jinx.  He says that maybe their bank will	2021-06-06 14:05:45.6413
383	that exists between me and my boat.  She is a prize I value.\nSome women swim in the spring.  Some women swim in\nthe warm water of summer.  Women in Brazil may swim even in\nNovember.  Some women from Japan will swim tomorrow.  We want	2021-06-06 14:05:45.757213
384	six six six six six six etc. etc. etc. etc. etc.\nfixes fixes fixes; mixes mixes mixes; taxes taxes;\nmixes mixes mixes; fixes fixes fixes; boxes boxes;\nexpert expert expert; expect expect expect; excels;	2021-06-06 14:05:45.877282
385	In April 1777, Lafayette landed at night on the\nshore of South Carolina to help the colonies.  In\nJuly 1777, Congress made Lafayette a general.\nJune 14 is now observed as Flag Day because the	2021-06-06 14:05:46.432817
386	or 4 ru 7 it 5 my 6 or 4 ru 7 it 5 my 6 147 156\nThe Barton Market is at 516 West 147th Street.\nThe Baxter Market is at 165 East 165th Street.\nfr4 ju7 ft5 jy6 f4f j7j f5f j6j f4f j7j f5f j6j	2021-06-06 14:05:46.551154
387	The invasion fleet consisted of 4 battleships, 15 light\ncruisers, 6 aircraft carriers, 17 troopships, six submarines,\nand 2 Dr. Strangeloves.  Air protection consisted of 14\nbombers, 175 fighters, 6 helicopters, and 75 paratroop planes.	2021-06-06 14:05:46.666061
388	or 4 or 4 or 4 ru 7 ru 7 ru 7 or 4 ru 7 or 4 ru 7\nor 4 ru 7 or 4 ru 7 or 4 ru 7 or 4 ru 7 or 4 ru 7\nJune 1; July 4; April 7; January 4; March 17, 1741\nJuly 4; June 1; March 4; October 7; April 14, 1471	2021-06-06 14:05:46.78295
389	you do not\nTouch typing is easy to learn.  You do not need a mind\nthat is above the average.  You do not even need a\nspecial talent for typing.	2021-06-06 14:05:46.911981
390	These explosives are to be used in secret experiments\nfor the U. S. Government.\nact ant and ask apt any art all age anle acid aged\nage all art any ask act add axe ant aged able acid	2021-06-06 14:05:47.055389
391	ite ith ine nce tio she hou how ime ibl ece muc out oth our\nate and een ind oon und one thi lix his ise wer jun ett exp\nI am going to be lazy this weekend and do just what I want.\nToday I quit being vexed with the old job.  I must seize	2021-06-06 14:05:47.167617
392	satisfactory, for forty or fifty of the faculty to fly from\nBuffalo to New York on the first Friday in February.  If\nthey prefer, we will offer them waffles, jelly, and coffee\nbefore they fly or get dizzy.  Sixty flyers can qualify	2021-06-06 14:05:47.283315
393	dcd k,k dcd k,k dcd k,k dcd k,k dcd k,k dcd k,k\ncan, can, can, can, can, cue, cue, cue, cue, cue,\ncan, can, can, can, can, cue, cue, cue, cue, cue,\ncash, cash, cash, lack, lack, lack, lace, lace, lace,	2021-06-06 14:05:47.403031
394	I have dared to ask you for an extra favor on the first.\nIf you are not dated, I am to draft you to drive me by horse\nor car up the grade to the field house at eight.  I guess you\nhave not heard fully about the great dance to be given by the	2021-06-06 14:05:47.515942
395	lines that price ought to be the least of all the items?  The\npoint is that our plans for your party are more important.  If\nyou read our other offer in the light of our love for music,\nwe might not seem so far away.	2021-06-06 14:05:47.651344
396	skill of the winner that we feel.  Ask the players.  They\nmay agree (Rice,* famous as a sports writer, said the cham-\npions all agreed) that skill is only part (50%) of it.\n"When you step on the first tee," says the four-time gold	2021-06-06 14:05:47.771975
397	est ace ric ity red per der pro sel par ish ial ing eal let\nTo learn to type, first get a nice rate going, then hold it.\nIf you read copy set your eyes on that copy and stay on it.\nIf you hear copy then use your eyes to hit sure and fast.	2021-06-06 14:05:47.884182
398	oblige so recent a member of our office, too.\nThis letter is being mailed Monday, and in two days we\nshall go.\nYours sincerely,	2021-06-06 14:05:48.00315
399	as we ran by in the car--and Ma, too.  Oh, it was war--his pa\nhad a lot to say.  Let me lay out the law to you.  You may not\nuse the car as you did not pay for it.  You are not yet a man.\nSon did not lie nor did he win his way.	2021-06-06 14:05:48.117309
400	The class has large plans; gains in hours and less slips.\nTo learn to read or spell a rule helps less than to drill.\nAfter that date I believe he can not say that it is not a fact.\nany for efo fte day fin you ful ery nly hey afk ays fro say	2021-06-06 14:05:48.235709
631	kkk lid kkk hill kkk did kkk\nkkk kill kkk kid kkk like kkk\nkkk kiss kkk hide kkk fill kkk\nfff frf fff frf fff frf	2021-06-06 14:06:18.079173
401	niques, I acquired my quota of opaque plaques.\nInstead of having us tonight he is making ready for Tuesday.\nstead ation retro geous contr ourse ultra super ntion under\nDear Annabel,	2021-06-06 14:05:48.355456
402	to do my general work himself, and may not imagine there is any\nmeasure of justice in that.  We married men are obliged to do as\nordered.\nI am leaving a hundred matters.  He has my opinion on each.	2021-06-06 14:05:48.471039
403	am aw av az ak ax ab um ub em ew ev ez ek eq ex om ow ov oz\nok ob im iv iz ix ib ma wa va za ka ja xa ba mu ju qu bu me\nwe ve ze ke je xe be mo wo vo zo ko jo bo mi wi vi zi ki xi\nbi xt sm sk sw kn ms nk wh tw ks wn dv s; o; n; d; l; e; t;	2021-06-06 14:05:48.588081
404	April 28, 1758.  In 1782 he entered politics.  In 1799 he was appointed\nGovernor of Virginia.  In 1811 he became Secretary of State; in 1814,\nSecretary of War; in 1816, President of The United States.\nOn September 1, 1939, Germany launched undeclared war on Poland.	2021-06-06 14:05:48.704764
405	at the end of a line:  after-noon, state-ment, hesi-tate, cer-ti-fi-\ncate, exami-na-tion.\nThe sum of 10 and 20 and 30 and 40 and 50 and 60 and 70 and 80 and 90\nand 100 and 105 and 106 and 107 and 108 and 109 and 110 equals 1,195.	2021-06-06 14:05:48.822853
406	frfk fvfb jujy jmjn aqsw azsw azsx ;plo ;p;- kik, ;p;-\nad ar an al am ab ee st ed er en el es em ex om on or un up\nid ic ir in im se sy le ly re ry ec fy ty de be my by bi di\nl-t o-d s-c p-t o-d n-y r-o g-d r-h d-g n't t's l's y's I'l	2021-06-06 14:05:48.942896
407	1 plus 2 is 3.  11 plus 22 is 33.  111 plus 222 is 333.\nfff f4f fff f4f fff f4f\nfff f4r fff 4vr fff 4vr fff\n444 for fff rat 444 vet 444	2021-06-06 14:05:49.064037
408	lll 9.o lll o9. lll l9. lll\n999 Jr. 999 log 999 old 999\nOh, 99 bottles of beer on the wall, 99 bottles of beer.\nIf 9 of us take 9 each, there will still be 18 left for the song.	2021-06-06 14:05:49.180564
409	What's this I've got?  Isn't this yesterday's paper?  Where's today's?\nCan't you find anything?  It's right next to Dad's chair.\n;;; ;"; ;;; """ ;;; ;"; ;;;\n;"; "." ;"; ":" ;"; "," ;";	2021-06-06 14:05:49.297543
410	225 D = B^2 - 4*A*C\n250 IF D < 0 THEN 500\n275 PRINT "ONE ROOT IS: ";-B+SQR(D)/2/A\n300 PRINT "THE OTHER IS: ";-B-SQR(D)/2/A	2021-06-06 14:05:49.574493
411	jnj neither jnj opening jnj kneeling jnj\nNo one has an interest in it.\n;;; ;:; ;;; ::: ;;; ;:; ;;;\nDear Sirs:  Dear John:  Dear Alfred:	2021-06-06 14:05:49.707523
412	juj jug juj use juj hug juj\njuj tulip juj turn juj under juj\nPlease pass the butter and salt, but not the pepper.\n;;; ;/; ;;; /// ;;; ;/; ;;;	2021-06-06 14:05:49.829646
413	#' #2 #3 #4 #5\n;'; ;"; ;/; ;?; ;[; ;{; ;-; ;_;\nThe quick brown fox jumps over the lazy dog.\nThis is a specimen of the work done on this machine.	2021-06-06 14:05:49.947998
414	;/; n/a ;/; and/or ;/; left/right\nIn this era of E.R.A., I hope he/she likes his/her job.\nHe/she should bring his/her spouse at about noon or just before.\nShould I be here alone?  Is Bernie and/or Julie going to be here, too?	2021-06-06 14:05:50.074486
415	Now is the time for all good men to come to the aid of their party.\n1$ 2$ 3$ 4$ 5$ 6$ 7$ 8$ 9$ 10$\n2 coats @ $20.00 5 hats @ $4.00\nsas ses sis sos sus sc scr sh sk sl sm sn sp spl spr st str sw	2021-06-06 14:05:50.202125
416	325 STOP\n400 PRINT "NOT A QUADRATIC.  TRY AGAIN."\n425 GOTO 100\n500 PRINT "COMPLEX ROOTS.  TRY AGAIN."	2021-06-06 14:05:50.314833
417	Dear Dr. Stone:  To Heathkit:\nSarah has liked knitting all her life.\nShe looked past her garden to the fields and longed to see the other side.\nAll the sane people in this area sold their gold	2021-06-06 14:05:50.438749
418	"What was that I saw you take from the teacher's desk?" asked Tom.\n"It's the answers to tomorrow's quiz", answered Suzy.\n"If you promise not to tell," she continued, "I'll give you a copy."\naaa a!a aaa !!! aaa a!a aaa	2021-06-06 14:05:50.560307
419	888 kick 888 sink 888 keep 888\nAgent 88 was supposed to check in at 8:14.  She is 38 minutes late.\nHer team was assigned to zone 8 of quadrant 828.  Send 8 more agents.\nlll l9l lll l9l lll l9l lll	2021-06-06 14:05:50.68163
420	The 2 men were 2 late 2 catch the 2 PM train.\nddd d3d ddd d3d ddd d3d ddd\nddd d3e ddd d3c ddd e3c ddd\n333 did 333 cat 333 eat 333	2021-06-06 14:05:50.801131
421	Have you seen the new 7-room house at 175 West\n239th Street?  It is equipped with every up-to-date,\nlabor-saving device for the home.  You may inspect\nit free of charge any day except Sunday between	2021-06-06 14:05:50.945824
422	It is a good thing papa has gone.  Pat gets up a deep song.\nYet Ann says an easy song any day is a sign to guess again.\nThey often need funds but don't think it is any fun to study.\nAnn is keen to ask him to use his kodak at the same time.	2021-06-06 14:05:51.282905
423	Iowa was white with snow when we two went down town and saw\na show.  We wanted to see news and not the widow who was wed.\nJohn has to use a tan and jet auto.  He joined Jane in its\njoint use.  Jane just intends to use it in June on a jaunt.	2021-06-06 14:05:51.402681
424	On September 3, 1939, Great Britain declared war on Germany.  On\nDecember 8, 1941, The United States declared war against the Axis.\nSamuel F. B. Morse, inventor and artist, was born in 1791 and died in\n1872.  In 1829 he went to Europe for three years.  For 12 years he	2021-06-06 14:05:51.521293
425	Tell him the minutes of the last meeting of the members are on my\ntable.  Tell him I haven't an invoice, but have instead an October\nbill, for our new machine parts.  He may mention this item to the\nmanager, as he has neither its history nor my letters of inquiry.	2021-06-06 14:05:51.634628
426	I feel sorry to say I can not send a full order on that day.\nForty-odd pounds is all that I can spare at this early date.\nAll loose lots are sent on fast local lines at a half rate,\nso there is close to no delay and you also do not lose any.	2021-06-06 14:05:51.749824
427	My brother and his college friends in the factory decided to arrange an\nevening exactly as in the old days.  After calling us, they arrived and we\ncarried out the idea.  We used an old college catalog and each girl had an\nold college dress.	2021-06-06 14:05:51.862846
428	the top up.  I ran and met him.  Why not be men and run the car\nout?  We did.  We set out to run it at six.  We two ran it off\nto an old lot by the sea.\nDid his pa see us?  Yes, sir, who but Pa was at No. Ten	2021-06-06 14:05:51.986856
429	To a lady in those seas I gladly offer all fruit and candy.\nThere is no reply.  Only the seas run high and I feel ill.\nThe young lady often has pounds of fruit and candy each day.\nIn any case there is only one order that is long past due.	2021-06-06 14:05:52.103162
430	the papers will be old and market policy of little moment.\nIt will please me to have you with us longer than the others.\nI was really living for the period when I would be placed with\nyou both.  Your mother has a lovely manner.  I am glad to	2021-06-06 14:05:52.219268
431	the power I have known.  If I can plant a love of music in all\nparts of this place so that all who hear you sing can learn to\nlove it, it will mean more to me than money.\nI never laugh at money, but isn't it plain in these	2021-06-06 14:05:52.342981
432	Often 25% of first-year students never do 25 words a minute.\nMany second-year students can type about 45 words a minute.\nMore than 50% do not equal the practical rate of 50 words.\nWhy do we all thrill over sports?  Maybe it is the tireless	2021-06-06 14:05:52.461084
433	Some women who could write her won't raise a hand to help.\nteen arch acle ward ence ency ease ster tele trix wise some\natte tter tion fold ount ancy auto ttle cule mony cion come\nDear Fred,	2021-06-06 14:05:52.586663
434	confidently to face any difficulty.  A friendly inquiry\nfrom any family will be very cheerfully and fully answered.\nChildren find being quizzed in division, addition, and\nreading difficult.  They studied daily during their third	2021-06-06 14:05:52.712413
435	lack, lack, lack, lace, lace, lace, cash, cash, cash,\ncould, could, could, clerk, clerk, clerk, camp, camp,\nclerk, clerk, clerk, could, could, could, cane, cane,\nIf you call before five, the bank will cash your check.	2021-06-06 14:05:52.845681
436	quit quip quote quite queer queen quack quaint quorum\nquip quit quite quote queen queer quail quorum quaint\npin pup put; pull palm pant; pint pile push; punch;\nput pin pup; pant pull palm; push pick pile; paper;	2021-06-06 14:05:52.96354
437	one extra bit of zest and join the exit from the big city.\nTo begin with, the same old auto will bear us to the beach\nwhere a good-sized boat floats easily in the blue water.\nOur boat is build for room.  Her cabin has a busy table.	2021-06-06 14:05:53.081636
438	All you need is the will to learn.  The lessons in this\nbook do the rest of the job for you; they make touch\ntyping easy for you to learn.\nTry to set aside each day a definite amount of time for	2021-06-06 14:05:53.202966
439	given.  You will be surprised how easily and quickly\nyou will become a touch typist.\nf4f f4f f4f f4f f4f f4f j7j j7j j7j j7j j7j j7j\nf4f j7j f4f j7j f4f j7j f4f j7j f4f j7j f4f j7j	2021-06-06 14:05:53.328982
440	night, 1776.\nThe Declaration of Independence, a famous state\npaper, was issued by the American Continental Congress\non July 4, 1776.  It was drawn up by Thomas Jefferson.	2021-06-06 14:05:53.445027
441	Touch typing is easy to learn.  You do not need a\nmind that is above the average.  You do not even need\na special talent for typing.\nAll you need is the will to learn.  The lessons in this	2021-06-06 14:05:53.564437
442	Robert Fulton was born in Pennsylvania in 1765.\nWilliam Penn, English Quaker, was born in 1644.\nor 4 ru 7 it 5 by 6 or 4 ru 7 it 5 by 6 174 516\nThe sum of 15 and 51 and 65 and 41 and 475 is 647.	2021-06-06 14:05:53.684004
443	Virginia can remain an afternoon and refrain from a quarrel.\nI'll admit I seize a chance to go with these dozen\npeople.  We left under an azure sky, yet today it's rainy\nand hazy.  That Dr. Tedd is odd; he won't play; he's doing	2021-06-06 14:05:53.798003
444	sentence.  Strike each key with the same force.\nThe tabulator is a device which helps you to type faster.\nIt enables you to skip across the page to any point you\ndesire.	2021-06-06 14:05:53.915445
445	Labor is hard hit, too.  I, for one, would like to toss the\ncards on the table and start a new deal.  When exact codes\nare fixed, as best for all, every person must do his bit.\nSatisfy yourself that it will be funny, but perfectly	2021-06-06 14:05:54.032572
446	new keyboard.  Nor is your left hand taxed with extra labor.\nThe keys are fixed to keep both hands busy and in balance.\nThose boxes of books for New Mexico may be ready next week.\nNext time we must ask to have you make them just as he does.	2021-06-06 14:05:54.153999
448	Yours sincerely,\nIf truly quoted, you and Guy, mere youths, fly a con-\ntinuous journey of thousands of miles yearly in your study\nof numerous flying routes.  You say you were south in July	2021-06-06 14:05:54.391844
449	girls on the floor of the field house.\nMy hands have put fresh green goods on the walls.  Every\ngirl has a green dress, on its front a funny glass heart that\nshe gives as a favor.  The old folks can drive up early, eat	2021-06-06 14:05:54.834621
450	If you read, hold the eyes on copy to help get this order.\nIf you do hit this or that letter out of order, it is not\nthat you fail to spell.  You can spell and yet not type;\nthis fine class drill is to help the type fly in fair order.	2021-06-06 14:05:54.977571
451	next season.  She says to plan to sail across the seas to\nAlaska or Asia or Spain is useless.  So in June she amuses\nherself by drawing five or six quaint, small-sized maps.\nThey say this fruit is the finest.  It is full and good.	2021-06-06 14:05:55.090281
452	The Bell Telephone Company was organized in 1877.\nMr. Bell also invented the gramophone in 1887.\nJohn Quincy Adams, sixth President of the\nUnited States, was born in Massachusetts on July 11,	2021-06-06 14:05:55.214788
453	Dear Mrs. White,\nI have been holding on, but this January I am getting out.\nMy wife herself may have told you of our opening.  However, I go\nat ten o'clock this morning, and your husband is still out.  He is	2021-06-06 14:05:55.330653
454	that quaint land of quite Spanish art and adobe was adequate\nand equally unique.  Squeezed in quiet, antiquated adobe\nquarters, I began quickly and without qualms to qualify as\nan artist.  After quarrels and questions over my queer tech-	2021-06-06 14:05:55.450997
455	She is to adjust her six visits to have a snow-white Maine\nChristmas.  An Iowa aunt asks Ann to take in that state, too.\nIt's a tax on time, but it's quite a new zone to Ann who is\nin just the mood to end her quota of visits in sixteen weeks.	2021-06-06 14:05:55.572697
456	The hyphen is used also to divide words between syllables at the end\nof a line.  When the bell rings, finish the word if it is short--less\nthan six letters.  If the word is longer, divide it at the end of a syllable.\nThe hyphens in the following words show where they could be divided	2021-06-06 14:05:55.702791
457	Christopher Latham Sholes was the inventor of the first practical\ntypewriter.  He was born in Columbia County, Pennsylvania,\nFebruary 14, 1819.\nJames Monroe, fifth President of The United States, was born on	2021-06-06 14:05:55.823149
458	I advise Eva in vain to avoid an auto visit in seven states.\nNevada is so vivid that Eva votes to have this visit saved.\nShe has questions and unique ideas to quote us.  So she is\nquite the queen in this quiet set and sets us quaint quotas.	2021-06-06 14:05:55.948312
459	;;; ;0; ;;; ;0; ;;; ;0; ;;;\n;;; ;0p ;;; /0p ;;; 0/p ;;;\n000 a/c 000 pup 000 me? 000\nDear Sirs:  The 10:00 meeting on March 10 has been postponed until 10:30.	2021-06-06 14:05:56.075106
460	Flight 423 leaves from gate 42 at 4:24.\nAs the 3 musketeers say: 1 4 all, and all 4 1.\nIf 1/4 plus 2/3 is 11/12, what is 1/2 plus 1/3?\nOur team won 1st, 2nd, and 3rd place at the 12th annual outing.	2021-06-06 14:05:56.20065
461	The zeppelin zigzagged quickly from the horizon up to the zenith.\nNever trust a quack doctor who cannot distinguish oxygen from nitrogen.\nImagine having a sextet of sexagenarian sextons?\nRemember when queer used to mean zany?	2021-06-06 14:05:56.319217
462	The sisters wear the same size dresses.\nShe says she speaks to Sally in school.\nThe shipment was shipped by fast express.\nSimplicity and sincerity are social assets.	2021-06-06 14:05:56.440167
463	fff fbf fff bbb fff fbf fff\nfrf bar frf rib frf pub frf\nfrf bring frf abort frf brother frf\njjj juj jjj uuu jjj juj jjj	2021-06-06 14:05:56.556343
464	ftf three ftf often ftf there\nThe talk is that those three are threatening her.\njjj jnj jjj nnn jjj jnj jjj\njnj not jnj ton jnj one jnj	2021-06-06 14:05:56.672658
467	525 GOTO 125\nsss s@s sss s@s sss s@s sss\ns@s at@ s@s w@x s@s S@w s@s\ns@s wax s@s mix s@s @we s@s	2021-06-06 14:05:57.023059
468	says sides springs slips snows shops sweets streets\nsees souls spreads schools smiles shoots swings strikes\nsues speaks splashes screams skates sheets stones stresses\nShe wishes to show us some samples.	2021-06-06 14:05:57.142673
469	fgf jhj k,k l.l A;A F;F E;E\nlol ;p; JaJ :a: ftf jnj ;:;\njug ton knot poison the neither often\nfff fbf fff bbb fff fbf fff	2021-06-06 14:05:57.263171
470	oxidize squeeze azimuth zoology\nabcdefghijklmnopqrstuvwxyz\nzyxwvutsrqponmlkjihgfedcba\nA dozen zebras were grazing quietly nearby.	2021-06-06 14:05:57.389894
471	One dozen is l2.  A gross is l2 dozen or l44.\nIn both octal and decimal, ll times ll is l2l.  And, 3 minus 4 is -l.\nBut in octal, l2 is not divisible by 3.\na1a s2s d3d f4f 234 413	2021-06-06 14:05:57.510996
472	The 10:30 meeting was moved to 11:00 in Room 302.\nBut, Room 302 can only hold 10 people.  We will need Conference Room 10.\nZip codes are arranged so that the first 3 digits\ndesignate the regional office and the last 2	2021-06-06 14:05:57.62434
473	The sum of 52 and 92 and 86 and 33 and 29 is 292.\now 2 to 9 ow 2 to 9 we 23 ok 98 we 23 ok 98 s2s l9l\nGeorge Washington was born on February 22, 1732.\nHoratio Alger was born in 1834 and died in 1899.	2021-06-06 14:05:57.743242
474	Smith is his name.  He is on some Maine team.  I am to meet\nhim and Miss Smith.  I must see them some time this month.\nKate uses ink to send a note south to Kansas kin.  She asks\nto use a kodak to take along on these keen skates and skis.	2021-06-06 14:05:57.859352
475	Ted notes an odd noise.  Dan is in the seas and needs aid.\nHe sheds his suit and shoes on the sand and is out in haste.\nA good visit East is Ann's next quest.  Ann seems to seize\non this idea with zest.  She has set seven visits as a quota.	2021-06-06 14:05:57.975013
476	Every expert was once a beginner--with ambition.\nAs you have seen in the above sentence practice, the hyphen is used\nfor typing compound words.  Here are a few more examples:  up-to-date,\nfirst-class, by-product.	2021-06-06 14:05:58.091969
477	I acquired a bequest from a quizzical Quaker.  How\nto apply it was a quandary.  As a quasi artist, I began in\nAlbuquerque to make a quantity of plaques of chance Indian\nacquaintances.  My masquerade as an artist of quality in	2021-06-06 14:05:58.215266
478	looked to see who of our company were in them, I read one balance after another\npaid from the old country to My Dearest Son.  You are correct if you guess we\nnow ran, because we did.  What follows?  Today's paper doesn't have a line.\nYours sincerely,	2021-06-06 14:05:58.33716
479	the settlement of Astoria near the mouth of the\nColumbia River.\nAlexander Graham Bell was born in Scotland on\nMarch 3, 1847.  He invented the telephone in 1876.	2021-06-06 14:05:58.457449
480	Dr. Ted feels the first fruit is too green for young or old.\nAfter one eats any of it he is sorry.  In fact, if I try it,\nthat night in fancy I sail the South Seas for eight hours.\nThe air is fine and clear; on the ship are only fruit and I.	2021-06-06 14:05:58.57641
481	Dear Tom,\nMr. May has one new car.  It has a low red top.  The top\nis so low you can not see the sun if you sit in the car.  Mr.\nMay has not let his own son use it.  I saw his son try to put	2021-06-06 14:05:58.699738
482	and drink and enjoy it all.  We will delay the dance till the\ngirls enter in a dozen files.  It would crush me to death if\nan error were found in the plans.  Happy hours on earth are\nnever heavy.  Can you doubt that you are going?	2021-06-06 14:05:58.823694
483	If you can do so, will you kindly let us know by return mail.\nMy totals were:  $2,309, $5,687, $3,498, $2,408, and $3,697.\nA student may type 1 word per minute faster for each added\nyear of age: i.e., 13 to 14, to 15, to 16, to 17, to 18.	2021-06-06 14:05:58.943476
484	in the dry country conspicuous for yucca, but now you are\nbusy buying a quota of various useful items to supply your\noutfit for the famous Yukon.  Yet I am suspicious when you\nsay this unusual survey is monotonous rather than glorious.	2021-06-06 14:05:59.076546
485	type most of the text on the next bank above and on the bank\nbelow.  Because of this fact your fingers bound back and\nforth between the upper and lower banks of keys.  But those\nextra jumps necessary on the old keyboard do not exist on the	2021-06-06 14:05:59.199316
487	Charles Condon, sales manager, was in complete charge.\nHe may, if convenient, have it charged to his account.\nSpace once after a comma.  Space once after a\nsemicolon.  Space twice after a period that ends a	2021-06-06 14:05:59.447865
488	wax beans alone.  Beef must be back on the board.  Bill has\nboxed as an extra at a bazaar.  He is big, and able to box.\nBill begs Dad not to be blue, and his text is this:  We\nare all in the same boat.  No one can buy.  No one can build.	2021-06-06 14:05:59.603545
489	is an error of the owner of the ranch who will not refund\nher rent.  The janitor is running some errand, for he has\nworked in the rain near the northern entrance during dinner.\nI hear that now neither her friends from North Carolina nor	2021-06-06 14:05:59.853061
490	The sum of 51 and 15 and 56 and 14 and 475 is 611.\nOn June 15, 1775, George Washington was elected\nby Congress the Chief Commander of the American forces.\nHe scored a brilliant victory at Trenton on Christmas	2021-06-06 14:05:59.987579
491	book do the rest of the job for you; they make touch\ntyping easy for you to learn.\nTry to set aside each day a definite amount of time for\neach lesson.  Follow each step in the lesson exactly as	2021-06-06 14:06:00.108712
492	allow you to select a different brand.  If you will let us know\nyour wishes we shall be glad to give the matter our immediate\nattention.\nWe hope you will give us the opportunity to prove to you that	2021-06-06 14:06:00.228422
493	but in the posture I lay could see nothing except the sky.  In a\nlittle time I felt something alive moving on my left leg,\nwhich, advancing gently forward over my breast, came almost up\nto my chin; when bending my eyes downward as much as I could, I	2021-06-06 14:06:00.347128
494	over over over; gave gave gave; have have have;\nhome home home; seem seem seem; time time time;\never ever ever; more more more; item item item;\nlive live live; vast vast vast; five five five;	2021-06-06 14:06:00.46781
495	2 and 2 are 4; 3 and 3 are 6; 4 and 4 are 8; 5 and 0 are 5.\n3 and 4 are 7; 5 and 4 are 9; 2 and 6 are 8; 7 and 0 are 7.\n1 and 1 are 2; 3 and 1 are 4; 5 and 1 are 6; 7 and 1 are 8.\nI have finished Grade 9B.  In my first weeks of typing in	2021-06-06 14:06:00.586691
496	"A "S "O "W "E "C "P "F "I "M "E "B e5" t4" u3" h2" u1' n6'\nSend at once:  Form #93* @ $18.50 per dozen, 12% discount.\nSold to Smith & Sons, terms 1%, 10 days; 8 doz. 3" screws @\n5.25 cents, 42 cents; 16 files @ 5-3/8 cents, 86 cents; 3 #9 drills	2021-06-06 14:06:00.707444
497	frf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;\nfgf jhj fvf jmj fgf jhj fvf jmj fgf jhj fvf jmj\nPaul Quigs will devote more time to his work.\nb b b b fbf fbf fbf fbf n n n n jnj jnj jnj jnj	2021-06-06 14:06:00.818982
498	Strike all the keys with pep.  Strike the keys\nas though they were red hot.  This is just how the\nfast typist works.\nType with thought.  Put forth your greatest efforts.	2021-06-06 14:06:00.947662
499	class friends and good-natured wishers.\nGet any piece, since I can't guess the color he always used.\nanti thin atic fast hypo ness your ther fore ship cial ible\nette hter here mber ough over eive with ived just ever mono	2021-06-06 14:06:01.110874
500	look at my lake and our home on the hill?  I left it late\nlast July with one item on my list.  Bill gave me half an\nhour of help.  Like the lady of the lake I met the king.\nBill was a kind king, too.	2021-06-06 14:06:01.233025
501	Ed is staid.  Ed uses tested data as assets.  Sis is a\ntease.  Sis sets a tea date.  As Ed tastes tea I state tea\ndata.  Sis teases Ed at tea.  As Ed eats I state diet data.\nSis said Dean is dense as sand.  Dean needs an idea and Sis	2021-06-06 14:06:01.347806
502	The backspace key is one of the most useful time-\nsaving devices on your typewriter.  You use it to back\nup a space, to darken a light impression, or to pivot.\nTo pivot means to type a line so that the last letter	2021-06-06 14:06:01.463441
503	and the opportunity for prompt examination and understanding of\nthe new arrangement, particularly its application to all informa-\ntion given the public about merchandise for sale.  This has been\na real convenience in our consideration of the entire proposition.	2021-06-06 14:06:01.579771
504	to duplicate for you the kind of education given me.\nBe different by following more than one new idea, including\nsome of your own.  If you can carefully take fair advantage of\nevery available condition, everybody should accept you cordially,	2021-06-06 14:06:01.703778
505	did they get the right dried fruit there yet\nfrf juj ded kik ftf jyj fgf jhj frf juj ded kik\nded kik ftf jyj fgf jhj frf juj ded kik ftf jyj\ns s s s sss sss sss sss l l l l lll lll lll lll	2021-06-06 14:06:01.825445
506	frf juj ded kik fur fur kid kid red red ire ire\nkid kid kid juke juke juke dire dire dire fire\nrid rid rid rude rude rude ride ride ride feed\ndid red ire fee rid deer rude fire feed juke rider	2021-06-06 14:06:01.941295
507	amount damper only singing payment moment\nemblem camper enter ringing enrollment judgment\nimmense hamper under longing engagement excitement\nomnibus lumber income banking appointment settlement	2021-06-06 14:06:02.063807
508	;;; Fred ;;; Gail ;;; Alf ;;; Dale ;;;\n;;; Ada ;;; Al ;;; Greg ;;;\njjj Dr. jjj Sr. jjj Fr. jjj\nSir, idle disks seek flags.	2021-06-06 14:06:02.184254
509	jjj jjj jjj jj jj jj j j j\nfff jjj fff jj ff jj f j f j\nffjj jjff fjf fjf jfj jfj\nddd ddd ddd dd dd dd d d d	2021-06-06 14:06:02.29611
510	a little.  All work and no play makes Jack a dull boy, the\nold saying goes.  Play affords relaxation.  Some people claim\ntheir work is so enthralling that they do not need to play.\nPsychologists say that the stress of modern life demands that	2021-06-06 14:06:02.419603
511	frf juj frf juj frf juj frf juj frf juj frf juj\nfff jjj fff jjj fff jjj fff jjj fff jjj fff jjj\nfff jjj fff jjj fff jjj fff jjj fff jjj fff jjj\nfru fru fru jur jur jur ruj ruj ruj urf urf urf	2021-06-06 14:06:02.538151
512	To do your best, it is necessary that you be relaxed.  You may be trying so\nhard that you are all tied up in knots.  Relax consciously.  If you have a\nfeeling of tenseness and hurry, you are not properly relaxed.\nr r r r frf frf frf u u u u juj juj juj juj	2021-06-06 14:06:02.659817
513	Which if thou follow, this strict court of Venice\nMust needs give sentence 'gainst the merchant there.\nffff\nfff fff fff ff ff ff f f f	2021-06-06 14:06:02.779012
514	The clerk sells cloth of fine value.\nYou will rely on them to supply you.\nHe held the floor until a relatively late hour.\nPlay is most important to a child.  All of us must play	2021-06-06 14:06:02.900066
515	selection over and over again until it can be written easily\nand accurately.\nam em im om um mb mp ment\nan en in on un ng nk	2021-06-06 14:06:03.024085
516	lll adj. lll id. lll\nlll eg. lll i.e. lll\n;;; ;A; ;;; ;F; ;;; ;D; ;;; ;S;\n;;; Dear ;;; Sir ;;;	2021-06-06 14:06:03.150723
517	rid fee ire red did juke fire rude juke deed freed\nt t t t ftf ftf ftf ftf y y y y jyj jyj jyj jyj\nftf jyj ftf jyj ftf jyj ftf jyj ftf jyj ftf jyj\ng g g g fgf fgf fgf fgf h h h h jhj jhj jhj jhj	2021-06-06 14:06:03.276178
518	sss lll sss lll sss lll sss lll sss lll sss lll\nw w w w sws sws sws sws o o o o lol lol lol lol\nsws lol sws lol sws lol sws lol sws lol sws lol\nsow sow sow sow sow sow low low low low low low	2021-06-06 14:06:03.401408
519	forwarded and delivered in good condition, some new equipment\naccording to your wish.  I note, too, that your committee met.\nWhat these gentlemen said is important and may be a sort of in-\nsurance that your plan does not fail.  I certainly would not want	2021-06-06 14:06:03.521134
520	The Johnston Hardware Company, Toledo, Ohio has\nordered the following supplies:  15 Pruning Shears,\n10-inch, at $.795; 24 Steel Rakes, 14-inch, at $.815;\n16 Steel Spades, D-Handle, at $.935.	2021-06-06 14:06:03.632974
521	from your office on the very considerable requirements of the new\nlaw that have to do with any unfortunate advertising that might\nappear in my papers.\nOur association also has appreciated both your instructions	2021-06-06 14:06:03.770929
522	aids Sis.  So I see a soda is added.  Sis does like a soda.\nSid used us.  Sid sued us.  Ada used us as aid.  I did aid.\nI added ease.  I issued added deeds.  Ada said adieu.  Ada\nused dead deeds as issues.  Sid said I used deeds due Ada.	2021-06-06 14:06:03.893015
523	To lead off into the air and see all our lake so\nlong and lots of land so low, was to live a high hour.  I\nkept my hand at my ear so as to help hear.  In the air my\nhair was a loss.  It did not kill me.  I have to fly to know	2021-06-06 14:06:04.011186
524	Dear Tris,\nIt is so very warm at this time of year, I told my wife\nthat you and I wish to go west for a week or two.  Did I\ntell you what a wind we had?  I went to town to vote for the	2021-06-06 14:06:04.128901
525	He will pay Jed Squire for the sugar this week;\n. . . . . . l.l l.l l.l l.l l.l l.l l.l l.l l.l\nHit it lightly.  Hit it lightly.  Hit it lightly.\nHit it lightly.  Hit it lightly.  Hit it lightly.	2021-06-06 14:06:04.245813
526	In order to park on Sixth at 11:05 we have to beat 135 cars!\nIf you do not hear soon, I want you to write again and again.\nk9( d3# j8* f4$ j7& f5% f6^ j6^ l0) s2@ ;-_ ;[] ;`~ d3# ;/?\nk( d# j* f$ j& f% j^ f^ l) s@ ;_ s@ ;{ d# ;@ f% ;? f^ j^ s@	2021-06-06 14:06:04.372226
527	to try tip tap two tag too to try tip tap two;\nto two tap tip try too try to top tap tag try;\nyou yes yet yap yell year yoke your yowl yore;\nyap yet yes you yore yowl your yoke year yell;	2021-06-06 14:06:04.488536
528	aqa ;p; sws lol ded kik frf juj ftf jyj fgf jhj\nI will pay Joe Quig for the sugar today.\nv v v v fvf fvf fvf fvf m m m m jmj jmj jmj jmj\nfvf jmj fvf jmj fvf jmj fvf jmj fvf jmj fvf jmj	2021-06-06 14:06:04.603749
529	k9 d3 j8 f4 j7 f5 f6 l0 s2 j8 f4 j7 f5 j6 f6 k9 d3 ;- s2\nTo buy an air-mail stamp I save 1, 2, 4, and at last 6 cents.\nIn two years my dollar earns 1, 3, 5, 7, and perhaps 8 cents.\nBuy at once:  4 candy balls,9 bars, 6 or 8 of gum, 2 cakes.	2021-06-06 14:06:04.958951
530	perceived it to be a human creature not six inches high, with a\nbow and arrow in his hands, and a quiver at his back.  In the\nmean time I felt at least forty more of the same kind (as I\nconjectured) following the first.	2021-06-06 14:06:05.116258
531	this incident is most unusual and that we do strive to render\nto our customers an efficient and courteous service at all\ntimes.\nA man can live well even in a palace.	2021-06-06 14:06:05.24839
532	certainly due to us; but it was not likely that our\ncaptain's shipmates, above all the two specimens seen by\nme, Black Dog and the blind beggar, would be inclined to\ngive up their booty in payment of the dead man's debts.	2021-06-06 14:06:05.37395
533	True friendship is a plant of slow growth.\nThere is a foolish corner in the brain of the wisest men.\nTell me what you are busy about, and I will tell you what you are.\nIf in the last few years you haven't discarded a major opinion or	2021-06-06 14:06:05.489575
534	fbf jnj fbf jnj fbf jnj fbf jnj fbf jnj fbf jnj\nbin bin bin bin bin bin nib nib nib nib nib nib\nbig big big big big big now now now now now now\nbun bun bun; nip nip nip; fib fib fib; win win win;	2021-06-06 14:06:05.607619
535	How much do you weigh?  A young boy who is 5 feet tall\nmay weigh 112 pounds; with an extra inch, 115 pounds.  Add 3\npounds for any inch added.  Thus if 5 feet and 4 inches, he\nmay weigh 124.  If taller, add 4 pounds for each added inch.	2021-06-06 14:06:05.728865
536	of fare.  Here I am very exact, as I never set a poor table.\nI stock an up-to-date table, set out under the first dozen\nstars.  I enjoy having every boy able to quaff his quota of\nsoup and boast or sing with zeal and make any queer joke.	2021-06-06 14:06:05.859963
537	You must devote more time to your daily work.\nYou should go over every item with more thought.\nYou will surely make good if you give more time to\nyour daily work here.  You must make every effort	2021-06-06 14:06:05.971508
538	"That will be fine," the clerk said, "I'll wait for him, too."\nSOIL--Remove to depth of 9" under house and 5' on all sides.\nFRAME WORK--Beams 2" x 8"; braces 2" x 4"; rafters 2" x 6".\nROOF--Use 18", #1 cedar shingles, laid 5" to the weather.	2021-06-06 14:06:06.134331
539	sus ase sis uni suc epi cor ory tri acy fic ify dom isk ism\nante than ance ling para less plea lent leas post rece cata\nDear "Pie,"\nI open most of my mail and meet the news.  I note that	2021-06-06 14:06:06.264508
540	I saw two men and set them to work on the car, till\nthey told me it was no use.  If I were to turn it in, is it\ntrue that you can take your car?  I want a wide view and I\nwant to talk with you.  Thus I wait upon your word.  Wire	2021-06-06 14:06:06.384454
541	I want to assure you that our co-operation under the new law\nwill be satisfactory in every way.\nYours respectfully,\nThe JOURNAL learned that the relatives on their arrival in	2021-06-06 14:06:06.504549
542	@ $0.575; 15 bu. potatoes @ $0.795.\nOur company ordered 15 Ajax Pencil Sharpeners at\n$0.98; 6 doz. Circular Rubber Erasers at $.43; 24 No.  68\nSpiral Stenographic Notebooks at $.075.	2021-06-06 14:06:06.643209
543	needs a sedan.  Dad sends a sedan.  Dean is indeed sad as\nhe sees Sis and Ed inside.  At nine he sees Sis and Ed dine.\nHe sees that in a test he has to state and use a sane idea.\ndeki frju dck, dcl. frju ftjy deki frju dck, dcl. frju ftjy	2021-06-06 14:06:06.756025
544	rider rider rider freed freed freed fired fired\ndid red ire fee rid deer rude fire feed juke rider\nrid fee ire red did juke fire rude juke deed freed\nfff jjj ddd kkk frf juj ded kik fff jjj ddd kkk	2021-06-06 14:06:06.874307
545	tired tired tired urged urged urged third third third\ntruth truth truth their their their dried dried dried\ntheir their their dried dried dried truth truth truth\ndid they get the right dried fruit there yet	2021-06-06 14:06:06.992033
546	all adults have some hobby away from their daily pursuit.\ndad ded did dod dud dr ld nd rd\ntat tet tit tot tut th tr ct ft lt nt pt st\ndid bend tot total that last rented mended	2021-06-06 14:06:07.117457
547	And earthly power doth then show likest God's\nWhen mercy seasons justice.  Therefore, Jew,\nThough justice be thy plea consider this--\nThat in the course of justice none of us	2021-06-06 14:06:07.235499
548	fff rrr fff rrr ff rr ff rr\nfff rake fff rag fff her fff\nfff red fff read fff rage fff\nfff far fff red fff jar fff	2021-06-06 14:06:07.351117
549	umbrella bomber answer thinking entertainment employment\nWe are informed that an increase is anticipated.\nPlease inform us if you are interested in an engine.\nBanks will extend financial aid to the business man.	2021-06-06 14:06:07.47239
550	That I might touch that cheek!\nFriends, Romans, countrymen, lend me your ears;\nI come to bury Caesar, not to praise him.\nThe evil that men do lives after them;	2021-06-06 14:06:07.582639
551	The good is oft interred with their bones;\nSo let it be with Caesar:  The noble Brutus\nHath told you Caesar was ambitious:\nIf it were so, it was a grievous fault;	2021-06-06 14:06:07.70561
553	Unless your invoice is paid, no shipment can be made.\nThe amount of your investment in common stocks is $800.\nThe employer must consider any increase in cost that\nenters into the manufacture of his product.  Unless he includes	2021-06-06 14:06:07.944309
554	deed lend toot tutor this kept melted handed\ndude bold tight taught them chest drafted founded\ndodo board trait treats there first directed doubted\nThe first shall be last.	2021-06-06 14:06:08.06972
555	Should see salvation: we do pray for mercy;\nAnd that same prayer doth teach us all to render\nThe deeds of mercy.  I have spoke thus much\nTo mitigate the justice of thy plea;	2021-06-06 14:06:08.187699
556	they they they true true true here here here\nthere there there fruit fruit fruit right right right\nfruit fruit fruit right right right there there there\nthird third third tired tired tired urged urged urged	2021-06-06 14:06:08.317497
557	fire fire fire juke juke juke free free free juke\ndeer deer deer rude rude rude dire dire dire ride\nrude rude rude dire dire dire deer deer deer ride\nfired fired fired rider rider rider freed freed	2021-06-06 14:06:08.434715
558	fgjh ;p;? jujy dedc lol. kik, fgju ;:;: frfk jujy dedc kik,\nag ac ar al ap at ay af ug uc ur ul up ut eg ec er el ep et\ney ef og or ol op ot of ig ic ir il ip if ga ca ra la pa fa\ngu cu ru lu pu fu ge ce re le pe ye fe go co ro lo po yo fo	2021-06-06 14:06:08.551366
559	April had already referred the trouble to lawyers.  Their early re-\nturn surprises me.  As to the children themselves, the older girls\nare personally agreeable, slender, and certainly full of zest.  They\ntravel yearly and already are familiar with the world.  Their father	2021-06-06 14:06:08.664236
560	Deliver the following order to Mrs. Beverly\nVinson at 390 West 135th Street, New York City:  2 lbs.\nTemple Oranges at $.135; 3 lbs. Red Circle Coffee at\n$.91; 2 lbs. Lima Beans at $.29.	2021-06-06 14:06:08.783706
561	one man whom I want.  I took a well-used tire.  When it went\ndown on a bad turn, in the woods, I had to walk.  Then the\nwind more than set in, and I had to wait by a wall.  It got\nour old tree.	2021-06-06 14:06:08.89711
562	life can be less hard.  I like to hold on and help Bill.  I\nlove to fly.\nYours sincerely,\nHe says he hasn't been very blue once in his two weeks here.	2021-06-06 14:06:09.015861
563	PLUMBING--Use #1 materials; 4" cast iron pipe; sink 2' x 6'.\nLATH AND PLASTER--Use #1 spruce 3/8 x 1.5"; 2 coats plaster.\nTo attain a personal association with so popular an\nauthor is an approved social ambition.  To loan him money or	2021-06-06 14:06:09.130927
564	With a moon, I can name no event to equal a boat and water.\nIt is good drill to keep going in even time for ten minutes.\nShe can tell us all there is to say on her side and what to do.\nki9 de3 ju8 fr4 ju7 fr5 jy6 ft6 lo0 sw2 ju7 fr5 jy6 ft6 ;p-	2021-06-06 14:06:09.26535
565	to make good.\nYou will improve your skill every day if you\ndevote some thought to your work.  You will surely\nprogress if you keep at your work regularly.  Just	2021-06-06 14:06:09.384284
566	fib fib fib; win win win; bun bun bun; nip nip nip;\nbent bent bent; nine nine nine; vent vent vent;\nmend mend mend; vine vine vine; blow blow blow;\nWe require more time to turn out a very good job.	2021-06-06 14:06:09.499489
567	If 5 feet and 7 inches, he may weigh 136; if 5 feet and 9\ninches, 144; if 5 feet and 10 inches, he may weigh 148.  Now\nadd 5 pounds for each added inch.  Thus to stand 6 feet tall\nmay mean 158 pounds.  It is better to be a little over-weight.	2021-06-06 14:06:09.615551
568	My chief want in life is someone who shall make me do what I can.\nNo man can be called friendless when he has God and the\ncompanionship of good books.\nI like the silent church before the service begins better than any preaching.	2021-06-06 14:06:09.737684
569	I lost no time, of course, in telling my mother all that\nI knew, and perhaps should have told her long before,\nand we saw ourselves at once in a difficult and dangerous\nposition.  Some of the man's money--if he had any--was	2021-06-06 14:06:10.03498
570	ley's face.\nWhen I awaked it was just daylight.  I attempted to rise, but I\nfound my arms and legs were strongly fastened on each side to\nthe ground; and my hair, which was long and thick, tied to the	2021-06-06 14:06:10.264895
571	Hospitality consists in a little fire, a little food and an immense quiet.\nPuritanism is the haunting fear that someone, somewhere, may be happy.\nWhen you have to make a choice and don't make it, that is in itself a choice.\nThere is a way of transferring funds that is even faster	2021-06-06 14:06:10.389381
572	Thank you for informing us that the diskettes which you pur-\nchased from us are not satisfactory.  We are sorry for the\ninconvenience you have been caused in this transaction.\nWe shall be glad to replace the diskettes you now have or to	2021-06-06 14:06:10.509713
573	The usual test scores point to waste in many a class.  After\nall the work of a first term, girls may reach only 25 words\na minute, boys only 22 words.  At the end of 34 weeks these\nusual scores might be 29 or 31 or 34.  Indeed, 25 to 33 per	2021-06-06 14:06:10.624526
574	do dot due dye day dew dab den dim dog die dig dry dip\ndo dig dry dip die dog dim dab den dew day dye due dot\nebb eke err eve end egg ever even edge earn east evil\nerr eke eve end ebb eel evil east earn edge envy easy	2021-06-06 14:06:10.742922
575	rot rye rut row red rip rat rap rug rig rut rye rug;\nup us use uses urge ugly usage upper uproar upright;\nus up use urge uses urge urges udder utters upstart;\nfrf juj ftf jyj fgf jhj ded kik sws lol aqa ;p;	2021-06-06 14:06:10.860558
576	cent of all those at work had clerical jobs; today, about 8\nper cent have such jobs.  Does it interest you that of all\npaid typists only 3 per cent are more than 44 years of age?\nMost of the 810,000 typists in the last census are young.	2021-06-06 14:06:10.992578
577	Nine mine.  I can mark many a mile we once ran.  I must mail\nthis note or I may miss the post.\nYours sincerely,\nDear Ross,	2021-06-06 14:06:11.121875
578	this outfit uphill and build a suitable crew that won't quit.\nStudents should be assisted in studying seated at their\ndesks; cross-questioned as to their needs and desires; ad-\nvised to use up-to-date leads based on studies of standards.	2021-06-06 14:06:11.235625
579	There are two shift keys.  Hold down the left\nshift key for typing right-hand capitals; hold down\nthe right shift key for typing left-hand capitals.\nAlways use the fourth finger for the shift key.	2021-06-06 14:06:11.352423
580	ki ai li si di ji fi ia il is ik id ij if dd ee ss ff ll ei\nDad adds a salad  A lad asks  Salad falls as a lad asks Dad\nLease a desk  Add a safe deal  Ask less fees  Add a lease\nLease a lake  Add lake sales  Add deeds  Flee false deals	2021-06-06 14:06:11.467182
581	Ed had his ease.  Sis liked a safe shed.  Sis had shade.\nHis shed is ashes.  Ed hides his head.  He heeds Sis.\nOdd ideas die like odd seeds.  Odd seeds die as do odd deeds.\nDad has odd ideas.  Dad sees a soda as a sad dose.  A soda	2021-06-06 14:06:11.584275
582	fru fru fru ruf ruf ruf urj urj urj fuj fuj fuj\nurf urf urf juf juf juf fuj fuj fuj fru fru fru\nfur fur fur ruf ruf ruf urf urf urf jur jur jur\nfff jjj fff jjj fff jjj fff jjj fff jjj fff jjj	2021-06-06 14:06:11.706724
583	row row row row row row how how how how how how\nis is is so so so of of of do do do go go go to to to\ngo go go to to to do do do of of of so so so is is is\ntoo too too low low low set set set wit wit wit wit	2021-06-06 14:06:11.827887
584	Wherein doth sit the dread and fear of kings;\nBut mercy is above this scepter'd sway,--\nIt is enthroned in the heart of kings,\nIt is an attribute to God himself;	2021-06-06 14:06:11.954603
585	fff jjj ddd kkk sss lll aaa ;;;\nfff jjj ddd kkk sss lll aaa ;;;\nasdf jkl; asdf jkl; asdf jkl;\nfjf kdk sls ;a;	2021-06-06 14:06:12.071022
586	lisle plow blue class globe fleet sleep silly\nlabel please blood claim gleam flail slight really\nThe mill will close in April.\nIt is clear to all who will listen.	2021-06-06 14:06:12.196692
587	Their income is derived from common stock commitments.\nThe concern communicated its conclusions convincingly.\nUnder the circumstances, the company will command control.\nCharacter shows itself in a man's conduct.  Deeds speak	2021-06-06 14:06:12.310592
588	kkk k,k kkk k,k kkk k,k\nkkk ,,, kkk ,,, kkk ,,, kkk\na lad had a flask, dad had a keg\nshe had a fake egg, he had a salad	2021-06-06 14:06:12.427957
589	commerce compare discontinue control contrary incomparable\ncommence complete inconvenient contract convince uncomfortable\nThe lawyer consulted the complainant.\nPlease continue to comply with all recommendations.	2021-06-06 14:06:12.544694
590	ddd ded ddd ded ddd ded ddd\nddd eee ddd eee dd ee dd ee d e\nddd fee ddd see ddd elf ddd\nlake asked fake gale egg	2021-06-06 14:06:12.66347
591	kkk kkk kkk kk kk kk k k k\nddd kkk dd kk dkd kdk ddd kkk\nsss lll sss lll sss ss ll ss ll s l\naaa ;;; aaa ;;; aa ;; aa ;; a ;	2021-06-06 14:06:12.776557
592	A person or firm that comes to be regarded as unreliable has a\npoor chance of success.\nlal lel lil lol lul ly bl cl fl gl pl sl\nloll play blow clear glass flesh slow fully	2021-06-06 14:06:12.903323
593	'Tis mightiest in the mightiest; it becomes\nThe throned monarch better than his crown;\nHis sceptre shows the force of temporal power,\nThe attribute to awe and majesty,	2021-06-06 14:06:13.023635
594	sit sit sit lit lit lit wit wit wit low low low low\nwool wool wool suit suit suit full full full wood wood\nhole hole hole wool wool wool suit suit suit good good\nstyle style style order order order those those	2021-06-06 14:06:13.139219
595	frf juj frf juj frf juj frf juj frf juj frf juj\nfur fur fur ruf ruf ruf jur jur jur ruj ruj ruj\nurj urj urj juf juf juf fuj fuj fuj fur fur fur\nd d d d ddd ddd ddd ddd k k k k kkk kkk kkk kkk	2021-06-06 14:06:13.256076
596	as os es us is an on en un in at ot et ut it ad od ed ud id\nsa so se su si na no ne nu ni ta to te tu ti ha ho he hu hi\nda do de du di au st oi sh oi ts ht oe nk ou nd ue ns ui th\nEd had a shed.  His shed had dishes.  He had shade.	2021-06-06 14:06:13.378778
597	You type capital letters by holding down a key\ncalled the shift key while you strike the letter key.\nYou type capital letters by holding down a key\ncalled the shift key while you strike the letter key.	2021-06-06 14:06:13.503554
598	asdf ;lkj asdf ;lkj asdf ;lkj asdf ;lkj asdf ;lkj asdf ;lkj\nasdef ;lkij asdef ;lkij asdef ;lkij asdef ;lkij asdef ;lkij\nas al ad ak af aj fa ka da la sa ja sl sd sk sf ls ds ks fs\nde le ae ke se je fe ed el ea ek es ej ef ed lf dk dl fl kl	2021-06-06 14:06:13.628953
599	By-products of student days, well-bred friends, kindness,\nself-help, with good grades and degrees, are listed as far-\nsighted aids.  In Dad's old-fashioned address to his co-\nworkers, he said sadly that ideas are missed less than first-	2021-06-06 14:06:13.749293
600	It is a real rain.  The road is so soft my car can but\nroll, stop, and roll on.  Are you on the ship?  If I get as\nfar as the ship, can we sail in such a rain?  If we try to\nsail, the ship is sure to rock or ride on one side.  If I get	2021-06-06 14:06:13.864838
601	fro few fir fat for fee fig foe fop fit fur fat fad;\njug jig jut jar joy jag jaw jar jet jot jog jug joy;\njoy jug jog jag jaw jot jig jut jar jig jaw jog jet;\nrye rut row red rip ray rap rug rig rut rye rug rot;	2021-06-06 14:06:13.985124
602	Grade 10A, I learned to use all the keys in Lessons 3 and 4.\nIn Lessons 1 and 2, and in part of No.5, I tried my hands on\nthe home row.  Both Lessons 6 and 7 were in the bank above.\nTyping is clerical work.  Twenty years ago less than 5 per	2021-06-06 14:06:14.098708
603	The next step in better typing is to learn to graph a curve.\nIf your test score each week rises from 22 to 28, 32, 37,\n40, 44, 48, 51, 53, and 55 words a minute, put these on a\nchart.  See this curve grow higher each week.  Or use bars.	2021-06-06 14:06:14.214887
604	Remember this:  every boy and girl is able to\nlearn typing.  All they have to do is to put forth\ntheir very best efforts.  This means thinking while\ntraining every finger to strike the right key.	2021-06-06 14:06:14.329377
605	correct ones.\nSincerely,\nMr. Smith\nDear Mr. Smith:	2021-06-06 14:06:14.464461
606	than electronic banking.  It is called marriage.\nShowing up is 80 percent of life.\nA poem begins in delight and ends in wisdom.\nWhen I approach a child, he inspires in me two sentiments:  tenderness	2021-06-06 14:06:14.601463
607	ground in the same manner.  I likewise felt several slender\nligatures across my body, from my armpits to my thighs.  I\ncould only look upward; the sun began to grow hot, and the\nlight offended my eyes.  I heard a confused noise about me;	2021-06-06 14:06:14.718647
608	Men often mistake notoriety for fame, and would rather be\nremarked for their vices than not be noticed at all.\nI could study all my life and not think up half the amount\nof funny things they can think of in one session of Congress.	2021-06-06 14:06:14.841285
609	let any man explain to me, if he can, how it happened\nthat Scrooge, having his key in the lock of the door,\nsaw in the knocker, without its undergoing any inter-\nmediate process of change--not a knocker, but Mar-	2021-06-06 14:06:15.110893
610	Yetta Yetta Yetta; Ollie Ollie Ollie; Uriah Uriah;\nWalter Walter Walter; Esther Esther Esther; Isaiah;\nEsther Esther Esther; Walter Walter Walter; Isaiah;\nArthur Arthur Arthur; Lester Lester Lester; Quezon;	2021-06-06 14:06:15.276864
611	To throw a carriage do you take 6 or 7 times--or to shift for\na capital, 2 or 3 times--as long as to hit one letter?  And\ndo you know the common keys?  One common pair of letters is used\nfor every 3 or 4 other pairs, even though there are more than	2021-06-06 14:06:15.40034
612	Let these two ideas guide you while you type.\nYou should follow the daily drills as you are told.\nThese drills will show you that it is quite easy\nto type well.	2021-06-06 14:06:15.516927
613	Be prompt.  Never shirk.  Make promptness a habit.\nNever put off until tomorrow any job you should\nfinish today.  Try to be prompt at all times.  No one\nlikes to be kept waiting.	2021-06-06 14:06:15.635477
614	cent of the students may type less than 20 words per minute.\nEleven invitations for Thanksgiving vacation arrived in\nadvance of November.  In vain have a dozen relatives invited\nme to visit Vermont, Virginia, and Nevada.  I love being	2021-06-06 14:06:15.752759
615	house furniture and fruit juices for the university crew.\nThe alumni inquiry into the failure of equipment figures in\nthe issue.  The alumni attitude is useful but continues to\nput a premium on a victorious crew.  Only genius can guide	2021-06-06 14:06:15.875764
616	us.  Her son was my age and I made the mile at noon to play a\nbit.  She paid us for milk.  She did not mean much to me, but\nher son did.\nNext we had more fun up the pass near the poor old No.	2021-06-06 14:06:16.011029
617	have to keep on here.  I knew it was but a hope last May.\nIt was just my last idea in June.  Yet I held my head high\nand did not lose hope.\nWhy not fly up in the air a half hour or less and	2021-06-06 14:06:16.356607
618	mobile.\nConcerning our collection of any remittance from you, this\nwould serve to form a Conference which would develop everything\nthat can make city governments bring full and rich experience	2021-06-06 14:06:16.471513
619	likes a safe sail  Sis seeks a lee isle  All sail is\nlaid aside  Sis feels life is ideal  Idle fields lead as\nSis seeks lilies  Sis falls  Lilies fade as Sis falls\nFaded sails fill  Idle isles slide aside as Sis sails	2021-06-06 14:06:16.587632
620	was a quizzical old man who fairly idolized them.  His will leaves\nthem very nearly a half-million dollars.  Only the earlier, first\nwill is very irregular.  I've already quizzed them about the real\nhazards of quarrels over legal prizes of similar size.  From their	2021-06-06 14:06:16.709945
621	Keep your wrists low but not touching the frame\nof the machine.  Raise the other fingers slightly as\nyou depress the shift key with the fourth finger.\nBe sure that you hold the shift key all the way	2021-06-06 14:06:16.8323
622	we desire the right goods for our wool suits\nif you will go with us you will see the fleet\nwe will try to fill your order for the wool suits\nif we get the right goods we will fill your order	2021-06-06 14:06:16.946083
623	rid rid rid eke eke eke ire ire ire did did did\nkid kid kid fee fee fee red red red fir fir fir\nred red red fir fir fir fee fee fee kid kid kid\nfree free free juke juke juke fire fire fire juke	2021-06-06 14:06:17.069264
624	queen child wheat twenty express deprive dismiss translate\nspecial gracious active biology worship self-regard\nofficial conscious native geology hardship self-respect\nfinancial delicious positive pathology steamship self-defense	2021-06-06 14:06:17.211495
625	fff jjj ddd kkk sss lll aaa ;;;\nfgf jhj ded k,k fgf jhj ded k,k\nkkk kik kkk kik kkk iii kkk\nkkk iii kkk iii kk ii kk ii	2021-06-06 14:06:17.357081
626	such cost in his selling price, he is unlikely to show a profit.\nThe installation of a cost system that enables the employer\nto break down his costs to a unit basis is a prime necessity.\ncom recom decom discom incom uncom	2021-06-06 14:06:17.467817
627	Every promise made should be observed.\nThe price of the property is really $2,500.\nTry to remember to bring your grammar with you.\nProof of your brokerage experience will be required.	2021-06-06 14:06:17.595102
628	sad add all; alas flask fad\nask a sad lad\ndad asks a lad; a lass falls\nfff jjj ddd kkk sss lll aaa ;;;	2021-06-06 14:06:17.711139
629	The orange grower must have favorable weather conditions.\nSome people break promises as readily as they make them.\nAs a result, they acquire a reputation for unreliability.  It\nis particularly important to be reliable in the business world.	2021-06-06 14:06:17.836124
630	asdf jkl; fdsa ;lkj\nfjf jfj dkd kdk sls lsl a;a ;a;\njkj jlj j;j fdf fsf faf\na sad lass; ask dad;	2021-06-06 14:06:17.954984
632	con recon decon discon incon uncon\ncommon commit decompose conduct consign incomplete\ncomply comment discomfort connect confuse unconvinced\ncombine compose disconnect consist contrast uncontrolled	2021-06-06 14:06:18.1975
633	The squadron marched quickly and quietly.\nWhen will the twenty cars of wheat go forward?\nThe study of psychology is a "must" in college.\nWe desire to dispose of our financial interests.	2021-06-06 14:06:18.314879
634	ddd kkk ddd kkk ddd kkk ddd kkk ddd kkk ddd kkk\ne e e e ded ded ded ded ded i i i i kik kik kik\nded kik ded kik ded kik ded kik ded kik ded kik\ndid did did ire ire ire rid rid rid eke eke eke	2021-06-06 14:06:18.431781
635	loose loose loose style style style order order\ndesire desire desire rulers rulers rulers worker\nworker worker worker desire desire desire rulers\nhold your wrists low while you strike the keys	2021-06-06 14:06:18.549617
636	replies I've realized slowly that the girls are all right.  It\nreally amazes me that even persons like ourselves promptly seize\nupon some hostile relative's version of an earlier will, which\nshould be recognized easily as false.	2021-06-06 14:06:18.666526
637	down until you have struck the letter key; then re-\nlease the shift key and return finger to home base.\nPrepare a bill for the following items:  29 lbs. butter\n@ $0.895; 36 doz. eggs @ $0.695;  28 doz. oranges	2021-06-06 14:06:18.784482
638	Sid adds all sail as Dad sees a safe sea as idle as a lake\na;sldkfjgh a;sldkfjgh a;sldkfjgh a;sldkfjgh a;sldkfjgh\nasdefghk lokijujhjn asdefghk lokijujhjn asdefghk\nl.  a.  l.  s.  l.  d.  l.  e.  l.  n.  l.  t.  l.  o.	2021-06-06 14:06:18.898043
639	to all.\nSincerely yours,\nDear Sir,\nI wish to acknowledge the recent interesting correspondence	2021-06-06 14:06:19.01561
640	my full life, etc.  The game goes on.\nYours sincerely,\nDear Hal,\nJust a line to say I am lost if I cannot fly.  I	2021-06-06 14:06:19.142674
641	you say Mrs. Page is a mere name but you met the Miss Page.\nYou must need the car.  Once the pass is open I can move\nthe car over to you.  Do you mind if I make it part of a nice\nplan to meet Miss Page, too?  Mrs. Page was only a mile past	2021-06-06 14:06:19.260029
642	says to send her out.  All the rest of us say the same.  Can\nyou ring me in my room at the shop?\nYours sincerely,\nThe public is quite unfair about airing quibbles over	2021-06-06 14:06:19.379023
643	Keep on working just as diligently as you have\nbeen doing up to this point.  You will soon be a\nmaster of the keyboard.  You will have a valuable\nskill that will repay you for your efforts.	2021-06-06 14:06:19.495073
644	invited and I believe in never avoiding an invitation to any\nThanksgiving banquet.  I even plan to have the sixth to the\nseventeenth of November for varied ventures and to visit\nthat novel Denver University on my vacation.	2021-06-06 14:06:19.610719
645	600 other pairs.  The digits are 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.\nYou will spell these out more often than you will type them.\nI am vexed if my prize went to my old address, 55 Fifth Avenue.\nI should like to arrange to have you see me here next week.	2021-06-06 14:06:19.731013
646	Start your daily work without delay.  Keep at it\nregularly.  It is steady work that will take you\nto your goal.\nfor fat few fur foe fit fed fee for fat fir few fro;	2021-06-06 14:06:19.84029
647	Quezon Quezon Quezon; Arthur Arthur Arthur; Philip;\nJoseph likes to study; Joseph likes to study art;\nEsther will write; Esther will write Larry today;\nArthur likes; Arthur likes to play the flute;	2021-06-06 14:06:19.960848
648	corporation, aldermen, and livery.  Let it also be\nborne in mind that Scrooge had not bestowed one\nthought on Marley, since his last mention of his\nseven year's dead partner that afternoon.  And then	2021-06-06 14:06:20.204786
649	acquired a new one, check your pulse.  You may be dead.\nDemocracy is a small hard core of common agreement, surrounded\nby a rich variety of individual differences.\nI never think of the future.  It comes soon enough.	2021-06-06 14:06:20.473615
185	Fsyunta    TAKEDA     favicon.ico   kyo        pe-ko      ul\n Fsyuto     TK         fujiwara      mahiro     pen        unko\n Fuji       Tano       garasubo      mana       ponsuke    wrxsti\n GOGOGO     Tatsuki    gyugyu        manapee    pop        yRyo\n	2021-06-06 14:05:19.966251
303	do not remove. placeholder.\nplace holder is a a symbol or piece of text used in a \nmathematical expression or in an instruction in a computer \nprogram to denote a missing quantity or operator.	2021-06-06 14:05:35.602184
650	also to the Diet approval required for the conclusion of treaties.\nArticle 62. Each House may conduct investigations in relation to\ngovernment, and may demand the presence and testimony of\nwitnesses, and the production of records.\n	2022-07-22 17:23:55.814163
651	No person shall be convicted or punished in cases where the only\nproof against him is his own confession.\nArticle 39. No person shall be held criminally liable for an act\nwhich was lawful at the time it was committed, or of which he has\n	2022-07-22 17:23:56.071269
652	Universal adult suffrage is guaranteed with regard to the\nelection of public officials.\nIn all elections, secrecy of the ballot shall not be violated. A\nvoter shall not be answerable, publicly or privately, for the\n	2022-07-22 17:23:56.482036
653	The appointment of the judges of the Supreme Court shall be\nreviewed by the people at the first general election of members\nof the House of Representatives following their appointment, and\nshall be reviewed again at the first general election of members\n	2022-07-22 17:23:56.550468
654	after the receipt of the budget passed by the House of\nRepresentatives, the decision of the House of Representatives\nshall be the decision of the Diet.\nArticle 61. The second paragraph of the preceding article applies\n	2022-07-22 17:23:56.61752
655	Article 37. In all criminal cases the accused shall enjoy the\nright to a speedy and public trial by an impartial tribunal.\nHe shall be permitted full opportunity to examine all witnesses,\nand he shall have the right of compulsory process for obtaining\n	2022-07-22 17:23:56.674531
656	the banishment of tyranny and slavery, oppression and intolerance\nfor all time from the earth. We recognize that all peoples of the\nworld have the right to live in peace, free from fear and want.\nWe believe that no nation is responsible to itself alone, but\n	2022-07-22 17:23:56.731675
657	In order to accomplish the aim of the preceding paragraph, land,\nsea, and air forces, as well as other war potential, will never\nbe maintained. The right of belligerency of the state will not be\nrecognized.\n	2022-07-22 17:23:56.791987
658	impeachment unless judicially declared mentally or physically\nincompetent to perform official duties. No disciplinary action\nagainst judges shall be administered by any executive organ or\nagency.\n	2022-07-22 17:23:56.855476
659	Decide on general amnesty, special amnesty, commutation of\npunishment, reprieve, and restoration of rights.\nArticle 74. All laws and cabinet orders shall be signed by the\ncompetent Minister of State and countersigned by the Prime\n	2022-07-22 17:23:56.913557
660	of the people, the authority for which is derived from the\npeople, the powers of which are exercised by the representatives\nof the people, and the benefits of which are enjoyed by the\npeople. This is a universal principle of mankind upon which this\n	2022-07-22 17:23:56.971258
661	No privilege shall accompany any award of honor, decoration or\nany distinction, nor shall any such award be valid beyond the\nlifetime of the individual who now holds or hereafter may receive\nit.\n	2022-07-22 17:23:57.053903
662	Article 98. This Constitution shall be the supreme law of the\nnation and no law, ordinance, imperial rescript or other act of\ngovernment, or part thereof, contrary to the provisions hereof,\nshall have legal force or validity.\n	2022-07-22 17:23:57.10514
663	one of the preceding article will be applicable.\nArticle 6. The Emperor shall appoint the Prime Minister as\ndesignated by the Diet.\nThe Emperor shall appoint the Chief Judge of the Supreme Court as\n	2022-07-22 17:23:57.200772
664	Proclamation of general election of members of the Diet.\nAttestation of the appointment and dismissal of Ministers of\nState and other officials as provided for by law, and of full\npowers and credentials of Ambassadors and Ministers.\n	2022-07-22 17:23:57.270667
665	of a majority of all votes cast thereon, at a special referendum\nor at such election as the Diet shall specify.\nAmendments when so ratified shall immediately be promulgated by\nthe Emperor in the name of the people, as an integral part of\n	2022-07-22 17:23:57.335449
666	in time of national emergency convoke the House of Councillors in\nemergency session.\nMeasures taken at such session as mentioned in the proviso of the\npreceding paragraph shall be provisional and shall become null\n	2022-07-22 17:23:57.387877
667	preceding paragraph.\nArticle 101. If the House of Councillors is not constituted\nbefore the effective date of this Constitution, the House of\nRepresentatives shall function as the Diet until such time as the\n	2022-07-22 17:23:57.443522
668	such convocation.\nArticle 54. When the House of Representatives is dissolved, there\nmust be a general election of members of the House of\nRepresentatives within forty (40) days from the date of\n	2022-07-22 17:23:57.493945
669	origin, education, property or income.\nArticle 45. The term of office of members of the House of\nRepresentatives shall be four years. However, the term shall be\nterminated before the full term is up in case the House of\n	2022-07-22 17:23:57.546291
670	qualifications of its members. However, in order to deny a seat\nto any member, it is necessary to pass a resolution by a majority\nof two-thirds or more of the members present.\nArticle 56. Business cannot be transacted in either House unless\n	2022-07-22 17:23:57.608455
671	Each House shall establish its rules pertaining to meetings,\nproceedings and internal discipline, and may punish members for\ndisorderly conduct. However, in order to expel a member, a\nmajority of two-thirds or more of those members present must pass\n	2022-07-22 17:23:57.661929
672	which the House of Councillors makes a decision different from\nthat of the House of Representatives, becomes a law when passed a\nsecond time by the House of Representatives by a majority of\ntwo-thirds or more of the members present.\n	2022-07-22 17:23:57.715826
673	educational or benevolent enterprises not under the control of\npublic authority.\nArticle 90. Final accounts of the expenditures and revenues of\nthe State shall be audited annually by a Board of Audit and\n	2022-07-22 17:23:57.78565
674	submitted by the Cabinet to the Diet, together with the statement\nof audit, during the fiscal year immediately following the period\ncovered.\nThe organization and competency of the Board of Audit shall be\n	2022-07-22 17:23:57.849547
675	dismissed.\nMatters pertaining to review shall be prescribed by law.\nThe judges of the Supreme Court shall be retired upon the\nattainment of the age as fixed by law.\n	2022-07-22 17:23:57.90612
676	No censorship shall be maintained, nor shall the secrecy of any\nmeans of communication be violated.\nArticle 22. Every person shall have freedom to choose and change\nhis residence and to choose his occupation to the extent that it\n	2022-07-22 17:23:57.968485
677	ordinances or regulations and for other matters; nor shall any\nperson be in any way discriminated against for sponsoring such a\npetition.\nArticle 17. Every person may sue for redress as provided by law\n	2022-07-22 17:23:58.021021
678	Where a court unanimously determines publicity to be dangerous to\npublic order or morals, a trial may be conducted privately, but\ntrials of political offenses, offenses involving the press or\ncases wherein the rights of people as guaranteed in Chapter III\n	2022-07-22 17:23:58.163576
679	Standards for wages, hours, rest and other working conditions\nshall be fixed by law.\nChildren shall not be exploited.\nArticle 28. The right of workers to organize and to bargain and\n	2022-07-22 17:23:58.222245
680	Article 68. The Prime Minister shall appoint the Ministers of\nState. However, a majority of their number must be chosen from\namong the members of the Diet.\nThe Prime Minister may remove the Ministers of State as he\n	2022-07-22 17:23:58.278742
681	Article 83. The power to administer national finances shall be\nexercised as the Diet shall determine.\nArticle 84. No new taxes shall be imposed or existing ones\nmodified except by law or under such conditions as law may\n	2022-07-22 17:23:58.335103
682	act collectively is guaranteed.\nArticle 29. The right to own or to hold property is inviolable.\nProperty rights shall be defined by law, in conformity with the\npublic welfare.\n	2022-07-22 17:23:58.389064
683	Cabinet shall resign en masse.\nArticle 71. In the cases mentioned in the two preceding articles,\nthe Cabinet shall continue its functions until the time when a\nnew Prime Minister is appointed.\n	2022-07-22 17:23:58.449183
684	Article 24. Marriage shall be based only on the mutual consent of\nboth sexes and it shall be maintained through mutual cooperation\nwith the equal rights of husband and wife as a basis.\nWith regard to choice of spouse, property rights, inheritance,\n	2022-07-22 17:23:58.513404
685	Representatives is dissolved.\nArticle 46. The term of office of members of the House of\nCouncillors shall be six years, and election for half the members\nshall take place every three years.\n	2022-07-22 17:23:58.570065
686	House of Councillors shall be constituted.\nArticle 102. The term of office for half the members of the House\nof Councillors serving in the first term under this Constitution\nshall be three years. Members falling under this category shall\n	2022-07-22 17:23:58.643329
687	once per year.\nArticle 53. The Cabinet may determine to convoke extraordinary\nsessions of the Diet. When a quarter or more of the total members\nof either House makes the demand, the Cabinet must determine on\n	2022-07-22 17:23:58.705069
688	Promulgation of amendments of the constitution, laws, cabinet\norders and treaties.\nConvocation of the Diet.\nDissolution of the House of Representatives.\n	2022-07-22 17:23:58.759581
689	this Constitution.\nCHAPTER X\nSUPREME LAW\nArticle 97. The fundamental human rights by this Constitution\n	2022-07-22 17:23:58.816312
690	dissolution, and the Diet must be convoked within thirty (30)\ndays from the date of the election.\nWhen the House of Representatives is dissolved, the House of\nCouncillors is closed at the same time. However, the Cabinet may\n	2022-07-22 17:23:58.872279
691	guaranteed to the people of Japan are fruits of the age-old\nstruggle of man to be free; they have survived the many exacting\ntests for durability and are conferred upon this and future\ngenerations in trust, to be held for all time inviolate.\n	2022-07-22 17:23:58.933553
692	designated by the Cabinet.\nArticle 7. The Emperor, with the advice and approval of the\nCabinet, shall perform the following acts in matters of state on\nbehalf of the people:\n	2022-07-22 17:23:58.991849
693	Minister.\nArticle 75. The Ministers of State, during their tenure of\noffice, shall not be subject to legal action without the consent\nof the Prime Minister. However, the right to take that action is\n	2022-07-22 17:23:59.053887
694	Constitution is founded. We reject and revoke all constitutions,\nlaws, ordinances, and rescripts in conflict herewith.\nWe, the Japanese people, desire peace for all time and are deeply\nconscious of the high ideals controlling human relationship, and\n	2022-07-22 17:23:59.120947
695	shall be no discrimination in political, economic or social\nrelations because of race, creed, sex, social status or family\norigin.\nPeers and peerage shall not be recognized.\n	2022-07-22 17:23:59.184261
696	we have determined to preserve our security and existence,\ntrusting in the justice and faith of the peace-loving peoples of\nthe world. We desire to occupy an honored place in an\ninternational society striving for the preservation of peace, and\n	2022-07-22 17:23:59.247443
697	CHAPTER III\nRIGHTS AND DUTIES OF THE PEOPLE\nArticle 10. The conditions necessary for being a Japanese\nnational shall be determined by law.\n	2022-07-22 17:23:59.308119
698	the Supreme Court.\nThe Supreme Court may delegate the power to make rules for\ninferior courts to such courts.\nArticle 78. Judges shall not be removed except by public\n	2022-07-22 17:23:59.367125
699	Article 79. The Supreme Court shall consist of a Chief Judge and\nsuch number of judges as may be determined by law; all such\njudges excepting the Chief Judge shall be appointed by the\nCabinet.\n	2022-07-22 17:23:59.428451
700	Representatives, and when no agreement can be reached even\nthrough a joint committee of both Houses, provided for by law, or\nin the case of failure by the House of Councillors to take final\naction within thirty (30) days, the period of recess excluded,\n	2022-07-22 17:23:59.583169
701	witnesses on his behalf at public expense.\nAt all times the accused shall have the assistance of competent\ncounsel who shall, if the accused is unable to secure the same by\nhis own efforts, be assigned to his use by the State.\n	2022-07-22 17:23:59.645449
702	Article 63. The Prime Minister and other Ministers of State may,\nat any time, appear in either House for the purpose of speaking\non bills, regardless of whether they are members of the House or\nnot. They must appear when their presence is required in order to\n	2022-07-22 17:23:59.692243
703	Article 38. No person shall be compelled to testify against\nhimself.\nConfession made under compulsion, torture or threat, or after\nprolonged arrest or detention shall not be admitted in evidence.\n	2022-07-22 17:23:59.743672
704	Article 15. The people have the inalienable right to choose their\npublic officials and to dismiss them.\nAll public officials are servants of the whole community and not\nof any group thereof.\n	2022-07-22 17:23:59.7886
705	Private property may be taken for public use upon just\ncompensation therefor.\nArticle 30. The people shall be liable to taxation as provided by\nlaw.\n	2022-07-22 17:23:59.835496
706	Representatives is dissolved within ten (10) days.\nArticle 70. When there is a vacancy in the post of Prime\nMinister, or upon the first convocation of the Diet after a\ngeneral election of members of the House of Representatives, the\n	2022-07-22 17:23:59.881784
707	choice of domicile, divorce and other matters pertaining to\nmarriage and the family, laws shall be enacted from the\nstandpoint of individual dignity and the essential equality of\nthe sexes.\n	2022-07-22 17:23:59.941751
708	their protection receive ordinary education as provided for by\nlaw. Such compulsory education shall be free.\nArticle 27. All people shall have the right and the obligation to\nwork.\n	2022-07-22 17:24:00.003677
709	chooses.\nArticle 69. If the House of Representatives passes a\nnon-confidence resolution, or rejects a confidence resolution,\nthe Cabinet shall resign en masse, unless the House of\n	2022-07-22 17:24:00.06726
710	prescribe.\nArticle 85. No money shall be expended, nor shall the State\nobligate itself, except as authorized by the Diet.\nArticle 86. The Cabinet shall prepare and submit to the Diet for\n	2022-07-22 17:24:00.132897
711	choice he has made.\nArticle 16. Every person shall have the right of peaceful\npetition for the redress of damage, for the removal of public\nofficials, for the enactment, repeal or amendment of laws,\n	2022-07-22 17:24:00.198118
712	of this Constitution are in question shall always be conducted\npublicly.\nCHAPTER VII\nFINANCE\n	2022-07-22 17:24:00.258272
713	of the House of Representatives after a lapse of ten (10) years,\nand in the same manner thereafter.\nIn cases mentioned in the foregoing paragraph, when the majority\nof the voters favors the dismissal of a judge, he shall be\n	2022-07-22 17:24:00.365924
714	does not interfere with the public welfare.\nFreedom of all persons to move to a foreign country and to divest\nthemselves of their nationality shall be inviolate.\nArticle 23. Academic freedom is guaranteed.\n	2022-07-22 17:24:00.431108
715	determined by law.\nArticle 91. At regular intervals and at least annually the\nCabinet shall report to the Diet and the people on the state of\nnational finances.\n	2022-07-22 17:24:00.492341
716	The provision of the preceding paragraph does not preclude the\nHouse of Representatives from calling for the meeting of a joint\ncommittee of both Houses, provided for by law.\nFailure by the House of Councillors to take final action within\n	2022-07-22 17:24:00.548114
717	appropriated by the Diet in the budget.\nArticle 89. No public money or other property shall be expended\nor appropriated for the use, benefit or maintenance of any\nreligious institution or association, or for any charitable,\n	2022-07-22 17:24:00.606658
718	a resolution thereon.\nArticle 59. A bill becomes a law on passage by both Houses,\nexcept as otherwise provided by the Constitution.\nA bill which is passed by the House of Representatives, and upon\n	2022-07-22 17:24:00.662746
719	and void unless agreed to by the House of Representatives within\na period of ten (10) days after the opening of the next session\nof the Diet.\nArticle 55. Each House shall judge disputes related to\n	2022-07-22 17:24:00.731406
720	public health.\nArticle 26. All people shall have the right to receive an equal\neducation correspondent to their ability, as provided by law.\nAll people shall be obligated to have all boys and girls under\n	2022-07-22 17:24:00.80754
721	shall precede all other business.\nIf the House of Representatives and the House of Councillors\ndisagree and if no agreement can be reached even through a joint\ncommittee of both Houses, provided for by law, or the House of\n	2022-07-22 17:24:00.878492
722	Article 31. No person shall be deprived of life or liberty, nor\nshall any other criminal penalty be imposed, except according to\nprocedure established by law.\nArticle 32. No person shall be denied the right of access to the\n	2022-07-22 17:24:01.07706
723	Article 73. The Cabinet, in addition to other general\nadministrative functions, shall perform the following functions:\nAdminister the law faithfully; conduct affairs of state.\nManage foreign affairs.\n	2022-07-22 17:24:01.280157
724	apprehended, the offense being committed.\nArticle 34. No person shall be arrested or detained without being\nat once informed of the charges against him or without the\nimmediate privilege of counsel; nor shall he be detained without\n	2022-07-22 17:24:01.747087
725	Prepare the budget, and present it to the Diet.\nEnact cabinet orders in order to execute the provisions of this\nConstitution and of the law. However, it cannot include penal\nprovisions in such cabinet orders unless authorized by such law.\n	2022-07-22 17:24:01.822316
726	by the Cabinet from a list of persons nominated by the Supreme\nCourt. All such judges shall hold office for a term of ten (10)\nyears with privilege of reappointment, provided that they shall\nbe retired upon the attainment of the age as fixed by law.\n	2022-07-22 17:24:01.878049
727	religious organization shall receive any privileges from the\nState, nor exercise any political authority.\nNo person shall be compelled to take part in any religious act,\ncelebration, rite or practice.\n	2022-07-22 17:24:01.933522
728	prohibited.\nArticle 19. Freedom of thought and conscience shall not be\nviolated.\nArticle 20. Freedom of religion is guaranteed to all. No\n	2022-07-22 17:24:01.995693
729	The judges of the inferior courts shall receive, at regular\nstated intervals, adequate compensation which shall not be\ndecreased during their terms of office.\nArticle 81. The Supreme Court is the court of last resort with\n	2022-07-22 17:24:02.044412
730	The Cabinet must get subsequent approval of the Diet for all\npayments from the reserve fund.\nArticle 88. All property of the Imperial Household shall belong\nto the State. All expenses of the Imperial Household shall be\n	2022-07-22 17:24:02.108553
731	CHAPTER VIII\nLOCAL SELF-GOVERNMENT\nArticle 92. Regulations concerning organization and operations of\nlocal public entities shall be fixed by law in accordance with\n	2022-07-22 17:24:02.177753
732	issue.\nArticle 57. Deliberation in each House shall be public. However,\na secret meeting may be held where a majority of two-thirds or\nmore of those members present passes a resolution therefor.\n	2022-07-22 17:24:02.232689
733	members of their assemblies, and such other local officials as\nmay be determined by law shall be elected by direct popular vote\nwithin their several communities.\nArticle 94. Local public entities shall have the right to manage\n	2022-07-22 17:24:02.298842
734	Each House shall keep a record of proceedings. This record shall\nbe published and given general circulation, excepting such parts\nof proceedings of secret session as may be deemed to require\nsecrecy.\n	2022-07-22 17:24:02.360184
735	be determined in accordance with law.\nArticle 103. The Ministers of State, members of the House of\nRepresentatives and judges in office on the effective date of\nthis Constitution, and all other public officials who occupy\n	2022-07-22 17:24:02.41707
736	Article 9. Aspiring sincerely to an international peace based on\njustice and order, the Japanese people forever renounce war as a\nsovereign right of the nation and the threat or use of force as\nmeans of settling international disputes.\n	2022-07-22 17:24:02.480137
737	Article 51. Members of both Houses shall not be held liable\noutside the House for speeches, debates or votes cast inside the\nHouse.\nArticle 52. An ordinary session of the Diet shall be convoked\n	2022-07-22 17:24:02.527407
738	Constitution, the election of members of the House of Councillors\nand the procedure for the convocation of the Diet and other\npreparatory procedures necessary for the enforcement of this\nConstitution may be executed before the day prescribed in the\n	2022-07-22 17:24:02.572394
739	Article 47. Electoral districts, method of voting and other\nmatters pertaining to the method of election of members of both\nHouses shall be fixed by law.\nArticle 48. No person shall be permitted to be a member of both\n	2022-07-22 17:24:02.640025
740	officials have the obligation to respect and uphold this\nConstitution.\nCHAPTER XI\nSUPPLEMENTARY PROVISIONS\n	2022-07-22 17:24:02.683656
741	Article 4. The Emperor shall perform only such acts in matters of\nstate as are provided for in this Constitution and he shall not\nhave powers related to government.\nThe Emperor may delegate the performance of his acts in matters\n	2022-07-22 17:24:02.731524
742	documents as provided for by law.\nReceiving foreign ambassadors and ministers.\nPerformance of ceremonial functions.\nArticle 8. No property can be given to, or received by, the\n	2022-07-22 17:24:02.779811
743	majority of the voters of the local public entity concerned,\nobtained in accordance with law.\nCHAPTER IX\nAMENDMENTS\n	2022-07-22 17:24:02.825964
744	We, the Japanese people, pledge our national honor to accomplish\nthese high ideals and purposes with all our resources.\nCHAPTER I\nTHE EMPEROR\n	2022-07-22 17:24:02.875846
745	Article 11. The people shall not be prevented from enjoying any\nof the fundamental human rights. These fundamental human rights\nguaranteed to the people by this Constitution shall be conferred\nupon the people of this and future generations as eternal and\n	2022-07-22 17:24:02.933085
746	practice, and of matters relating to attorneys, the internal\ndiscipline of the courts and the administration of judicial\naffairs.\nPublic procurators shall be subject to the rule-making power of\n	2022-07-22 17:24:02.987664
747	not impaired hereby.\nCHAPTER VI\nJUDICIARY\nArticle 76. The whole judicial power is vested in a Supreme Court\n	2022-07-22 17:24:03.043166
748	Article 66. The Cabinet shall consist of the Prime Minister, who\nshall be its head, and other Ministers of State, as provided for\nby law.\nThe Prime Minister and other Ministers of State must be civilians.\n	2022-07-22 17:24:03.087241
749	The number of the members of each House shall be fixed by law.\nArticle 44. The qualifications of members of both Houses and\ntheir electors shall be fixed by law. However, there shall be no\ndiscrimination because of race, creed, sex, social status, family\n	2022-07-22 17:24:03.135698
750	We, the Japanese people, acting through our duly elected\nrepresentatives in the National Diet, determined that we shall\nsecure for ourselves and our posterity the fruits of peaceful\ncooperation with all nations and the blessings of liberty\n	2022-07-22 17:24:03.190428
751	to the extent that it does not interfere with the public welfare,\nbe the supreme consideration in legislation and in other\ngovernmental affairs.\nArticle 14. All of the people are equal under the law and there\n	2022-07-22 17:24:03.237765
752	give answers or explanations.\nArticle 64. The Diet shall set up an impeachment court from among\nthe members of both Houses for the purpose of trying those judges\nagainst whom removal proceedings have been instituted.\n	2022-07-22 17:24:03.287552
753	CHAPTER IV\nTHE DIET\nArticle 41. The Diet shall be the highest organ of state power,\nand shall be the sole law-making organ of the State.\n	2022-07-22 17:24:03.326659
754	in accordance with the Imperial House Law passed by the Diet.\nArticle 3. The advice and approval of the Cabinet shall be\nrequired for all acts of the Emperor in matters of state, and the\nCabinet shall be responsible therefor.\n	2022-07-22 17:24:03.404103
755	Article 60. The budget must first be submitted to the House of\nRepresentatives.\nUpon consideration of the budget, when the House of Councillors\nmakes a decision different from that of the House of\n	2022-07-22 17:24:03.461021
756	papers and effects against entries, searches and seizures shall\nnot be impaired except upon warrant issued for adequate cause and\nparticularly describing the place to be searched and things to be\nseized, or except as provided by Article 33.\n	2022-07-22 17:24:03.507091
757	Upon demand of one-fifth or more of the members present, votes of\nthe members on any matter shall be recorded in the minutes.\nArticle 58. Each House shall select its own president and other\nofficials.\n	2022-07-22 17:24:03.553925
758	one-third or more of total membership is present.\nAll matters shall be decided, in each House, by a majority of\nthose present, except as elsewhere provided in the Constitution,\nand in case of a tie, the presiding officer shall decide the\n	2022-07-22 17:24:03.600166
759	their property, affairs and administration and to enact their own\nregulations within law.\nArticle 95. A special law, applicable only to one local public\nentity, cannot be enacted by the Diet without the consent of the\n	2022-07-22 17:24:03.650081
760	the principle of local autonomy.\nArticle 93. The local public entities shall establish assemblies\nas their deliberative organs, in accordance with law.\nThe chief executive officers of all local public entities, the\n	2022-07-22 17:24:03.708317
761	its consideration and decision a budget for each fiscal year.\nArticle 87. In order to provide for unforeseen deficiencies in\nthe budget, a reserve fund may be authorized by the Diet to be\nexpended upon the responsibility of the Cabinet.\n	2022-07-22 17:24:03.767583
762	from the State or a public entity, in case he has suffered damage\nthrough illegal act of any public official.\nArticle 18. No person shall be held in bondage of any kind.\nInvoluntary servitude, except as punishment for crime, is\n	2022-07-22 17:24:03.831624
763	power to determine the constitutionality of any law, order,\nregulation or official act.\nArticle 82. Trials shall be conducted and judgment declared\npublicly.\n	2022-07-22 17:24:03.889143
764	adequate cause; and upon demand of any person such cause must be\nimmediately shown in open court in his presence and the presence\nof his counsel.\nArticle 35. The right of all persons to be secure in their homes,\n	2022-07-22 17:24:03.97424
765	Conclude treaties. However, it shall obtain prior or, depending\non circumstances, subsequent approval of the Diet.\nAdminister the civil service, in accordance with standards\nestablished by law.\n	2022-07-22 17:24:04.027399
766	All such judges shall receive, at regular stated intervals,\nadequate compensation which shall not be decreased during their\nterms of office.\nArticle 80. The judges of the inferior courts shall be appointed\n	2022-07-22 17:24:04.085811
767	The State and its organs shall refrain from religious education\nor any other religious activity.\nArticle 21. Freedom of assembly and association as well as\nspeech, press and all other forms of expression are guaranteed.\n	2022-07-22 17:24:04.259557
768	courts.\nArticle 33. No person shall be apprehended except upon warrant\nissued by a competent judicial officer which specifies the\noffense with which the person is charged, unless he is\n	2022-07-22 17:24:04.319549
769	Article 72. The Prime Minister, representing the Cabinet, submits\nbills, reports on general national affairs and foreign relations\nto the Diet and exercises control and supervision over various\nadministrative branches.\n	2022-07-22 17:24:04.374689
770	Article 25. All people shall have the right to maintain the\nminimum standards of wholesome and cultured living.\nIn all spheres of life, the State shall use its endeavors for the\npromotion and extension of social welfare and security, and of\n	2022-07-22 17:24:04.42632
771	Councillors fails to make designation within ten (10) days,\nexclusive of the period of recess, after the House of\nRepresentatives has made designation, the decision of the House\nof Representatives shall be the decision of the Diet.\n	2022-07-22 17:24:04.472657
772	Article 1. The Emperor shall be the symbol of the State and of\nthe unity of the People, deriving his position from the will of\nthe people with whom resides sovereign power.\nArticle 2. The Imperial Throne shall be dynastic and succeeded to\n	2022-07-22 17:24:04.518519
773	sixty (60) days after receipt of a bill passed by the House of\nRepresentatives, time in recess excepted, may be determined by\nthe House of Representatives to constitute a rejection of the\nsaid bill by the House of Councillors.\n	2022-07-22 17:24:04.574268
774	Each search or seizure shall be made upon separate warrant issued\nby a competent judicial officer.\nArticle 36. The infliction of torture by any public officer and\ncruel punishments are absolutely forbidden.\n	2022-07-22 17:24:04.629547
775	Matters relating to impeachment shall be provided by law.\nCHAPTER V\nTHE CABINET\nArticle 65. Executive power shall be vested in the Cabinet.\n	2022-07-22 17:24:04.707709
776	been acquitted, nor shall he be placed in double jeopardy.\nArticle 40. Any person, in case he is acquitted after he has been\narrested or detained, may sue the State for redress as provided\nby law.\n	2022-07-22 17:24:04.764067
777	and in such inferior courts as are established by law.\nNo extraordinary tribunal shall be established, nor shall any\norgan or agency of the Executive be given final judicial power.\nAll judges shall be independent in the exercise of their\n	2022-07-22 17:24:04.814775
778	The Cabinet, in the exercise of executive power, shall be\ncollectively responsible to the Diet.\nArticle 67. The Prime Minister shall be designated from among the\nmembers of the Diet by a resolution of the Diet. This designation\n	2022-07-22 17:24:04.862773
779	Article 42. The Diet shall consist of two Houses, namely the\nHouse of Representatives and the House of Councillors.\nArticle 43. Both Houses shall consist of elected members,\nrepresentative of all the people.\n	2022-07-22 17:24:04.914842
780	throughout this land, and resolved that never again shall we be\nvisited with the horrors of war through the action of government,\ndo proclaim that sovereign power resides with the people and do\nfirmly establish this Constitution. Government is a sacred trust\n	2022-07-22 17:24:04.974768
781	and rights and shall always be responsible for utilizing them for\nthe public welfare.\nArticle 13. All of the people shall be respected as individuals.\nTheir right to life, liberty, and the pursuit of happiness shall,\n	2022-07-22 17:24:05.031253
782	that laws of political morality are universal; and that obedience\nto such laws is incumbent upon all nations who would sustain\ntheir own sovereignty and justify their sovereign relationship\nwith other nations.\n	2022-07-22 17:24:05.091255
783	inviolate rights.\nArticle 12. The freedoms and rights guaranteed to the people by\nthis Constitution shall be maintained by the constant endeavor of\nthe people, who shall refrain from any abuse of these freedoms\n	2022-07-22 17:24:05.14429
784	conscience and shall be bound only by this Constitution and the\nlaws.\nArticle 77. The Supreme Court is vested with the rule-making\npower under which it determines the rules of procedure and of\n	2022-07-22 17:24:05.197192
785	Attestation of general and special amnesty, commutation of\npunishment, reprieve, and restoration of rights.\nAwarding of honors.\nAttestation of instruments of ratification and other diplomatic\n	2022-07-22 17:24:05.250143
786	Article 96. Amendments to this Constitution shall be initiated by\nthe Diet, through a concurring vote of two-thirds or more of all\nthe members of each House and shall thereupon be submitted to the\npeople for ratification, which shall require the affirmative vote\n	2022-07-22 17:24:05.298368
787	The treaties concluded by Japan and established laws of nations\nshall be faithfully observed.\nArticle 99. The Emperor or the Regent as well as Ministers of\nState, members of the Diet, judges, and all other public\n	2022-07-22 17:24:05.359452
788	of state as may be provided by law.\nArticle 5. When, in accordance with the Imperial House Law, a\nRegency is established, the Regent shall perform his acts in\nmatters of state in the Emperors name. In this case, paragraph\n	2022-07-22 17:24:05.41682
789	Article 100. This Constitution shall be enforced as from the day\nwhen the period of six months will have elapsed counting from the\nday of its promulgation.\nThe enactment of laws necessary for the enforcement of this\n	2022-07-22 17:24:05.479151
790	Houses simultaneously.\nArticle 49. Members of both Houses shall receive appropriate\nannual payment from the national treasury in accordance with law.\nArticle 50. Except in cases provided by law, members of both\n	2022-07-22 17:24:05.535872
791	or appointed under the provisions of this Constitution, they\nshall forfeit their positions as a matter of course.\n\n\n	2022-07-22 17:24:05.593722
792	positions corresponding to such positions as are recognized by\nthis Constitution shall not forfeit their positions automatically\non account of the enforcement of this Constitution unless\notherwise specified by law. When, however, successors are elected\n	2022-07-22 17:24:05.646629
793	Imperial House, nor can any gifts be made therefrom, without the\nauthorization of the Diet.\nCHAPTER II\nRENUNCIATION OF WAR\n	2022-07-22 17:24:05.698189
794	Houses shall be exempt from apprehension while the Diet is in\nsession, and any members apprehended before the opening of the\nsession shall be freed during the term of the session upon demand\nof the House.\n	2022-07-22 17:24:05.744297
143	18f11      Repay      debug1        koha       nen        tadarin\n55         Ryoya      dodo          komi307    nharada    tfc\n931        S          dogan         kosei      nick       tomi\nAlby       SN         donburi       kota       nick888    tomo	2021-06-06 14:05:14.361451
795	We'll find out what we're made of\nWhen we are called to help our friends in need\nYou can count on me like one, two, three I'll be there\nAnd I know when I need it, I can count on you like four,\n	2024-05-02 15:12:11.492321
796	I'll rip into those robes and pursue the Dharma\nA Buddhist monk of my own would feel fine\nSelflessness and cessation get you Nirvana\nIt Kurt would beat my Gretsch, I think I'd fly\n	2024-05-02 15:12:18.747463
797	It's a beautiful night We're looking for something\ndumb to do Hey, baby, I think I wanna marry you\nIs it the look in your eyes Or is it this dancing\njuice? Who cares, baby? I think I wanna marry you\n	2024-05-02 15:12:26.272546
798	I'm in love with shape of you. We push and pull like a magnet do.\nAlthough my heart is falling too. I'm in love with your body.\nLast night you were in my room. And now my bed sheets smell like you.\nEvery day discovering something brand new. I'm in love with your body.\n	2024-05-02 15:12:33.670779
799	Suddenly I've got an all female crew\nThe news talked, it made headlines across the world\nSuddenly it stopped no one saying, "You can't" or "You won't"\nOr "You know you're not anything 'cause you're a girl"\n	2024-05-02 15:12:41.462452
800	Baby you light up my world like nobody else.\nThe way that you flip your hair gets me overwhelmed.\nBut when you smile at the ground it ain't hard to tell.\nYou don't know, oh oh. You don't know you're beautiful.\n	2024-05-03 17:09:15.586289
801	We'll find out what we're made of\nWhen we are called to help our friends in need\nYou can count on me like one, two, three I'll be there\nAnd I know when I need it, I can count on you like four,\n	2024-05-03 17:19:13.45293
802	I'll rip into those robes and pursue the Dharma\nA Buddhist monk of my own would feel fine\nSelflessness and cessation get you Nirvana\nIt Kurt would beat my Gretsch, I think I'd fly\n	2024-05-03 17:19:21.090106
803	It's a beautiful night We're looking for something\ndumb to do Hey, baby, I think I wanna marry you\nIs it the look in your eyes Or is it this dancing\njuice? Who cares, baby? I think I wanna marry you\n	2024-05-03 17:19:28.63496
804	I'm in love with shape of you. We push and pull like a magnet do.\nAlthough my heart is falling too. I'm in love with your body.\nLast night you were in my room. And now my bed sheets smell like you.\nEvery day discovering something brand new. I'm in love with your body.\n	2024-05-03 17:19:36.081378
805	Suddenly I've got an all female crew\nThe news talked, it made headlines across the world\nSuddenly it stopped no one saying, "You can't" or "You won't"\nOr "You know you're not anything 'cause you're a girl"\n	2024-05-03 17:19:42.818699
806	Baby you light up my world like nobody else.\nThe way that you flip your hair gets me overwhelmed.\nBut when you smile at the ground it ain't hard to tell.\nYou don't know, oh oh. You don't know you're beautiful.\n	2024-05-03 17:19:49.82656
\.


--
-- Data for Name: ragtime_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ragtime_migrations (id, created_at) FROM stdin;
\.


--
-- Data for Name: restarts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.restarts (id, login, created_at) FROM stdin;
\.


--
-- Data for Name: results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.results (id, login, pt, "timestamp") FROM stdin;
683634	hkimura	92	2025-09-01 12:30:45.820482
683635	hkimura	132	2025-09-01 12:31:31.176014
683636	hkimura	91	2025-09-01 12:32:30.83543
683637	hkimura	118	2025-09-01 12:33:34.778026
683638	hkimura	96	2025-09-02 08:50:36.220369
683639	hkimura	95	2025-09-02 08:51:38.66652
683640	hkimura	32	2025-09-02 08:52:43.933354
683641	hkimura	109	2025-09-02 08:53:33.683721
683642	hkimura	54	2025-09-02 08:54:46.020874
683643	hkimura	100	2025-09-02 08:56:52.919301
683644	hkimura	79	2025-09-02 15:45:25.625864
683645	hkimura	63	2025-09-02 15:46:44.477497
683646	hkimura	100	2025-09-02 15:47:41.612314
683647	hkimura	72	2025-09-02 15:48:55.142314
683648	hkimura	86	2025-09-02 15:50:55.956361
683649	hkimura	83	2025-09-02 15:51:51.708617
683650	hkimura	11	2025-09-02 15:52:44.539054
683651	hkimura	88	2025-09-02 15:54:54.328373
683652	haru-714	74	2025-09-02 23:53:06.49871
683653	hkimura	61	2025-09-03 07:51:11.398986
683654	hkimura	117	2025-09-03 07:51:49.516197
683655	hkimura	82	2025-09-03 07:53:09.293491
683656	hkimura	85	2025-09-03 07:54:15.575753
683657	gira	92	2025-09-03 11:56:21.22121
683658	gira	93	2025-09-03 11:57:25.785308
683659	gira	73	2025-09-03 11:58:27.906836
683660	gira	84	2025-09-03 11:59:29.016895
683661	gira	52	2025-09-03 12:00:31.041007
683662	waku1waku2	65	2025-09-03 12:15:04.856149
683663	gira	102	2025-09-03 13:15:42.858136
683664	gira	83	2025-09-03 13:16:44.893936
683665	gira	101	2025-09-03 13:17:34.677176
683666	gira	86	2025-09-03 13:18:36.706798
683667	gira	96	2025-09-03 13:19:36.216311
683668	imora1107	62	2025-09-03 13:43:33.701619
683669	imora1107	59	2025-09-03 13:44:43.248592
683670	imora1107	79	2025-09-03 13:45:46.997518
683671	imora1107	93	2025-09-03 13:46:49.733908
683672	imora1107	139	2025-09-03 13:47:25.299086
683673	imora1107	83	2025-09-03 13:48:28.586068
683674	kou-1603	95	2025-09-03 16:30:33.911305
683675	kou-1603	63	2025-09-03 16:38:09.751794
683676	kou-1603	83	2025-09-03 16:39:21.015061
683677	gira	130	2025-09-03 16:49:43.907812
683678	gira	73	2025-09-03 16:50:45.74908
683679	gira	75	2025-09-03 16:51:47.865862
683680	haru-714	90	2025-09-04 13:11:15.379766
683681	haru-714	15	2025-09-04 19:07:36.998907
683682	haru-714	85	2025-09-04 19:08:50.19031
683683	hkimura	84	2025-09-04 21:35:24.859056
683684	hkimura	75	2025-09-04 21:36:31.771922
683685	hkimura	75	2025-09-04 21:39:30.399144
683686	hkimura	88	2025-09-04 21:40:13.728669
683687	hkimura	93	2025-09-04 21:41:12.640555
683688	hkimura	91	2025-09-04 21:42:38.823974
683689	hkimura	90	2025-09-04 21:43:40.260482
683690	hkimura	95	2025-09-04 21:44:57.678213
683691	hkimura	49	2025-09-04 21:46:50.03413
683692	hkimura	52	2025-09-04 21:47:58.782857
683693	hkimura	89	2025-09-04 21:49:08.933967
683694	haru-714	57	2025-09-04 23:27:30.582448
683695	haru-714	64	2025-09-04 23:28:38.45196
683696	haru-714	53	2025-09-04 23:29:45.402962
683697	hkimura	119	2025-09-05 08:51:21.394237
683698	hkimura	121	2025-09-05 08:52:15.933694
683699	hkimura	57	2025-09-05 08:53:31.064019
683700	hkimura	129	2025-09-05 08:54:20.302688
683701	gira	90	2025-09-05 10:33:39.804199
683702	gira	85	2025-09-05 10:34:42.073134
683703	gira	115	2025-09-05 10:35:39.417164
683704	gira	56	2025-09-05 10:36:41.673572
683705	gira	95	2025-09-05 10:37:37.550597
683706	gira	33	2025-09-05 10:41:28.343443
683707	gira	35	2025-09-05 10:42:30.293752
683708	gira	92	2025-09-05 10:43:33.55924
683709	gira	107	2025-09-05 10:44:08.802709
683710	gira	85	2025-09-05 10:44:56.774811
683711	gira	111	2025-09-05 10:45:58.393097
683712	gira	47	2025-09-05 10:47:02.886994
683713	gira	105	2025-09-05 10:47:54.536302
683714	gira	74	2025-09-05 10:48:52.535064
683715	miyu_0913	53	2025-09-05 23:45:36.038298
683716	miyu_0913	46	2025-09-05 23:46:38.109461
683717	miyu_0913	40	2025-09-05 23:48:27.020692
683718	miyu_0913	49	2025-09-05 23:50:17.020586
683719	miyu_0913	39	2025-09-05 23:51:22.049268
683720	miyu_0913	50	2025-09-05 23:53:49.836326
683721	miyu_0913	0	2025-09-05 23:56:50.628977
683722	miyu_0913	55	2025-09-06 00:03:54.45343
683723	miyu_0913	31	2025-09-06 00:05:19.291453
683724	hkimura	132	2025-09-06 09:20:43.619777
683725	hkimura	133	2025-09-06 09:21:27.599822
683726	hkimura	130	2025-09-06 09:22:17.340423
683727	hkimura	106	2025-09-06 09:23:05.97864
683728	hkimura	135	2025-09-06 09:23:49.859728
683729	hkimura	90	2025-09-06 09:24:57.659702
683730	haru-714	36	2025-09-07 01:34:45.954716
683731	haru-714	127	2025-09-07 01:35:46.200479
683732	hkimura	89	2025-09-07 08:23:29.088494
683733	hkimura	66	2025-09-07 08:24:32.257703
683734	hkimura	83	2025-09-07 08:25:29.768065
683735	hkimura	130	2025-09-07 08:26:15.556876
683736	hkimura	98	2025-09-07 08:27:02.687416
683737	hkimura	90	2025-09-07 08:28:09.994992
683738	tyanpo-n88	121	2025-09-07 14:46:23.614914
683739	tyanpo-n88	86	2025-09-07 14:47:27.254618
683740	gira	108	2025-09-08 15:33:12.984758
683741	gira	74	2025-09-08 15:34:16.752335
683742	gira	67	2025-09-08 15:35:13.271466
683743	gira	96	2025-09-08 15:36:23.37039
683744	gira	96	2025-09-08 15:37:24.115796
683745	gira	85	2025-09-08 15:38:23.822759
683746	gira	126	2025-09-08 15:39:15.268998
683747	gira	100	2025-09-09 15:35:29.268212
683748	gira	69	2025-09-09 15:36:31.555511
683749	gira	116	2025-09-09 15:37:28.506846
683750	gira	113	2025-09-09 15:38:29.027141
683751	gira	92	2025-09-09 15:39:24.090879
683752	hkimura	128	2025-09-11 07:44:23.888979
683753	hkimura	99	2025-09-11 07:45:21.944215
683754	hkimura	122	2025-09-11 07:46:25.801832
683755	hkimura	99	2025-09-11 07:47:24.591106
683756	gira	113	2025-09-11 13:37:28.410598
683757	gira	116	2025-09-11 13:38:24.3638
683758	gira	97	2025-09-11 13:39:22.03853
683759	gira	33	2025-09-11 13:40:24.306714
683760	hkimura	40	2025-09-12 08:32:40.612113
683761	hkimura	114	2025-09-12 08:33:39.985245
683762	hkimura	121	2025-09-12 08:34:35.490893
683763	lions-fan1	59	2025-09-14 22:26:33.806056
683764	lions-fan1	73	2025-09-14 22:27:56.844146
683765	lions-fan1	103	2025-09-14 22:29:05.326176
683766	lions-fan1	66	2025-09-14 22:30:06.247129
683767	lions-fan1	122	2025-09-14 22:30:46.137438
683768	lions-fan1	113	2025-09-14 22:32:02.769553
683769	lions-fan1	74	2025-09-14 22:33:05.02513
683770	lions-fan1	104	2025-09-14 22:34:06.642542
683771	lions-fan1	91	2025-09-14 22:35:31.044703
683772	lions-fan1	106	2025-09-14 22:36:32.921522
683773	lions-fan1	92	2025-09-14 22:37:39.35611
683774	lions-fan1	76	2025-09-14 22:38:46.971134
683775	lions-fan1	115	2025-09-14 22:39:58.84558
683776	lions-fan1	66	2025-09-14 22:41:10.205463
683777	lions-fan1	74	2025-09-14 22:50:41.438476
683778	lions-fan1	88	2025-09-14 22:52:01.310157
683779	lions-fan1	89	2025-09-14 22:53:03.271203
683780	lions-fan1	95	2025-09-14 22:53:59.648643
683781	lions-fan1	78	2025-09-14 22:55:01.76806
683782	lions-fan1	36	2025-09-14 22:56:02.993865
683783	lions-fan1	66	2025-09-14 22:57:22.15989
683784	waku1waku2	95	2025-09-14 22:57:41.730425
683785	waku1waku2	64	2025-09-14 22:58:47.59822
683786	lions-fan1	96	2025-09-14 22:59:04.467111
683787	lions-fan1	123	2025-09-14 22:59:54.236897
683788	lions-fan1	68	2025-09-14 23:01:21.428157
683789	lions-fan1	70	2025-09-14 23:02:30.783931
683790	lions-fan1	77	2025-09-14 23:03:32.498693
683791	lions-fan1	71	2025-09-14 23:04:57.185423
683792	lions-fan1	75	2025-09-14 23:06:05.22848
683793	lions-fan1	78	2025-09-14 23:07:06.373012
683794	lions-fan1	115	2025-09-14 23:09:19.128001
683795	lions-fan1	79	2025-09-14 23:10:44.201712
683796	lions-fan1	86	2025-09-14 23:12:18.246417
683797	lions-fan1	67	2025-09-14 23:13:44.709187
683798	lions-fan1	67	2025-09-14 23:14:46.576309
683799	gira	69	2025-09-16 14:34:05.081172
683800	gira	41	2025-09-16 15:22:23.172711
683801	tyankonabe	42	2025-09-16 19:32:35.358125
683802	tyankonabe	36	2025-09-16 19:33:36.438354
683803	tyankonabe	29	2025-09-16 19:34:37.330039
683804	gira	40	2025-09-17 11:01:45.26082
683805	gira	118	2025-09-17 11:02:41.228474
683806	gira	79	2025-09-17 11:03:40.684104
683807	gira	72	2025-09-17 11:04:43.276024
683808	gira	115	2025-09-17 11:05:52.812204
683809	gira	59	2025-09-17 11:06:55.042597
683810	gira	51	2025-09-17 11:07:57.178304
683811	gira	89	2025-09-17 11:08:59.338105
683812	tya-han_04	57	2025-09-18 13:39:39.257379
683813	tya-han_04	56	2025-09-18 13:40:41.699224
683814	tya-han_04	95	2025-09-18 13:41:35.842643
683815	tya-han_04	76	2025-09-18 13:42:38.643017
683816	tya-han_04	57	2025-09-18 13:43:39.59701
683817	tya-han_04	60	2025-09-18 13:44:41.75136
683818	tya-han_04	34	2025-09-18 13:45:43.078263
683819	tya-han_04	69	2025-09-18 13:46:45.205685
683820	tya-han_04	45	2025-09-18 13:47:49.406461
683821	otsukisama	62	2025-09-19 23:18:25.718307
683822	otsukisama	67	2025-09-19 23:19:36.611392
683823	tya-han_04	50	2025-09-22 17:17:54.081162
683824	tya-han_04	123	2025-09-22 17:18:44.485337
683825	tya-han_04	30	2025-09-22 17:19:46.810793
683826	tya-han_04	42	2025-09-22 17:20:47.982954
683827	tya-han_04	80	2025-09-22 17:21:50.106336
683828	tya-han_04	52	2025-09-22 17:22:53.098811
683829	tya-han_04	44	2025-09-22 17:23:57.938619
683830	tya-han_04	76	2025-09-22 17:25:00.716746
683831	tya-han_04	65	2025-09-22 17:26:02.690155
683832	tya-han_04	82	2025-09-22 17:27:02.612902
683833	tya-han_04	70	2025-09-22 17:28:05.222632
683834	tya-han_04	75	2025-09-22 17:29:07.784334
683835	tya-han_04	54	2025-09-22 17:30:09.91393
683836	tya-han_04	78	2025-09-22 17:31:12.104311
683837	hkimura	108	2025-09-24 14:23:28.284507
683838	hkimura	82	2025-09-24 14:24:25.469827
683839	pantsman	70	2025-09-24 16:04:28.008426
683840	pantsman	81	2025-09-24 16:05:24.251681
683841	pantsman	68	2025-09-24 16:05:54.193147
683842	pantsman	44	2025-09-24 16:06:56.538105
683843	pantsman	81	2025-09-24 16:07:43.071065
683844	pantsman	55	2025-09-24 16:08:44.828106
683845	pantsman	84	2025-09-24 16:09:30.503777
683846	pantsman	66	2025-09-24 16:10:26.961193
683847	pantsman	55	2025-09-24 16:11:33.007051
683848	pantsman	79	2025-09-24 16:13:07.272144
683849	pantsman	62	2025-09-24 16:14:11.273174
683850	tue2	80	2025-09-24 19:15:40.247493
683851	tue2	75	2025-09-24 19:17:24.456336
683852	pantsman	69	2025-09-25 10:33:12.823768
683853	pantsman	57	2025-09-25 10:34:25.704202
683854	pantsman	0	2025-09-25 10:34:47.655337
683855	hkimura	89	2025-09-25 13:25:23.618104
683856	hkimura	98	2025-09-25 13:37:13.166321
683857	hkimura	104	2025-09-25 13:38:19.960505
683858	taiga228	58	2025-09-25 22:11:31.396695
683859	taiga228	58	2025-09-25 22:13:36.628541
683860	gira	35	2025-09-26 10:07:10.252513
683861	gira	101	2025-09-26 10:08:00.833536
683862	gira	136	2025-09-26 10:08:37.297768
683863	gira	90	2025-09-26 10:09:29.544436
683864	gira	123	2025-09-26 10:25:26.043524
683865	gira	57	2025-09-26 10:26:27.632376
683866	gira	115	2025-09-26 11:13:09.053392
683867	gira	85	2025-09-26 11:14:09.573789
683868	hitomi0413	36	2025-09-26 14:58:46.206877
683869	hitomi0413	56	2025-09-26 14:59:49.955004
683870	hitomi0413	94	2025-09-26 15:00:51.306491
683871	hitomi0413	41	2025-09-26 15:01:54.053108
683872	hitomi0413	54	2025-09-26 16:05:49.323944
683873	hitomi0413	47	2025-09-26 16:06:51.642748
683874	hitomi0413	45	2025-09-26 16:07:53.291157
683875	hitomi0413	77	2025-09-26 16:08:55.626562
683876	hitomi0413	33	2025-09-26 16:10:26.558005
683877	hitomi0413	59	2025-09-26 16:11:56.567071
683878	hitomi0413	68	2025-09-26 16:13:09.884694
683879	hitomi0413	72	2025-09-26 16:14:13.02244
683880	hitomi0413	54	2025-09-26 16:15:17.347262
683881	hitomi0413	29	2025-09-26 16:16:20.731369
683882	hitomi0413	82	2025-09-26 16:17:23.283807
683883	hkimura	84	2025-09-28 19:20:56.828056
683884	hkimura	54	2025-09-29 10:41:37.477657
683885	gira	82	2025-09-29 11:19:06.40286
683886	gira	83	2025-09-29 11:19:50.822667
683887	kyama10_	26	2025-09-30 15:11:31.499783
683888	lions-fan1	64	2025-10-01 12:20:59.590969
683889	lions-fan1	123	2025-10-01 12:21:49.385258
683890	lions-fan1	69	2025-10-01 12:22:50.637023
683891	tyankonabe	39	2025-10-01 13:16:43.759605
683892	kfc055	35	2025-10-01 13:55:32.310951
683893	kfc055	0	2025-10-01 13:56:34.677919
683894	kfc055	63	2025-10-01 13:57:42.487073
683895	kfc055	56	2025-10-01 13:58:43.822996
683896	lions-fan1	71	2025-10-01 14:04:20.461738
683897	lions-fan1	111	2025-10-01 14:05:04.776571
683898	lions-fan1	61	2025-10-01 14:06:21.804554
683899	lions-fan1	82	2025-10-01 14:07:44.963386
683900	lions-fan1	98	2025-10-01 14:08:33.6905
683901	lions-fan1	143	2025-10-01 14:12:30.869807
683902	lions-fan1	111	2025-10-01 14:13:32.291521
683903	lions-fan1	64	2025-10-01 14:15:00.475589
683904	lions-fan1	57	2025-10-01 14:16:01.496987
683905	lions-fan1	87	2025-10-01 14:17:41.304198
683906	lions-fan1	125	2025-10-01 14:18:28.115774
683907	lions-fan1	49	2025-10-01 14:19:34.444334
683908	lions-fan1	88	2025-10-01 14:20:35.16118
683909	kiyodai	35	2025-10-01 16:14:39.892181
683910	lions-fan1	85	2025-10-01 16:15:16.250513
683911	lions-fan1	80	2025-10-01 16:16:24.561371
683912	lions-fan1	65	2025-10-01 16:19:12.034221
683913	lions-fan1	92	2025-10-01 22:34:39.62301
683914	lions-fan1	64	2025-10-01 22:35:43.809414
683915	lions-fan1	117	2025-10-01 22:36:23.424168
683916	lions-fan1	120	2025-10-01 22:37:15.591058
683917	lions-fan1	76	2025-10-01 22:38:53.117019
683918	tya-han_04	35	2025-10-01 23:07:29.137356
683919	tya-han_04	64	2025-10-01 23:08:30.759469
683920	tya-han_04	25	2025-10-01 23:09:32.979436
683921	tya-han_04	64	2025-10-01 23:10:34.935649
683922	tya-han_04	53	2025-10-01 23:11:45.042673
683923	tya-han_04	56	2025-10-01 23:12:46.969376
683924	tya-han_04	61	2025-10-01 23:13:48.889097
683925	tya-han_04	79	2025-10-01 23:14:50.981392
683926	tya-han_04	78	2025-10-01 23:15:52.396329
683927	tya-han_04	35	2025-10-01 23:16:54.117793
683928	tya-han_04	37	2025-10-01 23:17:58.522402
683929	waku1waku2	47	2025-10-01 23:23:59.886647
683930	waku1waku2	62	2025-10-01 23:25:01.755228
683931	waku1waku2	60	2025-10-01 23:26:05.970722
683932	lions-fan1	57	2025-10-02 10:05:34.493988
683933	lions-fan1	54	2025-10-02 10:07:02.66127
683934	lions-fan1	86	2025-10-02 10:08:23.124092
683935	lions-fan1	52	2025-10-02 13:23:40.031889
683936	waku1waku2	89	2025-10-02 13:23:59.43947
683937	lions-fan1	61	2025-10-02 13:24:55.269596
683938	waku1waku2	61	2025-10-02 13:25:02.842456
683939	lions-fan1	63	2025-10-02 13:27:01.863677
683940	imora1107	87	2025-10-02 14:52:58.053021
683941	imora1107	88	2025-10-02 14:53:50.431362
683942	imora1107	72	2025-10-02 14:54:52.625404
683943	imora1107	42	2025-10-02 14:55:54.646731
683944	kiyodai	125	2025-10-02 14:56:38.531277
683945	kiyodai	69	2025-10-02 14:57:40.70991
683946	kiyodai	41	2025-10-02 14:58:45.943283
683947	kiyodai	52	2025-10-02 14:59:48.458735
683948	kiyodai	53	2025-10-02 15:24:41.402651
683949	kiyodai	51	2025-10-02 15:25:42.334406
683950	kiyodai	52	2025-10-02 15:26:44.457667
683951	kiyodai	39	2025-10-02 15:28:00.771637
683952	patinca-nu	54	2025-10-02 15:47:53.455023
683953	patinca-nu	47	2025-10-02 15:55:43.313504
683954	lions-fan1	71	2025-10-02 16:07:11.097884
683955	lions-fan1	82	2025-10-02 16:08:51.650716
683956	lions-fan1	70	2025-10-02 16:10:03.737636
683957	tya-han_04	38	2025-10-02 18:35:09.636669
683958	tya-han_04	62	2025-10-02 18:36:10.81123
683959	tya-han_04	62	2025-10-02 18:37:13.6854
683960	tya-han_04	54	2025-10-02 18:38:15.413661
683961	tya-han_04	68	2025-10-02 18:39:17.083881
683962	tya-han_04	99	2025-10-02 18:40:13.128184
683963	tya-han_04	62	2025-10-02 18:41:14.503118
683964	tya-han_04	37	2025-10-02 18:42:16.490252
683965	tya-han_04	65	2025-10-02 18:43:21.563607
683966	tya-han_04	128	2025-10-02 18:44:07.901991
683967	tya-han_04	129	2025-10-02 18:44:51.663169
683968	pantsman	93	2025-10-02 21:49:16.884542
683969	pantsman	57	2025-10-02 21:50:19.705147
683970	lions-fan1	97	2025-10-03 08:37:50.080379
683971	lions-fan1	72	2025-10-03 08:39:00.381802
683972	lions-fan1	69	2025-10-03 08:40:34.726346
683973	lions-fan1	84	2025-10-03 09:29:38.369207
683974	lions-fan1	79	2025-10-03 09:30:46.162579
683975	lions-fan1	113	2025-10-03 09:31:22.668539
683976	lions-fan1	89	2025-10-03 09:32:16.261829
683977	lions-fan1	95	2025-10-03 09:33:14.228094
683978	lions-fan1	63	2025-10-03 09:34:47.897979
683979	kyama10_	85	2025-10-03 12:38:20.448756
683980	kyama10_	41	2025-10-03 12:39:23.478752
683981	kyama10_	61	2025-10-03 12:40:25.739719
683982	kyama10_	44	2025-10-03 12:41:27.662122
683983	lions-fan1	79	2025-10-03 13:24:31.620804
683984	ri8_hoon-	0	2025-10-03 13:49:19.557212
683985	yes_eo080	110	2025-10-03 13:49:24.21292
683986	ri8_hoon-	102	2025-10-03 13:50:31.602487
683987	yes_eo080	64	2025-10-03 13:50:52.094613
683988	ri8_hoon-	4	2025-10-03 13:51:36.910503
683989	ri8_hoon-	74	2025-10-03 13:52:40.435332
683990	taiga228	71	2025-10-04 11:05:47.569737
683991	taiga228	55	2025-10-04 11:06:54.495178
683992	daisuke	70	2025-10-05 14:27:49.055747
683993	daisuke	114	2025-10-05 14:28:30.535208
683994	daisuke	83	2025-10-05 14:29:32.099922
683995	daisuke	117	2025-10-05 14:30:29.439579
683996	daisuke	91	2025-10-05 14:31:22.951061
683997	daisuke	63	2025-10-05 14:32:25.371343
683998	daisuke	130	2025-10-05 14:33:07.25423
683999	daisuke	78	2025-10-05 14:34:09.077238
684000	daisuke	26	2025-10-05 14:35:11.03719
684001	lions-fan1	72	2025-10-05 21:43:55.895557
684002	lions-fan1	61	2025-10-05 21:45:14.534369
684003	lions-fan1	96	2025-10-05 21:46:19.385463
684004	haruto1234	128	2025-10-06 15:07:56.793124
684005	gira	55	2025-10-06 17:00:08.216774
684006	gira	74	2025-10-06 17:01:01.663383
684007	gira	84	2025-10-06 17:02:03.735095
684008	lions-fan1	63	2025-10-06 21:22:23.754306
684009	lions-fan1	93	2025-10-06 21:23:32.725834
684010	hina	21	2025-10-06 23:01:11.496498
684011	hina	60	2025-10-06 23:02:13.490823
684012	hina	49	2025-10-06 23:03:36.264492
684013	fuuta_s	46	2025-10-07 10:20:33.301123
684014	fuuta_s	50	2025-10-07 10:21:54.491786
684015	fuuta_s	69	2025-10-07 10:23:05.053646
684016	lions-fan1	150	2025-10-07 10:40:10.497993
684017	imora1107	91	2025-10-07 10:40:56.741399
684018	hibiki-118	36	2025-10-07 10:40:56.941593
684019	tyankonabe	37	2025-10-07 10:40:57.320307
684020	aritomo	39	2025-10-07 10:40:58.520371
684021	yukiflcx	65	2025-10-07 10:41:00.601065
684022	jo_07-18	93	2025-10-07 10:41:03.902571
684023	kaxejn1	54	2025-10-07 10:41:05.13433
684024	lions-fan1	24	2025-10-07 10:41:18.254883
684025	yuudai1201	87	2025-10-07 10:41:18.340712
684026	haru-714	68	2025-10-07 10:41:21.393527
684027	patinca-nu	30	2025-10-07 10:41:29.779559
684028	papico181	73	2025-10-07 10:41:33.019933
684029	kfc055	44	2025-10-07 10:41:34.194279
684030	yes_eo080	75	2025-10-07 10:41:38.170998
684031	musiko	52	2025-10-07 10:41:38.346263
684032	inu255-12	36	2025-10-07 10:41:41.515848
684033	kiyodai	66	2025-10-07 10:41:45.368847
684034	yukiflcx	127	2025-10-07 10:41:50.435688
684035	tyankonabe	48	2025-10-07 10:42:05.24009
684036	jo_07-18	51	2025-10-07 10:42:09.072239
684037	posting	124	2025-10-07 10:42:16.741428
684038	imora1107	116	2025-10-07 10:42:24.809211
684039	patinca-nu	16	2025-10-07 10:42:32.618557
684040	lions-fan1	93	2025-10-07 10:42:34.59308
684041	inu255-12	42	2025-10-07 10:42:51.653657
684042	kiyodai	53	2025-10-07 10:42:51.973469
684043	jo_07-18	106	2025-10-07 10:42:54.371198
684044	musiko	46	2025-10-07 10:42:55.152233
684045	haruuu4	15	2025-10-07 10:43:07.31946
684046	tyankonabe	56	2025-10-07 10:43:09.018834
684047	imora1107	129	2025-10-07 10:43:09.802339
684048	posting	73	2025-10-07 10:43:23.275051
684049	kiyodai	0	2025-10-07 10:43:24.29157
684050	patinca-nu	44	2025-10-07 10:43:38.761796
684051	kfc055	43	2025-10-07 10:43:41.600882
684052	tujiri_01	63	2025-10-07 10:43:55.522589
684053	jo_07-18	39	2025-10-07 10:43:56.78728
684054	aritomo	5	2025-10-07 10:44:00.749686
684055	musiko	54	2025-10-07 10:44:01.79486
684056	haruuu4	47	2025-10-07 10:44:10.41781
684057	tyankonabe	57	2025-10-07 10:44:13.449121
684058	posting	122	2025-10-07 10:44:28.811004
684059	kiyodai	55	2025-10-07 10:44:30.198497
684060	hibiki-118	67	2025-10-07 10:44:47.564187
684061	kfc055	23	2025-10-07 10:44:50.434641
684062	tujiri_01	79	2025-10-07 10:44:59.525578
684063	musiko	67	2025-10-07 10:45:07.661832
684064	tyankonabe	99	2025-10-07 10:45:08.333712
684065	aritomo	41	2025-10-07 10:45:24.286258
684066	posting	118	2025-10-07 10:45:30.170313
684067	posting	146	2025-10-07 10:46:07.218211
684068	tujiri_01	71	2025-10-07 10:46:09.422749
684070	tyankonabe	69	2025-10-07 10:46:11.671128
684071	musiko	61	2025-10-07 10:46:12.495224
684072	jo_07-18	45	2025-10-07 10:46:12.664827
684073	haruuu4	26	2025-10-07 10:47:03.680585
684074	musiko	122	2025-10-07 10:47:07.758719
684075	tyankonabe	48	2025-10-07 10:47:18.359109
684076	tujiri_01	58	2025-10-07 10:47:26.792067
685300	okiku_0408	92	2025-10-10 22:14:34.720718
685301	okiku_0408	107	2025-10-10 22:15:15.285776
685302	usshi-	45	2025-10-10 22:29:18.322942
685303	usshi-	53	2025-10-10 22:30:22.349631
685304	usshi-	119	2025-10-10 22:31:16.944521
685305	usshi-	55	2025-10-10 22:32:20.434677
685306	patinca-nu	43	2025-10-10 22:33:01.596022
685307	usshi-	63	2025-10-10 22:33:23.706515
685308	patinca-nu	52	2025-10-10 22:34:07.273264
685310	patinca-nu	101	2025-10-10 22:34:57.57785
685312	patinca-nu	36	2025-10-10 22:36:00.683503
685313	usshi-	70	2025-10-10 22:36:45.295401
685314	patinca-nu	13	2025-10-10 22:37:03.516044
685319	patinca-nu	40	2025-10-10 22:40:44.934649
685321	mikyu397	62	2025-10-10 22:51:59.889032
685322	mikyu397	0	2025-10-10 22:52:41.151132
685323	mikyu397	52	2025-10-10 22:54:43.654735
685324	mikyu397	61	2025-10-10 22:55:48.458236
685325	mikyu397	51	2025-10-10 22:56:49.971802
685326	mikyu397	127	2025-10-10 22:57:49.908429
685327	mikyu397	42	2025-10-10 22:58:52.794152
685328	mikyu397	51	2025-10-10 23:00:02.361633
685329	mikyu397	61	2025-10-10 23:01:09.491891
685330	mikyu397	58	2025-10-10 23:02:12.94991
685344	waku1waku2	70	2025-10-10 23:33:39.618439
685345	kfc055	29	2025-10-10 23:34:01.274311
685347	kfc055	29	2025-10-10 23:35:02.815267
685348	waku1waku2	86	2025-10-10 23:35:44.902598
685349	kfc055	88	2025-10-10 23:36:14.528133
685350	waku1waku2	104	2025-10-10 23:36:33.332668
685355	kfc055	20	2025-10-10 23:39:19.156461
685356	waku1waku2	68	2025-10-10 23:39:46.254414
685361	waku1waku2	72	2025-10-10 23:43:32.881654
685362	waku1waku2	90	2025-10-10 23:44:28.647193
685363	waku1waku2	110	2025-10-10 23:45:11.420903
685364	waku1waku2	113	2025-10-10 23:46:14.407049
685365	waku1waku2	92	2025-10-10 23:47:15.558356
685366	waku1waku2	80	2025-10-10 23:48:17.944507
685367	waku1waku2	60	2025-10-10 23:49:19.692097
685368	waku1waku2	71	2025-10-10 23:50:34.955504
685369	yes_eo080	81	2025-10-10 23:51:24.399457
685370	waku1waku2	68	2025-10-10 23:51:38.503756
685371	yes_eo080	59	2025-10-10 23:52:28.166332
685372	waku1waku2	66	2025-10-10 23:52:43.684033
685373	yes_eo080	122	2025-10-10 23:53:24.970837
685374	waku1waku2	80	2025-10-10 23:53:45.644766
685375	yes_eo080	69	2025-10-10 23:54:27.388723
685376	waku1waku2	82	2025-10-10 23:55:08.801649
685377	yes_eo080	63	2025-10-10 23:55:28.920396
685378	waku1waku2	80	2025-10-10 23:56:07.492119
685379	waku1waku2	106	2025-10-10 23:56:55.354137
685380	waku1waku2	76	2025-10-10 23:58:47.524301
685381	waku1waku2	97	2025-10-10 23:59:38.989381
685383	yukiflcx	88	2025-10-11 01:10:08.810343
685384	yukiflcx	61	2025-10-11 01:11:11.666168
685385	yukiflcx	68	2025-10-11 01:12:14.561098
685388	yukiflcx	116	2025-10-11 01:15:29.164665
685389	yukiflcx	68	2025-10-11 01:16:31.863125
685390	yukiflcx	84	2025-10-11 01:17:31.705309
685391	yukiflcx	112	2025-10-11 01:18:32.580331
685392	yukiflcx	76	2025-10-11 01:19:35.478688
685393	yukiflcx	52	2025-10-11 01:20:38.390524
685394	yukiflcx	59	2025-10-11 01:22:43.881852
685395	yukiflcx	87	2025-10-11 01:23:44.605373
685396	yukiflcx	85	2025-10-11 01:24:45.718706
685397	yukiflcx	75	2025-10-11 01:25:48.338382
685398	yukiflcx	85	2025-10-11 01:26:51.402067
685399	yukiflcx	70	2025-10-11 01:28:17.978801
685400	yukiflcx	68	2025-10-11 01:29:21.401587
685401	yukiflcx	50	2025-10-11 01:30:23.845368
685403	shudo-220_	35	2025-10-11 09:49:16.082289
685404	shudo-220_	67	2025-10-11 09:50:19.109187
685405	shudo-220_	62	2025-10-11 09:51:22.379659
685406	shudo-220_	64	2025-10-11 09:52:55.191776
685407	shudo-220_	68	2025-10-11 09:53:58.337674
685409	shudo-220_	62	2025-10-11 09:56:29.064856
685411	shudo-220_	62	2025-10-11 10:14:58.367481
685412	shudo-220_	55	2025-10-11 10:16:37.637821
685413	shudo-220_	58	2025-10-11 10:17:40.754384
685414	shudo-220_	85	2025-10-11 10:18:42.754815
685415	shudo-220_	64	2025-10-11 10:19:45.742188
685416	shudo-220_	65	2025-10-11 10:20:50.900589
685417	shudo-220_	60	2025-10-11 10:21:52.900749
685418	shudo-220_	82	2025-10-11 10:22:59.31291
685419	shudo-220_	50	2025-10-11 10:24:35.616223
685429	kota_07-15	54	2025-10-11 11:54:10.684128
685431	kota_07-15	132	2025-10-11 11:55:53.235912
685438	jo_07-18	107	2025-10-11 14:51:07.182967
685439	jo_07-18	84	2025-10-11 14:52:09.565382
685441	jo_07-18	58	2025-10-11 14:54:10.199665
685448	mikyu397	91	2025-10-11 15:42:52.020294
685449	mikyu397	43	2025-10-11 15:45:53.866868
685450	mikyu397	66	2025-10-11 15:46:58.469712
685451	mikyu397	79	2025-10-11 15:48:03.749981
685452	mikyu397	129	2025-10-11 15:48:50.509214
685453	tujiri_01	97	2025-10-11 18:36:03.026743
685454	tujiri_01	90	2025-10-11 18:37:02.669863
685455	tujiri_01	79	2025-10-11 18:40:04.833705
685456	tujiri_01	108	2025-10-11 18:40:56.171413
685457	tujiri_01	109	2025-10-11 18:42:18.629911
685458	tujiri_01	61	2025-10-11 18:46:55.683074
685459	tujiri_01	83	2025-10-11 18:49:17.905654
685460	tujiri_01	131	2025-10-11 18:50:54.824573
685461	tujiri_01	87	2025-10-11 18:52:00.430095
685462	tujiri_01	61	2025-10-11 19:06:08.328194
685463	tujiri_01	82	2025-10-11 19:07:04.836369
685464	axvo5145	86	2025-10-11 20:27:32.147253
685465	axvo5145	54	2025-10-11 20:28:33.888758
685466	axvo5145	60	2025-10-11 20:30:01.072334
685467	axvo5145	63	2025-10-11 20:31:04.451782
685468	axvo5145	112	2025-10-11 20:31:47.672602
685469	axvo5145	49	2025-10-11 20:33:05.784844
685470	axvo5145	47	2025-10-11 20:34:12.346023
685471	axvo5145	50	2025-10-11 20:35:15.073307
685472	axvo5145	97	2025-10-11 20:36:05.918331
685473	axvo5145	87	2025-10-11 20:37:10.061571
685474	lions-fan1	57	2025-10-11 21:39:02.231169
685475	lions-fan1	73	2025-10-11 21:39:56.281078
685476	usshi-	64	2025-10-11 22:36:05.591239
685477	usshi-	60	2025-10-11 22:37:06.388738
685478	usshi-	11	2025-10-11 22:38:10.209165
685479	usshi-	64	2025-10-11 22:39:35.510123
685480	usshi-	77	2025-10-11 22:40:38.615909
685481	usshi-	54	2025-10-11 22:41:40.8972
685482	usshi-	72	2025-10-11 22:42:49.721243
685483	usshi-	50	2025-10-11 22:43:52.630488
685484	usshi-	67	2025-10-11 22:45:19.533006
685485	usshi-	52	2025-10-11 22:46:26.37512
684069	kfc055	47	2025-10-07 10:46:10.222257
684077	tyankonabe	65	2025-10-07 10:55:07.670732
684078	musiko	54	2025-10-07 10:55:51.898671
684079	posting	93	2025-10-07 10:56:01.473535
684080	tyankonabe	101	2025-10-07 10:56:05.534415
684081	shudo-220_	55	2025-10-07 11:21:53.111097
684082	kaxejn1	134	2025-10-07 11:21:56.497152
684083	papico181	36	2025-10-07 11:21:58.744247
684084	shishamo	94	2025-10-07 11:22:05.377992
684085	mt_bird	96	2025-10-07 11:22:08.32545
684086	yukiflcx	118	2025-10-07 11:22:41.57143
684087	mt_bird	98	2025-10-07 11:23:14.34069
684088	kfc055	49	2025-10-07 11:23:36.505316
684089	m0gu	112	2025-10-07 11:28:28.983557
684090	miyu_0913	53	2025-10-07 11:28:43.795849
684091	tujiri_01	28	2025-10-07 11:28:44.768677
684092	hitomi0413	73	2025-10-07 11:28:45.03553
684093	hitomi0413	60	2025-10-07 11:29:47.278345
684094	tujiri_01	97	2025-10-07 11:29:53.72151
684095	tujiri_01	98	2025-10-07 11:30:59.545458
684096	hibiki-118	80	2025-10-07 11:31:14.91867
684097	haruuu4	95	2025-10-07 11:42:04.50435
684098	haruuu4	35	2025-10-07 11:57:42.521989
684099	kfc055	16	2025-10-07 11:58:04.311361
684100	kfc055	55	2025-10-07 11:59:05.358363
684101	haruuu4	46	2025-10-07 11:59:21.485836
684102	kfc055	35	2025-10-07 12:00:07.314289
684103	ask-mog1_1	0	2025-10-07 12:36:48.699405
684104	ask-mog1_1	76	2025-10-07 12:37:55.556924
684105	ask-mog1_1	62	2025-10-07 12:39:01.228961
684106	ask-mog1_1	77	2025-10-07 12:40:08.28116
684107	kfc055	41	2025-10-07 12:42:42.161512
684108	kfc055	44	2025-10-07 12:43:43.598357
684109	kfc055	74	2025-10-07 12:44:46.495987
684110	kfc055	56	2025-10-07 12:45:48.385609
684111	axvo5145	9	2025-10-07 12:45:54.744534
684112	haruuu4	44	2025-10-07 12:46:14.644098
684113	kfc055	77	2025-10-07 12:46:49.438741
684114	axvo5145	72	2025-10-07 12:46:58.34423
684115	haruuu4	43	2025-10-07 12:47:15.936153
684116	kfc055	52	2025-10-07 12:47:51.557675
684117	haruuu4	36	2025-10-07 12:48:18.144035
684118	kfc055	86	2025-10-07 12:48:49.422717
684119	haruuu4	44	2025-10-07 12:49:22.029776
684120	kfc055	52	2025-10-07 12:49:52.098382
684121	haruuu4	51	2025-10-07 12:50:25.648294
684122	kfc055	40	2025-10-07 12:50:53.54021
684123	haruuu4	26	2025-10-07 12:51:27.996268
684124	kfc055	58	2025-10-07 12:51:55.361462
684125	haruuu4	41	2025-10-07 12:53:31.234474
684126	haruuu4	53	2025-10-07 12:55:20.888874
684127	haruuu4	43	2025-10-07 12:56:26.520484
684128	haruuu4	32	2025-10-07 12:57:30.988493
684129	kfc055	0	2025-10-07 12:58:00.373912
684130	axvo5145	14	2025-10-07 13:08:15.420144
684131	axvo5145	36	2025-10-07 13:10:18.609762
684132	axvo5145	31	2025-10-07 13:11:21.653483
684133	axvo5145	90	2025-10-07 13:12:27.21936
684134	kochi	37	2025-10-07 13:24:52.086429
684135	tya-han_04	60	2025-10-07 14:46:49.125846
684136	tya-han_04	92	2025-10-07 14:47:47.747843
684137	tya-han_04	29	2025-10-07 14:48:49.983363
684138	tya-han_04	89	2025-10-07 14:49:46.134161
684139	tya-han_04	66	2025-10-07 14:50:47.841604
684140	tya-han_04	83	2025-10-07 14:51:45.146066
684141	tya-han_04	56	2025-10-07 14:52:47.96617
684142	tya-han_04	65	2025-10-07 14:53:50.082386
684143	tya-han_04	36	2025-10-07 14:54:51.802521
684144	tya-han_04	52	2025-10-07 14:55:55.12981
684145	tya-han_04	62	2025-10-07 14:57:01.745113
684146	tya-han_04	109	2025-10-07 14:57:48.362336
684147	tya-han_04	58	2025-10-07 14:58:50.300168
684148	tya-han_04	69	2025-10-07 14:59:52.839745
684149	ask-mog1_1	50	2025-10-07 15:09:51.13366
684150	yes_eo080	84	2025-10-07 15:10:30.443994
684151	ask-mog1_1	51	2025-10-07 15:10:56.835761
684152	yes_eo080	64	2025-10-07 15:11:39.114821
684153	sa-sa_0127	71	2025-10-07 15:11:55.237141
684154	ask-mog1_1	50	2025-10-07 15:12:00.878968
684155	yes_eo080	76	2025-10-07 15:12:41.075593
684156	sa-sa_0127	73	2025-10-07 15:12:57.110797
684157	ask-mog1_1	47	2025-10-07 15:13:03.548081
684158	ri8_hoon-	40	2025-10-07 15:13:05.020781
684159	yes_eo080	57	2025-10-07 15:13:42.653441
684160	sa-sa_0127	83	2025-10-07 15:13:58.32886
684161	ask-mog1_1	44	2025-10-07 15:14:07.441154
684162	ri8_hoon-	42	2025-10-07 15:14:08.838788
684163	yes_eo080	84	2025-10-07 15:14:44.113757
684164	sa-sa_0127	50	2025-10-07 15:15:13.070475
684165	ri8_hoon-	45	2025-10-07 15:15:14.509974
684166	yes_eo080	117	2025-10-07 15:15:39.795571
684167	sa-sa_0127	59	2025-10-07 15:16:13.771213
684168	ri8_hoon-	81	2025-10-07 15:16:37.71606
684169	yes_eo080	112	2025-10-07 15:16:39.862443
684170	sa-sa_0127	53	2025-10-07 15:17:22.710096
684171	yes_eo080	101	2025-10-07 15:17:26.745716
684172	ri8_hoon-	74	2025-10-07 15:17:39.200823
684173	sa-sa_0127	46	2025-10-07 15:18:23.59274
684174	yes_eo080	59	2025-10-07 15:18:28.349131
684175	ri8_hoon-	16	2025-10-07 15:18:42.058693
684176	yes_eo080	119	2025-10-07 15:18:59.711149
684177	sa-sa_0127	73	2025-10-07 15:19:30.443584
684178	ri8_hoon-	51	2025-10-07 15:20:02.202838
684179	yes_eo080	91	2025-10-07 15:20:02.515164
684180	sa-sa_0127	44	2025-10-07 15:20:33.735594
684181	sa-sa_0127	0	2025-10-07 15:23:00.814545
684182	kfc055	49	2025-10-07 15:23:21.593195
684183	sa-sa_0127	27	2025-10-07 15:24:05.023348
684184	kfc055	22	2025-10-07 15:25:17.868338
684185	auct1718	84	2025-10-07 15:25:38.714889
684186	ask-mog1_1	50	2025-10-07 15:25:53.119277
684187	auct1718	39	2025-10-07 15:26:45.423927
684188	ask-mog1_1	56	2025-10-07 15:26:56.549595
684189	kfc055	22	2025-10-07 15:27:44.447988
684190	auct1718	40	2025-10-07 15:27:54.933974
684191	ask-mog1_1	55	2025-10-07 15:27:58.558553
684192	kfc055	9	2025-10-07 15:28:54.281899
684193	ask-mog1_1	83	2025-10-07 15:29:02.039668
684194	auct1718	47	2025-10-07 15:29:03.216923
684195	ri8_hoon-	5	2025-10-07 15:29:14.252229
684196	auct1718	32	2025-10-07 15:30:08.716943
684197	ask-mog1_1	71	2025-10-07 15:30:10.053285
684198	kfc055	44	2025-10-07 15:30:10.203121
684199	kfc055	0	2025-10-07 15:31:23.146077
684200	kfc055	48	2025-10-07 15:32:30.481456
684201	ask-mog1_1	19	2025-10-07 15:34:00.330627
684202	ask-mog1_1	44	2025-10-07 15:35:40.146044
684203	atomic	93	2025-10-07 15:36:05.123
684204	ask-mog1_1	60	2025-10-07 15:36:41.498908
684205	atomic	0	2025-10-07 15:37:17.73821
684206	atomic	56	2025-10-07 15:39:26.989076
684207	ask-mog1_1	59	2025-10-07 15:43:26.501222
684208	ask-mog1_1	44	2025-10-07 15:44:29.636302
684209	ask-mog1_1	62	2025-10-07 15:45:31.685375
684210	auct1718	0	2025-10-07 15:45:47.452545
684211	auct1718	48	2025-10-07 15:46:57.941799
684212	auct1718	121	2025-10-07 15:47:57.493381
684213	kfc055	48	2025-10-07 15:53:55.363397
684214	kiyodai	45	2025-10-07 15:55:40.67497
684215	kiyodai	35	2025-10-07 15:56:42.728204
684216	kiyodai	43	2025-10-07 15:57:45.748413
684217	kiyodai	81	2025-10-07 15:58:47.721314
684218	kiyodai	62	2025-10-07 15:59:48.591894
684219	kiyodai	76	2025-10-07 16:00:50.227324
684220	kiyodai	67	2025-10-07 16:01:56.664496
684221	kiyodai	74	2025-10-07 16:02:57.626664
684222	kiyodai	113	2025-10-07 16:03:58.118957
684223	gira	111	2025-10-07 16:50:56.361086
684224	gira	116	2025-10-07 16:51:52.099012
684225	ri8_hoon-	48	2025-10-07 16:52:20.708133
684226	gira	132	2025-10-07 16:52:32.493528
684227	ri8_hoon-	36	2025-10-07 16:55:11.056273
684228	kota_07-15	117	2025-10-07 17:02:13.092897
684229	kota_07-15	53	2025-10-07 17:03:15.535084
684230	kota_07-15	77	2025-10-07 17:04:17.174648
684231	kota_07-15	82	2025-10-07 17:05:20.08733
684232	kota_07-15	48	2025-10-07 17:06:24.542203
684233	kota_07-15	115	2025-10-07 17:07:22.432388
684234	kota_07-15	61	2025-10-07 17:08:27.098429
684235	kota_07-15	57	2025-10-07 17:09:28.489723
684236	kota_07-15	26	2025-10-07 17:10:31.188898
684237	kota_07-15	70	2025-10-07 17:11:35.353126
684238	kota_07-15	130	2025-10-07 17:12:21.98816
684239	kuri-sou1	0	2025-10-07 21:06:19.173379
684240	kuri-sou1	80	2025-10-07 21:07:22.946415
684241	kuri-sou1	44	2025-10-07 21:08:26.824764
684242	kuri-sou1	61	2025-10-07 21:09:30.575099
684243	kuri-sou1	83	2025-10-07 21:10:51.954332
684244	kuri-sou1	74	2025-10-07 21:12:15.63555
684245	kuri-sou1	59	2025-10-07 21:13:42.381139
684246	kuri-sou1	83	2025-10-07 21:14:45.259891
684247	kuri-sou1	56	2025-10-07 21:15:51.932486
684248	kuri-sou1	75	2025-10-07 21:16:55.26368
684249	daisuke	85	2025-10-07 22:50:28.139739
684250	daisuke	84	2025-10-07 22:51:29.629178
684251	daisuke	94	2025-10-07 22:52:30.861653
684252	daisuke	80	2025-10-07 22:53:32.061321
684253	shimo1225	59	2025-10-07 23:33:36.364601
684254	shimo1225	71	2025-10-07 23:34:41.439559
684255	jo_07-18	59	2025-10-07 23:35:23.513531
684256	shimo1225	77	2025-10-07 23:35:31.945202
684257	shimo1225	116	2025-10-07 23:36:07.182653
684258	jo_07-18	37	2025-10-07 23:36:25.682167
684259	shimo1225	114	2025-10-07 23:36:48.414618
684260	jo_07-18	30	2025-10-07 23:37:27.794501
684261	shimo1225	111	2025-10-07 23:37:33.60893
684262	shimo1225	100	2025-10-07 23:38:12.950519
684263	jo_07-18	66	2025-10-07 23:38:30.59485
684264	shimo1225	59	2025-10-07 23:39:08.474061
684265	jo_07-18	0	2025-10-07 23:39:14.789069
684266	shimo1225	128	2025-10-07 23:39:33.401247
684267	jo_07-18	37	2025-10-07 23:40:16.812987
684268	shimo1225	84	2025-10-07 23:40:20.598504
684269	shimo1225	109	2025-10-07 23:41:00.58537
684270	ask-mog1_1	34	2025-10-08 00:15:35.685517
684271	kuri-sou1	83	2025-10-08 00:16:03.075363
684272	ask-mog1_1	117	2025-10-08 00:16:32.883315
684273	ask-mog1_1	56	2025-10-08 00:17:36.191111
684274	ask-mog1_1	36	2025-10-08 00:18:39.081978
684275	ask-mog1_1	56	2025-10-08 00:19:42.024345
684276	ask-mog1_1	46	2025-10-08 00:20:47.125934
684277	ask-mog1_1	80	2025-10-08 00:21:48.886165
684278	ask-mog1_1	48	2025-10-08 00:23:24.900616
684279	ask-mog1_1	48	2025-10-08 00:24:27.775232
684280	ask-mog1_1	64	2025-10-08 00:25:32.826367
684281	ask-mog1_1	35	2025-10-08 00:26:35.930573
684282	ask-mog1_1	119	2025-10-08 00:27:56.740511
684283	ask-mog1_1	57	2025-10-08 00:29:02.190485
684284	ask-mog1_1	33	2025-10-08 00:30:05.125632
684285	ask-mog1_1	52	2025-10-08 00:31:17.765255
684286	ask-mog1_1	37	2025-10-08 00:32:21.260633
684287	ask-mog1_1	38	2025-10-08 00:33:24.245635
684288	ask-mog1_1	60	2025-10-08 00:34:27.365595
684289	ask-mog1_1	69	2025-10-08 00:35:33.030057
684290	yukiflcx	48	2025-10-08 04:08:08.303184
684291	yukiflcx	83	2025-10-08 04:10:09.881938
684292	yukiflcx	123	2025-10-08 04:11:18.34686
684293	yukiflcx	92	2025-10-08 04:12:19.077065
684294	yukiflcx	95	2025-10-08 04:13:30.233381
684295	yukiflcx	113	2025-10-08 04:14:32.473604
684296	yukiflcx	77	2025-10-08 04:15:42.709925
684297	yukiflcx	121	2025-10-08 04:16:35.173079
684298	yukiflcx	70	2025-10-08 04:17:40.130031
684299	yukiflcx	43	2025-10-08 04:18:43.967055
684300	yukiflcx	85	2025-10-08 04:19:50.605167
684301	yukiflcx	62	2025-10-08 04:20:56.239744
684302	hitomi0413	44	2025-10-08 09:53:49.6525
684303	hitomi0413	57	2025-10-08 10:20:40.845215
684304	hitomi0413	55	2025-10-08 10:21:42.350136
684305	hitomi0413	75	2025-10-08 10:43:49.307736
684306	hitomi0413	58	2025-10-08 10:44:51.080498
684307	hitomi0413	34	2025-10-08 10:45:53.232955
684308	hitomi0413	60	2025-10-08 10:46:56.403108
684309	hitomi0413	61	2025-10-08 10:48:05.487305
684310	kota_07-15	57	2025-10-08 11:21:53.377369
684311	kota_07-15	41	2025-10-08 11:22:57.700608
684312	kota_07-15	89	2025-10-08 11:24:05.930867
684313	kota_07-15	54	2025-10-08 11:25:50.763021
684314	kota_07-15	103	2025-10-08 11:26:41.511069
684315	kota_07-15	68	2025-10-08 11:27:44.126444
684316	kota_07-15	69	2025-10-08 11:28:45.837111
684317	kota_07-15	0	2025-10-08 11:29:14.685365
684318	kota_07-15	74	2025-10-08 11:30:28.973377
684319	kota_07-15	77	2025-10-08 11:31:31.254258
684320	usshi-	46	2025-10-08 11:36:19.197878
684321	usshi-	90	2025-10-08 11:38:13.15543
684322	usshi-	56	2025-10-08 11:39:27.21492
684323	usshi-	60	2025-10-08 11:40:32.133974
684324	usshi-	60	2025-10-08 11:41:44.233041
684325	usshi-	70	2025-10-08 11:42:53.842883
684326	usshi-	60	2025-10-08 11:44:06.650453
684327	usshi-	54	2025-10-08 11:45:44.536486
684328	usshi-	39	2025-10-08 11:46:56.241908
684329	usshi-	30	2025-10-08 11:48:01.583169
684330	kfc055	69	2025-10-08 12:20:28.2877
684331	kfc055	57	2025-10-08 12:21:29.973143
684332	kfc055	45	2025-10-08 12:22:31.078321
684333	kfc055	23	2025-10-08 12:23:32.944825
684334	kfc055	59	2025-10-08 12:24:35.525797
684335	kfc055	24	2025-10-08 12:25:36.34554
684336	kfc055	40	2025-10-08 12:26:37.98483
684337	shudo-220_	34	2025-10-08 12:52:56.154387
684338	shudo-220_	42	2025-10-08 12:54:04.113686
684339	shudo-220_	63	2025-10-08 12:55:07.053135
684340	kfc055	37	2025-10-08 12:55:43.783102
684341	taiga228	41	2025-10-08 12:55:52.786615
684342	shudo-220_	57	2025-10-08 12:56:14.760886
684343	shudo-220_	55	2025-10-08 12:57:29.385177
684344	taiga228	77	2025-10-08 12:59:01.309638
684345	kuri-sou1	78	2025-10-08 14:51:34.798246
684346	patinca-nu	52	2025-10-08 14:51:48.458152
684347	patinca-nu	83	2025-10-08 14:52:53.982483
684348	kuri-sou1	60	2025-10-08 14:53:52.422038
684349	yuudai1201	63	2025-10-08 14:53:57.310396
684350	patinca-nu	30	2025-10-08 14:54:45.509679
684351	kuri-sou1	39	2025-10-08 14:55:53.085622
684352	patinca-nu	53	2025-10-08 14:56:48.400021
684353	kuri-sou1	77	2025-10-08 14:56:55.808471
684354	kuri-sou1	43	2025-10-08 14:58:44.316284
684355	kochi	49	2025-10-08 14:59:10.91046
684356	kochi	36	2025-10-08 15:01:27.614106
684357	kochi	73	2025-10-08 15:02:31.464942
684358	kochi	53	2025-10-08 15:03:52.961777
684359	patinca-nu	64	2025-10-08 15:12:07.435405
684360	patinca-nu	114	2025-10-08 15:13:05.67992
684361	yuudai1201	117	2025-10-08 15:13:15.97278
684362	patinca-nu	57	2025-10-08 15:14:09.787092
684363	jo_07-18	29	2025-10-08 15:14:12.644741
684364	kiyodai	60	2025-10-08 15:14:45.780261
684365	jo_07-18	8	2025-10-08 15:15:15.101972
684366	kiyodai	79	2025-10-08 15:15:48.698678
684367	jo_07-18	31	2025-10-08 15:16:16.513571
684368	patinca-nu	92	2025-10-08 15:16:53.259691
684369	jo_07-18	51	2025-10-08 15:17:19.102806
684370	jo_07-18	53	2025-10-08 15:18:23.550787
684371	patinca-nu	127	2025-10-08 15:18:41.198657
684372	kuri-sou1	50	2025-10-08 15:18:49.481712
684373	jo_07-18	113	2025-10-08 15:19:45.154474
684374	kuri-sou1	55	2025-10-08 15:19:53.553776
684375	patinca-nu	43	2025-10-08 15:20:00.090367
684376	jo_07-18	132	2025-10-08 15:20:25.308609
684377	jo_07-18	75	2025-10-08 15:21:57.729475
684378	jo_07-18	31	2025-10-08 15:23:00.250673
684379	jo_07-18	53	2025-10-08 15:24:08.787936
684380	kiyodai	60	2025-10-08 15:24:11.004822
684381	jo_07-18	91	2025-10-08 15:25:09.004483
684382	kiyodai	82	2025-10-08 15:25:46.922483
684383	kiyodai	59	2025-10-08 15:26:49.685063
684384	kiyodai	94	2025-10-08 15:27:42.681168
684385	kiyodai	64	2025-10-08 15:28:55.919726
684386	kiyodai	80	2025-10-08 15:29:56.928318
684387	kyama10_	40	2025-10-08 15:30:49.563942
684388	kiyodai	67	2025-10-08 15:31:14.693401
684389	kyama10_	35	2025-10-08 15:31:52.047836
684390	kiyodai	129	2025-10-08 15:32:01.806149
684391	lions-fan1	100	2025-10-08 15:32:48.017149
684392	kiyodai	26	2025-10-08 15:33:04.509641
684393	kyama10_	43	2025-10-08 15:33:23.628086
684394	lions-fan1	87	2025-10-08 15:33:49.594076
684395	kiyodai	56	2025-10-08 15:34:06.954207
684396	lions-fan1	127	2025-10-08 15:34:44.079774
684397	kiyodai	62	2025-10-08 15:35:08.417756
684398	lions-fan1	84	2025-10-08 15:35:46.219078
684399	kiyodai	55	2025-10-08 15:36:10.298402
684400	lions-fan1	62	2025-10-08 15:36:50.094422
684401	auct1718	31	2025-10-08 15:36:56.186669
684402	jo_07-18	79	2025-10-08 15:37:08.641434
684403	kiyodai	44	2025-10-08 15:37:14.86927
684404	tyanpo-n88	69	2025-10-08 15:37:26.703639
684405	lions-fan1	74	2025-10-08 15:37:52.124818
684406	auct1718	114	2025-10-08 15:37:56.941538
684407	kiyodai	68	2025-10-08 15:38:17.435566
684408	tyanpo-n88	120	2025-10-08 15:38:24.217469
684409	lions-fan1	78	2025-10-08 15:38:56.825172
684410	auct1718	48	2025-10-08 15:39:01.816185
684411	kiyodai	126	2025-10-08 15:39:14.659784
684412	tyanpo-n88	89	2025-10-08 15:39:14.961184
684413	auct1718	44	2025-10-08 15:40:05.350803
684414	lions-fan1	86	2025-10-08 15:40:19.945192
684415	kyama10_	38	2025-10-08 15:40:35.535518
684416	kyama10_	41	2025-10-08 15:41:39.695382
684417	lions-fan1	95	2025-10-08 15:41:48.940485
684418	kiyodai	73	2025-10-08 15:41:52.227596
684419	auct1718	35	2025-10-08 15:42:00.0994
684420	kyama10_	60	2025-10-08 15:42:48.931026
684421	lions-fan1	72	2025-10-08 15:42:50.786684
684422	kiyodai	48	2025-10-08 15:42:53.728044
684423	lions-fan1	91	2025-10-08 15:43:52.107349
684424	kiyodai	74	2025-10-08 15:43:55.025169
684425	kiyodai	55	2025-10-08 15:44:56.619516
684426	atomic	44	2025-10-08 16:15:05.515556
684427	atomic	85	2025-10-08 16:16:08.267926
684428	atomic	51	2025-10-08 16:17:19.034127
684429	atomic	76	2025-10-08 16:18:23.537434
684430	shimo1225	99	2025-10-08 16:52:31.3162
684431	shimo1225	90	2025-10-08 16:54:13.984823
684432	shimo1225	114	2025-10-08 16:54:50.832056
684433	shimo1225	92	2025-10-08 16:55:48.673447
684434	shimo1225	109	2025-10-08 16:56:35.794821
684435	shimo1225	48	2025-10-08 16:57:12.667395
684436	shimo1225	77	2025-10-08 16:58:16.579145
684437	shimo1225	116	2025-10-08 16:58:51.297349
684438	shimo1225	97	2025-10-08 16:59:40.913253
684439	shimo1225	113	2025-10-08 17:00:11.581605
684440	shimo1225	86	2025-10-08 17:00:53.102341
684441	ri8_hoon-	113	2025-10-08 17:05:27.767824
684442	ri8_hoon-	51	2025-10-08 17:06:31.434735
684443	ri8_hoon-	86	2025-10-08 17:07:43.696245
684444	mikyu397	52	2025-10-08 18:06:14.066297
684445	mikyu397	55	2025-10-08 18:07:20.129303
684446	mikyu397	52	2025-10-08 18:08:26.076392
684447	mikyu397	134	2025-10-08 18:09:08.031494
684448	mikyu397	41	2025-10-08 18:10:13.231165
684449	mikyu397	0	2025-10-08 18:11:17.234014
684450	mikyu397	33	2025-10-08 18:12:21.963735
684451	mikyu397	28	2025-10-08 18:13:24.808393
684452	mikyu397	60	2025-10-08 18:14:44.294204
684453	mikyu397	58	2025-10-08 18:15:47.358088
684454	mikyu397	54	2025-10-08 18:16:52.347574
684455	mikyu397	52	2025-10-08 18:17:55.59418
684456	mikyu397	53	2025-10-08 18:19:00.272336
684457	mikyu397	37	2025-10-08 18:23:58.391934
684458	mikyu397	11	2025-10-08 18:25:00.693922
684459	mikyu397	45	2025-10-08 18:26:05.877904
684460	mikyu397	46	2025-10-08 18:27:09.354697
684461	atomic	52	2025-10-08 19:35:35.306843
684462	atomic	41	2025-10-08 19:36:38.420882
684463	atomic	45	2025-10-08 19:37:40.046858
684464	atomic	92	2025-10-08 19:38:42.696279
684465	atomic	47	2025-10-08 19:39:44.450226
684466	atomic	78	2025-10-08 19:40:46.435517
684467	atomic	47	2025-10-08 19:41:49.542988
684468	atomic	114	2025-10-08 19:43:36.793681
684469	kuri-sou1	70	2025-10-08 20:22:34.445353
684470	kuri-sou1	136	2025-10-08 20:23:28.939817
684471	axvo4241	64	2025-10-08 21:05:49.721927
684472	axvo4241	97	2025-10-08 21:06:28.735602
684473	shimo1225	98	2025-10-08 21:19:49.810761
684474	shimo1225	106	2025-10-08 21:20:26.876122
684475	shimo1225	139	2025-10-08 21:21:00.310866
684476	shimo1225	73	2025-10-08 21:21:38.868108
684477	shimo1225	98	2025-10-08 21:22:27.327298
684478	shimo1225	101	2025-10-08 21:23:17.383092
684479	shimo1225	89	2025-10-08 21:24:26.963723
684480	shimo1225	96	2025-10-08 21:25:08.889212
684481	shimo1225	148	2025-10-08 21:25:32.965657
684482	shimo1225	113	2025-10-08 21:26:13.180048
684483	shimo1225	90	2025-10-08 21:27:07.494914
684484	otsukisama	67	2025-10-08 21:54:22.326236
684485	otsukisama	65	2025-10-08 21:55:25.32267
684486	otsukisama	121	2025-10-08 21:56:29.520259
684487	otsukisama	137	2025-10-08 21:57:07.571206
684488	otsukisama	0	2025-10-08 21:57:44.550908
684489	otsukisama	99	2025-10-08 21:58:37.964432
684490	otsukisama	73	2025-10-08 21:59:43.836329
684491	otsukisama	67	2025-10-08 22:00:58.226566
684492	otsukisama	114	2025-10-08 22:02:21.177032
684493	otsukisama	93	2025-10-08 22:03:15.743371
684494	otsukisama	111	2025-10-08 22:04:18.808998
684495	haruuu4	62	2025-10-08 22:39:30.312861
684496	haruuu4	41	2025-10-08 22:40:33.00301
684497	haruuu4	51	2025-10-08 22:41:34.818854
684498	haruuu4	8	2025-10-08 22:42:39.609296
684499	haru-714	50	2025-10-08 22:43:00.262492
684500	haruuu4	41	2025-10-08 22:43:49.636331
684501	haruuu4	22	2025-10-08 22:44:51.593265
684502	haruuu4	57	2025-10-08 22:45:53.498082
684503	haruuu4	35	2025-10-08 22:46:55.408185
684504	haruuu4	36	2025-10-08 22:47:57.616043
684505	haruuu4	43	2025-10-08 22:48:59.431362
684506	haruuu4	40	2025-10-08 22:50:01.215479
684507	haruuu4	35	2025-10-08 22:51:01.74744
684508	haruuu4	64	2025-10-08 22:52:51.032429
684509	haruuu4	24	2025-10-08 22:53:56.44065
684510	haruuu4	36	2025-10-08 22:55:33.464631
684511	haruuu4	52	2025-10-08 22:56:38.531287
684512	haruuu4	48	2025-10-08 22:57:45.554516
684513	haruuu4	0	2025-10-08 22:58:48.471361
684514	haruuu4	38	2025-10-08 22:59:52.070517
684515	haruuu4	1	2025-10-08 23:00:56.282087
684516	haruuu4	102	2025-10-08 23:01:56.785698
684517	haruuu4	26	2025-10-08 23:02:59.250451
684518	haruuu4	34	2025-10-08 23:04:02.324812
684519	haruuu4	35	2025-10-08 23:05:33.73728
684520	haruuu4	29	2025-10-08 23:06:37.100114
684521	haruuu4	42	2025-10-08 23:08:00.063523
684522	kuri-sou1	89	2025-10-08 23:11:35.091238
684523	kuri-sou1	65	2025-10-08 23:12:46.368139
684524	kuri-sou1	57	2025-10-08 23:13:48.879329
684525	kuri-sou1	126	2025-10-08 23:15:04.649437
684526	shudo-220_	58	2025-10-08 23:22:37.523124
684527	shudo-220_	29	2025-10-08 23:23:40.205424
684528	shudo-220_	61	2025-10-08 23:24:43.625639
684529	shudo-220_	53	2025-10-08 23:25:51.491183
684530	shudo-220_	64	2025-10-08 23:26:53.388339
684531	shudo-220_	93	2025-10-08 23:27:57.145022
684532	shudo-220_	49	2025-10-08 23:29:28.437611
684533	shudo-220_	57	2025-10-08 23:31:44.69138
684534	shudo-220_	87	2025-10-08 23:36:11.136854
684535	shudo-220_	49	2025-10-08 23:37:14.898181
684536	shudo-220_	59	2025-10-08 23:38:31.262483
684537	shudo-220_	74	2025-10-08 23:39:32.92785
684538	shudo-220_	67	2025-10-08 23:40:36.123708
684539	shudo-220_	59	2025-10-08 23:41:53.837213
684540	m0gu	69	2025-10-08 23:42:40.688839
684541	shudo-220_	38	2025-10-08 23:42:55.725508
684542	shudo-220_	73	2025-10-08 23:44:20.084074
684543	shudo-220_	77	2025-10-08 23:45:27.107499
684544	shudo-220_	57	2025-10-08 23:46:31.11694
684545	shudo-220_	46	2025-10-08 23:48:02.399854
684546	shudo-220_	58	2025-10-08 23:49:05.322702
684547	shudo-220_	83	2025-10-08 23:50:09.295111
684548	shudo-220_	74	2025-10-08 23:51:13.452406
684549	shudo-220_	48	2025-10-08 23:52:55.982943
684550	haru-714	24	2025-10-08 23:53:52.219832
684551	haru-714	116	2025-10-08 23:54:41.423645
684552	haru-714	60	2025-10-08 23:55:47.156991
684553	haru-714	130	2025-10-08 23:56:32.031759
684554	tya-han_04	36	2025-10-09 01:11:44.896089
684555	tya-han_04	77	2025-10-09 01:12:46.394348
684556	tya-han_04	55	2025-10-09 01:13:47.561281
684557	tya-han_04	28	2025-10-09 01:14:48.732572
684558	tya-han_04	112	2025-10-09 01:15:25.085673
684559	tya-han_04	59	2025-10-09 01:16:36.415843
684560	tya-han_04	51	2025-10-09 01:17:38.428604
684561	yukiflcx	75	2025-10-09 01:18:03.586503
684562	tya-han_04	55	2025-10-09 01:18:41.379783
684563	yukiflcx	66	2025-10-09 01:19:06.271782
684564	tya-han_04	51	2025-10-09 01:19:43.4958
684565	yukiflcx	111	2025-10-09 01:20:08.601066
684566	tya-han_04	55	2025-10-09 01:20:44.872426
684567	yukiflcx	77	2025-10-09 01:21:12.166752
684568	tya-han_04	72	2025-10-09 01:21:47.494525
684569	yukiflcx	85	2025-10-09 01:22:22.154666
684570	tya-han_04	70	2025-10-09 01:22:49.519488
684571	yukiflcx	74	2025-10-09 01:23:25.063288
684572	tya-han_04	75	2025-10-09 01:23:52.510049
684573	yukiflcx	68	2025-10-09 01:24:29.02346
684574	tya-han_04	44	2025-10-09 01:24:54.81914
684575	yukiflcx	63	2025-10-09 01:25:32.091137
684576	tya-han_04	104	2025-10-09 01:25:44.75774
684577	yukiflcx	123	2025-10-09 01:26:22.438387
684578	tya-han_04	40	2025-10-09 01:26:46.767531
684579	yukiflcx	101	2025-10-09 01:27:16.684908
684580	tya-han_04	46	2025-10-09 01:27:48.936722
684581	yukiflcx	96	2025-10-09 01:28:11.848207
684582	tya-han_04	129	2025-10-09 01:28:38.574583
684583	tya-han_04	114	2025-10-09 01:29:38.115325
684584	tya-han_04	41	2025-10-09 01:30:41.498879
684585	tya-han_04	133	2025-10-09 01:31:21.080894
684586	kaxejn1	21	2025-10-09 09:01:41.41068
684587	kaxejn1	71	2025-10-09 09:02:58.29138
684588	kaxejn1	87	2025-10-09 09:04:01.431035
684589	kaxejn1	108	2025-10-09 09:04:59.32147
684590	kaxejn1	79	2025-10-09 09:06:19.318597
684591	kaxejn1	94	2025-10-09 09:07:26.787539
684592	kaxejn1	114	2025-10-09 09:08:37.809133
684593	kaxejn1	132	2025-10-09 09:09:32.618629
684594	kaxejn1	73	2025-10-09 09:10:53.34349
684595	kaxejn1	124	2025-10-09 09:12:08.310632
684596	kaxejn1	127	2025-10-09 09:13:03.192119
684597	kaxejn1	112	2025-10-09 09:14:15.877597
684598	kaxejn1	123	2025-10-09 09:15:40.955394
684599	shimo1225	95	2025-10-09 09:36:37.748152
684600	shimo1225	122	2025-10-09 09:37:00.671988
684601	shimo1225	79	2025-10-09 09:38:02.884229
684602	shimo1225	108	2025-10-09 09:38:48.388825
684603	shimo1225	122	2025-10-09 09:39:19.117059
684604	shimo1225	101	2025-10-09 09:40:08.622073
684605	shimo1225	69	2025-10-09 09:41:03.996634
684606	shimo1225	106	2025-10-09 09:41:46.838162
684607	shimo1225	84	2025-10-09 09:42:42.771929
684608	shimo1225	102	2025-10-09 09:43:32.46831
684609	shimo1225	97	2025-10-09 09:44:26.514617
684610	kinniku29	34	2025-10-09 10:15:20.116068
684611	kinniku29	37	2025-10-09 10:16:25.484293
684612	kinniku29	70	2025-10-09 10:17:33.1185
684613	kinniku29	40	2025-10-09 10:18:36.921242
684614	mi-01_28	80	2025-10-09 10:18:45.090902
684615	kinniku29	42	2025-10-09 10:19:39.768666
684616	kinniku29	0	2025-10-09 10:20:43.975052
684617	mi-01_28	45	2025-10-09 10:20:51.30715
684618	kinniku29	56	2025-10-09 10:21:46.71477
684619	mi-01_28	46	2025-10-09 10:22:04.371626
684620	mikyu397	63	2025-10-09 10:22:45.72543
684621	kinniku29	12	2025-10-09 10:22:50.711071
684622	mi-01_28	44	2025-10-09 10:23:35.555088
684623	mikyu397	55	2025-10-09 10:23:49.270684
684624	kinniku29	48	2025-10-09 10:23:53.775991
684625	jo_07-18	56	2025-10-09 10:23:58.730825
684626	kinniku29	43	2025-10-09 10:24:58.531554
684627	jo_07-18	125	2025-10-09 10:24:59.281563
684628	kiyodai	79	2025-10-09 10:25:04.146794
684629	kyama10_	28	2025-10-09 10:25:28.7956
684630	kinniku29	43	2025-10-09 10:26:01.911429
684631	mi-01_28	48	2025-10-09 10:26:02.67154
684632	kiyodai	64	2025-10-09 10:26:07.134251
684633	mikyu397	52	2025-10-09 10:26:17.663537
684634	kyama10_	46	2025-10-09 10:26:30.819654
684635	kinniku29	41	2025-10-09 10:27:05.038299
684636	kiyodai	88	2025-10-09 10:27:09.257393
684637	mi-01_28	66	2025-10-09 10:27:10.40877
684638	mikyu397	63	2025-10-09 10:27:22.370149
684639	kyama10_	40	2025-10-09 10:27:32.550192
684640	kinniku29	35	2025-10-09 10:28:09.087883
684641	kiyodai	50	2025-10-09 10:28:11.740837
684642	kyama10_	66	2025-10-09 10:28:34.614298
684643	mi-01_28	45	2025-10-09 10:28:59.482363
684644	kinniku29	57	2025-10-09 10:29:14.291925
684645	kiyodai	53	2025-10-09 10:29:15.098014
684646	kota_07-15	41	2025-10-09 10:29:27.666274
684647	jo_07-18	55	2025-10-09 10:29:30.512498
684648	kyama10_	29	2025-10-09 10:29:37.564507
684649	kiyodai	45	2025-10-09 10:30:16.116542
684650	kota_07-15	55	2025-10-09 10:30:29.31284
684651	kyama10_	90	2025-10-09 10:30:29.45332
684652	jo_07-18	44	2025-10-09 10:30:31.628211
684653	kinniku29	34	2025-10-09 10:31:03.274238
684654	mi-01_28	75	2025-10-09 10:31:09.790186
684655	kiyodai	79	2025-10-09 10:31:17.409294
684656	jo_07-18	90	2025-10-09 10:31:30.94527
684657	kyama10_	36	2025-10-09 10:31:31.563099
684658	kota_07-15	44	2025-10-09 10:31:31.74449
684659	kinniku29	44	2025-10-09 10:32:11.592323
684660	kota_07-15	48	2025-10-09 10:32:32.645554
684661	jo_07-18	73	2025-10-09 10:32:34.923438
684662	kyama10_	42	2025-10-09 10:32:38.740226
684663	mi-01_28	45	2025-10-09 10:32:58.542739
684664	kiyodai	8	2025-10-09 10:33:11.84072
684665	kinniku29	30	2025-10-09 10:33:16.282312
684666	kota_07-15	44	2025-10-09 10:33:34.236556
684667	jo_07-18	35	2025-10-09 10:33:37.234409
684668	jo_07-18	138	2025-10-09 10:34:12.092528
684669	mi-01_28	39	2025-10-09 10:34:17.209672
684670	kinniku29	43	2025-10-09 10:34:20.292826
684671	hibiki-118	57	2025-10-09 10:34:29.257686
684672	kota_07-15	85	2025-10-09 10:34:35.63129
684673	kiyodai	39	2025-10-09 10:34:36.155447
684674	kinniku29	25	2025-10-09 10:35:24.557415
684675	mi-01_28	48	2025-10-09 10:35:26.051065
684676	hibiki-118	44	2025-10-09 10:35:32.546522
684677	kiyodai	66	2025-10-09 10:35:37.588498
684678	kota_07-15	0	2025-10-09 10:35:39.192095
684679	jo_07-18	79	2025-10-09 10:35:39.855747
684680	axvo4241	22	2025-10-09 10:35:50.732772
684681	hibiki-118	109	2025-10-09 10:36:19.918779
684682	kinniku29	48	2025-10-09 10:36:30.50821
684683	kiyodai	64	2025-10-09 10:36:40.30613
684684	jo_07-18	56	2025-10-09 10:36:43.009158
684685	kota_07-15	39	2025-10-09 10:36:44.848681
684686	mikyu397	54	2025-10-09 10:36:52.493102
684687	usshi-	118	2025-10-09 10:36:59.744345
684688	axvo4241	105	2025-10-09 10:37:00.619871
684689	kinniku29	28	2025-10-09 10:37:35.354003
684690	kiyodai	65	2025-10-09 10:37:43.120086
684691	kota_07-15	82	2025-10-09 10:37:53.327711
684692	mi-01_28	49	2025-10-09 10:37:59.292469
684693	mikyu397	22	2025-10-09 10:38:02.897255
684694	usshi-	46	2025-10-09 10:38:05.645117
684695	kinniku29	27	2025-10-09 10:38:42.024605
684696	kiyodai	97	2025-10-09 10:38:45.333576
684697	mi-01_28	56	2025-10-09 10:39:04.455379
684698	kota_07-15	57	2025-10-09 10:39:06.869557
684699	mikyu397	35	2025-10-09 10:39:07.638656
684700	hibiki-118	123	2025-10-09 10:39:07.964119
684701	kiyodai	92	2025-10-09 10:39:48.046445
684702	shudo-220_	126	2025-10-09 10:39:48.620484
684703	kinniku29	33	2025-10-09 10:39:50.126877
684704	hibiki-118	99	2025-10-09 10:39:58.592074
684705	mikyu397	7	2025-10-09 10:40:09.479992
684706	kota_07-15	47	2025-10-09 10:40:10.191234
684707	mi-01_28	73	2025-10-09 10:40:12.112085
684708	axvo4241	41	2025-10-09 10:40:15.705708
684709	kiyodai	63	2025-10-09 10:40:51.097213
684710	kinniku29	82	2025-10-09 10:40:51.94426
684711	kota_07-15	104	2025-10-09 10:40:55.666073
684712	shishamo	142	2025-10-09 10:41:09.017866
684713	mikyu397	56	2025-10-09 10:41:33.997356
684714	axvo4241	59	2025-10-09 10:41:38.122535
684715	hibiki-118	89	2025-10-09 10:41:39.143523
684716	kiyodai	52	2025-10-09 10:41:54.376148
684717	kinniku29	45	2025-10-09 10:41:54.608925
684718	shishamo	86	2025-10-09 10:41:59.796888
684719	tyanpo-n88	74	2025-10-09 10:42:30.903438
684720	mikyu397	112	2025-10-09 10:42:36.585268
684721	axvo4241	61	2025-10-09 10:42:40.828449
684722	kiyodai	91	2025-10-09 10:42:47.368463
684723	shishamo	91	2025-10-09 10:42:54.496627
684724	kinniku29	41	2025-10-09 10:42:59.953291
684725	hibiki-118	119	2025-10-09 10:43:07.170145
684726	tyanpo-n88	26	2025-10-09 10:43:36.461837
684727	axvo4241	69	2025-10-09 10:43:42.225575
684728	shishamo	52	2025-10-09 10:43:57.008246
684729	kinniku29	43	2025-10-09 10:44:03.046456
684730	kiyodai	108	2025-10-09 10:44:06.665686
684731	hibiki-118	74	2025-10-09 10:44:08.684661
684732	usshi-	43	2025-10-09 10:44:17.130854
684733	mi-01_28	40	2025-10-09 10:44:35.108996
684734	tyanpo-n88	48	2025-10-09 10:44:42.957175
684735	shishamo	120	2025-10-09 10:45:04.25471
684736	kinniku29	24	2025-10-09 10:45:07.775936
684737	usshi-	60	2025-10-09 10:45:29.531444
684738	ishumi	66	2025-10-09 10:45:35.405863
684739	mi-01_28	63	2025-10-09 10:45:39.729365
684740	shishamo	111	2025-10-09 10:45:47.649927
684741	hibiki-118	95	2025-10-09 10:46:04.029984
684742	tyanpo-n88	113	2025-10-09 10:46:09.776022
684743	kinniku29	50	2025-10-09 10:46:12.025304
684744	usshi-	47	2025-10-09 10:46:34.058933
684745	kiyodai	66	2025-10-09 10:46:44.116766
684746	shishamo	76	2025-10-09 10:46:53.445028
684747	ishumi	52	2025-10-09 10:46:54.15793
684748	mi-01_28	43	2025-10-09 10:46:56.458823
684749	hibiki-118	99	2025-10-09 10:46:57.415642
684750	tyanpo-n88	103	2025-10-09 10:46:59.764757
684751	kinniku29	65	2025-10-09 10:47:16.624178
684752	usshi-	54	2025-10-09 10:47:38.121117
684753	kiyodai	54	2025-10-09 10:47:44.883855
684754	shishamo	119	2025-10-09 10:47:47.015412
684755	tyanpo-n88	96	2025-10-09 10:47:50.933675
684756	ishumi	80	2025-10-09 10:48:00.777029
684757	kinniku29	33	2025-10-09 10:48:21.514843
684758	mi-01_28	53	2025-10-09 10:48:40.384819
684759	usshi-	45	2025-10-09 10:48:40.629001
684760	hibiki-118	96	2025-10-09 10:48:42.994834
684761	kiyodai	54	2025-10-09 10:48:48.371367
684762	shishamo	70	2025-10-09 10:48:52.000297
684763	tyanpo-n88	87	2025-10-09 10:48:52.497912
684764	ishumi	74	2025-10-09 10:49:06.552024
684765	hibiki-118	103	2025-10-09 10:49:26.928447
684766	mi-01_28	45	2025-10-09 10:49:42.434769
684767	usshi-	56	2025-10-09 10:49:42.663128
684768	kiyodai	76	2025-10-09 10:49:50.528833
684769	kinniku29	62	2025-10-09 10:50:07.679546
684770	ishumi	59	2025-10-09 10:50:12.240842
684771	tyanpo-n88	90	2025-10-09 10:50:36.1191
684772	usshi-	62	2025-10-09 10:50:46.594045
684773	mi-01_28	81	2025-10-09 10:50:47.151671
684774	kiyodai	66	2025-10-09 10:50:52.534312
684775	kinniku29	31	2025-10-09 10:51:11.584181
684776	ishumi	57	2025-10-09 10:51:26.299035
684777	mi-01_28	57	2025-10-09 10:51:51.220528
684778	kiyodai	81	2025-10-09 10:51:54.415186
684779	usshi-	80	2025-10-09 10:51:55.716362
684780	tyanpo-n88	61	2025-10-09 10:52:01.981512
684781	kinniku29	48	2025-10-09 10:52:14.611439
684782	ishumi	60	2025-10-09 10:52:35.226895
684783	mi-01_28	34	2025-10-09 10:53:00.22043
684784	kinniku29	33	2025-10-09 10:53:17.946043
684785	ishumi	46	2025-10-09 10:54:00.103936
684786	mi-01_28	24	2025-10-09 10:54:07.402841
684787	kinniku29	26	2025-10-09 10:54:20.402669
684788	mi-01_28	31	2025-10-09 10:55:09.441376
684789	ishumi	90	2025-10-09 10:55:30.482882
684790	kinniku29	40	2025-10-09 10:55:39.456504
684791	ishumi	81	2025-10-09 10:56:37.855705
684792	yuudai1201	42	2025-10-09 11:24:45.752342
684793	yuudai1201	52	2025-10-09 11:25:47.825159
684794	yuudai1201	56	2025-10-09 11:26:50.06184
684795	kfc055	35	2025-10-09 11:59:05.376434
684796	kfc055	53	2025-10-09 12:00:43.588012
684797	sum-lov_13	85	2025-10-09 12:10:20.0708
684798	sum-lov_13	116	2025-10-09 12:11:51.861294
684799	sum-lov_13	112	2025-10-09 12:13:02.494611
684800	sum-lov_13	134	2025-10-09 12:14:15.980783
684801	kyama10_	60	2025-10-09 12:46:08.21888
684802	kyama10_	70	2025-10-09 12:47:09.551382
684803	kyama10_	47	2025-10-09 12:48:11.949909
684804	kyama10_	68	2025-10-09 12:49:14.120545
684805	axvo5145	66	2025-10-09 12:49:57.74357
684806	kyama10_	37	2025-10-09 12:50:16.064924
684807	axvo5145	58	2025-10-09 12:51:02.668403
684808	kyama10_	80	2025-10-09 12:51:25.939661
684809	axvo5145	64	2025-10-09 12:52:05.847587
684810	kyama10_	59	2025-10-09 12:52:28.480484
684811	axvo5145	58	2025-10-09 12:53:09.840814
684812	kyama10_	31	2025-10-09 12:53:30.545224
684813	axvo5145	55	2025-10-09 12:54:12.63623
684814	axvo5145	49	2025-10-09 12:55:15.797338
684815	axvo5145	46	2025-10-09 12:56:18.599924
684816	axvo5145	54	2025-10-09 12:57:26.777294
684817	axvo5145	59	2025-10-09 12:58:35.093142
684818	axvo5145	63	2025-10-09 12:59:38.272571
684819	gira	53	2025-10-09 13:43:45.02663
684820	gira	0	2025-10-09 13:44:46.884142
684821	gira	26	2025-10-09 13:45:53.054613
684822	patinca-nu	30	2025-10-09 14:08:55.810189
684823	patinca-nu	79	2025-10-09 14:09:56.507693
684824	patinca-nu	27	2025-10-09 14:10:58.71565
684825	patinca-nu	57	2025-10-09 14:12:04.496018
684826	patinca-nu	50	2025-10-09 14:13:06.881527
684827	ask-mog1_1	50	2025-10-09 14:36:37.378063
684828	ask-mog1_1	63	2025-10-09 14:37:46.085596
684829	ask-mog1_1	82	2025-10-09 14:38:49.013792
684830	kfc055	131	2025-10-09 14:39:07.24112
684831	kfc055	62	2025-10-09 14:40:10.23403
684832	ask-mog1_1	77	2025-10-09 14:40:15.791604
684833	kfc055	88	2025-10-09 14:41:12.140488
684834	ask-mog1_1	30	2025-10-09 14:41:21.488099
684835	kfc055	71	2025-10-09 14:42:13.9895
684836	ask-mog1_1	51	2025-10-09 14:42:26.351568
684837	kfc055	59	2025-10-09 14:43:15.718662
684838	kfc055	62	2025-10-09 14:44:18.415403
684839	lions-fan1	71	2025-10-09 14:44:31.989829
684840	shudo-220_	54	2025-10-09 14:44:53.44202
684841	okiku_0408	75	2025-10-09 14:45:16.268987
684842	kfc055	50	2025-10-09 14:45:19.809791
684843	lions-fan1	105	2025-10-09 14:45:21.479656
684844	waku1waku2	56	2025-10-09 14:45:23.982861
684845	patinca-nu	57	2025-10-09 14:45:24.666603
684846	shudo-220_	50	2025-10-09 14:45:55.941255
684847	okiku_0408	52	2025-10-09 14:46:18.674822
684848	kfc055	42	2025-10-09 14:46:21.87339
684849	lions-fan1	75	2025-10-09 14:46:22.363989
684850	patinca-nu	55	2025-10-09 14:46:26.223327
684851	waku1waku2	46	2025-10-09 14:46:27.436832
684852	ek	35	2025-10-09 14:46:41.060056
684853	kfc055	53	2025-10-09 14:47:24.10278
684854	lions-fan1	121	2025-10-09 14:47:25.824728
684855	patinca-nu	73	2025-10-09 14:47:27.003145
684856	waku1waku2	78	2025-10-09 14:47:29.049798
684857	ek	47	2025-10-09 14:47:46.811043
684858	kfc055	34	2025-10-09 14:48:25.922576
684859	waku1waku2	91	2025-10-09 14:48:26.543099
684860	lions-fan1	112	2025-10-09 14:48:28.953928
684861	patinca-nu	16	2025-10-09 14:48:31.163497
684862	okiku_0408	113	2025-10-09 14:48:37.755444
684863	ek	0	2025-10-09 14:49:20.794605
684864	lions-fan1	104	2025-10-09 14:49:21.105899
684865	waku1waku2	63	2025-10-09 14:49:29.863654
684866	kfc055	25	2025-10-09 14:49:30.609655
684867	okiku_0408	88	2025-10-09 14:49:38.774291
684868	patinca-nu	55	2025-10-09 14:49:40.668784
684869	lions-fan1	117	2025-10-09 14:50:13.904052
684870	waku1waku2	54	2025-10-09 14:50:34.332409
684871	kfc055	27	2025-10-09 14:50:36.67681
684872	okiku_0408	88	2025-10-09 14:50:40.810548
684873	lions-fan1	86	2025-10-09 14:51:17.153052
684874	waku1waku2	88	2025-10-09 14:51:33.453211
684875	okiku_0408	119	2025-10-09 14:51:39.106383
684876	lions-fan1	100	2025-10-09 14:52:05.185379
684877	okiku_0408	98	2025-10-09 14:52:33.311212
684878	waku1waku2	64	2025-10-09 14:52:35.973107
684879	lions-fan1	100	2025-10-09 14:53:01.387998
684880	tyanpo-n88	103	2025-10-09 14:53:24.530329
684881	okiku_0408	58	2025-10-09 14:53:35.680448
684882	waku1waku2	86	2025-10-09 14:54:01.525308
684883	lions-fan1	64	2025-10-09 14:54:23.42965
684884	okiku_0408	99	2025-10-09 14:54:30.569824
684885	tyanpo-n88	125	2025-10-09 14:54:54.66837
684886	okiku_0408	86	2025-10-09 14:55:25.690871
684887	lions-fan1	67	2025-10-09 14:55:32.749285
684888	waku1waku2	87	2025-10-09 14:55:34.652998
684889	tyanpo-n88	77	2025-10-09 14:55:57.440615
684890	waku1waku2	118	2025-10-09 14:56:29.332979
684891	tyanpo-n88	119	2025-10-09 14:56:32.142474
684892	lions-fan1	82	2025-10-09 14:56:40.590224
684893	kaxejn1	100	2025-10-09 14:57:24.0329
684894	lions-fan1	117	2025-10-09 14:57:26.582236
684895	tyanpo-n88	99	2025-10-09 14:57:30.803263
684896	waku1waku2	76	2025-10-09 14:57:34.533353
684897	waku1waku2	152	2025-10-09 14:58:04.738346
684898	lions-fan1	105	2025-10-09 14:58:17.302984
684899	tyanpo-n88	99	2025-10-09 14:58:18.335403
684900	kaxejn1	81	2025-10-09 14:58:31.870155
684901	ishumi	63	2025-10-09 14:58:50.920104
684902	waku1waku2	65	2025-10-09 14:59:11.561009
684903	kaxejn1	88	2025-10-09 14:59:45.5466
684904	ishumi	53	2025-10-09 14:59:52.627318
684905	italia_lia	38	2025-10-09 15:00:45.055642
684906	ask-mog1_1	5	2025-10-09 15:01:12.949384
684907	kaxejn1	122	2025-10-09 15:01:17.25952
684908	ask-mog1_1	39	2025-10-09 15:02:16.924094
684909	ask-mog1_1	58	2025-10-09 15:03:18.678862
684910	ask-mog1_1	61	2025-10-09 15:04:20.6847
684911	ask-mog1_1	31	2025-10-09 15:05:22.691666
684912	kaxejn1	139	2025-10-09 15:05:23.376597
684913	kaxejn1	146	2025-10-09 15:06:14.144171
684914	ask-mog1_1	65	2025-10-09 15:06:26.765737
684915	kochi	68	2025-10-09 15:06:49.217681
684916	ask-mog1_1	71	2025-10-09 15:07:28.729887
684917	ask-mog1_1	34	2025-10-09 15:08:30.833775
684918	kochi	0	2025-10-09 15:08:54.662265
684919	ishumi	76	2025-10-09 15:09:42.302038
684920	ask-mog1_1	66	2025-10-09 15:10:07.806939
684921	ishumi	114	2025-10-09 15:10:43.846533
684922	ask-mog1_1	51	2025-10-09 15:11:10.486427
684923	ishumi	66	2025-10-09 15:12:06.299425
684924	ask-mog1_1	112	2025-10-09 15:12:14.172348
684925	kochi	64	2025-10-09 15:12:34.47241
684926	ask-mog1_1	53	2025-10-09 15:13:17.000091
684927	italia_lia	78	2025-10-09 15:13:32.435454
684928	kochi	59	2025-10-09 15:13:35.970985
684929	ask-mog1_1	52	2025-10-09 15:14:20.323834
684930	ask-mog1_1	69	2025-10-09 15:15:22.836608
684931	kochi	78	2025-10-09 15:15:25.583253
684932	ask-mog1_1	54	2025-10-09 15:16:23.709494
684933	kochi	62	2025-10-09 15:16:30.335755
684934	auct1718	46	2025-10-09 15:16:43.492772
684935	ask-mog1_1	122	2025-10-09 15:17:18.44868
684936	kochi	56	2025-10-09 15:17:32.922457
684937	auct1718	34	2025-10-09 15:17:45.794344
684938	ask-mog1_1	39	2025-10-09 15:18:22.02145
684939	miyu_0913	0	2025-10-09 15:18:33.633594
684940	kochi	60	2025-10-09 15:18:35.243876
684941	auct1718	41	2025-10-09 15:18:48.856736
684942	ask-mog1_1	120	2025-10-09 15:19:28.560469
684943	kochi	45	2025-10-09 15:19:36.604735
684944	miyu_0913	60	2025-10-09 15:19:39.629523
684945	auct1718	24	2025-10-09 15:20:19.776078
684946	ask-mog1_1	113	2025-10-09 15:20:36.001623
684947	kochi	5	2025-10-09 15:20:39.161099
684948	auct1718	36	2025-10-09 15:21:25.904276
684949	miyu_0913	60	2025-10-09 15:21:28.841725
684950	kochi	54	2025-10-09 15:22:24.002343
684951	auct1718	39	2025-10-09 15:22:29.870092
684952	kochi	58	2025-10-09 15:23:26.466926
684953	auct1718	49	2025-10-09 15:23:34.772407
684954	kochi	55	2025-10-09 15:24:29.403873
684955	auct1718	35	2025-10-09 15:24:44.070895
684956	kochi	49	2025-10-09 15:25:32.193356
684957	auct1718	45	2025-10-09 15:25:54.801756
684958	kaxejn1	90	2025-10-09 15:26:32.260414
684959	kochi	55	2025-10-09 15:26:35.662101
684960	auct1718	45	2025-10-09 15:27:35.959655
684961	kochi	56	2025-10-09 15:27:37.653589
684962	kaxejn1	82	2025-10-09 15:27:44.614815
684963	kaxejn1	139	2025-10-09 15:28:20.694797
684964	kochi	49	2025-10-09 15:28:40.525684
684965	kaxejn1	123	2025-10-09 15:29:20.865204
684966	auct1718	62	2025-10-09 15:29:26.951152
684967	kochi	34	2025-10-09 15:29:43.259154
684968	kaxejn1	141	2025-10-09 15:30:02.218459
684969	auct1718	32	2025-10-09 15:30:40.182558
684970	kaxejn1	113	2025-10-09 15:30:41.505994
684971	kaxejn1	115	2025-10-09 15:31:42.10947
684972	kochi	27	2025-10-09 15:31:54.909177
684973	kaxejn1	97	2025-10-09 15:33:01.201204
684974	okiku_0408	80	2025-10-09 15:33:25.42836
684975	kaxejn1	93	2025-10-09 15:34:03.766371
684976	kochi	73	2025-10-09 15:34:05.1033
684977	kaxejn1	50	2025-10-09 15:35:17.074891
684978	kochi	73	2025-10-09 15:38:54.657381
684979	kochi	54	2025-10-09 15:39:55.92315
684980	kochi	79	2025-10-09 15:40:57.826063
684981	kiyodai	52	2025-10-09 15:41:03.866106
684982	kochi	70	2025-10-09 15:42:00.174111
684983	kiyodai	77	2025-10-09 15:42:05.908428
684984	kochi	49	2025-10-09 15:43:01.582352
684985	kiyodai	82	2025-10-09 15:43:29.976439
684986	kochi	58	2025-10-09 15:44:05.400257
684987	kiyodai	83	2025-10-09 15:44:31.77731
684988	kochi	21	2025-10-09 15:45:07.153453
684989	kiyodai	52	2025-10-09 15:45:33.051366
684990	kochi	56	2025-10-09 15:46:09.839647
684991	kiyodai	74	2025-10-09 15:46:34.511242
684992	kochi	75	2025-10-09 15:47:12.805096
684993	kiyodai	50	2025-10-09 15:47:43.649421
684994	kiyodai	92	2025-10-09 15:48:44.863735
684995	kiyodai	121	2025-10-09 15:49:37.945701
684996	kochi	63	2025-10-09 15:50:06.904183
684997	kiyodai	103	2025-10-09 15:50:28.945987
684998	kochi	46	2025-10-09 15:51:09.510581
684999	kiyodai	95	2025-10-09 15:51:30.302181
685000	kochi	77	2025-10-09 15:52:13.329313
685001	kiyodai	84	2025-10-09 15:53:08.454686
685002	kochi	25	2025-10-09 15:53:15.616643
685003	kochi	85	2025-10-09 15:54:18.895654
685004	kiyodai	86	2025-10-09 15:54:27.204757
685005	kochi	72	2025-10-09 15:55:20.8316
685006	kiyodai	65	2025-10-09 15:55:28.361796
685007	kochi	71	2025-10-09 15:56:27.632843
685008	kiyodai	72	2025-10-09 15:56:29.488694
685009	ri8_hoon-	70	2025-10-09 15:57:18.730445
685010	kochi	71	2025-10-09 15:57:30.012639
685011	kiyodai	69	2025-10-09 15:57:31.291445
685012	ri8_hoon-	59	2025-10-09 15:58:19.774568
685013	yes_eo080	85	2025-10-09 15:59:02.762264
685014	ri8_hoon-	52	2025-10-09 15:59:53.381933
685015	yes_eo080	58	2025-10-09 16:00:31.834979
685016	yes_eo080	97	2025-10-09 16:01:14.234225
685017	yes_eo080	122	2025-10-09 16:02:12.70419
685018	yes_eo080	74	2025-10-09 16:03:47.718424
685019	yes_eo080	76	2025-10-09 16:04:51.765417
685020	yes_eo080	118	2025-10-09 16:05:48.675192
685021	yes_eo080	62	2025-10-09 16:06:49.933843
685022	yes_eo080	89	2025-10-09 16:07:50.82498
685023	yes_eo080	66	2025-10-09 16:08:56.830859
685024	yes_eo080	61	2025-10-09 16:09:59.064864
685025	kuri-sou1	55	2025-10-09 16:33:38.796421
685026	kuri-sou1	75	2025-10-09 16:34:41.801273
685027	kuri-sou1	73	2025-10-09 16:35:47.249889
685028	kuri-sou1	70	2025-10-09 16:37:01.772834
685029	kuri-sou1	72	2025-10-09 16:38:14.529787
685030	shimo1225	114	2025-10-09 17:25:30.508501
685031	shimo1225	111	2025-10-09 17:26:00.277221
685032	shimo1225	131	2025-10-09 17:26:24.554657
685033	shimo1225	83	2025-10-09 17:27:16.522473
685034	shimo1225	131	2025-10-09 17:27:58.34585
685035	shimo1225	102	2025-10-09 17:28:29.645854
685036	shimo1225	128	2025-10-09 17:28:57.010546
685037	shimo1225	88	2025-10-09 17:29:47.429942
685038	shimo1225	98	2025-10-09 17:30:38.893674
685039	shimo1225	94	2025-10-09 17:31:31.887728
685040	shimo1225	121	2025-10-09 17:32:25.018256
685041	fuuta_s	63	2025-10-09 18:29:23.970922
685042	fuuta_s	39	2025-10-09 18:30:48.982012
685043	fuuta_s	39	2025-10-09 18:31:54.220011
685044	fuuta_s	56	2025-10-09 18:32:55.743851
685045	fuuta_s	64	2025-10-09 18:33:44.258187
685046	fuuta_s	34	2025-10-09 18:34:46.666631
685047	fuuta_s	55	2025-10-09 18:35:47.591163
685048	fuuta_s	30	2025-10-09 18:36:50.346991
685049	fuuta_s	57	2025-10-09 18:37:52.009855
685050	fuuta_s	22	2025-10-09 18:38:53.917266
685051	fuuta_s	58	2025-10-09 18:40:21.258701
685052	fuuta_s	0	2025-10-09 18:41:02.982754
685053	sa-sa_0127	87	2025-10-09 19:35:20.364898
685054	sa-sa_0127	28	2025-10-09 19:36:21.659296
685055	sa-sa_0127	32	2025-10-09 19:37:23.816525
685056	sa-sa_0127	92	2025-10-09 19:38:43.701312
685057	sa-sa_0127	52	2025-10-09 19:39:44.873134
685058	sa-sa_0127	65	2025-10-09 19:40:49.341267
685059	sa-sa_0127	63	2025-10-09 19:41:55.285463
685060	sa-sa_0127	91	2025-10-09 19:42:58.385391
685061	sa-sa_0127	53	2025-10-09 19:44:31.915451
685062	sa-sa_0127	63	2025-10-09 19:45:34.239034
685063	sa-sa_0127	139	2025-10-09 19:46:18.680523
685064	tujiri_01	76	2025-10-09 21:06:01.067001
685065	tujiri_01	113	2025-10-09 21:07:02.697153
685066	tujiri_01	101	2025-10-09 21:07:53.960994
685067	tujiri_01	117	2025-10-09 21:08:32.233194
685068	tujiri_01	100	2025-10-09 21:09:28.133431
685069	tujiri_01	73	2025-10-09 21:10:29.722101
685070	tujiri_01	116	2025-10-09 21:11:14.747012
685071	tujiri_01	41	2025-10-09 21:13:04.460013
685072	tujiri_01	93	2025-10-09 21:14:19.815641
685073	tujiri_01	72	2025-10-09 21:15:39.364746
685074	tujiri_01	70	2025-10-09 21:16:46.039419
685075	tujiri_01	109	2025-10-09 21:17:36.019152
685076	tujiri_01	112	2025-10-09 21:19:03.72006
685077	tujiri_01	120	2025-10-09 21:19:57.969524
685078	atomic	83	2025-10-09 22:29:42.989732
685079	atomic	64	2025-10-09 22:30:44.675995
685080	atomic	91	2025-10-09 22:31:47.115197
685081	atomic	31	2025-10-09 22:32:49.289902
685082	atomic	119	2025-10-09 22:33:45.293209
685083	atomic	112	2025-10-09 22:34:47.150849
685084	atomic	49	2025-10-09 22:35:49.823249
685085	atomic	19	2025-10-09 22:36:52.464442
685086	atomic	35	2025-10-09 22:37:55.155621
685087	atomic	65	2025-10-09 22:38:56.493568
685088	kuri-sou1	59	2025-10-09 23:38:26.013185
685089	kuri-sou1	56	2025-10-09 23:39:32.377405
685090	kuri-sou1	89	2025-10-09 23:41:21.659415
685091	kuri-sou1	116	2025-10-09 23:42:19.033638
685092	kuri-sou1	55	2025-10-09 23:43:30.019663
685093	ri8_hoon-	49	2025-10-09 23:48:17.955591
685094	ri8_hoon-	54	2025-10-09 23:49:20.555202
685095	ri8_hoon-	76	2025-10-10 00:06:40.71267
685096	yuudai1201	34	2025-10-10 01:27:49.594316
685097	yuudai1201	50	2025-10-10 01:28:52.984057
685098	haruuu4	17	2025-10-10 08:47:56.815252
685099	haruuu4	16	2025-10-10 08:48:58.601098
685100	haruuu4	44	2025-10-10 08:50:00.724735
685101	haruuu4	50	2025-10-10 08:51:08.839347
685102	haruuu4	31	2025-10-10 08:52:12.99146
685103	haruuu4	44	2025-10-10 08:53:24.030346
685104	haruuu4	30	2025-10-10 08:54:26.840685
685105	haruuu4	53	2025-10-10 08:55:56.683411
685106	haruuu4	41	2025-10-10 08:57:02.792729
685107	haruuu4	88	2025-10-10 08:58:11.783394
685108	haruuu4	54	2025-10-10 08:59:28.026707
685109	haruuu4	100	2025-10-10 09:00:18.363908
685110	haruuu4	46	2025-10-10 09:01:25.327929
685111	haruuu4	34	2025-10-10 09:02:28.105957
685112	haruuu4	62	2025-10-10 09:03:30.08836
685113	haruuu4	25	2025-10-10 09:04:37.567304
685114	haruuu4	28	2025-10-10 09:06:37.391354
685115	haruuu4	38	2025-10-10 09:08:04.800845
685116	musiko	55	2025-10-10 10:51:27.591081
685117	musiko	117	2025-10-10 10:53:49.036716
685118	musiko	94	2025-10-10 10:54:52.301742
685119	musiko	50	2025-10-10 10:55:53.795533
685120	musiko	95	2025-10-10 10:56:48.821499
685121	musiko	81	2025-10-10 10:57:51.07961
685122	musiko	121	2025-10-10 10:58:47.187889
685123	musiko	89	2025-10-10 10:59:50.927694
685124	musiko	80	2025-10-10 11:00:53.656222
685125	musiko	36	2025-10-10 11:01:56.506331
685126	shudo-220_	62	2025-10-10 11:10:31.371558
685127	shudo-220_	119	2025-10-10 11:11:31.092937
685128	shudo-220_	29	2025-10-10 11:12:34.35843
685129	shudo-220_	47	2025-10-10 11:13:37.957932
685130	shudo-220_	69	2025-10-10 11:14:42.19399
685131	shudo-220_	66	2025-10-10 11:16:04.718795
685132	shudo-220_	61	2025-10-10 11:17:08.87199
685133	shudo-220_	59	2025-10-10 11:18:11.24961
685134	shudo-220_	126	2025-10-10 11:19:01.135383
685135	shudo-220_	63	2025-10-10 11:20:05.747131
685136	shudo-220_	51	2025-10-10 11:21:06.979833
685137	shirogane	34	2025-10-10 12:59:04.06227
685138	shirogane	66	2025-10-10 13:00:06.69626
685139	shirogane	55	2025-10-10 13:01:21.344989
685140	shirogane	42	2025-10-10 13:02:34.867999
685141	shirogane	50	2025-10-10 13:03:39.278099
685142	shirogane	48	2025-10-10 13:04:50.706908
685143	kuri-sou1	60	2025-10-10 13:08:24.230362
685144	kuri-sou1	72	2025-10-10 13:09:27.159211
685145	shirogane	46	2025-10-10 13:37:47.733145
685146	shirogane	35	2025-10-10 13:41:22.074385
685147	shirogane	81	2025-10-10 13:42:24.383246
685148	shirogane	79	2025-10-10 13:44:16.104579
685149	atomic	60	2025-10-10 13:46:53.637042
685150	atomic	61	2025-10-10 13:47:55.809775
685151	atomic	78	2025-10-10 13:48:57.060385
685152	atomic	82	2025-10-10 13:49:58.931661
685153	atomic	59	2025-10-10 13:51:01.994492
685154	atomic	74	2025-10-10 13:52:04.870283
685155	atomic	54	2025-10-10 13:53:49.738889
685156	atomic	88	2025-10-10 13:54:53.504062
685157	atomic	59	2025-10-10 13:56:03.208805
685158	atomic	65	2025-10-10 13:57:06.652917
685159	atomic	90	2025-10-10 13:58:10.042357
685160	gira	94	2025-10-10 15:17:58.512029
685161	gira	133	2025-10-10 15:18:37.759768
685162	fuuta_s	50	2025-10-10 15:32:51.464075
685163	fuuta_s	42	2025-10-10 15:33:53.574109
685164	gira	115	2025-10-10 15:35:20.541847
685165	fuuta_s	115	2025-10-10 15:35:26.934026
685166	gira	105	2025-10-10 15:36:01.481405
685167	fuuta_s	39	2025-10-10 15:36:28.512261
685168	gira	65	2025-10-10 15:37:03.90593
685169	fuuta_s	76	2025-10-10 15:37:29.384719
685170	gira	107	2025-10-10 15:37:48.96184
685171	fuuta_s	65	2025-10-10 15:38:31.277004
685172	fuuta_s	78	2025-10-10 15:39:41.951078
685173	fuuta_s	34	2025-10-10 15:40:44.080657
685174	fuuta_s	70	2025-10-10 15:41:48.591103
685175	fuuta_s	37	2025-10-10 15:42:51.279719
685176	fuuta_s	62	2025-10-10 15:43:54.020936
685177	jo_07-18	57	2025-10-10 16:51:02.404435
685178	jo_07-18	53	2025-10-10 16:52:07.200482
685179	jo_07-18	60	2025-10-10 16:53:08.966296
685180	jo_07-18	64	2025-10-10 16:54:11.182876
685181	jo_07-18	48	2025-10-10 16:55:12.383647
685182	jo_07-18	61	2025-10-10 16:56:17.772614
685183	jo_07-18	57	2025-10-10 16:57:33.540988
685184	jo_07-18	82	2025-10-10 16:58:40.998335
685185	jo_07-18	99	2025-10-10 16:59:18.994383
685186	jo_07-18	121	2025-10-10 17:00:17.403066
685187	daisuke	69	2025-10-10 17:55:10.035411
685188	daisuke	77	2025-10-10 17:56:12.039898
685189	daisuke	107	2025-10-10 17:56:53.56767
685190	daisuke	71	2025-10-10 17:57:55.394299
685191	daisuke	94	2025-10-10 17:58:53.744297
685192	daisuke	69	2025-10-10 17:59:47.894057
685193	daisuke	49	2025-10-10 18:00:49.2518
685194	daisuke	80	2025-10-10 18:01:49.649648
685195	daisuke	70	2025-10-10 18:02:49.553842
685196	daisuke	80	2025-10-10 18:03:46.355088
685197	daisuke	91	2025-10-10 18:04:45.265059
685198	daisuke	69	2025-10-10 18:05:46.58434
685199	daisuke	111	2025-10-10 18:06:48.097916
685200	daisuke	93	2025-10-10 18:07:54.234312
685201	daisuke	113	2025-10-10 18:09:00.418873
685202	daisuke	90	2025-10-10 18:09:45.194223
685203	daisuke	92	2025-10-10 18:10:41.293394
685204	daisuke	87	2025-10-10 18:11:42.452335
685205	daisuke	124	2025-10-10 18:12:10.616516
685206	daisuke	114	2025-10-10 18:13:08.042255
685207	daisuke	87	2025-10-10 18:14:08.938681
685208	daisuke	112	2025-10-10 18:14:47.146705
685209	daisuke	130	2025-10-10 18:15:29.246852
685210	daisuke	83	2025-10-10 18:16:31.337288
685211	daisuke	85	2025-10-10 18:17:16.805276
685212	daisuke	69	2025-10-10 18:21:12.00508
685213	daisuke	92	2025-10-10 18:22:13.159031
685214	daisuke	89	2025-10-10 18:23:14.092634
685215	daisuke	64	2025-10-10 18:24:15.657192
685216	daisuke	116	2025-10-10 18:24:42.311875
685217	daisuke	70	2025-10-10 18:25:44.075522
685218	daisuke	30	2025-10-10 18:27:06.482014
685219	daisuke	61	2025-10-10 18:28:08.258128
685220	daisuke	79	2025-10-10 18:29:09.012453
685221	daisuke	99	2025-10-10 18:29:50.898272
685222	daisuke	77	2025-10-10 18:30:51.493733
685223	daisuke	89	2025-10-10 18:31:46.644893
685224	daisuke	81	2025-10-10 18:32:49.883782
685225	daisuke	126	2025-10-10 18:33:35.428073
685226	daisuke	113	2025-10-10 18:34:34.687132
685227	daisuke	87	2025-10-10 18:35:36.214158
685228	daisuke	79	2025-10-10 18:36:38.697271
685229	daisuke	96	2025-10-10 18:37:31.770632
685230	daisuke	101	2025-10-10 18:38:17.803489
685231	daisuke	85	2025-10-10 18:39:19.297342
685232	daisuke	86	2025-10-10 18:40:16.657872
685233	daisuke	77	2025-10-10 18:41:18.417737
685234	daisuke	114	2025-10-10 18:42:13.9406
685235	daisuke	92	2025-10-10 18:43:14.7563
685236	daisuke	98	2025-10-10 18:44:10.721995
685237	daisuke	92	2025-10-10 18:45:06.433541
685238	daisuke	0	2025-10-10 18:46:07.614745
685239	daisuke	89	2025-10-10 18:47:06.025364
685240	daisuke	94	2025-10-10 18:48:07.774423
685241	daisuke	46	2025-10-10 18:49:08.3491
685242	daisuke	85	2025-10-10 18:50:13.754636
685243	daisuke	120	2025-10-10 18:51:05.53779
685244	daisuke	92	2025-10-10 18:52:06.436435
685245	daisuke	99	2025-10-10 18:53:01.364662
685246	daisuke	101	2025-10-10 18:53:50.104978
685247	daisuke	83	2025-10-10 18:54:52.190687
685248	daisuke	62	2025-10-10 18:55:53.189728
685249	daisuke	48	2025-10-10 18:56:54.051851
685250	daisuke	95	2025-10-10 18:57:52.641038
685251	daisuke	54	2025-10-10 18:58:53.971432
685252	daisuke	66	2025-10-10 18:59:58.542743
685253	daisuke	93	2025-10-10 19:00:56.28546
685254	daisuke	85	2025-10-10 19:01:58.203011
685255	daisuke	69	2025-10-10 19:02:59.690167
685256	daisuke	101	2025-10-10 19:03:48.358805
685257	tujiri_01	47	2025-10-10 20:07:32.126075
685258	tujiri_01	85	2025-10-10 20:08:36.211143
685259	tujiri_01	82	2025-10-10 20:09:52.276577
685260	tujiri_01	112	2025-10-10 20:10:39.470755
685261	tujiri_01	121	2025-10-10 20:11:40.363406
685262	tujiri_01	98	2025-10-10 20:12:24.939933
685263	tujiri_01	120	2025-10-10 20:13:02.509565
685264	tujiri_01	62	2025-10-10 20:13:55.388854
685265	tujiri_01	103	2025-10-10 20:14:54.868568
685266	tujiri_01	91	2025-10-10 20:15:52.300589
685267	tujiri_01	96	2025-10-10 20:17:08.540659
685268	axvo5145	76	2025-10-10 21:40:26.493517
685269	axvo5145	43	2025-10-10 21:41:29.143616
685270	axvo5145	62	2025-10-10 21:42:37.926806
685271	axvo5145	100	2025-10-10 21:43:29.148106
685272	axvo5145	69	2025-10-10 21:45:11.634846
685273	axvo5145	60	2025-10-10 21:46:13.376688
685274	axvo5145	121	2025-10-10 21:47:05.943522
685275	axvo5145	81	2025-10-10 21:48:08.406288
685276	axvo5145	55	2025-10-10 21:49:27.486204
685277	okiku_0408	75	2025-10-10 21:50:50.117546
685278	axvo5145	67	2025-10-10 21:50:56.825464
685279	okiku_0408	116	2025-10-10 21:51:50.646663
685280	okiku_0408	130	2025-10-10 21:52:34.903514
685281	okiku_0408	112	2025-10-10 21:54:08.863867
685282	okiku_0408	67	2025-10-10 21:55:14.824844
685283	okiku_0408	75	2025-10-10 21:56:20.932047
685284	okiku_0408	82	2025-10-10 21:57:40.985284
685285	okiku_0408	98	2025-10-10 21:58:35.546591
685286	okiku_0408	94	2025-10-10 21:59:37.24099
685287	okiku_0408	115	2025-10-10 22:00:36.501983
685288	okiku_0408	112	2025-10-10 22:01:32.743349
685289	okiku_0408	74	2025-10-10 22:02:36.338103
685290	okiku_0408	93	2025-10-10 22:03:36.772653
685291	okiku_0408	57	2025-10-10 22:04:39.004674
685292	okiku_0408	69	2025-10-10 22:06:01.100042
685293	okiku_0408	72	2025-10-10 22:07:02.577115
685294	okiku_0408	143	2025-10-10 22:08:34.070213
685295	okiku_0408	97	2025-10-10 22:09:23.797824
685296	okiku_0408	65	2025-10-10 22:10:25.448398
685297	okiku_0408	63	2025-10-10 22:11:26.707316
685298	okiku_0408	71	2025-10-10 22:12:28.727009
685299	okiku_0408	57	2025-10-10 22:13:44.839003
685309	usshi-	53	2025-10-10 22:34:28.761615
685311	usshi-	58	2025-10-10 22:35:36.842677
685315	usshi-	61	2025-10-10 22:37:49.036266
685316	patinca-nu	43	2025-10-10 22:38:08.635898
685317	usshi-	65	2025-10-10 22:38:54.744015
685318	patinca-nu	57	2025-10-10 22:39:10.664176
685320	patinca-nu	64	2025-10-10 22:42:11.780265
685331	lions-fan1	60	2025-10-10 23:18:03.10003
685332	lions-fan1	117	2025-10-10 23:18:42.386175
685333	lions-fan1	60	2025-10-10 23:19:46.182607
685334	lions-fan1	80	2025-10-10 23:21:04.000031
685335	lions-fan1	144	2025-10-10 23:21:33.246245
685336	lions-fan1	93	2025-10-10 23:22:44.295389
685337	lions-fan1	92	2025-10-10 23:23:45.646091
685338	lions-fan1	87	2025-10-10 23:25:08.656408
685339	lions-fan1	129	2025-10-10 23:25:38.856117
685340	lions-fan1	118	2025-10-10 23:26:14.98717
685341	lions-fan1	82	2025-10-10 23:27:16.94399
685342	lions-fan1	85	2025-10-10 23:28:34.39767
685343	kfc055	37	2025-10-10 23:32:59.356091
685346	waku1waku2	93	2025-10-10 23:34:42.233407
685351	kfc055	78	2025-10-10 23:37:16.009771
685352	waku1waku2	76	2025-10-10 23:37:36.550764
685353	kfc055	47	2025-10-10 23:38:18.217714
685354	waku1waku2	95	2025-10-10 23:38:39.977583
685357	kfc055	94	2025-10-10 23:40:15.077933
685358	kfc055	57	2025-10-10 23:41:16.890763
685359	waku1waku2	91	2025-10-10 23:41:26.897225
685360	waku1waku2	77	2025-10-10 23:42:28.051607
685382	yukiflcx	26	2025-10-11 01:09:08.638252
685386	yukiflcx	75	2025-10-11 01:13:17.509001
685387	yukiflcx	70	2025-10-11 01:14:21.487418
685402	yuudai1201	47	2025-10-11 01:58:39.308333
685408	shudo-220_	61	2025-10-11 09:55:24.639642
685410	shudo-220_	62	2025-10-11 09:57:36.317783
685420	kota_07-15	73	2025-10-11 11:44:40.205205
685421	kota_07-15	52	2025-10-11 11:45:42.850395
685422	kota_07-15	49	2025-10-11 11:46:48.862792
685423	kota_07-15	42	2025-10-11 11:47:58.238639
685424	kota_07-15	116	2025-10-11 11:48:54.514074
685425	kota_07-15	82	2025-10-11 11:49:58.649079
685426	kota_07-15	39	2025-10-11 11:51:01.269342
685427	kota_07-15	37	2025-10-11 11:52:03.187737
685428	kota_07-15	47	2025-10-11 11:53:05.983259
685430	kota_07-15	69	2025-10-11 11:55:12.563033
685432	jo_07-18	61	2025-10-11 14:45:08.676561
685433	jo_07-18	51	2025-10-11 14:46:30.904932
685434	jo_07-18	97	2025-10-11 14:47:18.954725
685435	jo_07-18	39	2025-10-11 14:48:24.889338
685436	jo_07-18	98	2025-10-11 14:49:13.85346
685437	jo_07-18	59	2025-10-11 14:50:19.867005
685440	jo_07-18	133	2025-10-11 14:53:02.815018
685442	mikyu397	22	2025-10-11 15:36:38.849406
685443	mikyu397	34	2025-10-11 15:37:40.782701
685444	mikyu397	63	2025-10-11 15:38:43.641158
685445	mikyu397	62	2025-10-11 15:39:46.681436
685446	mikyu397	39	2025-10-11 15:40:52.964863
685447	mikyu397	10	2025-10-11 15:41:55.19065
685486	kuri-sou1	117	2025-10-11 23:17:25.587887
685487	kuri-sou1	77	2025-10-11 23:18:21.072085
685488	patinca-nu	45	2025-10-11 23:23:31.265222
685489	patinca-nu	47	2025-10-11 23:24:46.369567
685490	patinca-nu	66	2025-10-11 23:25:47.670561
685491	patinca-nu	53	2025-10-11 23:26:51.001574
685492	patinca-nu	111	2025-10-11 23:28:48.894033
685493	patinca-nu	49	2025-10-11 23:29:58.243554
685494	patinca-nu	89	2025-10-11 23:35:39.245382
685495	patinca-nu	121	2025-10-11 23:36:56.022526
685496	yes_eo080	81	2025-10-11 23:37:25.467236
685497	yes_eo080	70	2025-10-11 23:38:28.34149
685498	yes_eo080	99	2025-10-11 23:39:18.013644
685499	yes_eo080	75	2025-10-11 23:40:18.559294
685500	yes_eo080	147	2025-10-11 23:40:50.327213
685501	yes_eo080	80	2025-10-11 23:42:03.287985
685502	yes_eo080	114	2025-10-11 23:43:04.025026
685503	yes_eo080	138	2025-10-11 23:44:02.074233
685504	yes_eo080	72	2025-10-11 23:45:03.343835
685505	yes_eo080	88	2025-10-11 23:46:01.651076
685506	yes_eo080	81	2025-10-11 23:47:03.336517
685507	yes_eo080	126	2025-10-12 08:05:50.170002
685508	yes_eo080	63	2025-10-12 08:06:55.239848
685509	yes_eo080	29	2025-10-12 08:07:57.32684
685510	yes_eo080	59	2025-10-12 08:08:58.737273
685511	yes_eo080	111	2025-10-12 08:10:00.757984
685512	yes_eo080	116	2025-10-12 08:10:55.608801
685513	yes_eo080	73	2025-10-12 08:11:57.858814
685514	yes_eo080	35	2025-10-12 08:13:04.83719
685515	yes_eo080	18	2025-10-12 08:14:07.088725
685516	yes_eo080	43	2025-10-12 08:15:17.836713
685517	yes_eo080	81	2025-10-12 08:16:18.188732
685518	yes_eo080	88	2025-10-12 08:17:18.336798
685519	yes_eo080	46	2025-10-12 08:18:20.486734
685520	yes_eo080	28	2025-10-12 08:19:25.804644
685521	yes_eo080	76	2025-10-12 08:20:29.168876
685522	yes_eo080	78	2025-10-12 08:21:34.187995
685523	yes_eo080	61	2025-10-12 08:22:36.320114
685524	daisuke	100	2025-10-12 11:34:56.701545
685525	daisuke	61	2025-10-12 11:35:58.174277
685526	daisuke	133	2025-10-12 11:36:36.627688
685527	daisuke	70	2025-10-12 11:37:38.161392
685528	daisuke	88	2025-10-12 11:38:39.168512
685529	daisuke	120	2025-10-12 11:39:31.051093
685530	daisuke	116	2025-10-12 11:40:27.127622
685531	daisuke	93	2025-10-12 11:41:31.662513
685532	daisuke	86	2025-10-12 11:42:33.191301
685533	daisuke	111	2025-10-12 11:43:34.246095
685534	daisuke	73	2025-10-12 11:44:35.148377
685535	daisuke	87	2025-10-12 11:45:39.011325
685536	daisuke	87	2025-10-12 11:47:29.279796
685537	kfc055	59	2025-10-12 12:28:05.191006
685538	kfc055	52	2025-10-12 12:29:06.185318
685539	kfc055	44	2025-10-12 12:30:07.502545
685540	kfc055	112	2025-10-12 12:31:08.732791
685541	kfc055	25	2025-10-12 12:32:10.382967
685542	kfc055	96	2025-10-12 12:33:02.944722
685543	kfc055	58	2025-10-12 12:34:05.153229
685544	kfc055	46	2025-10-12 12:35:07.372273
685545	kfc055	53	2025-10-12 12:36:09.299619
685546	kfc055	20	2025-10-12 12:37:10.56128
685547	kfc055	48	2025-10-12 12:38:12.901235
685548	kfc055	31	2025-10-12 12:39:15.498529
685549	fuuta_s	46	2025-10-12 15:14:23.245983
685550	fuuta_s	63	2025-10-12 15:15:24.993449
685551	fuuta_s	57	2025-10-12 15:16:26.232084
685552	fuuta_s	42	2025-10-12 15:17:28.063241
685553	atomic	79	2025-10-12 17:00:40.377189
685554	atomic	47	2025-10-12 17:01:52.592152
685555	atomic	33	2025-10-12 17:02:53.874425
685556	kou-1603	77	2025-10-12 17:17:09.660816
685557	kou-1603	103	2025-10-12 17:17:44.459683
685558	kou-1603	95	2025-10-12 17:18:47.117564
685559	kou-1603	97	2025-10-12 17:19:37.399338
685560	kou-1603	99	2025-10-12 17:20:35.988534
685561	kou-1603	102	2025-10-12 17:21:23.185878
685562	kou-1603	60	2025-10-12 17:22:22.115338
685563	kou-1603	89	2025-10-12 17:28:22.364325
685564	kou-1603	108	2025-10-12 17:29:09.320138
685565	tya-han_04	28	2025-10-12 17:45:23.877397
685566	tya-han_04	87	2025-10-12 17:46:21.116355
685567	tya-han_04	50	2025-10-12 17:47:23.423857
685568	tya-han_04	84	2025-10-12 17:48:40.45532
685569	tya-han_04	47	2025-10-12 17:49:45.447797
685570	tya-han_04	39	2025-10-12 17:50:47.879958
685571	tya-han_04	62	2025-10-12 17:51:49.833451
685572	tya-han_04	61	2025-10-12 17:52:51.511219
685573	tya-han_04	86	2025-10-12 17:53:51.109926
685574	tya-han_04	60	2025-10-12 17:54:52.599586
685575	tya-han_04	72	2025-10-12 17:55:54.398041
685576	tya-han_04	48	2025-10-12 17:56:57.332349
685577	tya-han_04	55	2025-10-12 17:58:00.080811
685578	tya-han_04	138	2025-10-12 17:58:38.595381
685579	tya-han_04	58	2025-10-12 17:59:42.226683
685580	yuudai1201	69	2025-10-12 18:04:40.917503
685581	yuudai1201	38	2025-10-12 18:05:57.885431
685582	yuudai1201	14	2025-10-12 18:07:04.635924
685583	yuudai1201	40	2025-10-12 18:08:14.692422
685584	yuudai1201	48	2025-10-12 18:09:20.44155
685585	kou-1603	102	2025-10-12 18:10:17.291583
685586	yuudai1201	30	2025-10-12 18:10:24.297859
685587	yuudai1201	60	2025-10-12 18:11:27.083838
685588	yuudai1201	32	2025-10-12 18:12:33.820436
685589	yuudai1201	57	2025-10-12 18:13:37.059215
685590	yuudai1201	7	2025-10-12 18:14:40.059052
685591	yuudai1201	49	2025-10-12 18:16:17.080762
685592	yuudai1201	48	2025-10-12 18:17:52.292616
685593	yuudai1201	53	2025-10-12 18:18:53.40436
685594	yes_eo080	45	2025-10-12 19:17:33.18371
685595	yes_eo080	65	2025-10-12 19:18:35.848637
685596	yes_eo080	81	2025-10-12 19:19:37.166239
685597	yes_eo080	91	2025-10-12 19:20:39.368341
685598	shudo-220_	51	2025-10-12 20:34:07.105204
685599	shudo-220_	91	2025-10-12 20:35:11.18527
685600	tya-han_04	125	2025-10-12 20:35:19.503718
685601	shudo-220_	73	2025-10-12 20:36:14.528345
685602	tya-han_04	74	2025-10-12 20:36:18.865719
685603	tya-han_04	78	2025-10-12 20:37:21.531748
685604	tya-han_04	85	2025-10-12 20:38:15.957863
685605	tya-han_04	89	2025-10-12 20:39:11.640344
685606	shudo-220_	131	2025-10-12 20:39:23.087253
685607	tya-han_04	22	2025-10-12 20:40:13.388362
685608	shudo-220_	48	2025-10-12 20:40:28.428097
685609	tya-han_04	33	2025-10-12 20:41:14.366936
685610	shudo-220_	46	2025-10-12 20:41:29.940318
685611	tya-han_04	62	2025-10-12 20:42:16.979376
685612	shudo-220_	65	2025-10-12 20:42:31.829045
685613	tya-han_04	93	2025-10-12 20:43:16.689219
685614	shudo-220_	29	2025-10-12 20:43:34.002359
685615	tya-han_04	41	2025-10-12 20:46:23.721662
685616	tya-han_04	101	2025-10-12 20:47:10.77904
685617	tya-han_04	51	2025-10-12 20:48:12.929637
685618	tya-han_04	42	2025-10-12 20:49:15.023603
685619	shudo-220_	61	2025-10-12 20:49:50.351087
685620	kochi	1	2025-10-12 21:21:32.126832
685621	kochi	54	2025-10-12 21:23:37.020809
685622	kochi	51	2025-10-12 21:24:38.777694
685623	kochi	64	2025-10-12 21:25:42.587769
685624	kochi	43	2025-10-12 21:26:51.712121
685625	kochi	54	2025-10-12 21:27:56.618034
685626	kochi	51	2025-10-12 21:29:01.788546
685627	kochi	96	2025-10-12 21:30:27.245338
685628	musiko	80	2025-10-12 22:39:10.142086
685629	musiko	94	2025-10-12 22:40:17.815656
685630	patinca-nu	73	2025-10-12 23:15:12.89949
685631	aritomo	0	2025-10-12 23:15:41.08611
685632	aritomo	17	2025-10-12 23:16:47.670071
685633	aritomo	58	2025-10-12 23:17:51.146915
685634	aritomo	54	2025-10-12 23:18:53.468828
685635	aritomo	45	2025-10-12 23:19:56.147124
685636	aritomo	50	2025-10-12 23:20:58.499352
685637	aritomo	54	2025-10-12 23:22:21.94499
685638	aritomo	65	2025-10-12 23:24:18.344042
685639	aritomo	74	2025-10-12 23:25:20.51094
685640	aritomo	53	2025-10-12 23:26:39.069792
685641	aritomo	27	2025-10-12 23:27:43.564576
685642	kfc055	48	2025-10-12 23:27:46.93575
685643	aritomo	38	2025-10-12 23:28:48.349204
685644	aritomo	98	2025-10-12 23:29:46.820875
685645	aritomo	39	2025-10-12 23:30:49.389508
685646	aritomo	41	2025-10-12 23:31:53.212316
685647	aritomo	32	2025-10-12 23:32:59.255105
685648	aritomo	43	2025-10-12 23:34:01.725647
685649	aritomo	34	2025-10-12 23:35:04.655984
685650	aritomo	41	2025-10-12 23:36:10.116801
685651	ri8_hoon-	48	2025-10-12 23:47:17.55072
685652	ri8_hoon-	61	2025-10-12 23:48:20.952889
685653	ri8_hoon-	59	2025-10-12 23:49:25.638427
685654	ri8_hoon-	69	2025-10-12 23:50:30.167487
685655	ri8_hoon-	46	2025-10-12 23:51:37.272497
685656	ri8_hoon-	128	2025-10-12 23:52:31.552011
685657	ri8_hoon-	67	2025-10-12 23:53:35.709283
685658	ri8_hoon-	62	2025-10-12 23:56:25.860141
685659	ri8_hoon-	133	2025-10-12 23:57:41.918816
685660	ri8_hoon-	140	2025-10-12 23:58:20.843159
685661	ri8_hoon-	54	2025-10-12 23:59:24.46096
685662	ri8_hoon-	101	2025-10-13 00:00:22.082107
685663	ri8_hoon-	32	2025-10-13 00:01:26.357125
685664	ri8_hoon-	20	2025-10-13 00:02:29.31259
685665	ri8_hoon-	34	2025-10-13 00:04:34.748974
685666	ri8_hoon-	62	2025-10-13 00:05:39.010886
685667	ri8_hoon-	53	2025-10-13 00:06:40.937009
685668	ri8_hoon-	67	2025-10-13 00:10:11.269403
685669	ri8_hoon-	75	2025-10-13 00:11:16.407525
685670	ri8_hoon-	27	2025-10-13 00:12:21.01879
685671	ri8_hoon-	85	2025-10-13 00:13:23.8882
685672	ri8_hoon-	53	2025-10-13 00:14:26.245033
685673	ri8_hoon-	46	2025-10-13 00:15:29.02749
685674	ri8_hoon-	0	2025-10-13 00:16:33.265144
685675	ri8_hoon-	17	2025-10-13 00:17:43.097295
685676	ri8_hoon-	40	2025-10-13 00:18:46.378165
685677	ri8_hoon-	11	2025-10-13 00:19:49.08433
685678	ri8_hoon-	80	2025-10-13 00:20:40.818626
685679	ri8_hoon-	0	2025-10-13 00:26:15.245882
685680	ri8_hoon-	0	2025-10-13 00:27:47.122276
685681	ri8_hoon-	126	2025-10-13 00:28:48.600922
685682	yuudai1201	58	2025-10-13 02:02:05.259136
685683	yuudai1201	53	2025-10-13 02:03:19.460606
685684	yuudai1201	42	2025-10-13 02:04:23.725413
685685	yuudai1201	83	2025-10-13 02:05:34.346986
685686	yuudai1201	26	2025-10-13 02:06:39.413076
685687	yuudai1201	59	2025-10-13 02:07:43.808607
685688	yuudai1201	38	2025-10-13 02:08:44.572276
685689	yuudai1201	88	2025-10-13 02:16:56.087288
685690	yes_eo080	60	2025-10-13 06:16:32.163791
685691	yes_eo080	81	2025-10-13 06:17:34.518365
685692	yes_eo080	126	2025-10-13 06:18:27.469354
685693	yes_eo080	79	2025-10-13 06:19:37.718346
685694	yes_eo080	55	2025-10-13 06:20:42.285282
685695	yes_eo080	47	2025-10-13 06:21:44.15257
685696	yes_eo080	70	2025-10-13 06:22:52.680779
685697	yes_eo080	98	2025-10-13 06:23:55.95261
685698	yes_eo080	48	2025-10-13 06:25:08.040628
685699	yes_eo080	81	2025-10-13 06:26:34.924475
685700	yes_eo080	64	2025-10-13 06:27:37.019502
685701	ishumi	55	2025-10-13 06:59:26.516686
685702	ishumi	91	2025-10-13 07:00:25.451415
685703	ishumi	75	2025-10-13 07:01:28.43862
685704	ishumi	43	2025-10-13 07:02:34.637572
685705	ishumi	133	2025-10-13 07:04:57.457416
685706	ishumi	58	2025-10-13 07:08:45.008729
685707	ishumi	61	2025-10-13 07:11:19.719793
685708	ishumi	55	2025-10-13 07:15:04.382598
685709	ishumi	91	2025-10-13 07:16:44.702495
685710	ishumi	40	2025-10-13 07:17:46.546516
685711	ishumi	86	2025-10-13 07:19:43.438856
685712	ishumi	38	2025-10-13 07:20:47.19517
685713	posting	92	2025-10-13 15:41:46.166132
685714	musiko	66	2025-10-13 16:49:52.363429
685715	kota_07-15	43	2025-10-13 16:50:53.061319
685716	musiko	79	2025-10-13 16:50:53.653839
685717	musiko	81	2025-10-13 16:51:56.347183
685718	kota_07-15	118	2025-10-13 16:52:04.551552
685719	musiko	97	2025-10-13 16:52:51.389709
685720	kota_07-15	83	2025-10-13 16:53:07.240902
685721	musiko	47	2025-10-13 16:53:54.351412
685722	kota_07-15	134	2025-10-13 16:54:08.444879
685723	musiko	74	2025-10-13 16:54:59.74568
685724	kota_07-15	58	2025-10-13 16:55:26.048757
685725	musiko	36	2025-10-13 16:56:02.384515
685726	kota_07-15	82	2025-10-13 16:56:27.899222
685727	musiko	95	2025-10-13 16:57:10.807313
685728	kota_07-15	60	2025-10-13 16:57:28.823482
685729	musiko	70	2025-10-13 16:58:13.67264
685730	kota_07-15	55	2025-10-13 16:58:31.487201
685731	musiko	64	2025-10-13 16:59:16.340363
685732	kota_07-15	112	2025-10-13 16:59:37.1299
685733	kota_07-15	68	2025-10-13 17:00:38.754658
685734	musiko	80	2025-10-13 17:00:56.574582
685735	musiko	62	2025-10-13 17:02:09.319583
685736	kota_07-15	34	2025-10-13 17:03:14.545094
685737	kota_07-15	84	2025-10-13 17:04:17.409565
685738	musiko	57	2025-10-13 17:06:59.317313
685739	musiko	45	2025-10-13 17:08:01.26223
685740	musiko	75	2025-10-13 17:09:03.244767
685741	musiko	112	2025-10-13 17:10:05.854258
685742	musiko	52	2025-10-13 17:11:10.33992
685743	tya-han_04	67	2025-10-13 17:46:25.385537
685744	tya-han_04	92	2025-10-13 17:47:25.825659
685745	tya-han_04	48	2025-10-13 17:48:27.55659
685746	tya-han_04	73	2025-10-13 17:49:29.227534
685747	tya-han_04	82	2025-10-13 17:50:31.907924
685748	tya-han_04	101	2025-10-13 17:51:20.004009
685749	tya-han_04	85	2025-10-13 17:52:11.716407
685750	tya-han_04	40	2025-10-13 17:53:17.638574
685751	atomic	49	2025-10-13 18:33:48.73873
685752	atomic	60	2025-10-13 18:34:50.59705
685753	atomic	67	2025-10-13 18:35:52.812703
685754	atomic	68	2025-10-13 18:36:54.788462
685755	vertin15	95	2025-10-13 19:29:34.737801
685756	vertin15	64	2025-10-13 19:30:43.352212
685757	vertin15	77	2025-10-13 19:32:09.294473
685758	vertin15	56	2025-10-13 19:33:35.636244
685759	vertin15	42	2025-10-13 19:34:40.948736
685760	vertin15	73	2025-10-13 19:35:43.536701
685761	vertin15	66	2025-10-13 19:36:49.714774
685762	vertin15	64	2025-10-13 19:37:51.412472
685763	vertin15	48	2025-10-13 19:39:15.459045
685764	vertin15	34	2025-10-13 19:40:19.178623
685765	vertin15	34	2025-10-13 19:41:26.194555
685766	vertin15	64	2025-10-13 19:42:31.38706
685767	vertin15	61	2025-10-13 19:43:37.024901
685768	vertin15	57	2025-10-13 19:44:42.665874
685769	vertin15	60	2025-10-13 19:45:49.581085
685770	vertin15	37	2025-10-13 19:46:55.508871
685771	vertin15	54	2025-10-13 19:48:01.97455
685772	vertin15	60	2025-10-13 19:49:49.469503
685773	vertin15	62	2025-10-13 19:51:00.011012
685774	vertin15	86	2025-10-13 19:52:05.639625
685775	vertin15	52	2025-10-13 19:56:58.017158
685776	vertin15	45	2025-10-13 19:58:04.112592
685777	vertin15	104	2025-10-13 19:59:23.518422
685778	vertin15	99	2025-10-13 20:00:17.483207
685779	vertin15	41	2025-10-13 20:02:58.23391
685780	vertin15	57	2025-10-13 20:04:08.350679
685781	vertin15	49	2025-10-13 20:05:32.202792
685782	vertin15	53	2025-10-13 20:06:57.558358
685783	vertin15	46	2025-10-13 20:08:03.511975
685784	vertin15	62	2025-10-13 20:09:07.944072
685785	vertin15	57	2025-10-13 20:10:56.6095
685786	vertin15	54	2025-10-13 20:12:08.048915
685787	vertin15	45	2025-10-13 20:13:18.006894
685788	vertin15	43	2025-10-13 20:14:27.260513
685789	vertin15	122	2025-10-13 20:15:26.370453
685790	fuuta_s	56	2025-10-13 20:15:55.120815
685791	vertin15	39	2025-10-13 20:16:31.931117
685792	fuuta_s	34	2025-10-13 20:16:58.155924
685793	vertin15	48	2025-10-13 20:17:44.644385
685794	fuuta_s	29	2025-10-13 20:18:00.770895
685795	vertin15	66	2025-10-13 20:19:53.287163
685796	vertin15	40	2025-10-13 20:33:21.885213
685797	vertin15	61	2025-10-13 20:34:28.710251
685798	vertin15	16	2025-10-13 20:35:32.757349
685799	vertin15	74	2025-10-13 20:36:42.033179
685800	vertin15	46	2025-10-13 20:37:46.153084
685801	vertin15	68	2025-10-13 20:38:52.939647
685802	vertin15	44	2025-10-13 20:39:55.752475
685803	vertin15	108	2025-10-13 20:40:35.964228
685804	vertin15	53	2025-10-13 20:41:42.496596
685805	vertin15	47	2025-10-13 20:42:53.964896
685806	vertin15	34	2025-10-13 20:44:01.993411
685807	vertin15	46	2025-10-13 20:45:11.357777
685808	vertin15	37	2025-10-13 20:46:16.370344
685809	vertin15	51	2025-10-13 20:47:20.102843
685810	aritomo	61	2025-10-13 21:31:17.729577
685811	aritomo	62	2025-10-13 21:32:30.828714
685812	aritomo	46	2025-10-13 21:34:06.4358
685813	aritomo	59	2025-10-13 21:35:08.652202
685814	musiko	51	2025-10-13 22:25:29.379046
685815	musiko	70	2025-10-13 22:31:13.126551
685816	musiko	64	2025-10-13 22:32:15.949908
685817	musiko	116	2025-10-13 22:33:13.888819
685818	musiko	55	2025-10-13 22:35:21.56492
685819	okiku_0408	80	2025-10-13 22:38:52.084332
685820	okiku_0408	90	2025-10-13 22:39:55.722555
685821	okiku_0408	86	2025-10-13 22:40:55.043322
685822	okiku_0408	97	2025-10-13 22:41:52.311226
685823	okiku_0408	89	2025-10-13 22:42:53.818641
685824	okiku_0408	100	2025-10-13 22:43:48.245149
685825	okiku_0408	57	2025-10-13 22:44:51.422634
685826	okiku_0408	77	2025-10-13 22:45:55.010032
685827	okiku_0408	82	2025-10-13 22:47:00.01134
685828	okiku_0408	118	2025-10-13 22:47:54.60015
685829	okiku_0408	72	2025-10-13 22:48:56.266018
685830	okiku_0408	53	2025-10-13 22:49:33.728147
685831	musiko	77	2025-10-13 22:50:06.942428
685832	okiku_0408	74	2025-10-13 22:50:35.169613
685833	musiko	71	2025-10-13 22:51:09.383797
685834	okiku_0408	58	2025-10-13 22:51:37.602461
685835	okiku_0408	116	2025-10-13 22:52:14.886147
685836	musiko	69	2025-10-13 22:52:24.203879
685837	musiko	81	2025-10-13 22:53:26.32517
685838	okiku_0408	64	2025-10-13 22:53:28.967529
685839	musiko	123	2025-10-13 22:54:15.953592
685840	okiku_0408	68	2025-10-13 22:54:30.530707
685841	musiko	50	2025-10-13 22:55:18.251984
685842	okiku_0408	113	2025-10-13 22:55:35.892655
685843	musiko	65	2025-10-13 22:56:24.168121
685844	okiku_0408	55	2025-10-13 22:56:46.958426
685845	musiko	48	2025-10-13 22:57:26.282312
685846	okiku_0408	123	2025-10-13 22:57:42.301522
685847	musiko	137	2025-10-13 22:58:08.078577
685848	musiko	67	2025-10-13 22:59:36.264061
685849	musiko	90	2025-10-13 23:00:37.255757
685850	musiko	95	2025-10-13 23:02:00.689788
685851	musiko	93	2025-10-13 23:02:54.318459
685852	musiko	59	2025-10-13 23:03:57.108084
685853	musiko	71	2025-10-13 23:05:00.088625
685854	papico181	57	2025-10-13 23:05:53.294496
685855	musiko	71	2025-10-13 23:06:02.038421
685856	papico181	93	2025-10-13 23:06:53.920428
685857	musiko	48	2025-10-13 23:07:04.592442
685858	papico181	58	2025-10-13 23:08:19.514095
685859	musiko	88	2025-10-13 23:08:38.686133
685860	papico181	80	2025-10-13 23:09:08.879268
685861	shimo1225	85	2025-10-13 23:38:03.129047
685862	shimo1225	83	2025-10-13 23:38:44.495178
685863	shimo1225	101	2025-10-13 23:39:27.657499
685864	shimo1225	98	2025-10-13 23:40:15.990499
685865	shimo1225	81	2025-10-13 23:41:13.631891
685866	shimo1225	87	2025-10-13 23:41:59.23748
685867	papico181	61	2025-10-13 23:42:16.751278
685868	shimo1225	87	2025-10-13 23:43:01.432121
685869	papico181	99	2025-10-13 23:43:17.012573
685870	shimo1225	99	2025-10-13 23:43:51.579073
685871	papico181	73	2025-10-13 23:44:21.902865
685872	shimo1225	89	2025-10-13 23:44:56.628436
685873	papico181	52	2025-10-13 23:45:23.821141
685874	shimo1225	99	2025-10-13 23:46:04.939074
685875	shimo1225	97	2025-10-13 23:47:37.642008
685876	papico181	58	2025-10-13 23:49:26.887404
685877	tya-han_04	74	2025-10-13 23:59:10.009437
685878	tya-han_04	91	2025-10-14 00:00:11.113858
685879	tya-han_04	64	2025-10-14 00:01:13.615257
685880	haru-714	53	2025-10-14 00:04:23.471024
685881	haruuu4	59	2025-10-14 10:04:01.96908
685882	haruuu4	55	2025-10-14 10:05:04.915294
685883	haruuu4	40	2025-10-14 10:06:07.844953
685884	haruuu4	62	2025-10-14 10:07:40.65751
685885	haruuu4	34	2025-10-14 10:08:44.172391
685886	haruuu4	49	2025-10-14 10:09:48.026581
685887	haruuu4	60	2025-10-14 10:10:57.959336
685888	haruuu4	54	2025-10-14 10:12:02.842367
685889	haruuu4	50	2025-10-14 10:13:05.546498
685890	kai-_0224	62	2025-10-14 10:13:56.44098
685891	haruuu4	52	2025-10-14 10:14:07.744777
685892	kai-_0224	33	2025-10-14 10:15:02.381872
685893	okiku_0408	69	2025-10-14 10:25:30.836683
685894	okiku_0408	69	2025-10-14 10:27:01.187605
685895	ri8_hoon-	1	2025-10-14 10:28:20.050496
685896	knt_07	44	2025-10-14 10:28:42.561602
685897	otsukisama	126	2025-10-14 10:28:45.912366
685898	aaaaa	59	2025-10-14 10:28:50.007399
685899	yukiflcx	123	2025-10-14 10:28:53.50526
685900	axvo5145	38	2025-10-14 10:29:00.146005
685901	sa-sa_0127	48	2025-10-14 10:29:14.039133
685902	ishumi	70	2025-10-14 10:29:15.287284
685903	tya-han_04	61	2025-10-14 10:29:28.395674
685904	ri8_hoon-	57	2025-10-14 10:29:31.559806
685905	kfc055	51	2025-10-14 10:29:39.642126
685906	okiku_0408	65	2025-10-14 10:29:42.67753
685907	haruuu4	29	2025-10-14 10:29:45.951171
685908	usshi-	78	2025-10-14 10:29:45.964652
685909	knt_07	58	2025-10-14 10:29:46.503379
685910	hitomi0413	81	2025-10-14 10:29:48.089119
685911	vertin15	65	2025-10-14 10:29:49.97301
685912	aaaaa	46	2025-10-14 10:29:57.573343
685915	daisuke	95	2025-10-14 10:30:04.244907
685916	m0gu	69	2025-10-14 10:30:04.299503
685917	atomic	49	2025-10-14 10:30:05.785976
685918	waku1waku2	89	2025-10-14 10:30:13.882256
685919	sa-sa_0127	39	2025-10-14 10:30:15.970305
685920	ishumi	78	2025-10-14 10:30:22.230541
685922	shishamo	77	2025-10-14 10:30:31.746003
685923	tya-han_04	56	2025-10-14 10:30:32.058672
685913	yukiflcx	91	2025-10-14 10:29:58.92129
685914	axvo5145	39	2025-10-14 10:30:01.657704
685921	shirogane	48	2025-10-14 10:30:30.51205
685924	otsukisama	87	2025-10-14 10:30:36.135502
685925	yuudai1201	70	2025-10-14 10:30:38.208623
685926	ri8_hoon-	65	2025-10-14 10:30:41.090288
685927	mi-01_28	57	2025-10-14 10:30:41.154876
685928	kfc055	59	2025-10-14 10:30:42.116939
685929	kaxejn1	0	2025-10-14 10:30:42.925921
685930	lions-fan1	83	2025-10-14 10:30:43.389462
685931	tyanpo-n88	124	2025-10-14 10:30:45.847938
685932	kou-1603	99	2025-10-14 10:30:47.359543
685933	kiyodai	18	2025-10-14 10:30:50.002711
685934	usshi-	33	2025-10-14 10:30:50.064562
685935	shimo1225	77	2025-10-14 10:30:50.760514
685936	hitomi0413	108	2025-10-14 10:30:56.875678
685937	italia_lia	25	2025-10-14 10:30:59.416624
685938	miyu_0913	77	2025-10-14 10:31:00.469048
685939	masatoshi	28	2025-10-14 10:31:00.995463
685940	yukiflcx	86	2025-10-14 10:31:03.040816
685941	haru-714	26	2025-10-14 10:31:05.236087
685942	axvo5145	32	2025-10-14 10:31:05.435055
685943	daisuke	83	2025-10-14 10:31:05.602842
685944	kota_07-15	86	2025-10-14 10:31:07.043843
685945	atomic	48	2025-10-14 10:31:07.997146
685946	tyankonabe	39	2025-10-14 10:31:16.928485
685947	kochi	55	2025-10-14 10:31:19.152244
685948	posting	88	2025-10-14 10:31:21.259367
685949	mikyu397	54	2025-10-14 10:31:23.603441
685950	ishumi	63	2025-10-14 10:31:24.716094
685951	imora1107	1	2025-10-14 10:31:24.974879
685952	kinniku29	30	2025-10-14 10:31:25.221617
685953	shishamo	121	2025-10-14 10:31:25.369394
685954	waku1waku2	68	2025-10-14 10:31:36.644273
685955	yuudai1201	89	2025-10-14 10:31:42.019035
685956	tya-han_04	71	2025-10-14 10:31:42.776587
685957	otsukisama	82	2025-10-14 10:31:43.557139
685958	lions-fan1	85	2025-10-14 10:31:45.459293
685959	atomic	136	2025-10-14 10:31:47.654887
685960	tyanpo-n88	85	2025-10-14 10:31:50.064507
685961	shimo1225	63	2025-10-14 10:31:50.675101
685962	kiyodai	20	2025-10-14 10:31:51.13227
685963	auct1718	52	2025-10-14 10:31:52.137923
685964	kaxejn1	0	2025-10-14 10:31:53.153247
685965	daisuke	124	2025-10-14 10:31:53.867148
685966	shudo-220_	102	2025-10-14 10:31:54.199449
685967	ha-ruto_00	89	2025-10-14 10:31:54.799472
685968	miyu_0913	85	2025-10-14 10:31:57.360844
685969	axvo5145	100	2025-10-14 10:31:57.363845
685970	italia_lia	39	2025-10-14 10:32:03.510855
685971	aritomo	42	2025-10-14 10:32:04.345728
685972	yukiflcx	132	2025-10-14 10:32:04.774581
685973	usshi-	48	2025-10-14 10:32:05.456441
685974	patinca-nu	131	2025-10-14 10:32:06.224943
685975	shishamo	114	2025-10-14 10:32:08.326859
685976	jo_07-18	57	2025-10-14 10:32:09.655445
685977	akitennis	59	2025-10-14 10:32:11.12959
685978	kota_07-15	29	2025-10-14 10:32:11.418102
685979	hibiki-118	69	2025-10-14 10:32:21.042726
685980	papico181	83	2025-10-14 10:32:21.174762
685981	tyankonabe	48	2025-10-14 10:32:21.174826
685982	sum-lov_13	117	2025-10-14 10:32:25.045007
685983	taiga228	44	2025-10-14 10:32:29.122176
685984	ishumi	62	2025-10-14 10:32:31.929257
685985	shimo1225	107	2025-10-14 10:32:33.709799
685986	haru-714	34	2025-10-14 10:32:36.993336
685987	masatoshi	43	2025-10-14 10:32:39.465193
685988	ask-mog1_1	57	2025-10-14 10:32:41.191902
685989	yuudai1201	54	2025-10-14 10:32:45.504156
685990	waku1waku2	86	2025-10-14 10:32:47.008527
685991	kiyodai	0	2025-10-14 10:32:52.111733
685992	tyanpo-n88	108	2025-10-14 10:32:53.451445
685993	auct1718	85	2025-10-14 10:32:54.938664
685994	shudo-220_	82	2025-10-14 10:32:55.269599
685995	daisuke	84	2025-10-14 10:32:55.694653
685996	miyu_0913	57	2025-10-14 10:32:58.777061
685997	posting	112	2025-10-14 10:33:02.624749
685998	kaxejn1	64	2025-10-14 10:33:03.949302
685999	hitomi0413	70	2025-10-14 10:33:04.349713
686000	usshi-	72	2025-10-14 10:33:06.469869
686001	yukiflcx	66	2025-10-14 10:33:08.747655
686002	jo_07-18	29	2025-10-14 10:33:11.947897
686003	kota_07-15	72	2025-10-14 10:33:12.886504
686004	shishamo	83	2025-10-14 10:33:13.907152
686005	italia_lia	31	2025-10-14 10:33:15.563417
686006	kochi	53	2025-10-14 10:33:19.594098
686007	tyankonabe	84	2025-10-14 10:33:21.247464
686008	hibiki-118	58	2025-10-14 10:33:22.803497
686009	imora1107	77	2025-10-14 10:33:23.058022
686010	ha-ruto_00	44	2025-10-14 10:33:27.281752
686011	satohina13	42	2025-10-14 10:33:27.898152
686012	papico181	117	2025-10-14 10:33:28.908098
686013	fuuta_s	41	2025-10-14 10:33:30.892114
686014	axvo5145	46	2025-10-14 10:33:33.440561
686015	taiga228	67	2025-10-14 10:33:35.977318
686016	ishumi	67	2025-10-14 10:33:42.003323
686017	hibiki-118	122	2025-10-14 10:33:54.695046
686018	shimo1225	87	2025-10-14 10:33:56.41879
686019	shudo-220_	46	2025-10-14 10:34:00.029326
686020	musiko	50	2025-10-14 10:34:03.982462
686021	kota_07-15	63	2025-10-14 10:34:16.768256
686022	fuuta_s	73	2025-10-14 10:34:20.881086
686023	kyama10_	42	2025-10-14 10:34:26.411327
686024	ha-ruto_00	61	2025-10-14 10:34:30.055496
686025	italia_lia	68	2025-10-14 10:34:36.543334
686026	tujiri_01	40	2025-10-14 10:34:45.870794
686027	mt_bird	72	2025-10-14 10:35:01.716897
686028	italia_lia	0	2025-10-14 10:35:05.432151
686029	musiko	87	2025-10-14 10:35:05.643457
686030	yes_eo080	118	2025-10-14 10:35:21.963371
686031	kuri-sou1	92	2025-10-14 10:35:22.658993
686032	tujiri_01	123	2025-10-14 10:35:41.963585
686033	mt_bird	114	2025-10-14 10:35:44.472137
686034	akitennis	75	2025-10-14 10:36:01.512857
686035	tujiri_01	0	2025-10-14 10:36:04.237369
686036	aritomo	66	2025-10-14 10:36:08.455397
686037	hibiki-118	76	2025-10-14 10:36:13.805436
686038	hibiki-118	137	2025-10-14 10:37:02.248683
686039	hibiki-118	68	2025-10-14 10:38:02.319078
686040	kochi	61	2025-10-14 12:01:45.094912
686041	kota_07-15	107	2025-10-14 12:47:29.951925
686042	kota_07-15	87	2025-10-14 12:48:28.513507
686043	kota_07-15	62	2025-10-14 12:49:31.313215
686044	kota_07-15	55	2025-10-14 12:50:53.418004
686045	kota_07-15	43	2025-10-14 12:52:00.625906
686046	kota_07-15	99	2025-10-14 12:53:40.132989
686047	fuuta_s	31	2025-10-14 12:54:47.608358
686048	kota_07-15	65	2025-10-14 12:54:49.485181
686049	kota_07-15	82	2025-10-14 12:55:50.348026
686050	fuuta_s	76	2025-10-14 12:55:52.588061
686051	kota_07-15	42	2025-10-14 12:56:51.510031
686052	fuuta_s	87	2025-10-14 12:56:57.028598
686053	fuuta_s	67	2025-10-14 12:58:00.60623
686054	kota_07-15	64	2025-10-14 12:58:17.006241
686055	fuuta_s	45	2025-10-14 12:59:03.055839
686056	kota_07-15	71	2025-10-14 12:59:18.508098
686057	fuuta_s	51	2025-10-14 13:00:04.752561
686058	kota_07-15	49	2025-10-14 13:00:23.104875
686059	kota_07-15	73	2025-10-14 13:01:31.287573
686060	fuuta_s	79	2025-10-14 13:01:36.541417
686061	kota_07-15	94	2025-10-14 13:02:15.021606
686062	fuuta_s	23	2025-10-14 13:02:37.874781
686063	fuuta_s	86	2025-10-14 13:03:31.124483
686064	fuuta_s	26	2025-10-14 13:04:39.941138
686065	fuuta_s	58	2025-10-14 13:05:46.673665
686066	lions-fan1	120	2025-10-14 13:16:03.235688
686067	lions-fan1	112	2025-10-14 13:16:47.393017
686068	lions-fan1	78	2025-10-14 13:17:54.941923
686069	lions-fan1	81	2025-10-14 13:19:09.733732
686070	lions-fan1	62	2025-10-14 13:21:10.682211
686071	lions-fan1	132	2025-10-14 13:21:51.410141
686072	lions-fan1	95	2025-10-14 13:23:04.78269
686073	lions-fan1	77	2025-10-14 13:26:30.265406
686074	lions-fan1	86	2025-10-14 13:28:18.927453
686075	lions-fan1	117	2025-10-14 13:29:15.006784
686076	lions-fan1	79	2025-10-14 13:30:19.35023
686077	lions-fan1	77	2025-10-14 13:31:20.662488
686078	lions-fan1	127	2025-10-14 13:32:46.179405
686079	lions-fan1	104	2025-10-14 13:34:08.383855
686080	lions-fan1	93	2025-10-14 13:34:57.276438
686081	lions-fan1	137	2025-10-14 13:35:38.364388
686082	ask-mog1_1	56	2025-10-14 14:41:18.607835
686083	haru-714	75	2025-10-14 14:42:00.715182
686084	ask-mog1_1	57	2025-10-14 14:42:21.174865
686085	ask-mog1_1	77	2025-10-14 14:43:24.333524
686086	ask-mog1_1	65	2025-10-14 14:44:28.241445
686087	ask-mog1_1	95	2025-10-14 14:45:24.551496
686088	ask-mog1_1	43	2025-10-14 14:46:25.939693
686089	ask-mog1_1	50	2025-10-14 14:47:29.838862
686090	ask-mog1_1	56	2025-10-14 14:48:35.23774
686091	ask-mog1_1	67	2025-10-14 14:49:38.184932
686092	auct1718	19	2025-10-14 14:50:32.274181
686093	ask-mog1_1	45	2025-10-14 14:51:10.254444
686094	auct1718	42	2025-10-14 14:51:34.739002
686095	ask-mog1_1	44	2025-10-14 14:52:15.024906
686096	auct1718	55	2025-10-14 14:52:37.197178
686097	auct1718	76	2025-10-14 14:53:40.149436
686098	auct1718	59	2025-10-14 14:54:43.437081
686099	auct1718	59	2025-10-14 14:55:47.883831
686100	auct1718	45	2025-10-14 14:56:49.108801
686101	auct1718	33	2025-10-14 14:57:52.050733
686102	auct1718	82	2025-10-14 14:58:56.099977
686103	auct1718	16	2025-10-14 15:00:06.96933
686104	auct1718	48	2025-10-14 15:03:21.569371
686105	auct1718	43	2025-10-14 15:04:23.873267
686106	auct1718	56	2025-10-14 15:05:28.97884
686107	okiku_0408	96	2025-10-14 16:32:35.120825
686108	okiku_0408	122	2025-10-14 16:33:31.773632
686109	auct1718	33	2025-10-14 17:38:54.852479
686110	auct1718	36	2025-10-14 17:39:58.59599
686111	auct1718	41	2025-10-14 17:41:00.754254
686112	auct1718	43	2025-10-14 17:42:22.924905
686113	yukiflcx	67	2025-10-14 20:32:13.264162
686114	yukiflcx	62	2025-10-14 20:33:15.814496
686115	yukiflcx	145	2025-10-14 20:33:46.00976
686116	yukiflcx	112	2025-10-14 20:34:47.604706
686117	yukiflcx	61	2025-10-14 20:35:49.103257
686118	yukiflcx	115	2025-10-14 20:36:48.409519
686119	yukiflcx	69	2025-10-14 20:37:50.749323
686120	tujiri_01	83	2025-10-14 21:57:44.852443
686121	tujiri_01	138	2025-10-14 21:58:35.584798
686122	okiku_0408	86	2025-10-14 22:00:41.79666
686123	okiku_0408	59	2025-10-14 22:01:43.525333
686124	okiku_0408	132	2025-10-14 22:02:24.422544
686125	okiku_0408	140	2025-10-14 22:02:56.639808
686126	okiku_0408	81	2025-10-14 22:03:57.678298
686127	okiku_0408	88	2025-10-14 22:05:05.865685
686128	okiku_0408	70	2025-10-14 22:06:06.984174
686129	okiku_0408	89	2025-10-14 22:07:04.621756
686130	okiku_0408	122	2025-10-14 22:07:54.437555
686131	okiku_0408	88	2025-10-14 22:08:45.44418
686132	okiku_0408	120	2025-10-14 22:09:37.958641
686133	okiku_0408	124	2025-10-14 22:10:26.854076
686134	okiku_0408	76	2025-10-14 22:11:28.006586
686135	okiku_0408	78	2025-10-14 22:12:29.873006
686136	okiku_0408	121	2025-10-14 22:13:24.631418
686137	axvo5145	47	2025-10-15 11:53:29.976493
686138	axvo5145	50	2025-10-15 11:54:32.840298
686139	axvo5145	130	2025-10-15 11:55:18.008735
686140	axvo5145	39	2025-10-15 11:56:20.781521
686141	kota_07-15	59	2025-10-15 12:30:10.77586
686142	kota_07-15	59	2025-10-15 12:31:21.172775
686143	kota_07-15	47	2025-10-15 12:32:26.172349
686144	kota_07-15	55	2025-10-15 12:33:28.071883
686145	kota_07-15	61	2025-10-15 12:34:29.961241
686146	kota_07-15	84	2025-10-15 12:35:32.274109
686147	kota_07-15	92	2025-10-15 12:36:26.310407
686148	kota_07-15	61	2025-10-15 12:37:28.185354
686149	kota_07-15	68	2025-10-15 12:38:30.288781
686150	kota_07-15	116	2025-10-15 12:39:27.149571
686151	yes_eo080	62	2025-10-15 16:01:10.127281
686152	yes_eo080	74	2025-10-15 16:02:10.235079
686153	yes_eo080	65	2025-10-15 16:03:09.32499
686154	yes_eo080	112	2025-10-15 16:03:44.689029
686155	yes_eo080	82	2025-10-15 16:04:53.571376
686156	yes_eo080	77	2025-10-15 16:05:54.714341
686157	yes_eo080	111	2025-10-15 16:06:55.463444
686158	yes_eo080	68	2025-10-15 16:08:58.984668
686159	yes_eo080	130	2025-10-15 16:09:41.13406
686160	yes_eo080	54	2025-10-15 16:10:45.474875
686161	yukiflcx	113	2025-10-15 19:08:58.365334
686162	yukiflcx	50	2025-10-15 19:09:59.838418
686163	yukiflcx	82	2025-10-15 19:11:04.135171
686164	yukiflcx	71	2025-10-15 19:12:06.318535
686165	yukiflcx	84	2025-10-15 19:13:04.728735
686166	yukiflcx	71	2025-10-15 19:14:07.241222
686167	tya-han_04	68	2025-10-15 21:33:45.257368
686168	tya-han_04	71	2025-10-15 21:34:47.086128
686169	tya-han_04	70	2025-10-15 21:35:49.06547
686170	tya-han_04	62	2025-10-15 21:36:49.595034
686171	tya-han_04	73	2025-10-15 21:37:51.25109
686172	tya-han_04	65	2025-10-15 21:38:53.093008
686173	tya-han_04	55	2025-10-15 21:39:30.793861
686174	tya-han_04	92	2025-10-15 21:40:24.992465
686175	tya-han_04	61	2025-10-15 21:41:28.120442
686176	tya-han_04	67	2025-10-15 21:42:29.857072
686177	tya-han_04	56	2025-10-15 21:43:32.448613
686178	hkimura	67	2025-10-16 09:31:51.610111
686179	hkimura	30	2025-10-16 09:32:39.919668
686180	hkimura	80	2025-10-16 09:33:33.512726
686181	hkimura	98	2025-10-16 09:34:26.524313
686182	hkimura	92	2025-10-16 09:35:22.731492
686183	hkimura	4	2025-10-16 09:36:28.670817
686184	hkimura	114	2025-10-16 09:37:13.471209
686185	hkimura	73	2025-10-16 09:38:24.685344
686186	hkimura	75	2025-10-16 09:39:32.653306
686187	hkimura	103	2025-10-16 09:40:34.266397
686188	kota_07-15	62	2025-10-16 10:30:10.432389
686189	kota_07-15	54	2025-10-16 10:31:12.685791
686190	kota_07-15	72	2025-10-16 10:32:14.810893
686191	kota_07-15	47	2025-10-16 10:33:20.692012
686192	kota_07-15	89	2025-10-16 10:34:23.06397
686193	kota_07-15	76	2025-10-16 10:35:26.036189
686194	lions-fan1	75	2025-10-16 10:35:47.441477
686195	kota_07-15	34	2025-10-16 10:36:29.343838
686196	kota_07-15	74	2025-10-16 10:37:31.632705
686197	lions-fan1	67	2025-10-16 10:38:13.000992
686198	kota_07-15	101	2025-10-16 10:38:23.429801
686199	lions-fan1	100	2025-10-16 10:38:57.360374
686200	kota_07-15	118	2025-10-16 10:39:18.505257
686201	lions-fan1	73	2025-10-16 11:00:08.596787
686202	lions-fan1	68	2025-10-16 11:01:17.313878
686203	lions-fan1	94	2025-10-16 11:02:14.71966
686204	lions-fan1	63	2025-10-16 11:03:52.638195
686205	lions-fan1	143	2025-10-16 11:04:22.987783
686206	lions-fan1	90	2025-10-16 11:05:45.047802
686207	lions-fan1	61	2025-10-16 13:13:57.7281
686208	gira	72	2025-10-16 16:43:27.755066
686209	gira	35	2025-10-16 16:44:30.740079
686210	gira	114	2025-10-16 16:45:29.352993
686211	gira	46	2025-10-16 16:46:30.475295
686212	gira	119	2025-10-16 16:47:24.872809
686213	gira	96	2025-10-16 16:48:21.545975
686214	gira	94	2025-10-16 16:49:22.326067
686215	tya-han_04	31	2025-10-16 17:09:54.37043
686216	tya-han_04	60	2025-10-16 17:10:56.316673
686217	tya-han_04	60	2025-10-16 17:11:57.874777
686218	tya-han_04	76	2025-10-16 17:12:59.922095
686219	tya-han_04	45	2025-10-16 17:14:01.583005
686220	tya-han_04	51	2025-10-16 17:15:03.278752
686221	tya-han_04	47	2025-10-16 17:16:04.351825
686222	tya-han_04	52	2025-10-16 17:17:05.949754
686223	tya-han_04	64	2025-10-16 17:18:07.256832
686224	tya-han_04	72	2025-10-16 17:19:09.373212
686225	tya-han_04	47	2025-10-16 17:20:13.253572
686226	yes_eo080	139	2025-10-16 20:40:16.087812
686227	yes_eo080	95	2025-10-16 21:05:45.471369
686228	yukiflcx	128	2025-10-17 00:29:00.442038
686229	hkimura	77	2025-10-17 09:14:50.888636
686230	hkimura	80	2025-10-17 09:15:56.437142
686231	hkimura	93	2025-10-17 09:17:06.928329
686232	hkimura	146	2025-10-17 09:17:40.62591
686233	hkimura	105	2025-10-17 09:18:49.766843
686234	hkimura	69	2025-10-17 09:19:50.846902
686235	hkimura	124	2025-10-17 09:20:53.579883
686236	gira	93	2025-10-17 15:36:10.798185
686237	gira	71	2025-10-17 15:37:12.489387
686238	gira	49	2025-10-17 15:38:10.364898
686239	kuri-sou1	54	2025-10-17 17:17:05.934123
686240	kuri-sou1	71	2025-10-17 17:18:08.458386
686241	lions-fan1	142	2025-10-17 17:45:41.780512
686242	musiko	50	2025-10-17 21:17:09.149153
686243	musiko	113	2025-10-17 21:18:10.445064
686244	musiko	74	2025-10-17 21:19:14.285401
686245	musiko	76	2025-10-17 21:20:15.606856
686246	musiko	68	2025-10-17 21:21:25.256213
686247	musiko	92	2025-10-17 21:22:19.504074
686248	musiko	83	2025-10-17 21:23:25.229453
686249	musiko	64	2025-10-17 21:24:27.624561
686250	musiko	129	2025-10-17 21:25:13.679455
686251	musiko	67	2025-10-17 21:27:08.087734
686252	musiko	93	2025-10-17 21:27:55.614553
686253	musiko	71	2025-10-17 21:28:56.829395
686254	musiko	44	2025-10-17 21:29:58.714008
686255	tya-han_04	95	2025-10-17 22:55:34.822262
686256	tya-han_04	92	2025-10-17 22:57:17.810388
686257	tya-han_04	64	2025-10-17 22:58:19.638249
686258	tya-han_04	33	2025-10-18 13:25:34.552018
686259	tya-han_04	75	2025-10-18 13:26:37.445266
686260	tya-han_04	53	2025-10-18 13:27:38.563319
686261	tya-han_04	38	2025-10-18 13:28:39.600035
686262	tya-han_04	46	2025-10-18 13:29:41.226475
686263	tya-han_04	57	2025-10-18 13:30:43.139602
686264	tya-han_04	59	2025-10-18 13:31:44.751875
686265	tya-han_04	0	2025-10-18 13:32:08.193938
686266	lions-fan1	99	2025-10-18 13:32:53.989386
686267	tya-han_04	79	2025-10-18 13:33:21.780536
686268	lions-fan1	66	2025-10-18 13:33:52.897808
686269	tya-han_04	57	2025-10-18 13:34:26.162563
686270	lions-fan1	106	2025-10-18 13:34:56.048809
686271	tya-han_04	42	2025-10-18 13:35:28.606476
686272	lions-fan1	55	2025-10-18 13:35:58.318601
686273	lions-fan1	136	2025-10-18 13:36:35.954989
686274	lions-fan1	73	2025-10-18 13:37:46.98327
686275	lions-fan1	82	2025-10-18 13:39:23.650321
686276	lions-fan1	95	2025-10-18 13:40:25.732836
686277	lions-fan1	74	2025-10-18 13:41:42.281621
686278	kuri-sou1	67	2025-10-18 14:49:16.968116
686279	kuri-sou1	68	2025-10-18 14:50:21.032802
686280	kuri-sou1	55	2025-10-18 14:51:52.215497
686281	kuri-sou1	64	2025-10-18 14:53:15.518934
686282	kuri-sou1	62	2025-10-18 14:54:17.935413
686283	kuri-sou1	55	2025-10-18 14:55:31.28686
686284	kuri-sou1	73	2025-10-18 14:57:01.350236
686285	kuri-sou1	38	2025-10-18 14:58:04.84878
686286	kuri-sou1	111	2025-10-18 14:58:47.076321
686287	kuri-sou1	112	2025-10-18 14:59:29.330269
686288	kuri-sou1	55	2025-10-18 15:00:35.053396
686289	kuri-sou1	63	2025-10-18 15:01:38.482934
686290	kuri-sou1	59	2025-10-18 15:02:54.181624
686291	kuri-sou1	79	2025-10-18 15:03:59.619746
686292	kuri-sou1	69	2025-10-18 15:05:02.938243
686293	kuri-sou1	54	2025-10-18 15:06:06.988896
686294	lions-fan1	94	2025-10-18 17:55:44.30335
686295	lions-fan1	59	2025-10-18 17:56:45.829013
686296	lions-fan1	98	2025-10-18 17:57:52.006114
686297	lions-fan1	135	2025-10-18 17:58:47.555115
686298	lions-fan1	140	2025-10-18 18:00:05.842939
686299	lions-fan1	99	2025-10-18 18:01:46.505744
686300	yes_eo080	127	2025-10-18 23:32:43.443081
686301	yes_eo080	93	2025-10-18 23:56:37.651243
686302	yes_eo080	78	2025-10-18 23:57:39.0667
686303	yes_eo080	109	2025-10-18 23:58:09.906355
686304	yes_eo080	135	2025-10-18 23:58:46.603674
686305	yes_eo080	89	2025-10-18 23:59:48.075844
686306	waku1waku2	125	2025-10-19 00:59:10.683493
686307	waku1waku2	95	2025-10-19 01:00:07.648552
686308	lions-fan1	106	2025-10-19 14:08:28.80667
686309	lions-fan1	97	2025-10-19 14:09:40.135244
686310	lions-fan1	133	2025-10-19 14:12:25.981225
686311	lions-fan1	81	2025-10-19 14:15:22.852913
686312	mt_bird	124	2025-10-19 18:16:28.709489
686313	mt_bird	69	2025-10-19 18:17:29.505021
686314	mt_bird	73	2025-10-19 18:18:30.405043
686315	mt_bird	112	2025-10-19 18:19:13.546085
686316	mt_bird	81	2025-10-19 18:20:17.517713
686317	mt_bird	88	2025-10-19 18:21:15.780693
686318	mt_bird	106	2025-10-19 18:22:00.543529
686319	mt_bird	125	2025-10-19 18:22:27.361142
686320	mt_bird	111	2025-10-19 18:23:14.734596
686321	mt_bird	60	2025-10-19 18:24:16.223854
686322	mt_bird	111	2025-10-19 18:25:19.480748
686323	mt_bird	108	2025-10-19 18:26:14.316678
686324	mt_bird	135	2025-10-19 18:27:08.624009
686325	shudo-220_	103	2025-10-20 08:54:54.991469
686326	hkimura	86	2025-10-20 09:51:45.442683
686327	hkimura	67	2025-10-20 09:52:49.17557
686328	hkimura	86	2025-10-20 09:53:40.215074
686329	hkimura	73	2025-10-20 09:54:46.910014
686330	hkimura	138	2025-10-20 09:55:31.010357
686331	hkimura	95	2025-10-20 09:56:32.749145
686332	hkimura	58	2025-10-20 09:57:30.283222
686333	hkimura	82	2025-10-20 09:58:41.772644
686334	lions-fan1	113	2025-10-20 10:04:32.254663
686335	lions-fan1	85	2025-10-20 10:05:32.174866
686336	lions-fan1	105	2025-10-20 10:06:24.444309
686337	fuuta_s	28	2025-10-20 10:49:09.471004
686338	fuuta_s	43	2025-10-20 10:50:10.966517
686339	fuuta_s	8	2025-10-20 10:51:11.904042
686340	lions-fan1	103	2025-10-20 11:12:59.408723
686341	lions-fan1	87	2025-10-20 11:14:02.115826
686342	mi-01_28	58	2025-10-20 12:37:19.004546
686343	mi-01_28	69	2025-10-20 13:01:23.052371
686344	mi-01_28	30	2025-10-20 13:02:55.622088
686345	lions-fan1	61	2025-10-20 14:14:10.610852
686346	gira	24	2025-10-20 14:55:58.01779
686347	gira	73	2025-10-20 14:57:00.548696
686348	gira	50	2025-10-20 15:27:49.875721
686349	aritomo	58	2025-10-20 15:42:34.243289
686350	aritomo	86	2025-10-20 15:47:51.391839
686351	yes_eo080	90	2025-10-20 18:08:41.653984
686352	lions-fan1	101	2025-10-20 22:55:49.417664
686353	hkimura	122	2025-10-21 10:15:47.342167
686354	hkimura	89	2025-10-21 10:16:45.078215
686355	kai-_0224	36	2025-10-21 10:16:56.143346
686356	hkimura	96	2025-10-21 10:17:44.384571
686357	kai-_0224	52	2025-10-21 10:18:04.218283
686358	hkimura	77	2025-10-21 10:18:45.377735
686359	hkimura	67	2025-10-21 10:19:54.979132
686360	hkimura	106	2025-10-21 10:20:44.395939
686361	satohina13	59	2025-10-21 10:26:47.526441
686362	kfc055	51	2025-10-21 10:26:48.010111
686363	taiga228	50	2025-10-21 10:27:10.684837
686364	usshi-	58	2025-10-21 10:27:12.430075
686365	akitennis	68	2025-10-21 10:27:16.409807
686366	otsukisama	87	2025-10-21 10:27:29.913453
686367	haruuu4	40	2025-10-21 10:27:32.349435
686368	shudo-220_	80	2025-10-21 10:27:37.651509
686369	mikyu397	74	2025-10-21 10:27:39.773996
686370	sa-sa_0127	49	2025-10-21 10:27:41.59375
686371	kfc055	28	2025-10-21 10:27:49.99542
686372	shishamo	92	2025-10-21 10:27:50.115265
686373	italia_lia	28	2025-10-21 10:27:50.75369
686374	satohina13	38	2025-10-21 10:28:08.707082
686375	ishumi	95	2025-10-21 10:28:11.748483
686376	haru-714	61	2025-10-21 10:28:16.08409
686377	kou-1603	92	2025-10-21 10:28:16.653883
686378	waku1waku2	74	2025-10-21 10:28:18.068224
686379	lions-fan1	75	2025-10-21 10:28:20.281299
686380	usshi-	60	2025-10-21 10:28:21.122329
686381	shishamo	125	2025-10-21 10:28:26.202447
686382	ha-ruto_00	123	2025-10-21 10:28:28.565726
686383	kochi	41	2025-10-21 10:28:29.985838
686384	axvo5145	38	2025-10-21 10:28:31.143528
686385	kaxejn1	39	2025-10-21 10:28:31.780925
686386	otsukisama	49	2025-10-21 10:28:33.331833
686387	akitennis	84	2025-10-21 10:28:34.820861
686388	haruuu4	61	2025-10-21 10:28:36.349654
686389	shudo-220_	92	2025-10-21 10:28:39.530093
686390	aaaaa	51	2025-10-21 10:28:39.948726
686391	mikyu397	61	2025-10-21 10:28:43.920064
686392	inu255-12	50	2025-10-21 10:28:44.257073
686393	ri8_hoon-	47	2025-10-21 10:28:47.838206
686394	musiko	82	2025-10-21 10:28:48.29877
686395	kai-_0224	47	2025-10-21 10:28:49.442263
686396	auct1718	43	2025-10-21 10:28:50.842778
686397	taiga228	62	2025-10-21 10:28:51.232675
686398	posting	80	2025-10-21 10:28:52.193399
686399	italia_lia	54	2025-10-21 10:28:54.233725
686400	m0gu	69	2025-10-21 10:28:56.896481
686401	okiku_0408	77	2025-10-21 10:29:02.988976
686402	kinniku29	13	2025-10-21 10:29:04.443016
686403	kota_07-15	41	2025-10-21 10:29:05.229815
686404	shimo1225	64	2025-10-21 10:29:08.775309
686405	satohina13	76	2025-10-21 10:29:15.135325
686406	ishumi	57	2025-10-21 10:29:15.153943
686407	papico181	64	2025-10-21 10:29:16.194191
686408	tya-han_04	0	2025-10-21 10:29:17.558598
686409	waku1waku2	64	2025-10-21 10:29:21.273404
686410	shishamo	104	2025-10-21 10:29:23.941798
686411	jo_07-18	59	2025-10-21 10:29:27.698982
686412	ha-ruto_00	44	2025-10-21 10:29:30.289091
686413	atomic	79	2025-10-21 10:29:31.784221
686414	kaxejn1	77	2025-10-21 10:29:32.605076
686415	usshi-	58	2025-10-21 10:29:33.414604
686416	axvo5145	93	2025-10-21 10:29:34.081272
686417	kochi	117	2025-10-21 10:29:36.895487
686418	tyankonabe	20	2025-10-21 10:29:38.938494
686419	inu255-12	104	2025-10-21 10:29:49.310486
686420	knt_07	30	2025-10-21 10:29:50.672758
686421	posting	124	2025-10-21 10:29:51.256147
686422	kai-_0224	0	2025-10-21 10:29:51.881055
686423	shimo1225	82	2025-10-21 10:29:56.505367
686424	hibiki-118	61	2025-10-21 10:29:59.519261
686425	musiko	78	2025-10-21 10:30:01.329177
686426	kiyodai	50	2025-10-21 10:30:02.977563
686427	italia_lia	55	2025-10-21 10:30:02.999848
686428	waku1waku2	105	2025-10-21 10:30:09.427983
686429	kinniku29	37	2025-10-21 10:30:09.695596
686430	okiku_0408	89	2025-10-21 10:30:11.711766
686431	patinca-nu	64	2025-10-21 10:30:12.38941
686432	shudo-220_	122	2025-10-21 10:30:13.295262
686433	aritomo	58	2025-10-21 10:30:13.446269
686434	auct1718	23	2025-10-21 10:30:14.029933
686435	yuudai1201	124	2025-10-21 10:30:17.000365
686436	lions-fan1	60	2025-10-21 10:30:18.603474
686437	kota_07-15	71	2025-10-21 10:30:18.66992
686438	miyu_0913	84	2025-10-21 10:30:19.078368
686439	papico181	51	2025-10-21 10:30:19.604194
686440	tya-han_04	63	2025-10-21 10:30:20.473058
686441	axvo4241	69	2025-10-21 10:30:21.154161
686442	ishumi	68	2025-10-21 10:30:21.854862
686443	taiga228	35	2025-10-21 10:30:21.855002
686444	aaaaa	80	2025-10-21 10:30:24.314487
686445	atomic	118	2025-10-21 10:30:26.121916
686446	ha-ruto_00	24	2025-10-21 10:30:32.346272
686447	imora1107	129	2025-10-21 10:30:32.430513
686448	tyanpo-n88	47	2025-10-21 10:30:34.048786
686449	usshi-	62	2025-10-21 10:30:36.802213
686450	tyankonabe	122	2025-10-21 10:30:38.421905
686451	kuri-sou1	70	2025-10-21 10:30:41.097629
686452	knt_07	95	2025-10-21 10:30:41.126185
686453	shimo1225	104	2025-10-21 10:30:41.729673
686454	hitomi0413	75	2025-10-21 10:30:45.314792
686455	axvo5145	37	2025-10-21 10:30:47.030116
686456	kaxejn1	87	2025-10-21 10:30:48.895485
686457	shirogane	130	2025-10-21 10:30:49.44353
686458	inu255-12	65	2025-10-21 10:30:53.707147
686459	shishamo	135	2025-10-21 10:30:56.244105
686460	akitennis	91	2025-10-21 10:31:01.128283
686461	hibiki-118	22	2025-10-21 10:31:02.222042
686462	waku1waku2	74	2025-10-21 10:31:11.575032
686463	italia_lia	55	2025-10-21 10:31:13.445087
686464	kiyodai	55	2025-10-21 10:31:13.960611
686465	tyanpo-n88	83	2025-10-21 10:31:14.324685
686466	otsukisama	79	2025-10-21 10:31:15.180478
686467	shudo-220_	45	2025-10-21 10:31:15.958867
686468	okiku_0408	66	2025-10-21 10:31:16.444699
686469	yuudai1201	46	2025-10-21 10:31:18.30264
686470	jo_07-18	54	2025-10-21 10:31:19.44474
686471	kota_07-15	45	2025-10-21 10:31:20.494059
686472	miyu_0913	58	2025-10-21 10:31:21.072089
686473	usshi-	132	2025-10-21 10:31:21.648795
686474	haru-714	30	2025-10-21 10:31:22.786101
686475	tya-han_04	21	2025-10-21 10:31:22.888224
686476	axvo4241	82	2025-10-21 10:31:23.791591
686477	kai-_0224	47	2025-10-21 10:31:24.035639
686478	atomic	90	2025-10-21 10:31:28.272168
686479	lions-fan1	81	2025-10-21 10:31:29.161261
686480	aritomo	49	2025-10-21 10:31:29.482513
686481	papico181	68	2025-10-21 10:31:29.627286
686482	kyama10_	37	2025-10-21 10:31:30.512497
686483	shimo1225	66	2025-10-21 10:31:32.331828
686484	ha-ruto_00	62	2025-10-21 10:31:34.127549
686485	musiko	80	2025-10-21 10:31:42.126216
686486	kuri-sou1	60	2025-10-21 10:31:45.099435
686487	posting	86	2025-10-21 10:31:45.23173
686489	hitomi0413	42	2025-10-21 10:31:47.253113
686490	akitennis	87	2025-10-21 10:31:47.748586
686492	daisuke	91	2025-10-21 10:32:02.639774
686496	kiyodai	59	2025-10-21 10:32:15.825849
686497	shimo1225	40	2025-10-21 10:32:17.335873
686499	ask-mog1_1	118	2025-10-21 10:32:20.185051
686500	yukiflcx	125	2025-10-21 10:32:23.439907
686501	tya-han_04	49	2025-10-21 10:32:24.778603
686502	tyankonabe	46	2025-10-21 10:32:25.690141
686504	hibiki-118	104	2025-10-21 10:32:34.305587
686488	knt_07	124	2025-10-21 10:31:46.063859
686491	sum-lov_13	23	2025-10-21 10:31:49.507252
686493	hibiki-118	73	2025-10-21 10:32:03.183006
686494	tyanpo-n88	116	2025-10-21 10:32:11.630184
686498	shudo-220_	60	2025-10-21 10:32:19.029008
686503	lions-fan1	91	2025-10-21 10:32:30.911611
686505	ha-ruto_00	80	2025-10-21 10:32:37.39961
686506	aritomo	54	2025-10-21 10:32:41.00789
686507	musiko	70	2025-10-21 10:32:48.633562
686510	daisuke	94	2025-10-21 10:32:59.145991
686511	tya-han_04	70	2025-10-21 10:33:27.585658
686513	yukiflcx	62	2025-10-21 10:33:34.323142
686514	daisuke	106	2025-10-21 10:33:42.744025
686515	a-sakito13	24	2025-10-21 10:33:57.76478
686517	vertin15	46	2025-10-21 10:34:26.066482
686518	aritomo	76	2025-10-21 10:34:46.128965
686495	waku1waku2	68	2025-10-21 10:32:13.793552
686508	mt_bird	79	2025-10-21 10:32:52.175836
686509	yes_eo080	0	2025-10-21 10:32:56.845195
686512	mt_bird	116	2025-10-21 10:33:31.309371
686516	yes_eo080	83	2025-10-21 10:34:12.477266
686519	kaxejn1	66	2025-10-21 11:46:15.332666
686520	lions-fan1	130	2025-10-21 12:52:31.731037
686521	lions-fan1	67	2025-10-21 13:35:54.56633
686522	lions-fan1	115	2025-10-21 16:20:38.507099
686523	shimo1225	94	2025-10-21 21:59:17.558453
686524	shimo1225	0	2025-10-21 21:59:30.88775
686525	shimo1225	84	2025-10-21 22:00:20.687901
686526	shimo1225	70	2025-10-21 22:01:20.650258
686527	shimo1225	85	2025-10-21 22:02:10.085987
686528	shimo1225	71	2025-10-21 22:02:51.944097
686529	shimo1225	32	2025-10-21 22:03:35.950702
686530	shimo1225	90	2025-10-21 22:04:23.431529
686531	shimo1225	63	2025-10-21 22:05:14.486452
686532	shimo1225	124	2025-10-21 22:05:38.982314
686533	shimo1225	67	2025-10-21 22:06:31.266723
686534	lions-fan1	128	2025-10-22 12:42:20.069682
686535	lions-fan1	63	2025-10-22 15:06:02.996322
686536	tyanpo-n88	75	2025-10-22 23:01:21.958149
686537	tyanpo-n88	92	2025-10-22 23:02:18.202621
686538	tyanpo-n88	121	2025-10-22 23:03:09.644614
686539	lions-fan1	79	2025-10-22 23:28:07.2156
686540	lions-fan1	128	2025-10-22 23:29:06.462489
686541	shimo1225	56	2025-10-22 23:48:11.023191
686542	shimo1225	83	2025-10-22 23:48:56.758662
686543	shimo1225	118	2025-10-22 23:49:29.5128
686544	shimo1225	82	2025-10-22 23:50:07.226486
686545	shimo1225	90	2025-10-22 23:50:54.750643
686546	shimo1225	74	2025-10-22 23:51:41.552245
686547	shimo1225	90	2025-10-22 23:52:27.013614
686548	shimo1225	117	2025-10-22 23:53:02.274755
686549	shimo1225	93	2025-10-22 23:53:47.161849
686550	shimo1225	63	2025-10-22 23:54:49.342367
686551	shimo1225	95	2025-10-22 23:55:45.164808
686552	lions-fan1	98	2025-10-23 00:25:20.011764
686553	lions-fan1	84	2025-10-23 00:26:43.180223
686554	kuri-sou1	72	2025-10-23 07:46:10.58209
686555	lions-fan1	86	2025-10-23 11:32:55.278986
686556	lions-fan1	108	2025-10-23 11:33:43.51911
686557	lions-fan1	118	2025-10-23 11:39:35.640702
686558	gira	66	2025-10-23 13:58:28.771337
686559	axvo5145	54	2025-10-23 14:34:03.831358
686560	axvo5145	62	2025-10-23 14:36:01.094567
686561	fuuta_s	77	2025-10-23 14:48:01.514546
686562	fuuta_s	39	2025-10-23 14:49:04.730573
686563	fuuta_s	39	2025-10-23 14:50:08.84525
686564	fuuta_s	95	2025-10-23 14:50:54.348005
686565	fuuta_s	92	2025-10-23 14:52:02.148438
686566	fuuta_s	37	2025-10-23 14:53:03.20454
686567	fuuta_s	44	2025-10-23 14:54:06.185914
686568	kyama10_	25	2025-10-23 15:43:55.816537
686569	kyama10_	15	2025-10-23 15:44:57.519343
686570	kyama10_	45	2025-10-23 15:45:59.677704
686571	kyama10_	43	2025-10-23 15:47:01.267482
686572	tya-han_04	73	2025-10-23 16:16:48.982332
686573	tya-han_04	71	2025-10-23 16:17:50.184753
686574	tya-han_04	56	2025-10-23 16:18:52.414491
686575	tya-han_04	128	2025-10-23 16:20:11.340526
686576	tya-han_04	47	2025-10-23 16:21:12.266237
686577	tya-han_04	81	2025-10-23 16:22:13.2665
686578	tya-han_04	63	2025-10-23 16:23:15.335216
686579	tya-han_04	55	2025-10-23 16:24:20.377922
686580	tya-han_04	47	2025-10-23 16:25:30.580726
686581	tya-han_04	84	2025-10-23 16:26:31.449252
686582	tya-han_04	80	2025-10-23 16:27:35.212539
686583	yes_eo080	56	2025-10-23 23:58:23.481069
686584	hkimura	71	2025-10-24 08:44:55.224462
686585	hkimura	78	2025-10-24 08:45:55.092063
686586	hkimura	46	2025-10-24 08:46:56.092442
686587	hkimura	93	2025-10-24 08:47:58.061988
686588	hkimura	72	2025-10-24 08:49:04.013986
686589	hkimura	39	2025-10-24 08:49:49.511873
686590	lions-fan1	87	2025-10-24 12:02:16.193387
686591	lions-fan1	65	2025-10-24 12:06:29.37979
686592	lions-fan1	111	2025-10-24 12:07:10.807353
686593	taiga228	37	2025-10-24 12:54:45.574142
686594	kuri-sou1	57	2025-10-24 12:55:12.917398
686595	taiga228	55	2025-10-24 12:56:15.492593
686596	kuri-sou1	71	2025-10-24 12:57:24.196134
686597	kuri-sou1	54	2025-10-24 12:58:46.265066
686598	hkimura	82	2025-10-25 09:05:46.593742
686599	hkimura	101	2025-10-25 09:06:40.752274
686600	hkimura	60	2025-10-25 09:07:45.356883
686601	hkimura	77	2025-10-25 09:08:50.982417
686602	hkimura	50	2025-10-25 09:10:00.578776
686603	hkimura	54	2025-10-25 09:11:03.070411
686604	hkimura	89	2025-10-25 09:12:08.874577
686605	hkimura	81	2025-10-25 09:13:14.185549
686606	hkimura	97	2025-10-25 09:14:24.780382
686607	hkimura	105	2025-10-25 09:15:25.399866
686608	hkimura	114	2025-10-25 09:16:09.12498
686609	axvo5145	73	2025-10-25 13:18:27.104578
686610	axvo5145	59	2025-10-25 13:19:35.527545
686611	hkimura	105	2025-10-26 09:14:48.359016
686612	hkimura	25	2025-10-26 09:15:52.254085
686613	hkimura	75	2025-10-26 09:16:50.484924
686614	hkimura	69	2025-10-26 09:17:56.529982
686615	hkimura	115	2025-10-26 09:18:57.729883
686616	hkimura	91	2025-10-26 09:20:06.769239
686617	hkimura	91	2025-10-26 09:21:10.284449
686618	hkimura	72	2025-10-26 09:22:32.359589
686619	hkimura	73	2025-10-26 09:23:42.180764
686620	hkimura	111	2025-10-26 09:24:37.249599
686621	hkimura	79	2025-10-26 09:25:37.440065
686622	ri8_hoon-	68	2025-10-26 13:20:39.328751
686623	hkimura	101	2025-10-27 10:57:44.946809
686624	hkimura	111	2025-10-27 10:58:55.383479
686625	hkimura	75	2025-10-27 11:00:05.054927
686626	hkimura	120	2025-10-27 11:01:05.759973
686627	hkimura	78	2025-10-27 11:02:18.808097
686628	hkimura	79	2025-10-27 11:03:26.686587
686629	hkimura	118	2025-10-27 11:04:08.691949
686630	hkimura	108	2025-10-27 11:05:03.944151
686631	hkimura	45	2025-10-27 11:07:09.684585
686632	hkimura	86	2025-10-27 11:08:14.333702
686633	hkimura	88	2025-10-27 11:09:22.389541
686634	lions-fan1	61	2025-10-27 13:07:36.026744
686635	lions-fan1	87	2025-10-27 13:10:25.327184
686636	lions-fan1	94	2025-10-27 13:11:34.852377
686637	gira	141	2025-10-27 13:33:39.217756
686638	gira	111	2025-10-27 13:34:39.457661
686639	gira	90	2025-10-27 13:35:40.629894
686640	gira	90	2025-10-27 13:38:21.802424
686641	gira	124	2025-10-27 13:39:09.992906
686642	gira	123	2025-10-27 13:39:59.316902
686643	gira	71	2025-10-27 13:41:00.965412
686644	gira	104	2025-10-27 13:41:40.531247
686645	lions-fan1	85	2025-10-27 14:01:03.312485
686646	lions-fan1	68	2025-10-27 14:02:08.999843
686647	kochi	15	2025-10-27 21:06:49.038653
686648	hkimura	96	2025-10-28 09:01:49.311814
686649	hkimura	83	2025-10-28 09:02:45.440648
686650	hkimura	107	2025-10-28 09:03:58.766457
686651	kinniku29	0	2025-10-28 10:26:29.194778
686652	ri8_hoon-	88	2025-10-28 10:26:37.394939
686653	otsukisama	81	2025-10-28 10:26:50.305596
686654	aaaaa	73	2025-10-28 10:26:53.445972
686655	mikyu397	62	2025-10-28 10:27:23.678147
686656	kinniku29	42	2025-10-28 10:27:32.2201
686657	kfc055	49	2025-10-28 10:27:40.752074
686658	taiga228	116	2025-10-28 10:27:45.471976
686659	italia_lia	123	2025-10-28 10:27:50.394341
686664	kyama10_	37	2025-10-28 10:27:58.793025
686666	yes_eo080	70	2025-10-28 10:28:00.550593
686671	lions-fan1	72	2025-10-28 10:28:24.352174
686672	haru-714	50	2025-10-28 10:28:31.510516
686674	atomic	59	2025-10-28 10:28:35.125362
686676	ha-ruto_00	47	2025-10-28 10:28:38.919024
686677	shimo1225	87	2025-10-28 10:28:44.79472
686678	sum-lov_13	82	2025-10-28 10:28:47.39662
686680	knt_07	64	2025-10-28 10:28:51.559414
686682	papico181	54	2025-10-28 10:28:53.030654
686683	shishamo	34	2025-10-28 10:28:57.348488
686685	akitennis	71	2025-10-28 10:29:06.691793
686686	kyama10_	65	2025-10-28 10:29:09.513803
686687	jo_07-18	41	2025-10-28 10:29:09.718262
686688	waku1waku2	76	2025-10-28 10:29:11.886627
686690	kfc055	49	2025-10-28 10:29:19.7493
686693	lions-fan1	88	2025-10-28 10:29:25.570013
686695	atomic	117	2025-10-28 10:29:30.26919
686696	daisuke	104	2025-10-28 10:29:33.25874
686704	axvo5145	44	2025-10-28 10:29:56.420623
686705	kiyodai	45	2025-10-28 10:29:58.624752
686706	ishumi	46	2025-10-28 10:29:59.76177
686708	papico181	59	2025-10-28 10:30:10.861543
686709	aritomo	34	2025-10-28 10:30:11.958121
686723	kuri-sou1	16	2025-10-28 10:30:48.276662
686724	ha-ruto_00	51	2025-10-28 10:30:50.490066
686727	shimo1225	100	2025-10-28 10:30:52.007861
686730	imora1107	83	2025-10-28 10:30:54.155624
686734	sa-sa_0127	85	2025-10-28 10:31:01.534349
686736	ishumi	64	2025-10-28 10:31:07.18945
686738	shirogane	54	2025-10-28 10:31:07.939326
686741	patinca-nu	19	2025-10-28 10:31:16.699801
686742	inu255-12	66	2025-10-28 10:31:17.934949
686747	lions-fan1	88	2025-10-28 10:31:35.16085
686748	shimo1225	73	2025-10-28 10:31:38.322288
686750	mi-01_28	46	2025-10-28 10:31:43.426993
686753	usshi-	126	2025-10-28 10:31:51.475786
686754	ha-ruto_00	74	2025-10-28 10:31:54.253235
686755	ask-mog1_1	61	2025-10-28 10:31:56.096094
686757	tya-han_04	51	2025-10-28 10:31:57.627832
686758	ishumi	62	2025-10-28 10:32:09.97677
686761	italia_lia	75	2025-10-28 10:32:22.099729
686764	kuri-sou1	35	2025-10-28 10:32:31.806565
686768	m0gu	29	2025-10-28 10:33:29.958868
686770	tujiri_01	74	2025-10-28 10:33:43.064713
686774	hitomi0413	55	2025-10-28 10:35:05.711277
686775	yukiflcx	123	2025-10-28 10:35:10.380666
686660	fuuta_s	0	2025-10-28 10:27:53.891479
686661	kou-1603	92	2025-10-28 10:27:55.951021
686662	aaaaa	69	2025-10-28 10:27:56.754887
686663	axvo5145	92	2025-10-28 10:27:58.217175
686665	akitennis	57	2025-10-28 10:27:59.398827
686667	tya-han_04	44	2025-10-28 10:28:00.878202
686668	ishumi	23	2025-10-28 10:28:05.957803
686669	usshi-	51	2025-10-28 10:28:07.419584
686670	inu255-12	52	2025-10-28 10:28:15.040518
686673	yuudai1201	47	2025-10-28 10:28:34.923354
686675	shudo-220_	32	2025-10-28 10:28:36.297807
686679	daisuke	70	2025-10-28 10:28:47.436071
686681	kai-_0224	23	2025-10-28 10:28:52.361207
686684	aaaaa	122	2025-10-28 10:28:57.826907
686689	otsukisama	108	2025-10-28 10:29:17.390583
686691	auct1718	64	2025-10-28 10:29:21.710275
686692	kaxejn1	69	2025-10-28 10:29:22.765601
686694	musiko	44	2025-10-28 10:29:29.12344
686697	ha-ruto_00	68	2025-10-28 10:29:40.336027
686698	italia_lia	24	2025-10-28 10:29:43.399751
686699	haru-714	72	2025-10-28 10:29:44.1124
686700	kota_07-15	18	2025-10-28 10:29:44.425268
686701	yuudai1201	44	2025-10-28 10:29:48.383902
686702	imora1107	50	2025-10-28 10:29:52.767561
686703	usshi-	62	2025-10-28 10:29:55.325614
686707	shudo-220_	49	2025-10-28 10:30:05.605614
686710	masatoshi	43	2025-10-28 10:30:13.291908
686711	inu255-12	45	2025-10-28 10:30:13.873616
686712	musiko	100	2025-10-28 10:30:24.771263
686713	shishamo	121	2025-10-28 10:30:24.773363
686714	kaxejn1	41	2025-10-28 10:30:25.991176
686715	kai-_0224	96	2025-10-28 10:30:27.639257
686716	posting	95	2025-10-28 10:30:33.806655
686717	daisuke	81	2025-10-28 10:30:34.611982
686718	waku1waku2	55	2025-10-28 10:30:37.642559
686719	mi-01_28	114	2025-10-28 10:30:39.430239
686720	jo_07-18	57	2025-10-28 10:30:41.350331
686721	kota_07-15	71	2025-10-28 10:30:46.262547
686722	satohina13	48	2025-10-28 10:30:48.046428
686725	yuudai1201	45	2025-10-28 10:30:51.039218
686726	atomic	100	2025-10-28 10:30:51.857008
686728	ask-mog1_1	63	2025-10-28 10:30:52.114752
686729	hibiki-118	39	2025-10-28 10:30:53.133763
686731	tya-han_04	61	2025-10-28 10:30:56.169336
686732	usshi-	78	2025-10-28 10:30:58.710609
686733	axvo5145	63	2025-10-28 10:31:00.514388
686735	axvo4241	100	2025-10-28 10:31:05.906046
686737	italia_lia	57	2025-10-28 10:31:07.550656
686739	papico181	55	2025-10-28 10:31:14.090917
686740	shishamo	90	2025-10-28 10:31:16.195877
686743	hitomi0413	59	2025-10-28 10:31:18.216777
686744	masatoshi	26	2025-10-28 10:31:19.40936
686745	tyanpo-n88	92	2025-10-28 10:31:27.868597
686746	taiga228	0	2025-10-28 10:31:32.180988
686749	waku1waku2	73	2025-10-28 10:31:39.096199
686751	sa-sa_0127	0	2025-10-28 10:31:43.680159
686752	hibiki-118	74	2025-10-28 10:31:50.376091
686756	kaxejn1	67	2025-10-28 10:31:56.778732
686759	shishamo	133	2025-10-28 10:32:10.735433
686760	yes_eo080	69	2025-10-28 10:32:12.317165
686762	hibiki-118	72	2025-10-28 10:32:25.251446
686763	tyanpo-n88	83	2025-10-28 10:32:29.985593
686765	sa-sa_0127	45	2025-10-28 10:32:47.599726
686766	kinniku29	32	2025-10-28 10:32:56.071059
686767	aritomo	31	2025-10-28 10:33:11.152811
686769	kuri-sou1	41	2025-10-28 10:33:36.078486
686771	haruuu4	42	2025-10-28 10:34:06.812833
686772	posting	82	2025-10-28 10:34:22.208096
686773	vertin15	58	2025-10-28 10:35:03.552887
686776	a-sakito13	0	2025-10-28 10:35:11.926137
686777	mt_bird	55	2025-10-28 10:35:52.495762
686778	papico181	45	2025-10-28 13:05:55.416938
686779	waku1waku2	92	2025-10-28 21:20:36.412986
686780	waku1waku2	70	2025-10-28 21:21:37.862571
686781	waku1waku2	53	2025-10-28 21:22:41.638363
686782	waku1waku2	66	2025-10-28 21:23:44.067866
686783	waku1waku2	78	2025-10-28 21:24:34.495593
686784	waku1waku2	80	2025-10-28 21:25:39.315267
686785	waku1waku2	63	2025-10-28 21:26:41.022322
686786	waku1waku2	108	2025-10-28 21:27:19.437585
686787	waku1waku2	126	2025-10-28 21:28:35.330704
686788	waku1waku2	87	2025-10-28 21:29:34.197582
686789	waku1waku2	84	2025-10-28 21:33:52.650172
686790	waku1waku2	113	2025-10-28 21:34:30.822629
686791	waku1waku2	84	2025-10-28 21:35:21.011058
686792	waku1waku2	57	2025-10-28 21:36:24.467256
686793	waku1waku2	113	2025-10-28 21:37:00.176021
686794	waku1waku2	78	2025-10-28 21:38:01.924003
686795	waku1waku2	109	2025-10-28 21:38:35.140228
686796	waku1waku2	68	2025-10-28 21:39:43.214026
686797	waku1waku2	147	2025-10-28 21:40:10.168001
686798	waku1waku2	78	2025-10-28 21:41:11.509851
686799	waku1waku2	81	2025-10-28 21:42:10.571452
686800	kuri-sou1	110	2025-10-28 23:00:41.842686
686801	taiga228	32	2025-10-28 23:42:40.556943
686802	hkimura	90	2025-10-29 10:48:09.387889
686803	hkimura	86	2025-10-29 10:49:16.729609
686804	hkimura	115	2025-10-29 10:50:37.328753
686805	hkimura	141	2025-10-29 10:51:17.269177
686806	hkimura	86	2025-10-29 10:52:20.020926
686807	hkimura	89	2025-10-29 10:53:19.865186
686808	hkimura	76	2025-10-29 10:54:13.882045
686809	hkimura	97	2025-10-29 10:55:26.04733
686810	hkimura	58	2025-10-29 10:56:43.146065
686811	hkimura	94	2025-10-29 10:57:53.362136
686812	hkimura	109	2025-10-29 10:59:00.098228
686813	gira	67	2025-10-29 13:47:49.542745
686814	gira	63	2025-10-29 13:48:56.601822
686815	gira	84	2025-10-29 13:50:00.414563
686816	gira	92	2025-10-29 13:51:00.627426
686817	sa-sa_0127	74	2025-10-29 18:24:45.174851
686818	waku1waku2	58	2025-10-29 18:25:37.165538
686819	waku1waku2	72	2025-10-29 18:26:30.08914
686820	waku1waku2	64	2025-10-29 18:27:31.302942
686821	waku1waku2	52	2025-10-29 18:28:48.299253
686822	waku1waku2	60	2025-10-29 18:29:49.73491
686823	waku1waku2	78	2025-10-29 18:30:52.899246
686824	waku1waku2	93	2025-10-29 18:32:07.777979
686825	waku1waku2	117	2025-10-29 18:32:42.931055
686826	waku1waku2	78	2025-10-29 18:33:37.697857
686827	waku1waku2	40	2025-10-29 18:34:38.563437
686828	lions-fan1	32	2025-10-29 18:42:48.126268
686829	lions-fan1	91	2025-10-29 18:43:51.310827
686830	lions-fan1	67	2025-10-29 18:45:33.619709
686831	lions-fan1	91	2025-10-29 18:46:37.930219
686832	lions-fan1	104	2025-10-29 18:47:56.883286
686833	lions-fan1	125	2025-10-30 11:46:42.612654
686834	lions-fan1	131	2025-10-30 11:47:24.167163
686835	lions-fan1	107	2025-10-30 11:48:16.293881
686836	lions-fan1	102	2025-10-30 11:49:10.022769
686837	lions-fan1	81	2025-10-30 11:50:23.40529
686838	hkimura	108	2025-10-30 12:11:39.945135
686839	hkimura	106	2025-10-30 12:12:30.861257
686840	hkimura	75	2025-10-30 12:13:25.339324
686841	hkimura	104	2025-10-30 12:14:13.564466
686842	hkimura	99	2025-10-30 12:15:15.595677
686843	hkimura	125	2025-10-30 12:16:08.398928
686844	hkimura	145	2025-10-30 12:16:40.983352
686845	hkimura	54	2025-10-30 12:18:00.028328
686846	hkimura	133	2025-10-30 12:18:46.463546
686847	hkimura	101	2025-10-30 12:19:44.145894
686848	hkimura	107	2025-10-30 12:20:44.430361
686849	gira	78	2025-10-30 14:24:42.689638
686850	gira	97	2025-10-30 14:26:02.461115
686851	gira	63	2025-10-30 16:38:05.254529
686852	gira	117	2025-10-30 16:39:15.478623
686853	tya-han_04	70	2025-10-31 01:19:47.356448
686854	tya-han_04	52	2025-10-31 01:20:49.425577
686855	tya-han_04	63	2025-10-31 01:21:51.441564
686856	tya-han_04	63	2025-10-31 01:22:53.354307
686857	tya-han_04	112	2025-10-31 01:23:54.442522
686858	tya-han_04	46	2025-10-31 01:24:55.390079
686859	tya-han_04	61	2025-10-31 01:25:56.125499
686860	tya-han_04	64	2025-10-31 01:26:57.386508
686861	tya-han_04	60	2025-10-31 01:27:59.411027
686862	tya-han_04	62	2025-10-31 01:29:00.920905
686863	tya-han_04	49	2025-10-31 01:30:03.719495
686864	lions-fan1	110	2025-10-31 05:27:04.822293
686865	lions-fan1	79	2025-10-31 05:28:23.829645
686866	lions-fan1	70	2025-10-31 05:29:33.41009
686867	lions-fan1	75	2025-10-31 05:30:42.142608
686868	lions-fan1	109	2025-10-31 05:31:45.967696
686869	lions-fan1	94	2025-10-31 05:32:56.342883
686870	lions-fan1	94	2025-10-31 05:34:05.193457
686871	lions-fan1	100	2025-10-31 05:35:07.738209
686872	hkimura	90	2025-10-31 08:16:27.810034
686873	hkimura	73	2025-10-31 08:17:24.088165
686874	hkimura	139	2025-10-31 08:18:05.159993
686875	hkimura	97	2025-10-31 08:56:45.300589
686876	hkimura	85	2025-10-31 09:12:41.686183
686877	hkimura	45	2025-10-31 09:14:17.73787
686878	gira	43	2025-10-31 11:05:10.140099
686879	gira	77	2025-10-31 11:06:08.365887
686880	gira	107	2025-10-31 11:06:54.552252
686881	gira	53	2025-10-31 11:07:56.851913
686882	gira	124	2025-10-31 11:08:45.175115
686883	imora1107	52	2025-10-31 15:10:17.09309
686884	hkimura	134	2025-10-31 20:05:26.593369
686885	hkimura	120	2025-10-31 20:06:51.100227
686886	hkimura	78	2025-11-01 10:06:28.920339
686887	hkimura	87	2025-11-01 10:07:31.651362
686888	hkimura	126	2025-11-01 10:08:26.342633
686889	hkimura	118	2025-11-01 10:09:43.868895
686890	hkimura	130	2025-11-01 10:10:39.773968
686891	hkimura	101	2025-11-01 10:11:50.292035
686892	hkimura	138	2025-11-01 10:12:42.319968
686893	hkimura	114	2025-11-01 10:13:56.208963
686894	hkimura	106	2025-11-01 10:14:56.992169
686895	hkimura	72	2025-11-01 10:16:10.478947
686896	hkimura	94	2025-11-01 10:17:13.493717
686897	hkimura	107	2025-11-02 09:55:25.7384
686898	hkimura	71	2025-11-02 09:56:40.489015
686899	hkimura	81	2025-11-02 09:57:43.673003
686900	lions-fan1	70	2025-11-02 10:52:07.549829
686901	lions-fan1	85	2025-11-02 10:53:19.307943
686902	lions-fan1	87	2025-11-02 10:54:21.912175
686903	lions-fan1	126	2025-11-02 11:18:09.272541
686904	yes_eo080	10	2025-11-02 22:44:41.888137
686905	yes_eo080	76	2025-11-02 22:45:45.465882
686906	yes_eo080	80	2025-11-02 22:46:49.330446
686907	lions-fan1	69	2025-11-03 23:49:34.799663
686908	hkimura	97	2025-11-04 09:21:30.816768
686909	hkimura	95	2025-11-04 09:22:21.62963
686910	hkimura	61	2025-11-04 09:23:26.504799
686911	hkimura	83	2025-11-04 09:24:18.487941
686912	hkimura	83	2025-11-04 09:26:24.042493
686913	hkimura	100	2025-11-04 09:28:27.538339
686914	hitomi0413	68	2025-11-04 10:24:44.332283
686915	tya-han_04	59	2025-11-04 10:25:33.978879
686916	sa-sa_0127	124	2025-11-04 10:25:35.95762
686917	hitomi0413	60	2025-11-04 10:25:52.567704
686918	hibiki-118	103	2025-11-04 10:26:00.154674
686919	kiyodai	54	2025-11-04 10:26:05.111955
686920	m0gu	61	2025-11-04 10:26:13.80459
686921	kinniku29	0	2025-11-04 10:26:19.404175
686922	haruuu4	88	2025-11-04 10:26:27.18106
686923	tya-han_04	89	2025-11-04 10:26:28.053741
686924	satohina13	31	2025-11-04 10:26:28.358947
686925	kfc055	48	2025-11-04 10:26:29.843908
686926	mikyu397	79	2025-11-04 10:26:35.920591
686927	sa-sa_0127	96	2025-11-04 10:26:36.701515
686928	hitomi0413	58	2025-11-04 10:26:59.961953
686929	tya-han_04	149	2025-11-04 10:27:01.021036
686930	hibiki-118	70	2025-11-04 10:27:03.824322
686931	inu255-12	46	2025-11-04 10:27:11.792556
686932	atomic	62	2025-11-04 10:27:14.718963
686933	mi-01_28	73	2025-11-04 10:27:17.34016
686934	taiga228	49	2025-11-04 10:27:25.620685
686935	a-sakito13	36	2025-11-04 10:27:29.805326
686936	kinniku29	16	2025-11-04 10:27:30.520671
686937	shishamo	89	2025-11-04 10:27:39.618441
686938	sa-sa_0127	0	2025-11-04 10:27:40.70418
686939	otsukisama	96	2025-11-04 10:28:00.131464
686940	usshi-	50	2025-11-04 10:28:01.200058
686941	hitomi0413	57	2025-11-04 10:28:01.85208
686942	patinca-nu	93	2025-11-04 10:28:06.696272
686943	shimo1225	70	2025-11-04 10:28:11.257565
686944	tyankonabe	0	2025-11-04 10:28:14.314955
686945	tya-han_04	43	2025-11-04 10:28:17.032644
686946	atomic	62	2025-11-04 10:28:17.872393
686947	ri8_hoon-	16	2025-11-04 10:28:19.769917
686948	kou-1603	87	2025-11-04 10:28:27.012859
686949	shudo-220_	63	2025-11-04 10:28:29.075898
686950	shishamo	91	2025-11-04 10:28:31.293581
686951	axvo5145	118	2025-11-04 10:28:38.672683
686952	ishumi	17	2025-11-04 10:28:39.214243
686953	kai-_0224	33	2025-11-04 10:28:41.287163
686954	haru-714	85	2025-11-04 10:28:41.619304
686955	italia_lia	59	2025-11-04 10:28:42.936069
686956	taiga228	77	2025-11-04 10:28:43.290713
686957	hitomi0413	110	2025-11-04 10:28:45.99789
686958	daisuke	108	2025-11-04 10:28:52.84861
686959	ha-ruto_00	34	2025-11-04 10:28:53.336441
686960	inu255-12	48	2025-11-04 10:28:53.420782
686961	imora1107	125	2025-11-04 10:28:54.334311
686962	waku1waku2	78	2025-11-04 10:28:56.613114
686963	jo_07-18	45	2025-11-04 10:28:56.665056
686964	okiku_0408	51	2025-11-04 10:29:00.264235
686965	kaxejn1	36	2025-11-04 10:29:00.738719
686966	shimo1225	93	2025-11-04 10:29:01.900248
686967	usshi-	82	2025-11-04 10:29:03.28904
686968	kuri-sou1	47	2025-11-04 10:29:10.77913
686969	vertin15	78	2025-11-04 10:29:11.547951
686970	atomic	115	2025-11-04 10:29:16.92566
686971	aaaaa	64	2025-11-04 10:29:23.380403
686972	fuuta_s	43	2025-11-04 10:29:26.665917
686973	italia_lia	132	2025-11-04 10:29:28.319245
686974	kota_07-15	31	2025-11-04 10:29:30.966883
686975	ha-ruto_00	134	2025-11-04 10:29:31.76326
686976	lions-fan1	68	2025-11-04 10:29:33.033009
686977	kyama10_	54	2025-11-04 10:29:37.362908
686978	ishumi	68	2025-11-04 10:29:41.585769
686979	axvo5145	50	2025-11-04 10:29:44.482851
686980	knt_07	0	2025-11-04 10:29:45.811202
686981	shudo-220_	40	2025-11-04 10:29:48.65892
686982	kai-_0224	15	2025-11-04 10:29:50.111331
686983	shimo1225	57	2025-11-04 10:29:56.502842
686984	daisuke	42	2025-11-04 10:29:56.961528
686985	imora1107	39	2025-11-04 10:29:57.316044
686986	waku1waku2	57	2025-11-04 10:29:58.429678
686987	tujiri_01	0	2025-11-04 10:29:58.50991
686988	kochi	51	2025-11-04 10:30:06.32422
686989	akitennis	70	2025-11-04 10:30:07.739103
686990	tyankonabe	50	2025-11-04 10:30:08.619603
686991	jo_07-18	48	2025-11-04 10:30:09.35932
686992	lions-fan1	137	2025-11-04 10:30:12.372438
686996	ha-ruto_00	39	2025-11-04 10:30:33.002975
686998	taiga228	72	2025-11-04 10:30:38.095264
687001	fuuta_s	62	2025-11-04 10:30:42.182843
687002	tujiri_01	132	2025-11-04 10:30:48.485221
687010	yes_eo080	86	2025-11-04 10:31:17.205908
686993	usshi-	65	2025-11-04 10:30:19.336967
686994	okiku_0408	63	2025-11-04 10:30:21.015612
686995	aaaaa	73	2025-11-04 10:30:28.134632
686997	shimo1225	95	2025-11-04 10:30:35.48205
686999	aritomo	76	2025-11-04 10:30:40.351485
687000	kota_07-15	89	2025-11-04 10:30:40.677391
687003	shudo-220_	55	2025-11-04 10:30:51.362533
687004	knt_07	24	2025-11-04 10:30:53.644018
687005	kai-_0224	53	2025-11-04 10:30:54.549827
687006	kuri-sou1	58	2025-11-04 10:30:59.943156
687007	yukiflcx	44	2025-11-04 10:31:06.724964
687008	kochi	71	2025-11-04 10:31:10.29248
687009	tyankonabe	46	2025-11-04 10:31:16.139413
687011	yuudai1201	61	2025-11-04 10:31:41.48359
687012	musiko	71	2025-11-04 10:31:44.917855
687013	knt_07	94	2025-11-04 10:31:56.781521
687014	kochi	83	2025-11-04 10:32:13.594059
687015	yuudai1201	52	2025-11-04 10:33:08.935947
687016	tyanpo-n88	70	2025-11-04 10:33:16.900629
687017	tyanpo-n88	87	2025-11-04 10:34:18.531723
687018	hkimura	86	2025-11-05 10:07:23.217208
687019	hkimura	93	2025-11-05 10:08:27.132371
687020	hkimura	26	2025-11-05 10:09:26.873844
687021	hkimura	139	2025-11-05 10:10:23.772591
687022	hkimura	109	2025-11-05 10:11:23.675625
687023	hkimura	89	2025-11-05 10:12:32.34011
687024	hkimura	123	2025-11-05 10:13:28.314512
687025	gira	59	2025-11-05 11:07:05.371057
687026	gira	86	2025-11-05 11:08:02.982211
687027	gira	97	2025-11-05 11:08:57.236678
687028	gira	101	2025-11-05 11:09:51.495131
687029	gira	75	2025-11-05 11:10:49.315345
687030	inu255-12	62	2025-11-05 14:47:25.534682
687031	lions-fan1	92	2025-11-05 15:48:26.221136
687032	lions-fan1	83	2025-11-05 15:49:43.171519
687033	gira	132	2025-11-05 16:33:37.751578
687034	gira	88	2025-11-05 16:34:34.29597
687035	gira	78	2025-11-05 16:35:36.765746
687036	gira	98	2025-11-05 16:36:36.780361
687037	gira	89	2025-11-05 16:38:13.789789
687038	gira	70	2025-11-05 16:39:15.639596
687039	lions-fan1	91	2025-11-06 09:25:33.196436
687040	lions-fan1	71	2025-11-06 09:26:50.33306
687041	lions-fan1	131	2025-11-06 09:28:44.740308
687042	hkimura	94	2025-11-06 12:13:34.23695
687043	hkimura	97	2025-11-06 12:14:39.055566
687044	hkimura	73	2025-11-06 12:15:45.362066
687045	hkimura	106	2025-11-06 12:16:35.745917
687046	hkimura	86	2025-11-06 12:17:48.820169
687047	hkimura	94	2025-11-06 12:19:05.407855
687048	hkimura	135	2025-11-06 12:19:56.02701
687049	hkimura	107	2025-11-06 12:21:10.520408
687050	hkimura	64	2025-11-06 12:22:11.886888
687051	hkimura	71	2025-11-06 12:23:22.24811
687052	hkimura	94	2025-11-06 12:24:36.598882
687053	kyama10_	42	2025-11-06 13:18:05.884002
687054	gira	67	2025-11-06 15:28:34.308152
687055	gira	105	2025-11-06 15:29:38.970571
687056	gira	139	2025-11-06 15:30:12.700196
687057	iloveyou	65	2025-11-06 16:25:00.000046
687058	iloveyou	49	2025-11-06 16:26:13.370802
687059	iloveyou	86	2025-11-06 16:27:23.485281
687060	iloveyou	60	2025-11-06 16:28:39.574828
687061	iloveyou	59	2025-11-06 16:29:45.777721
687062	iloveyou	34	2025-11-06 16:30:56.264817
687063	iloveyou	97	2025-11-06 16:33:43.504239
687064	tya-han_04	63	2025-11-06 17:57:37.997139
687065	tya-han_04	74	2025-11-06 17:58:40.177456
687066	tya-han_04	69	2025-11-06 17:59:41.969802
687067	tya-han_04	53	2025-11-06 18:00:43.238682
687068	tya-han_04	141	2025-11-06 18:01:14.437871
687069	tya-han_04	63	2025-11-06 18:02:16.624543
687070	tya-han_04	81	2025-11-06 18:03:18.682847
687071	tya-han_04	86	2025-11-06 18:04:21.252833
687072	lions-fan1	93	2025-11-09 23:19:47.310688
687073	lions-fan1	62	2025-11-09 23:24:08.419094
687074	hkimura	89	2025-11-10 08:40:07.804161
687075	hkimura	48	2025-11-10 08:41:07.260508
687076	hkimura	62	2025-11-10 08:42:11.831036
687077	hkimura	71	2025-11-10 08:43:17.352642
687078	hkimura	82	2025-11-10 08:43:56.092142
687079	hkimura	76	2025-11-10 08:45:02.860197
687080	hkimura	86	2025-11-10 08:46:07.875301
687081	gira	91	2025-11-10 15:17:18.172263
687082	tya-han_04	65	2025-11-10 16:27:22.990876
687083	tya-han_04	68	2025-11-10 16:28:28.167366
687084	kuri-sou1	30	2025-11-11 09:24:27.900105
687085	taiga228	41	2025-11-11 10:21:25.738086
687086	taiga228	40	2025-11-11 10:26:23.89827
687087	knt_07	0	2025-11-11 10:26:27.569049
687088	otsukisama	66	2025-11-11 10:26:28.858409
687089	ri8_hoon-	80	2025-11-11 10:26:55.228252
687090	hibiki-118	44	2025-11-11 10:27:23.602227
687091	taiga228	52	2025-11-11 10:27:32.187793
687092	otsukisama	77	2025-11-11 10:27:34.421018
687093	kyama10_	20	2025-11-11 10:27:35.066537
687094	sa-sa_0127	0	2025-11-11 10:27:40.475024
687095	mikyu397	34	2025-11-11 10:27:44.346077
687096	shishamo	93	2025-11-11 10:27:52.949436
687097	atomic	62	2025-11-11 10:27:53.970171
687098	tya-han_04	57	2025-11-11 10:28:09.555257
687099	hibiki-118	94	2025-11-11 10:28:13.175338
687100	satohina13	41	2025-11-11 10:28:15.268206
687101	axvo4241	61	2025-11-11 10:28:25.19732
687102	m0gu	51	2025-11-11 10:28:36.187361
687103	taiga228	53	2025-11-11 10:28:40.713943
687104	sa-sa_0127	81	2025-11-11 10:28:41.0917
687105	shudo-220_	63	2025-11-11 10:28:41.761529
687106	usshi-	68	2025-11-11 10:28:44.547534
687107	akitennis	56	2025-11-11 10:28:46.288
687108	kfc055	50	2025-11-11 10:28:47.221101
687109	shimo1225	90	2025-11-11 10:28:49.133165
687110	waku1waku2	119	2025-11-11 10:28:50.59609
687111	imora1107	110	2025-11-11 10:28:51.371695
687112	vertin15	50	2025-11-11 10:28:54.588796
687113	atomic	65	2025-11-11 10:28:55.704587
687114	shishamo	69	2025-11-11 10:28:58.254126
687115	mi-01_28	43	2025-11-11 10:28:58.641958
687116	sum-lov_13	74	2025-11-11 10:29:00.128894
687117	ha-ruto_00	53	2025-11-11 10:29:04.784707
687118	kiyodai	0	2025-11-11 10:29:06.124571
687119	kota_07-15	63	2025-11-11 10:29:08.786091
687120	axvo5145	85	2025-11-11 10:29:09.759371
687121	tya-han_04	48	2025-11-11 10:29:12.17299
687122	yuudai1201	50	2025-11-11 10:29:20.669382
687123	otsukisama	78	2025-11-11 10:29:24.852807
687124	akitennis	120	2025-11-11 10:29:25.595641
687125	auct1718	41	2025-11-11 10:29:26.028394
687126	axvo4241	67	2025-11-11 10:29:27.881128
687127	kai-_0224	46	2025-11-11 10:29:31.160123
687128	kou-1603	86	2025-11-11 10:29:31.339581
687129	shirogane	54	2025-11-11 10:29:33.124146
687130	papico181	79	2025-11-11 10:29:35.296376
687131	kaxejn1	0	2025-11-11 10:29:35.354302
687132	shimo1225	80	2025-11-11 10:29:37.127188
687133	a-sakito13	0	2025-11-11 10:29:38.819167
687134	patinca-nu	27	2025-11-11 10:29:39.150146
687135	kochi	42	2025-11-11 10:29:41.937083
687136	shudo-220_	74	2025-11-11 10:29:45.47253
687137	usshi-	75	2025-11-11 10:29:46.706567
687138	waku1waku2	71	2025-11-11 10:29:52.12855
687139	imora1107	84	2025-11-11 10:29:53.232803
687140	shishamo	136	2025-11-11 10:29:53.303097
687141	atomic	68	2025-11-11 10:29:58.858738
687142	haru-714	66	2025-11-11 10:30:03.540834
687143	posting	78	2025-11-11 10:30:04.333049
687145	okiku_0408	30	2025-11-11 10:30:09.50548
687146	kota_07-15	61	2025-11-11 10:30:12.530633
687147	musiko	113	2025-11-11 10:30:15.828186
687148	axvo5145	41	2025-11-11 10:30:15.986302
687152	yuudai1201	58	2025-11-11 10:30:26.082131
687153	italia_lia	91	2025-11-11 10:30:27.563645
687155	shimo1225	70	2025-11-11 10:30:33.742361
687156	kaxejn1	104	2025-11-11 10:30:34.767871
687157	kinniku29	0	2025-11-11 10:30:38.749811
687159	kai-_0224	6	2025-11-11 10:30:42.528742
687161	usshi-	90	2025-11-11 10:30:47.745803
687162	kochi	89	2025-11-11 10:30:48.43228
687163	akitennis	81	2025-11-11 10:30:57.34227
687164	waku1waku2	117	2025-11-11 10:31:08.002244
687165	ha-ruto_00	53	2025-11-11 10:31:09.217414
687170	shimo1225	59	2025-11-11 10:31:29.191454
687171	lions-fan1	123	2025-11-11 10:31:35.281356
687172	musiko	80	2025-11-11 10:31:35.606172
687173	imora1107	96	2025-11-11 10:31:37.073235
687174	italia_lia	60	2025-11-11 10:31:37.441895
687175	waku1waku2	113	2025-11-11 10:31:37.844966
687179	tya-han_04	96	2025-11-11 10:31:50.047935
687180	inu255-12	56	2025-11-11 10:31:51.99126
687181	usshi-	78	2025-11-11 10:31:53.060877
687182	tyankonabe	61	2025-11-11 10:31:55.476262
687183	tyanpo-n88	100	2025-11-11 10:32:02.184802
687144	ha-ruto_00	67	2025-11-11 10:30:06.564353
687149	tya-han_04	67	2025-11-11 10:30:19.987723
687150	ishumi	104	2025-11-11 10:30:21.987737
687151	kuri-sou1	64	2025-11-11 10:30:24.310009
687154	waku1waku2	133	2025-11-11 10:30:32.036931
687158	papico181	52	2025-11-11 10:30:40.144139
687160	a-sakito13	73	2025-11-11 10:30:43.247957
687168	mikyu397	66	2025-11-11 10:31:27.292706
687169	kuri-sou1	76	2025-11-11 10:31:27.541063
687178	papico181	50	2025-11-11 10:31:48.385749
687184	miyu_0913	49	2025-11-11 10:32:04.309482
687166	fuuta_s	78	2025-11-11 10:31:14.949151
687167	axvo5145	24	2025-11-11 10:31:25.029245
687176	ishumi	57	2025-11-11 10:31:41.972626
687177	kochi	80	2025-11-11 10:31:48.1593
687185	daisuke	97	2025-11-11 10:32:05.342194
687186	kinniku29	0	2025-11-11 10:32:09.967722
687187	hitomi0413	51	2025-11-11 10:32:18.520712
687188	mt_bird	71	2025-11-11 10:32:19.51662
687189	fuuta_s	91	2025-11-11 10:32:22.750341
687190	kuri-sou1	48	2025-11-11 10:32:31.48387
687191	tyankonabe	119	2025-11-11 10:32:37.751131
687192	waku1waku2	95	2025-11-11 10:32:38.029795
687193	lions-fan1	59	2025-11-11 10:32:38.549518
687194	italia_lia	42	2025-11-11 10:32:41.789569
687195	aritomo	23	2025-11-11 10:32:41.911323
687196	tyanpo-n88	127	2025-11-11 10:32:47.668676
687197	aaaaa	54	2025-11-11 10:32:55.715432
687198	jo_07-18	63	2025-11-11 10:33:15.124179
687199	hitomi0413	75	2025-11-11 10:33:27.058448
687200	auct1718	36	2025-11-11 10:33:28.140044
687201	masatoshi	76	2025-11-11 10:33:40.936571
687202	tyanpo-n88	77	2025-11-11 10:33:43.921985
687203	yes_eo080	21	2025-11-11 10:33:54.150134
687204	jo_07-18	121	2025-11-11 10:34:06.967049
687205	aaaaa	47	2025-11-11 10:34:17.382048
687206	aritomo	34	2025-11-11 10:34:17.459128
687207	yes_eo080	89	2025-11-11 10:34:54.594383
687208	kinniku29	68	2025-11-11 10:35:20.609592
687209	aritomo	42	2025-11-11 10:35:36.881335
687210	knt_07	50	2025-11-11 10:35:41.564188
687211	hkimura	81	2025-11-12 10:58:56.681859
687212	hkimura	120	2025-11-12 10:59:38.493874
687213	hkimura	88	2025-11-12 11:00:37.653088
687214	hkimura	127	2025-11-12 11:01:27.169491
687215	hkimura	97	2025-11-12 11:02:27.659523
687216	hkimura	38	2025-11-12 11:03:33.362842
687217	hkimura	104	2025-11-12 11:04:30.200596
687218	hkimura	68	2025-11-12 11:05:38.58409
687219	hkimura	125	2025-11-12 11:06:33.28738
687220	gira	80	2025-11-13 13:17:09.082521
687221	gira	47	2025-11-13 13:18:11.342517
687222	gira	110	2025-11-13 13:18:58.796107
687223	gira	0	2025-11-13 13:19:54.869261
687224	gira	133	2025-11-13 13:20:36.5562
687225	lions-fan1	66	2025-11-13 15:54:28.079921
687226	lions-fan1	67	2025-11-13 15:55:34.661415
687227	lions-fan1	118	2025-11-13 15:56:28.187218
687228	lions-fan1	111	2025-11-13 15:57:35.27614
687229	lions-fan1	126	2025-11-13 15:58:40.344194
687230	lions-fan1	87	2025-11-13 15:59:35.365274
687231	tya-han_04	128	2025-11-13 16:34:50.093053
687232	lions-fan1	112	2025-11-13 23:46:16.395625
687233	kuri-sou1	92	2025-11-14 14:26:47.535616
687234	imora1107	77	2025-11-16 23:05:41.302822
687235	lions-fan1	74	2025-11-17 11:05:28.872921
687236	tyanpo-n88	121	2025-11-17 11:36:18.420048
687237	gira	75	2025-11-17 11:55:05.755987
687238	gira	112	2025-11-17 11:56:05.506013
687239	gira	102	2025-11-17 11:56:59.619553
687240	gira	89	2025-11-17 11:58:01.936298
687241	gira	71	2025-11-17 11:59:03.539934
687242	lions-fan1	74	2025-11-17 12:37:04.112788
687243	lions-fan1	77	2025-11-17 12:38:06.561754
687244	lions-fan1	127	2025-11-17 15:42:48.624755
687245	lions-fan1	61	2025-11-18 08:31:40.547473
687246	hkimura	101	2025-11-18 09:27:24.779143
687247	hkimura	107	2025-11-18 09:28:15.84809
687248	haru-714	0	2025-11-18 10:26:14.627518
687249	atomic	97	2025-11-18 10:26:29.604892
687250	aaaaa	52	2025-11-18 10:26:31.724951
687251	shimo1225	66	2025-11-18 10:26:38.762822
687252	taiga228	57	2025-11-18 10:26:39.669467
687253	otsukisama	83	2025-11-18 10:26:42.134518
687254	ishumi	52	2025-11-18 10:26:44.000307
687255	usshi-	24	2025-11-18 10:26:48.22296
687256	kfc055	47	2025-11-18 10:26:48.764769
687257	sa-sa_0127	28	2025-11-18 10:26:51.723211
687258	posting	97	2025-11-18 10:26:53.300564
687259	imora1107	0	2025-11-18 10:27:00.438458
687260	lions-fan1	58	2025-11-18 10:27:11.321036
687261	shimo1225	93	2025-11-18 10:27:20.241002
687262	fuuta_s	22	2025-11-18 10:27:24.170966
687263	papico181	54	2025-11-18 10:27:26.353249
687264	haru-714	69	2025-11-18 10:27:30.451219
687265	shishamo	94	2025-11-18 10:27:33.130898
687266	tya-han_04	66	2025-11-18 10:27:33.385584
687267	aaaaa	62	2025-11-18 10:27:34.781552
687268	atomic	32	2025-11-18 10:27:35.98259
687269	masatoshi	77	2025-11-18 10:27:43.33881
687270	satohina13	36	2025-11-18 10:27:45.142269
687271	kai-_0224	61	2025-11-18 10:27:46.563822
687272	tujiri_01	32	2025-11-18 10:27:47.686089
687273	knt_07	25	2025-11-18 10:27:48.102734
687274	taiga228	70	2025-11-18 10:27:49.405805
687275	kiyodai	64	2025-11-18 10:27:49.924883
687276	kfc055	56	2025-11-18 10:27:51.080386
687277	ishumi	39	2025-11-18 10:27:51.375388
687278	mikyu397	43	2025-11-18 10:27:52.227989
687279	sa-sa_0127	18	2025-11-18 10:27:53.213588
687280	m0gu	59	2025-11-18 10:27:53.426791
687281	usshi-	59	2025-11-18 10:27:53.611683
687282	fuuta_s	0	2025-11-18 10:27:54.280123
687283	kyama10_	44	2025-11-18 10:27:54.854533
687284	italia_lia	36	2025-11-18 10:27:55.465815
687285	waku1waku2	61	2025-11-18 10:27:59.918476
687286	ha-ruto_00	84	2025-11-18 10:28:02.275121
687287	haruuu4	29	2025-11-18 10:28:04.564503
687288	musiko	115	2025-11-18 10:28:05.109041
687289	ri8_hoon-	42	2025-11-18 10:28:08.117547
687290	axvo5145	66	2025-11-18 10:28:10.133946
687291	kota_07-15	98	2025-11-18 10:28:10.339182
687292	aritomo	33	2025-11-18 10:28:10.912307
687293	mi-01_28	22	2025-11-18 10:28:14.81739
687294	shudo-220_	39	2025-11-18 10:28:18.218476
687295	akitennis	62	2025-11-18 10:28:20.193325
687296	lions-fan1	66	2025-11-18 10:28:20.9614
687297	shimo1225	68	2025-11-18 10:28:22.297528
687298	shishamo	79	2025-11-18 10:28:24.522998
687299	imora1107	21	2025-11-18 10:28:24.627438
687300	haru-714	84	2025-11-18 10:28:28.049354
687301	hitomi0413	67	2025-11-18 10:28:30.393015
687302	papico181	73	2025-11-18 10:28:31.781046
687303	tujiri_01	111	2025-11-18 10:28:33.794457
687304	hibiki-118	117	2025-11-18 10:28:34.270341
687305	tya-han_04	42	2025-11-18 10:28:35.40072
687306	aaaaa	36	2025-11-18 10:28:36.857923
687307	atomic	58	2025-11-18 10:28:39.748454
687308	otsukisama	113	2025-11-18 10:28:46.902541
687309	kai-_0224	36	2025-11-18 10:28:50.584082
687310	kinniku29	25	2025-11-18 10:28:52.314026
687311	kiyodai	75	2025-11-18 10:28:54.090443
687312	mikyu397	61	2025-11-18 10:28:55.88616
687313	fuuta_s	40	2025-11-18 10:28:56.130149
687314	sa-sa_0127	87	2025-11-18 10:28:56.147068
687315	kyama10_	70	2025-11-18 10:28:58.577776
687316	waku1waku2	54	2025-11-18 10:29:01.287145
687317	haruuu4	39	2025-11-18 10:29:05.772793
687318	usshi-	41	2025-11-18 10:29:07.660014
687319	ha-ruto_00	44	2025-11-18 10:29:10.220841
687320	taiga228	50	2025-11-18 10:29:12.403831
687321	ri8_hoon-	80	2025-11-18 10:29:13.137041
687322	italia_lia	43	2025-11-18 10:29:14.332016
687323	axvo5145	38	2025-11-18 10:29:14.437768
687324	vertin15	83	2025-11-18 10:29:14.537949
687328	shimo1225	83	2025-11-18 10:29:19.93014
687332	aritomo	117	2025-11-18 10:29:26.5165
687333	akitennis	67	2025-11-18 10:29:26.830649
687334	shudo-220_	55	2025-11-18 10:29:27.026226
687336	tya-han_04	61	2025-11-18 10:29:39.592565
687340	fuuta_s	38	2025-11-18 10:29:58.392511
687345	usshi-	70	2025-11-18 10:30:14.251586
687347	aaaaa	44	2025-11-18 10:30:26.50321
687350	taiga228	53	2025-11-18 10:30:36.373069
687355	akitennis	54	2025-11-18 10:30:56.43759
687358	kochi	81	2025-11-18 10:31:15.364293
687361	papico181	61	2025-11-18 10:31:19.282078
687364	lions-fan1	128	2025-11-18 10:31:28.4657
687370	waku1waku2	70	2025-11-18 10:31:46.31417
687371	jo_07-18	36	2025-11-18 10:31:48.602382
687372	miyu_0913	72	2025-11-18 10:31:50.089987
687377	kochi	38	2025-11-18 10:32:17.043268
687381	fuuta_s	65	2025-11-18 10:32:38.176145
687382	tyanpo-n88	102	2025-11-18 10:32:43.954106
687383	usshi-	60	2025-11-18 10:32:45.794946
687384	miyu_0913	66	2025-11-18 10:32:54.162212
687386	kuri-sou1	66	2025-11-18 10:33:06.878794
687387	tyanpo-n88	82	2025-11-18 10:33:32.456526
687325	sum-lov_13	93	2025-11-18 10:29:14.806888
687326	shishamo	125	2025-11-18 10:29:16.559681
687327	auct1718	43	2025-11-18 10:29:18.438925
687329	knt_07	83	2025-11-18 10:29:20.540165
687330	kaxejn1	6	2025-11-18 10:29:25.277954
687331	ishumi	6	2025-11-18 10:29:26.162965
687335	hitomi0413	81	2025-11-18 10:29:32.166759
687337	atomic	78	2025-11-18 10:29:41.572333
687338	mi-01_28	26	2025-11-18 10:29:42.722586
687339	masatoshi	32	2025-11-18 10:29:55.454515
687341	kai-_0224	12	2025-11-18 10:29:58.794574
687342	waku1waku2	78	2025-11-18 10:30:03.760773
687343	kochi	26	2025-11-18 10:30:09.91761
687344	papico181	46	2025-11-18 10:30:13.501364
687346	italia_lia	56	2025-11-18 10:30:25.251555
687348	shudo-220_	53	2025-11-18 10:30:31.775317
687349	axvo5145	49	2025-11-18 10:30:36.000274
687351	ishumi	75	2025-11-18 10:30:40.391754
687352	tya-han_04	47	2025-11-18 10:30:42.51604
687353	daisuke	64	2025-11-18 10:30:43.020293
687354	okiku_0408	121	2025-11-18 10:30:53.95751
687356	ha-ruto_00	47	2025-11-18 10:30:59.139994
687357	yuudai1201	56	2025-11-18 10:31:03.905851
687359	otsukisama	94	2025-11-18 10:31:16.135317
687360	satohina13	40	2025-11-18 10:31:18.630128
687362	okiku_0408	127	2025-11-18 10:31:22.666544
687363	kota_07-15	42	2025-11-18 10:31:25.714603
687365	patinca-nu	46	2025-11-18 10:31:28.540906
687366	fuuta_s	33	2025-11-18 10:31:34.145754
687367	shirogane	60	2025-11-18 10:31:41.004806
687368	usshi-	46	2025-11-18 10:31:44.65955
687369	daisuke	67	2025-11-18 10:31:46.106896
687373	shimo1225	0	2025-11-18 10:31:58.155753
687374	yuudai1201	70	2025-11-18 10:32:04.343011
687375	italia_lia	64	2025-11-18 10:32:05.187854
687376	ha-ruto_00	54	2025-11-18 10:32:06.284147
687378	waku1waku2	117	2025-11-18 10:32:18.433171
687379	lions-fan1	81	2025-11-18 10:32:20.486689
687380	aritomo	77	2025-11-18 10:32:26.612838
687385	ha-ruto_00	116	2025-11-18 10:33:04.260148
687388	mt_bird	92	2025-11-18 10:35:28.670299
687389	axvo5145	40	2025-11-18 10:36:31.999581
687390	yukiflcx	125	2025-11-18 10:36:55.176327
687391	yes_eo080	44	2025-11-18 11:19:32.371924
687392	lions-fan1	111	2025-11-18 13:17:28.778287
687393	lions-fan1	111	2025-11-18 13:18:02.853694
687394	gira	77	2025-11-18 14:35:32.906535
687395	gira	48	2025-11-18 14:36:34.740188
687396	lions-fan1	105	2025-11-18 22:01:23.626309
687397	tya-han_04	125	2025-11-19 18:34:12.892644
687398	tya-han_04	65	2025-11-19 18:35:15.082652
687399	tya-han_04	70	2025-11-19 18:36:15.951266
687400	tya-han_04	54	2025-11-19 18:37:08.917111
687401	tya-han_04	72	2025-11-19 18:38:09.694053
687402	tya-han_04	68	2025-11-19 18:39:11.939654
687403	tya-han_04	43	2025-11-19 18:40:13.669693
687404	tya-han_04	36	2025-11-19 18:41:15.220667
687405	tya-han_04	64	2025-11-19 18:42:16.744783
687406	tya-han_04	35	2025-11-19 18:43:17.064867
687407	tya-han_04	69	2025-11-19 18:44:19.196752
687408	lions-fan1	94	2025-11-23 18:32:35.724265
687409	lions-fan1	76	2025-11-24 21:52:23.185398
687410	kuri-sou1	59	2025-11-25 18:58:29.385666
687411	kuri-sou1	54	2025-11-25 18:59:41.217275
687412	kuri-sou1	82	2025-11-25 19:00:59.909617
687413	waku1waku2	125	2025-11-25 23:29:13.414046
687414	waku1waku2	68	2025-11-26 19:12:04.622941
687415	tyankonabe	0	2025-11-27 10:09:55.545294
687416	tyankonabe	43	2025-11-27 10:10:57.520106
687417	tyankonabe	47	2025-11-27 10:11:58.640823
687418	tyankonabe	41	2025-11-27 10:59:35.030122
687419	lions-fan1	112	2025-11-28 12:05:49.023046
687420	lions-fan1	72	2025-11-28 12:06:54.011711
687421	axvo5145	41	2025-11-29 20:07:05.511669
687422	axvo5145	53	2025-11-29 20:08:12.598584
687423	axvo5145	117	2025-11-29 20:09:08.632146
687424	axvo5145	93	2025-11-29 20:10:07.21671
687425	axvo5145	84	2025-11-29 20:11:09.304931
687426	axvo5145	86	2025-11-29 20:12:11.783903
687427	axvo5145	53	2025-11-29 20:13:16.8905
687428	axvo5145	73	2025-11-29 20:14:20.555633
687429	lions-fan1	78	2025-12-01 10:19:43.967297
687430	tyankonabe	55	2025-12-01 17:39:39.211268
687431	tyankonabe	72	2025-12-01 17:40:40.792435
687432	tyankonabe	143	2025-12-01 17:41:11.166473
687433	tyankonabe	57	2025-12-01 18:06:46.174026
687434	kfc055	52	2025-12-01 18:43:08.756689
687435	tya-han_04	72	2025-12-02 15:35:13.634297
687436	tya-han_04	85	2025-12-02 15:37:26.795559
687437	waku1waku2	84	2025-12-02 22:22:20.948059
687438	opantyu	49	2025-12-03 22:28:29.76266
687439	nattu_0716	80	2025-12-03 22:29:06.878833
687440	opantyu	68	2025-12-03 22:30:15.317999
687441	nattu_0716	47	2025-12-03 22:30:30.880957
687442	nattu_0716	111	2025-12-03 22:31:43.715109
687443	opantyu	40	2025-12-03 22:31:44.500289
687444	opantyu	107	2025-12-03 22:32:53.409799
687445	waku1waku2	77	2025-12-03 22:38:55.969277
687446	lions-fan1	104	2025-12-03 22:39:12.273288
687447	opantyu	55	2025-12-03 22:39:12.324542
687448	waku1waku2	99	2025-12-03 22:39:59.324957
687449	lions-fan1	71	2025-12-03 22:40:29.273367
687450	waku1waku2	67	2025-12-03 22:41:08.966235
687451	opantyu	74	2025-12-03 22:41:27.398531
687452	lions-fan1	120	2025-12-03 22:41:32.759614
687453	waku1waku2	93	2025-12-03 22:42:12.941895
687454	lions-fan1	109	2025-12-03 22:42:18.455195
687455	lions-fan1	147	2025-12-03 22:42:43.819038
687456	waku1waku2	137	2025-12-03 22:42:48.135944
687457	opantyu	56	2025-12-03 22:43:03.219349
687458	lions-fan1	69	2025-12-04 13:50:26.157989
687459	gira	78	2025-12-04 15:49:43.079639
687460	gira	72	2025-12-04 15:50:44.232499
687461	gira	136	2025-12-04 15:51:30.901379
687462	waku1waku2	106	2025-12-04 16:24:54.639003
687463	gira	82	2025-12-05 15:14:26.163815
687464	gira	84	2025-12-05 15:15:17.42618
687465	gira	58	2025-12-05 15:16:18.942501
687466	tya-han_04	67	2025-12-06 02:13:55.843716
687467	tya-han_04	57	2025-12-06 02:16:11.587502
687468	tya-han_04	75	2025-12-08 16:43:11.979922
687469	tya-han_04	56	2025-12-08 16:44:13.985654
687470	tya-han_04	44	2025-12-08 16:45:15.692744
687471	tya-han_04	57	2025-12-08 16:46:16.985587
687472	tya-han_04	103	2025-12-08 16:47:09.715365
687473	taiga228	43	2025-12-09 10:25:24.439741
687474	taiga228	41	2025-12-09 10:26:50.14041
687475	masatoshi	38	2025-12-09 10:26:51.539278
687476	otsukisama	56	2025-12-09 10:26:56.545468
687477	kou-1603	90	2025-12-09 10:27:03.44798
687478	shudo-220_	132	2025-12-09 10:27:24.145349
687479	kai-_0224	51	2025-12-09 10:27:37.602844
687480	sa-sa_0127	55	2025-12-09 10:27:38.993765
687481	fuuta_s	53	2025-12-09 10:27:39.669639
687482	satohina13	64	2025-12-09 10:27:43.87883
687483	masatoshi	47	2025-12-09 10:27:55.317062
687484	taiga228	66	2025-12-09 10:27:56.292729
687485	atomic	61	2025-12-09 10:27:58.530732
687486	otsukisama	84	2025-12-09 10:28:03.533448
687487	daisuke	68	2025-12-09 10:28:03.688562
687488	yuudai1201	37	2025-12-09 10:28:22.299001
687489	ri8_hoon-	55	2025-12-09 10:28:25.589604
687493	sa-sa_0127	49	2025-12-09 10:28:40.922152
687494	haru-714	98	2025-12-09 10:28:42.060456
687496	mi-01_28	95	2025-12-09 10:28:56.156537
687497	shimo1225	75	2025-12-09 10:28:56.993386
687498	tyankonabe	51	2025-12-09 10:28:58.037332
687500	haruuu4	0	2025-12-09 10:29:04.658803
687504	axvo5145	81	2025-12-09 10:29:16.795948
687506	shirogane	80	2025-12-09 10:29:17.689423
687508	usshi-	33	2025-12-09 10:29:22.494722
687509	jo_07-18	65	2025-12-09 10:29:23.892722
687510	yuudai1201	67	2025-12-09 10:29:26.428769
687511	ha-ruto_00	119	2025-12-09 10:29:29.929114
687512	inu255-12	75	2025-12-09 10:29:31.598307
687513	akitennis	52	2025-12-09 10:29:39.600328
687516	shimo1225	67	2025-12-09 10:29:44.952097
687518	patinca-nu	122	2025-12-09 10:29:48.245487
687519	kai-_0224	37	2025-12-09 10:29:48.46523
687521	daisuke	59	2025-12-09 10:30:05.819967
687522	lions-fan1	84	2025-12-09 10:30:07.318039
687525	auct1718	35	2025-12-09 10:30:19.33888
687526	kaxejn1	117	2025-12-09 10:30:23.713383
687529	kochi	23	2025-12-09 10:30:30.322814
687530	jo_07-18	28	2025-12-09 10:30:31.362832
687532	inu255-12	49	2025-12-09 10:30:36.614969
687533	tyanpo-n88	113	2025-12-09 10:30:37.902268
687534	mi-01_28	58	2025-12-09 10:30:40.783624
687535	waku1waku2	50	2025-12-09 10:30:41.148405
687536	musiko	81	2025-12-09 10:30:41.430993
687538	imora1107	22	2025-12-09 10:30:51.022108
687539	tujiri_01	84	2025-12-09 10:30:57.069125
687540	posting	131	2025-12-09 10:30:59.537884
687546	italia_lia	67	2025-12-09 10:31:30.305531
687551	vertin15	57	2025-12-09 10:31:39.898447
687555	kfc055	48	2025-12-09 10:32:09.681468
687556	musiko	66	2025-12-09 10:32:15.289788
687557	waku1waku2	98	2025-12-09 10:32:24.636639
687564	kiyodai	52	2025-12-09 10:33:55.533619
687567	aritomo	30	2025-12-09 10:35:36.038703
687570	kyama10_	12	2025-12-09 10:36:14.687741
687490	shudo-220_	21	2025-12-09 10:28:30.474393
687491	tya-han_04	44	2025-12-09 10:28:34.303322
687492	masatoshi	0	2025-12-09 10:28:36.915351
687495	kai-_0224	58	2025-12-09 10:28:43.515401
687499	daisuke	72	2025-12-09 10:29:04.607351
687501	atomic	78	2025-12-09 10:29:05.621893
687502	ishumi	40	2025-12-09 10:29:10.324787
687503	m0gu	43	2025-12-09 10:29:14.63536
687505	fuuta_s	39	2025-12-09 10:29:17.646831
687507	mikyu397	82	2025-12-09 10:29:19.697732
687514	shishamo	124	2025-12-09 10:29:41.28355
687515	tya-han_04	57	2025-12-09 10:29:44.153642
687517	sum-lov_13	74	2025-12-09 10:29:45.20555
687520	tujiri_01	69	2025-12-09 10:29:49.229322
687523	italia_lia	86	2025-12-09 10:30:13.753003
687524	ishumi	115	2025-12-09 10:30:18.989347
687527	taiga228	130	2025-12-09 10:30:25.914244
687528	shimo1225	83	2025-12-09 10:30:28.916183
687531	ha-ruto_00	32	2025-12-09 10:30:33.095809
687537	haruuu4	0	2025-12-09 10:30:47.982093
687541	akitennis	58	2025-12-09 10:31:13.12905
687542	aaaaa	75	2025-12-09 10:31:13.670249
687543	daisuke	86	2025-12-09 10:31:25.960451
687544	kuri-sou1	16	2025-12-09 10:31:28.982982
687545	usshi-	48	2025-12-09 10:31:29.927729
687547	axvo5145	39	2025-12-09 10:31:30.309636
687548	fuuta_s	93	2025-12-09 10:31:30.63522
687549	miyu_0913	61	2025-12-09 10:31:36.266769
687550	kaxejn1	101	2025-12-09 10:31:38.885194
687552	inu255-12	46	2025-12-09 10:31:42.709453
687553	haruuu4	92	2025-12-09 10:31:52.070326
687554	posting	89	2025-12-09 10:32:09.08429
687558	shirogane	62	2025-12-09 10:32:38.005373
687559	kuri-sou1	57	2025-12-09 10:32:38.758464
687560	posting	131	2025-12-09 10:33:17.422123
687561	musiko	78	2025-12-09 10:33:19.508366
687562	shirogane	136	2025-12-09 10:33:27.583954
687563	yes_eo080	47	2025-12-09 10:33:31.407654
687565	papico181	57	2025-12-09 10:34:18.255474
687566	yes_eo080	96	2025-12-09 10:34:28.409835
687568	shishamo	139	2025-12-09 10:35:48.853129
687569	yukiflcx	79	2025-12-09 10:36:00.11436
687571	tya-han_04	64	2025-12-10 17:11:55.32607
687572	tya-han_04	63	2025-12-10 17:12:56.860216
687573	tya-han_04	129	2025-12-10 17:13:40.079583
687574	tya-han_04	53	2025-12-10 17:14:42.735646
687575	tya-han_04	81	2025-12-10 17:15:43.818139
687576	tya-han_04	68	2025-12-10 17:16:45.812798
687577	tya-han_04	62	2025-12-10 17:17:47.406292
687578	tya-han_04	78	2025-12-10 17:18:49.966646
687579	tya-han_04	58	2025-12-10 17:19:52.356429
687580	tya-han_04	77	2025-12-10 17:20:54.309778
687581	tya-han_04	77	2025-12-10 17:21:59.658492
687582	tya-han_04	106	2025-12-10 17:22:54.76824
687583	tya-han_04	117	2025-12-11 16:26:07.341194
687584	tya-han_04	47	2025-12-12 14:24:16.76144
687585	tya-han_04	61	2025-12-12 14:25:18.957654
687586	tya-han_04	88	2025-12-12 14:26:20.740671
687587	tya-han_04	148	2025-12-12 14:26:45.583363
687588	tya-han_04	96	2025-12-12 14:27:30.171774
687589	lions-fan1	149	2025-12-12 22:07:31.075959
687590	lions-fan1	80	2025-12-12 22:08:59.858612
687591	waku1waku2	101	2025-12-12 22:51:59.308341
687592	waku1waku2	72	2025-12-12 22:52:50.80347
687593	tya-han_04	38	2025-12-13 23:47:24.259437
687594	lions-fan1	142	2025-12-15 21:18:56.623334
687595	lions-fan1	101	2025-12-15 21:19:50.791207
687596	lions-fan1	73	2025-12-15 21:20:52.628524
687597	usshi-	109	2025-12-16 10:25:45.461824
687598	waku1waku2	52	2025-12-16 10:26:27.305437
687599	papico181	37	2025-12-16 10:26:36.281162
687600	kaxejn1	55	2025-12-16 10:26:41.395834
687601	shishamo	61	2025-12-16 10:26:42.640878
687602	ishumi	39	2025-12-16 10:26:43.826164
687603	ha-ruto_00	51	2025-12-16 10:26:48.566446
687604	lions-fan1	142	2025-12-16 10:26:49.58137
687605	waku1waku2	107	2025-12-16 10:26:54.302585
687606	usshi-	31	2025-12-16 10:26:54.501121
687607	italia_lia	64	2025-12-16 10:27:13.888826
687608	m0gu	72	2025-12-16 10:27:19.837786
687609	patinca-nu	35	2025-12-16 10:27:26.790467
687610	sa-sa_0127	83	2025-12-16 10:27:28.058047
687611	shishamo	131	2025-12-16 10:27:38.203448
687612	otsukisama	92	2025-12-16 10:27:38.271799
687613	mikyu397	46	2025-12-16 10:27:40.875693
687614	papico181	69	2025-12-16 10:27:41.169816
687615	akitennis	59	2025-12-16 10:27:43.161589
687616	kaxejn1	85	2025-12-16 10:27:44.664575
687617	ishumi	57	2025-12-16 10:27:46.54334
687618	atomic	57	2025-12-16 10:27:47.4437
687619	ri8_hoon-	57	2025-12-16 10:27:48.507452
687620	hibiki-118	128	2025-12-16 10:27:48.682077
687621	ha-ruto_00	54	2025-12-16 10:27:50.260376
687622	waku1waku2	92	2025-12-16 10:27:55.697209
687623	knt_07	61	2025-12-16 10:27:56.698765
687624	kai-_0224	55	2025-12-16 10:27:57.497316
687625	usshi-	59	2025-12-16 10:27:58.014602
687626	lions-fan1	69	2025-12-16 10:27:58.445772
687627	hitomi0413	130	2025-12-16 10:28:07.192265
687628	tya-han_04	81	2025-12-16 10:28:10.256662
687629	daisuke	74	2025-12-16 10:28:12.655614
687630	aritomo	47	2025-12-16 10:28:13.485652
687631	vertin15	46	2025-12-16 10:28:17.006853
687632	haru-714	51	2025-12-16 10:28:17.456826
687633	kiyodai	38	2025-12-16 10:28:19.854295
687634	a-sakito13	42	2025-12-16 10:28:19.864525
687635	kou-1603	100	2025-12-16 10:28:29.314684
687636	posting	86	2025-12-16 10:28:29.583926
687637	mi-01_28	83	2025-12-16 10:28:30.227352
687638	sa-sa_0127	69	2025-12-16 10:28:31.230747
687639	aaaaa	122	2025-12-16 10:28:32.363097
687640	jo_07-18	48	2025-12-16 10:28:33.82163
687641	italia_lia	75	2025-12-16 10:28:33.98626
687642	tyanpo-n88	78	2025-12-16 10:28:39.037308
687643	atomic	46	2025-12-16 10:28:49.068464
687644	waku1waku2	121	2025-12-16 10:28:49.842643
687645	ha-ruto_00	48	2025-12-16 10:28:51.488577
687646	akitennis	68	2025-12-16 10:28:52.239366
687647	hibiki-118	91	2025-12-16 10:28:52.682927
687648	haruuu4	44	2025-12-16 10:28:52.945744
687649	shudo-220_	103	2025-12-16 10:28:53.833874
687650	fuuta_s	91	2025-12-16 10:28:55.803444
687651	imora1107	79	2025-12-16 10:28:57.167359
687652	tya-han_04	127	2025-12-16 10:28:57.30375
687653	ishumi	117	2025-12-16 10:28:57.640396
687654	kai-_0224	23	2025-12-16 10:29:02.305194
687655	usshi-	50	2025-12-16 10:29:03.46072
687656	sum-lov_13	71	2025-12-16 10:29:05.099207
687657	daisuke	69	2025-12-16 10:29:14.036814
687658	musiko	35	2025-12-16 10:29:15.863003
687659	axvo5145	68	2025-12-16 10:29:21.651457
687660	inu255-12	38	2025-12-16 10:29:28.759308
687661	posting	82	2025-12-16 10:29:32.55592
687662	aaaaa	69	2025-12-16 10:29:34.75171
687663	kuri-sou1	39	2025-12-16 10:29:36.024794
687664	kochi	34	2025-12-16 10:29:42.497962
687665	atomic	49	2025-12-16 10:29:51.040043
687666	waku1waku2	54	2025-12-16 10:29:52.229632
687667	shudo-220_	62	2025-12-16 10:29:56.205252
687668	akitennis	67	2025-12-16 10:29:56.540954
687669	shimo1225	63	2025-12-16 10:29:57.200743
687670	tya-han_04	89	2025-12-16 10:29:57.229237
687673	usshi-	54	2025-12-16 10:30:08.920518
687674	kyama10_	50	2025-12-16 10:30:09.108032
687679	shimo1225	114	2025-12-16 10:30:33.33857
687680	axvo5145	35	2025-12-16 10:30:34.729294
687682	tyanpo-n88	43	2025-12-16 10:30:52.493615
687683	yuudai1201	48	2025-12-16 10:30:52.813442
687684	shudo-220_	64	2025-12-16 10:30:58.242148
687686	tujiri_01	64	2025-12-16 10:31:04.052938
687692	waku1waku2	53	2025-12-16 10:31:42.293077
687693	lions-fan1	79	2025-12-16 10:31:44.074412
687695	yuudai1201	87	2025-12-16 10:32:02.312877
687671	fuuta_s	67	2025-12-16 10:29:58.029526
687675	musiko	90	2025-12-16 10:30:22.249086
687681	kochi	34	2025-12-16 10:30:50.301441
687688	auct1718	38	2025-12-16 10:31:13.591263
687691	miyu_0913	68	2025-12-16 10:31:40.844953
687697	tyankonabe	40	2025-12-16 10:32:51.314531
687672	tujiri_01	120	2025-12-16 10:29:58.185456
687676	waku1waku2	121	2025-12-16 10:30:24.824659
687677	inu255-12	58	2025-12-16 10:30:31.006663
687678	posting	84	2025-12-16 10:30:33.272188
687685	posting	125	2025-12-16 10:31:02.797917
687687	shishamo	124	2025-12-16 10:31:13.393737
687689	usshi-	71	2025-12-16 10:31:23.504351
687690	inu255-12	50	2025-12-16 10:31:34.915738
687694	tujiri_01	97	2025-12-16 10:32:00.142748
687696	fuuta_s	0	2025-12-16 10:32:14.336964
687698	kuri-sou1	67	2025-12-16 10:33:32.216841
687699	tyankonabe	56	2025-12-16 10:34:04.605571
687700	yes_eo080	93	2025-12-16 10:36:03.236661
687701	mt_bird	94	2025-12-16 10:36:24.163913
687702	yukiflcx	81	2025-12-16 10:37:09.105899
687703	lions-fan1	64	2025-12-22 10:18:30.605136
687704	lions-fan1	85	2025-12-22 10:27:01.737027
687705	shirogane	54	2025-12-22 18:35:51.45885
687706	ishumi	96	2025-12-23 10:27:12.743392
687707	ishumi	67	2025-12-23 10:28:19.957119
687708	usshi-	40	2025-12-23 10:28:22.258641
687709	tyankonabe	18	2025-12-23 10:28:28.051163
687710	hibiki-118	95	2025-12-23 10:28:32.7603
687711	ha-ruto_00	50	2025-12-23 10:28:36.391887
687712	lions-fan1	118	2025-12-23 10:28:39.285861
687713	shishamo	142	2025-12-23 10:28:43.160573
687714	waku1waku2	102	2025-12-23 10:28:48.526297
687715	vertin15	77	2025-12-23 10:28:51.832517
687716	kota_07-15	123	2025-12-23 10:29:21.254457
687717	atomic	45	2025-12-23 10:29:23.599391
687718	usshi-	51	2025-12-23 10:29:23.766968
687719	hibiki-118	98	2025-12-23 10:29:31.405477
687720	lions-fan1	119	2025-12-23 10:29:32.113637
687721	waku1waku2	92	2025-12-23 10:29:32.353458
687722	ha-ruto_00	48	2025-12-23 10:29:37.680163
687723	tyankonabe	0	2025-12-23 10:29:40.113675
687724	aritomo	33	2025-12-23 10:29:43.046817
687725	yuudai1201	46	2025-12-23 10:29:46.147226
687726	shudo-220_	39	2025-12-23 10:29:47.242421
687727	sum-lov_13	104	2025-12-23 10:29:56.727963
687728	haru-714	60	2025-12-23 10:29:58.40699
687729	shimo1225	97	2025-12-23 10:30:00.884893
687730	lions-fan1	110	2025-12-23 10:30:17.668962
687731	kai-_0224	50	2025-12-23 10:30:24.052407
687732	atomic	83	2025-12-23 10:30:25.457565
687733	kou-1603	73	2025-12-23 10:30:25.962421
687734	usshi-	49	2025-12-23 10:30:26.04045
687735	kuri-sou1	65	2025-12-23 10:30:27.977544
687736	waku1waku2	51	2025-12-23 10:30:35.717413
687737	ha-ruto_00	64	2025-12-23 10:30:39.65107
687738	imora1107	111	2025-12-23 10:30:41.387167
687739	kaxejn1	18	2025-12-23 10:30:44.647385
687740	tya-han_04	118	2025-12-23 10:30:51.564682
687741	shirogane	66	2025-12-23 10:30:51.90807
687742	mi-01_28	50	2025-12-23 10:30:52.792408
687743	yuudai1201	53	2025-12-23 10:30:56.547018
687744	shudo-220_	52	2025-12-23 10:30:56.645932
687745	shimo1225	91	2025-12-23 10:31:02.856442
687746	fuuta_s	41	2025-12-23 10:31:05.383943
687747	axvo5145	51	2025-12-23 10:31:07.77833
687748	lions-fan1	82	2025-12-23 10:31:17.164777
687749	aaaaa	75	2025-12-23 10:31:20.795118
687750	daisuke	85	2025-12-23 10:31:25.079515
687751	kai-_0224	80	2025-12-23 10:31:28.241563
687752	atomic	57	2025-12-23 10:31:28.666269
687753	imora1107	101	2025-12-23 10:31:29.238662
687754	kyama10_	46	2025-12-23 10:31:30.581451
687755	kuri-sou1	78	2025-12-23 10:31:30.650877
687756	waku1waku2	86	2025-12-23 10:31:32.979223
687757	musiko	88	2025-12-23 10:31:50.440608
687758	tya-han_04	39	2025-12-23 10:31:53.979169
687759	yes_eo080	66	2025-12-23 10:31:57.868017
687760	tyankonabe	65	2025-12-23 10:31:58.527378
687761	fuuta_s	63	2025-12-23 10:32:00.043651
687762	m0gu	68	2025-12-23 10:32:06.43311
687763	miyu_0913	59	2025-12-23 10:32:13.58407
687764	waku1waku2	85	2025-12-23 10:32:19.633806
687765	daisuke	90	2025-12-23 10:32:20.6704
687766	tyanpo-n88	65	2025-12-23 10:32:22.066908
687767	aritomo	38	2025-12-23 10:32:41.911866
687768	tyankonabe	117	2025-12-23 10:32:44.898613
687769	kochi	0	2025-12-23 10:32:45.07107
687770	posting	47	2025-12-23 10:33:02.555718
687771	yes_eo080	60	2025-12-23 10:33:07.015472
687772	daisuke	96	2025-12-23 10:33:16.284174
687773	miyu_0913	53	2025-12-23 10:33:22.743235
687774	tyanpo-n88	44	2025-12-23 10:33:23.339914
687775	inu255-12	47	2025-12-23 10:33:34.719298
687776	lions-fan1	119	2025-12-23 10:33:36.355968
687777	kochi	11	2025-12-23 10:33:50.055829
687778	miyu_0913	57	2025-12-23 10:34:24.146708
687779	aritomo	40	2025-12-23 10:34:31.655625
687780	posting	41	2025-12-23 10:34:38.604079
687781	lions-fan1	74	2025-12-23 10:34:52.373748
687782	waku1waku2	58	2025-12-23 10:35:20.036017
687783	miyu_0913	0	2025-12-23 10:35:26.631412
687784	usshi-	48	2025-12-23 10:35:44.671962
687785	lions-fan1	99	2025-12-23 10:35:54.097838
687786	tya-han_04	112	2025-12-23 10:37:01.590484
687787	a-sakito13	0	2025-12-23 10:37:58.327359
687788	tya-han_04	66	2025-12-23 10:38:15.23956
687789	tya-han_04	96	2025-12-23 10:39:08.229697
687790	haruuu4	35	2025-12-23 10:39:46.17987
687791	yukiflcx	136	2025-12-23 10:39:59.631921
687792	tya-han_04	84	2025-12-23 10:40:10.768538
687793	mikyu397	37	2025-12-23 10:40:14.76459
687794	taiga228	37	2025-12-23 10:40:46.820542
687795	tya-han_04	71	2025-12-23 14:22:42.183997
687796	tya-han_04	61	2025-12-23 14:23:43.432426
687797	tya-han_04	45	2025-12-23 14:24:45.163259
687798	tya-han_04	101	2025-12-23 14:25:35.170332
687799	lions-fan1	110	2025-12-24 09:11:26.380114
687800	gira	129	2025-12-24 13:18:13.196088
687801	tya-han_04	65	2025-12-28 01:29:51.292164
687802	tya-han_04	49	2025-12-28 01:30:53.507109
687803	tya-han_04	75	2025-12-28 01:31:55.721072
687804	tya-han_04	91	2025-12-29 15:13:41.968821
687805	tya-han_04	57	2025-12-29 15:15:58.63133
687806	tya-han_04	50	2025-12-29 15:17:02.303381
687807	tya-han_04	60	2025-12-29 15:18:04.381641
687808	waku1waku2	102	2025-12-30 14:37:29.386708
687809	lions-fan1	70	2026-01-06 10:08:39.108228
687810	lions-fan1	60	2026-01-06 10:10:17.826971
687811	lions-fan1	78	2026-01-06 10:11:21.496935
687812	lions-fan1	62	2026-01-06 10:12:23.644629
687813	lions-fan1	107	2026-01-06 10:13:11.780357
687814	tya-han_04	111	2026-01-06 10:19:21.455366
687815	imora1107	65	2026-01-06 10:25:06.15506
687816	imora1107	70	2026-01-06 10:26:09.865733
687817	aaaaa	90	2026-01-06 10:26:20.786624
687818	kiyodai	0	2026-01-06 10:26:25.397778
687819	patinca-nu	28	2026-01-06 10:26:34.562761
687820	waku1waku2	54	2026-01-06 10:26:44.956682
687821	axvo5145	51	2026-01-06 10:27:08.120529
687822	yuudai1201	38	2026-01-06 10:27:12.477673
687823	mikyu397	51	2026-01-06 10:27:17.858964
687824	shudo-220_	0	2026-01-06 10:27:19.335101
687825	atomic	43	2026-01-06 10:27:21.224499
687826	aaaaa	52	2026-01-06 10:27:23.491242
687827	sa-sa_0127	65	2026-01-06 10:27:26.640632
687828	kai-_0224	31	2026-01-06 10:27:29.081866
687829	ha-ruto_00	55	2026-01-06 10:27:30.072023
687833	otsukisama	84	2026-01-06 10:27:41.211528
687834	waku1waku2	70	2026-01-06 10:27:47.62837
687836	akitennis	118	2026-01-06 10:27:50.851466
687837	lions-fan1	83	2026-01-06 10:27:51.578918
687838	fuuta_s	72	2026-01-06 10:27:52.768254
687839	sum-lov_13	127	2026-01-06 10:27:58.419595
687840	kyama10_	0	2026-01-06 10:28:02.914452
687843	shudo-220_	99	2026-01-06 10:28:14.124711
687847	tujiri_01	83	2026-01-06 10:28:28.011778
687848	aaaaa	53	2026-01-06 10:28:28.069735
687849	sa-sa_0127	81	2026-01-06 10:28:28.507338
687854	tyankonabe	82	2026-01-06 10:28:36.706004
687855	m0gu	51	2026-01-06 10:28:39.86197
687857	kou-1603	91	2026-01-06 10:28:41.941344
687859	papico181	42	2026-01-06 10:28:44.784857
687862	mi-01_28	53	2026-01-06 10:28:53.050357
687864	tyanpo-n88	102	2026-01-06 10:28:59.197502
687865	lions-fan1	112	2026-01-06 10:28:59.617332
687867	shimo1225	90	2026-01-06 10:29:01.752402
687868	fuuta_s	42	2026-01-06 10:29:02.859922
687869	tya-han_04	36	2026-01-06 10:29:04.47388
687871	shudo-220_	62	2026-01-06 10:29:15.371555
687872	vertin15	57	2026-01-06 10:29:20.849553
687873	atomic	19	2026-01-06 10:29:26.643082
687874	posting	130	2026-01-06 10:29:26.920071
687875	a-sakito13	0	2026-01-06 10:29:28.266335
687876	aaaaa	89	2026-01-06 10:29:30.099653
687877	taiga228	52	2026-01-06 10:29:32.995483
687882	waku1waku2	66	2026-01-06 10:29:51.074882
687886	otsukisama	86	2026-01-06 10:30:09.952409
687888	posting	132	2026-01-06 10:30:24.000463
687890	papico181	64	2026-01-06 10:30:52.328268
687891	waku1waku2	74	2026-01-06 10:30:53.781157
687894	taiga228	112	2026-01-06 10:31:01.418681
687897	kuri-sou1	45	2026-01-06 10:31:49.021465
687899	mt_bird	83	2026-01-06 10:33:27.873648
687900	kuri-sou1	72	2026-01-06 10:33:30.402237
687901	inu255-12	59	2026-01-06 10:34:17.534852
687902	yukiflcx	85	2026-01-06 10:35:59.731694
687830	tyankonabe	90	2026-01-06 10:27:33.225464
687831	tya-han_04	58	2026-01-06 10:27:33.653713
687832	shimo1225	89	2026-01-06 10:27:38.004952
687835	ri8_hoon-	43	2026-01-06 10:27:49.653822
687841	axvo5145	52	2026-01-06 10:28:09.338628
687842	kota_07-15	59	2026-01-06 10:28:10.470661
687844	yuudai1201	78	2026-01-06 10:28:14.447617
687845	atomic	117	2026-01-06 10:28:18.581151
687846	shimo1225	90	2026-01-06 10:28:21.031172
687850	knt_07	31	2026-01-06 10:28:28.844083
687851	kai-_0224	48	2026-01-06 10:28:31.425867
687852	ha-ruto_00	0	2026-01-06 10:28:32.372411
687853	haruuu4	63	2026-01-06 10:28:36.404472
687856	haru-714	45	2026-01-06 10:28:40.146255
687858	hitomi0413	18	2026-01-06 10:28:42.472971
687860	auct1718	38	2026-01-06 10:28:46.298673
687861	waku1waku2	16	2026-01-06 10:28:49.371772
687863	kyama10_	129	2026-01-06 10:28:58.334895
687866	akitennis	72	2026-01-06 10:29:01.611742
687870	jo_07-18	33	2026-01-06 10:29:09.403464
687878	tyankonabe	119	2026-01-06 10:29:36.365542
687879	haru-714	63	2026-01-06 10:29:44.927073
687880	ha-ruto_00	54	2026-01-06 10:29:49.528531
687881	papico181	38	2026-01-06 10:29:50.621591
687883	tyanpo-n88	95	2026-01-06 10:29:55.649125
687884	musiko	50	2026-01-06 10:29:56.056918
687885	hitomi0413	53	2026-01-06 10:29:59.356806
687887	tujiri_01	89	2026-01-06 10:30:23.442073
687889	lions-fan1	85	2026-01-06 10:30:51.770006
687892	kiyodai	64	2026-01-06 10:30:57.707104
687893	musiko	82	2026-01-06 10:30:58.916354
687895	aritomo	41	2026-01-06 10:31:06.398557
687896	shishamo	91	2026-01-06 10:31:09.407468
687898	yes_eo080	82	2026-01-06 10:32:43.125024
687903	tya-han_04	120	2026-01-06 18:21:07.816648
687904	tya-han_04	72	2026-01-06 18:22:10.095349
687905	tya-han_04	63	2026-01-06 18:23:11.340897
687906	tya-han_04	64	2026-01-08 16:56:47.646248
687907	tya-han_04	52	2026-01-08 16:57:49.641681
687908	tya-han_04	53	2026-01-08 16:58:50.983972
687909	tya-han_04	87	2026-01-08 16:59:52.602531
687910	tya-han_04	121	2026-01-08 17:00:43.657471
687911	tya-han_04	16	2026-01-08 17:01:45.431235
687912	tya-han_04	95	2026-01-08 17:02:38.54382
687913	tya-han_04	67	2026-01-08 17:03:35.611277
687914	tya-han_04	29	2026-01-08 17:04:37.464636
687915	m0gu	82	2026-01-13 10:27:12.332199
687916	tyankonabe	104	2026-01-13 10:28:37.889065
687917	tyankonabe	102	2026-01-13 10:29:56.584747
687918	lions-fan1	99	2026-01-14 03:53:59.481513
687919	lions-fan1	61	2026-01-14 03:55:07.003602
687920	lions-fan1	53	2026-01-14 03:56:11.037499
687921	lions-fan1	74	2026-01-14 03:57:14.131056
687922	lions-fan1	80	2026-01-14 03:58:23.655437
687923	lions-fan1	52	2026-01-14 03:59:32.352736
687924	lions-fan1	101	2026-01-14 04:00:28.178247
687925	lions-fan1	85	2026-01-14 04:01:23.130007
687926	lions-fan1	109	2026-01-14 04:02:38.482797
687927	lions-fan1	88	2026-01-14 04:04:48.757163
687928	lions-fan1	122	2026-01-14 04:05:40.397301
687929	gira	111	2026-01-14 11:23:58.680273
687930	gira	111	2026-01-14 11:25:00.253803
687931	lions-fan1	37	2026-01-19 11:14:51.493457
687932	lions-fan1	88	2026-01-19 11:15:55.558911
687933	lions-fan1	113	2026-01-19 11:16:35.518389
687934	lions-fan1	97	2026-01-19 11:17:51.862911
687935	lions-fan1	76	2026-01-19 11:19:04.021638
687936	lions-fan1	84	2026-01-19 11:21:43.176263
687937	tya-han_04	82	2026-01-19 17:21:38.872846
687938	tya-han_04	93	2026-01-19 17:22:41.514347
687939	tya-han_04	82	2026-01-19 17:23:44.601772
687940	tya-han_04	60	2026-01-19 17:24:47.477809
687941	tya-han_04	59	2026-01-19 17:25:49.390477
687942	tya-han_04	68	2026-01-19 17:26:51.686667
687943	tya-han_04	72	2026-01-19 17:27:54.718531
687944	musiko	115	2026-01-20 10:21:08.307325
687945	posting	112	2026-01-20 10:24:41.980064
687946	hibiki-118	87	2026-01-20 10:26:18.204056
687947	ishumi	46	2026-01-20 10:26:18.657857
687948	otsukisama	118	2026-01-20 10:26:28.213652
687949	usshi-	42	2026-01-20 10:26:33.502391
687950	mi-01_28	25	2026-01-20 10:26:46.705417
687951	ri8_hoon-	44	2026-01-20 10:26:57.774304
687952	waku1waku2	77	2026-01-20 10:27:05.22849
687953	aaaaa	54	2026-01-20 10:27:07.770487
687954	imora1107	69	2026-01-20 10:27:16.740529
687955	kiyodai	62	2026-01-20 10:27:18.712928
687956	hibiki-118	97	2026-01-20 10:27:20.56559
687957	papico181	53	2026-01-20 10:27:21.889521
687958	tya-han_04	49	2026-01-20 10:27:23.585139
687959	a-sakito13	20	2026-01-20 10:27:23.916437
687960	kou-1603	90	2026-01-20 10:27:33.617947
687961	usshi-	69	2026-01-20 10:27:40.15424
687962	ha-ruto_00	72	2026-01-20 10:27:40.980635
687963	hitomi0413	24	2026-01-20 10:27:42.505031
687964	yuudai1201	52	2026-01-20 10:27:43.99968
687965	sum-lov_13	87	2026-01-20 10:27:46.809193
687966	sa-sa_0127	144	2026-01-20 10:27:46.89538
687967	lions-fan1	67	2026-01-20 10:27:52.232958
687968	jo_07-18	57	2026-01-20 10:27:56.056441
687969	atomic	41	2026-01-20 10:27:57.007876
687970	daisuke	64	2026-01-20 10:28:03.302571
687971	akitennis	41	2026-01-20 10:28:04.400644
687972	waku1waku2	69	2026-01-20 10:28:06.317423
687973	mikyu397	50	2026-01-20 10:28:17.12063
687974	otsukisama	72	2026-01-20 10:28:17.422365
687975	fuuta_s	39	2026-01-20 10:28:18.35976
687976	papico181	30	2026-01-20 10:28:24.58995
687977	tya-han_04	55	2026-01-20 10:28:25.663512
687978	shudo-220_	56	2026-01-20 10:28:25.996889
687979	haruuu4	37	2026-01-20 10:28:33.4882
687980	lions-fan1	119	2026-01-20 10:28:36.9342
687981	hitomi0413	116	2026-01-20 10:28:40.582556
687982	shishamo	117	2026-01-20 10:28:41.554426
687983	ha-ruto_00	58	2026-01-20 10:28:42.748159
687984	aaaaa	41	2026-01-20 10:28:43.130675
687985	usshi-	82	2026-01-20 10:28:44.785295
687986	atomic	96	2026-01-20 10:28:45.984944
687987	haru-714	73	2026-01-20 10:28:46.568623
687988	axvo5145	24	2026-01-20 10:28:48.137412
687989	sa-sa_0127	37	2026-01-20 10:28:48.277204
687990	yuudai1201	55	2026-01-20 10:28:58.514626
687991	jo_07-18	51	2026-01-20 10:29:01.025017
687992	daisuke	70	2026-01-20 10:29:04.850613
687993	waku1waku2	80	2026-01-20 10:29:07.220945
687994	ishumi	45	2026-01-20 10:29:08.178883
687995	kochi	0	2026-01-20 10:29:08.898298
687996	akitennis	94	2026-01-20 10:29:10.412153
687997	tyankonabe	33	2026-01-20 10:29:13.886168
687998	kyama10_	0	2026-01-20 10:29:15.878734
687999	italia_lia	96	2026-01-20 10:29:17.510874
688000	fuuta_s	48	2026-01-20 10:29:19.194746
688001	sa-sa_0127	134	2026-01-20 10:29:24.171445
688002	papico181	78	2026-01-20 10:29:25.848781
688003	knt_07	40	2026-01-20 10:29:28.944662
688004	shudo-220_	84	2026-01-20 10:29:29.821139
688005	aritomo	55	2026-01-20 10:29:34.827268
688006	vertin15	61	2026-01-20 10:29:35.115451
688007	kota_07-15	76	2026-01-20 10:29:35.214191
688008	kaxejn1	19	2026-01-20 10:29:37.088666
688009	lions-fan1	92	2026-01-20 10:29:37.401392
688011	waku1waku2	136	2026-01-20 10:29:43.789
688016	shishamo	91	2026-01-20 10:29:55.250574
688017	kochi	96	2026-01-20 10:29:59.570103
688021	tyankonabe	72	2026-01-20 10:30:16.569928
688023	italia_lia	51	2026-01-20 10:30:23.48115
688025	kaxejn1	64	2026-01-20 10:30:32.859681
688026	papico181	43	2026-01-20 10:30:33.742146
688028	yuudai1201	55	2026-01-20 10:30:45.088473
688029	waku1waku2	59	2026-01-20 10:30:45.351584
688030	lions-fan1	63	2026-01-20 10:30:47.60003
688031	kota_07-15	55	2026-01-20 10:30:47.752123
688036	usshi-	54	2026-01-20 10:30:57.742678
688039	kai-_0224	32	2026-01-20 10:31:32.352063
688040	italia_lia	82	2026-01-20 10:31:41.065619
688010	tya-han_04	37	2026-01-20 10:29:37.539165
688012	ha-ruto_00	76	2026-01-20 10:29:44.132719
688013	atomic	77	2026-01-20 10:29:48.35964
688014	axvo5145	66	2026-01-20 10:29:51.980661
688019	posting	121	2026-01-20 10:30:04.874673
688022	ishumi	62	2026-01-20 10:30:23.412636
688024	imora1107	91	2026-01-20 10:30:24.844335
688027	shudo-220_	56	2026-01-20 10:30:35.820559
688032	ha-ruto_00	50	2026-01-20 10:30:48.76662
688033	atomic	57	2026-01-20 10:30:49.931154
688034	axvo5145	109	2026-01-20 10:30:51.188247
688035	tyankonabe	139	2026-01-20 10:30:53.952858
688037	kochi	61	2026-01-20 10:31:03.66378
688038	posting	77	2026-01-20 10:31:10.558187
688041	tyankonabe	31	2026-01-20 10:31:57.308477
688042	tyanpo-n88	111	2026-01-20 10:32:21.157804
688043	kuri-sou1	21	2026-01-20 10:32:38.020232
688015	usshi-	88	2026-01-20 10:29:54.676949
688018	kuri-sou1	63	2026-01-20 10:30:02.970049
688020	daisuke	66	2026-01-20 10:30:06.32975
688044	m0gu	66	2026-01-20 10:33:18.339609
688045	tyanpo-n88	112	2026-01-20 10:33:45.392546
688046	mt_bird	80	2026-01-20 10:36:11.075564
688047	patinca-nu	48	2026-01-20 10:37:13.88437
688048	lions-fan1	62	2026-01-20 11:55:39.254403
688049	lions-fan1	141	2026-01-20 11:56:36.824548
688050	lions-fan1	85	2026-01-20 11:57:57.92316
688051	lions-fan1	144	2026-01-20 11:59:43.119605
688052	tya-han_04	76	2026-01-22 01:06:20.538759
688053	tya-han_04	85	2026-01-22 01:07:23.547873
688054	lions-fan1	63	2026-01-22 12:23:09.919567
688055	gira	89	2026-01-22 16:37:46.123319
688056	gira	70	2026-01-22 16:38:48.134694
688057	gira	73	2026-01-26 16:16:36.998678
688058	gira	75	2026-01-26 16:17:39.415253
688059	tya-han_04	72	2026-01-26 23:39:28.793917
688060	tya-han_04	88	2026-01-26 23:40:29.786616
688061	waku1waku2	68	2026-01-27 10:23:35.224259
688062	lions-fan1	140	2026-01-27 10:23:51.392296
688063	posting	111	2026-01-27 10:23:54.749522
688064	haru-714	47	2026-01-27 10:24:24.558334
688065	waku1waku2	95	2026-01-27 10:24:29.165617
688066	shimo1225	34	2026-01-27 10:24:31.688972
688067	shishamo	123	2026-01-27 10:24:38.108812
688068	yuudai1201	60	2026-01-27 10:24:39.977767
688069	ha-ruto_00	55	2026-01-27 10:24:52.320415
688070	lions-fan1	78	2026-01-27 10:24:53.287745
688071	tya-han_04	49	2026-01-27 10:24:56.512984
688072	atomic	46	2026-01-27 10:25:17.474578
688073	shimo1225	80	2026-01-27 10:25:18.562398
688074	kota_07-15	89	2026-01-27 10:25:20.014306
688075	kiyodai	38	2026-01-27 10:25:29.080825
688076	waku1waku2	47	2026-01-27 10:25:30.99977
688077	shishamo	143	2026-01-27 10:25:31.198747
688078	ri8_hoon-	37	2026-01-27 10:25:35.173251
688079	yuudai1201	56	2026-01-27 10:25:41.903812
688080	axvo5145	57	2026-01-27 10:25:47.521985
688081	sa-sa_0127	50	2026-01-27 10:25:55.004161
688082	ha-ruto_00	53	2026-01-27 10:25:57.41254
688083	imora1107	94	2026-01-27 10:25:57.706801
688084	tya-han_04	63	2026-01-27 10:25:57.9337
688085	shimo1225	89	2026-01-27 10:25:58.317756
688086	lions-fan1	48	2026-01-27 10:26:01.430348
688087	ishumi	100	2026-01-27 10:26:09.77465
688088	posting	130	2026-01-27 10:26:14.31796
688089	usshi-	39	2026-01-27 10:26:15.908487
688090	atomic	66	2026-01-27 10:26:19.663994
688091	otsukisama	130	2026-01-27 10:26:20.599365
688092	italia_lia	36	2026-01-27 10:26:21.596036
688093	kota_07-15	43	2026-01-27 10:26:22.14703
688094	kou-1603	74	2026-01-27 10:26:24.844108
688095	shudo-220_	58	2026-01-27 10:26:28.304093
688096	haru-714	49	2026-01-27 10:26:28.723279
688097	shishamo	93	2026-01-27 10:26:33.878144
688098	waku1waku2	76	2026-01-27 10:26:34.285461
688099	kiyodai	31	2026-01-27 10:26:36.175716
688100	taiga228	48	2026-01-27 10:26:39.268002
688101	tya-han_04	135	2026-01-27 10:26:39.934951
688102	mikyu397	68	2026-01-27 10:26:39.995424
688103	haruuu4	9	2026-01-27 10:26:44.788693
688104	yuudai1201	67	2026-01-27 10:26:45.773043
688105	axvo5145	79	2026-01-27 10:26:49.805143
688106	a-sakito13	74	2026-01-27 10:26:50.277052
688107	tujiri_01	73	2026-01-27 10:26:52.251903
688108	ri8_hoon-	67	2026-01-27 10:26:53.97417
688109	kochi	47	2026-01-27 10:26:55.442682
688110	sa-sa_0127	54	2026-01-27 10:26:56.098371
688111	musiko	68	2026-01-27 10:26:57.660355
688112	imora1107	52	2026-01-27 10:26:59.978253
688113	shimo1225	79	2026-01-27 10:27:01.141907
688114	hibiki-118	74	2026-01-27 10:27:03.29474
688115	knt_07	6	2026-01-27 10:27:11.167601
688116	ishumi	106	2026-01-27 10:27:12.763903
688117	hitomi0413	43	2026-01-27 10:27:13.123125
688118	ha-ruto_00	42	2026-01-27 10:27:13.610544
688119	lions-fan1	114	2026-01-27 10:27:15.723174
688120	m0gu	78	2026-01-27 10:27:19.03366
688121	usshi-	54	2026-01-27 10:27:19.724095
688122	kaxejn1	27	2026-01-27 10:27:20.486855
688123	italia_lia	118	2026-01-27 10:27:20.635083
688124	atomic	62	2026-01-27 10:27:22.266827
688125	akitennis	71	2026-01-27 10:27:26.173442
688126	haru-714	98	2026-01-27 10:27:29.541322
688127	shudo-220_	53	2026-01-27 10:27:32.740753
688128	waku1waku2	69	2026-01-27 10:27:35.772205
688129	tya-han_04	68	2026-01-27 10:27:40.205687
688130	papico181	58	2026-01-27 10:27:45.954364
688131	lions-fan1	118	2026-01-27 10:27:46.679603
688132	otsukisama	92	2026-01-27 10:27:51.627273
688133	yuudai1201	50	2026-01-27 10:27:52.915952
688134	axvo5145	56	2026-01-27 10:27:56.069501
688135	tujiri_01	81	2026-01-27 10:27:56.710957
688136	sa-sa_0127	32	2026-01-27 10:27:57.993394
688137	kochi	59	2026-01-27 10:27:58.946626
688138	imora1107	88	2026-01-27 10:28:03.204994
688139	vertin15	85	2026-01-27 10:28:08.195666
688140	ishumi	96	2026-01-27 10:28:09.255749
688141	ha-ruto_00	89	2026-01-27 10:28:14.581197
688142	hitomi0413	54	2026-01-27 10:28:15.944774
688143	knt_07	11	2026-01-27 10:28:18.221754
688144	usshi-	67	2026-01-27 10:28:23.234667
688145	italia_lia	87	2026-01-27 10:28:23.75373
688146	taiga228	58	2026-01-27 10:28:24.479394
688147	atomic	67	2026-01-27 10:28:26.297961
688148	akitennis	77	2026-01-27 10:28:29.009712
688149	waku1waku2	58	2026-01-27 10:28:37.78396
688150	shudo-220_	64	2026-01-27 10:28:38.367185
688151	tya-han_04	65	2026-01-27 10:28:41.505333
688152	patinca-nu	46	2026-01-27 10:28:44.427617
688153	papico181	65	2026-01-27 10:28:50.653596
688154	sum-lov_13	84	2026-01-27 10:28:52.23457
688155	tyankonabe	86	2026-01-27 10:28:52.608372
688156	kyama10_	82	2026-01-27 10:28:59.151425
688157	kochi	38	2026-01-27 10:29:00.321554
688158	axvo5145	69	2026-01-27 10:29:06.077825
688159	lions-fan1	67	2026-01-27 10:29:06.889166
688160	auct1718	21	2026-01-27 10:29:11.503236
688161	ha-ruto_00	53	2026-01-27 10:29:16.788459
688162	usshi-	72	2026-01-27 10:29:25.757785
688163	kai-_0224	0	2026-01-27 10:29:36.979801
688164	mi-01_28	57	2026-01-27 10:29:43.471295
688165	waku1waku2	52	2026-01-27 10:29:47.16625
688166	daisuke	91	2026-01-27 10:29:53.815887
688167	shudo-220_	43	2026-01-27 10:29:58.597958
688168	papico181	86	2026-01-27 10:30:00.369357
688169	tyankonabe	66	2026-01-27 10:30:04.061103
688170	kochi	44	2026-01-27 10:30:05.46851
688171	jo_07-18	71	2026-01-27 10:30:27.953022
688172	kai-_0224	45	2026-01-27 10:30:46.236924
688173	lions-fan1	80	2026-01-27 10:30:53.892565
688174	daisuke	60	2026-01-27 10:30:55.312727
688175	aritomo	13	2026-01-27 10:30:56.629132
688176	tyankonabe	35	2026-01-27 10:31:04.875809
688177	usshi-	66	2026-01-27 10:31:07.955169
688178	tyanpo-n88	79	2026-01-27 10:31:17.061223
688179	jo_07-18	29	2026-01-27 10:31:29.692161
688180	daisuke	76	2026-01-27 10:31:55.971412
688181	kuri-sou1	100	2026-01-27 10:31:58.085104
688182	tyanpo-n88	89	2026-01-27 10:32:11.025826
688183	mt_bird	87	2026-01-27 10:32:20.765322
688184	aaaaa	45	2026-01-27 10:32:21.30746
688186	kuri-sou1	14	2026-01-27 10:32:59.878907
688185	inu255-12	54	2026-01-27 10:32:54.826388
688187	gira	115	2026-01-27 16:21:57.499697
688188	gira	69	2026-01-27 16:22:47.773758
688189	gira	116	2026-01-27 16:23:43.845317
688190	lions-fan1	106	2026-01-31 14:30:28.320136
688191	lions-fan1	83	2026-01-31 14:31:38.800267
688192	lions-fan1	61	2026-01-31 14:33:07.153279
688193	tya-han_04	52	2026-02-02 18:25:55.567166
688194	tya-han_04	62	2026-02-02 18:26:58.38605
688195	tya-han_04	72	2026-02-02 18:28:00.41119
688196	tya-han_04	97	2026-02-02 18:28:58.336773
688197	tya-han_04	129	2026-02-02 18:29:40.602823
688198	tya-han_04	91	2026-02-02 18:30:38.895621
688199	tya-han_04	83	2026-02-02 18:31:42.182486
688200	gira	51	2026-02-03 16:27:02.84861
688201	gira	78	2026-02-03 16:28:03.329168
688202	tya-han_04	54	2026-02-03 18:59:04.801862
688203	tya-han_04	59	2026-02-04 10:43:50.581801
688204	lions-fan1	99	2026-02-05 10:18:48.47884
688205	gira	88	2026-02-05 13:09:14.119773
688206	gira	83	2026-02-05 13:10:40.546292
688207	gira	103	2026-02-05 13:11:42.34881
688208	lions-fan1	95	2026-02-05 15:06:22.542315
688209	lions-fan1	117	2026-02-05 15:07:19.277063
688210	lions-fan1	88	2026-02-05 15:07:57.31378
688211	lions-fan1	108	2026-02-05 15:08:51.294017
688212	lions-fan1	104	2026-02-05 15:09:36.873171
688213	gira	80	2026-02-09 15:12:28.909121
688214	gira	86	2026-02-09 15:14:34.442573
688215	shimo1225	123	2026-02-10 10:23:41.808487
688216	taiga228	49	2026-02-10 10:24:01.757891
688217	shimo1225	86	2026-02-10 10:24:32.624957
688218	waku1waku2	48	2026-02-10 10:25:05.51424
688219	sa-sa_0127	89	2026-02-10 10:25:14.295886
688220	waku1waku2	58	2026-02-10 10:26:07.753633
688221	ishumi	78	2026-02-10 10:26:08.866388
688222	musiko	52	2026-02-10 10:26:21.959092
688223	axvo5145	61	2026-02-10 10:26:22.701165
688224	sa-sa_0127	103	2026-02-10 10:26:25.208489
688225	knt_07	126	2026-02-10 10:26:29.944253
688226	otsukisama	70	2026-02-10 10:26:30.024519
688227	hibiki-118	83	2026-02-10 10:26:30.38185
688228	tyankonabe	17	2026-02-10 10:26:38.313558
688229	usshi-	115	2026-02-10 10:26:41.45725
688230	hitomi0413	65	2026-02-10 10:26:54.214629
688231	shudo-220_	87	2026-02-10 10:26:57.229248
688232	akitennis	47	2026-02-10 10:26:59.437958
688233	m0gu	45	2026-02-10 10:26:59.679161
688234	kaxejn1	111	2026-02-10 10:27:00.703054
688235	vertin15	61	2026-02-10 10:27:00.73864
688236	yuudai1201	27	2026-02-10 10:27:05.766089
688237	axvo5145	128	2026-02-10 10:27:06.652907
688238	imora1107	43	2026-02-10 10:27:08.150072
688239	waku1waku2	49	2026-02-10 10:27:08.745433
688240	ishumi	46	2026-02-10 10:27:15.031912
688241	lions-fan1	92	2026-02-10 10:27:22.063397
688242	shishamo	89	2026-02-10 10:27:25.827071
688243	musiko	83	2026-02-10 10:27:26.802587
688244	kota_07-15	60	2026-02-10 10:27:31.243745
688245	sa-sa_0127	76	2026-02-10 10:27:31.388279
688246	otsukisama	63	2026-02-10 10:27:33.005758
688247	fuuta_s	0	2026-02-10 10:27:35.962756
688248	italia_lia	84	2026-02-10 10:27:45.910091
688249	tyankonabe	40	2026-02-10 10:27:48.161227
688250	usshi-	51	2026-02-10 10:27:48.635108
688251	shudo-220_	118	2026-02-10 10:27:54.32145
688252	ha-ruto_00	68	2026-02-10 10:27:55.588752
688253	hitomi0413	23	2026-02-10 10:27:57.572194
688254	taiga228	58	2026-02-10 10:27:59.917657
688255	shimo1225	102	2026-02-10 10:28:02.368518
688256	akitennis	62	2026-02-10 10:28:03.53227
688257	vertin15	32	2026-02-10 10:28:06.375132
688258	shishamo	114	2026-02-10 10:28:07.149019
688259	waku1waku2	58	2026-02-10 10:28:10.975408
688260	ri8_hoon-	28	2026-02-10 10:28:12.451763
688261	haru-714	74	2026-02-10 10:28:13.075972
688262	yuudai1201	0	2026-02-10 10:28:18.678103
688263	kou-1603	102	2026-02-10 10:28:23.158919
688264	fuuta_s	92	2026-02-10 10:28:31.905518
688265	atomic	52	2026-02-10 10:28:36.913761
688266	lions-fan1	95	2026-02-10 10:28:38.7877
688267	italia_lia	74	2026-02-10 10:28:48.51602
688268	usshi-	79	2026-02-10 10:28:50.122166
688269	shishamo	131	2026-02-10 10:28:50.662893
688270	shimo1225	66	2026-02-10 10:28:54.335877
688271	shudo-220_	59	2026-02-10 10:28:57.625987
688272	ha-ruto_00	50	2026-02-10 10:28:57.723151
688273	taiga228	34	2026-02-10 10:29:05.7342
688274	akitennis	91	2026-02-10 10:29:07.312993
688275	kyama10_	9	2026-02-10 10:29:12.080448
688276	atomic	135	2026-02-10 10:29:15.373369
688277	waku1waku2	74	2026-02-10 10:29:16.039832
688278	kiyodai	44	2026-02-10 10:29:16.277696
688279	otsukisama	81	2026-02-10 10:29:22.086762
688280	ishumi	96	2026-02-10 10:29:24.050632
688281	inu255-12	51	2026-02-10 10:29:30.783193
688282	fuuta_s	49	2026-02-10 10:29:33.845568
688283	yuudai1201	114	2026-02-10 10:29:34.70611
688284	kai-_0224	65	2026-02-10 10:29:55.942773
688285	mikyu397	68	2026-02-10 10:29:56.597537
688286	ha-ruto_00	55	2026-02-10 10:29:58.95394
688287	waku1waku2	50	2026-02-10 10:30:09.988279
688288	kyama10_	58	2026-02-10 10:30:22.376846
688289	papico181	71	2026-02-10 10:30:29.827915
688290	inu255-12	40	2026-02-10 10:30:33.035885
688291	kuri-sou1	54	2026-02-10 10:30:34.482539
688292	kochi	18	2026-02-10 10:30:34.641053
688293	lions-fan1	133	2026-02-10 10:30:34.698969
688294	aritomo	34	2026-02-10 10:30:40.032145
688295	tyanpo-n88	86	2026-02-10 10:30:41.500808
688296	kai-_0224	91	2026-02-10 10:31:01.513738
688297	haruuu4	41	2026-02-10 10:31:03.407854
688298	kuri-sou1	128	2026-02-10 10:31:20.251525
688299	posting	19	2026-02-10 10:31:20.77635
688300	tujiri_01	49	2026-02-10 10:31:32.52167
688301	kochi	0	2026-02-10 10:31:35.836604
688302	daisuke	57	2026-02-10 10:31:45.914451
688303	tyanpo-n88	101	2026-02-10 10:31:57.792272
688304	a-sakito13	0	2026-02-10 10:32:23.102718
688305	kochi	43	2026-02-10 10:32:38.200553
688306	daisuke	51	2026-02-10 10:32:47.39246
688307	auct1718	19	2026-02-10 10:32:50.737882
688308	daisuke	64	2026-02-10 10:33:49.697311
688309	daisuke	126	2026-02-10 10:34:37.741444
688310	sum-lov_13	59	2026-02-10 10:34:42.987302
688311	tya-han_04	92	2026-02-10 10:39:06.802176
688312	yukiflcx	85	2026-02-10 10:39:18.668536
688313	tya-han_04	79	2026-02-10 12:22:22.977832
688314	tya-han_04	79	2026-02-10 12:57:21.650155
688315	tya-han_04	64	2026-02-10 12:58:55.086595
688316	tya-han_04	133	2026-02-10 12:59:35.017555
688317	tya-han_04	108	2026-02-10 13:00:25.2604
688318	tya-han_04	66	2026-02-10 13:01:32.85657
688319	gira	79	2026-02-10 13:07:37.189664
688320	tyankonabe	56	2026-02-13 09:03:37.412948
688321	gira	80	2026-02-13 13:51:57.555296
688322	gira	70	2026-02-13 13:52:50.116639
688323	gira	52	2026-02-13 13:53:52.784182
688324	gira	65	2026-02-13 13:55:15.113706
688325	lions-fan1	77	2026-02-14 16:23:27.442337
688326	imora1107	129	2026-02-16 12:58:33.478236
688327	imora1107	57	2026-02-16 12:59:44.399134
688328	lions-fan1	103	2026-02-16 14:25:25.314106
688329	lions-fan1	82	2026-02-16 14:26:25.889113
688330	lions-fan1	67	2026-02-16 14:28:21.898689
688331	lions-fan1	93	2026-02-16 14:30:15.795956
688332	gira	65	2026-02-17 14:15:17.713833
688333	gira	96	2026-02-17 14:16:26.035193
688334	tya-han_04	57	2026-02-18 18:24:45.054204
688335	hkimura	44	2026-02-21 16:31:00.914462
688336	hkimura	88	2026-02-21 16:32:04.719175
688337	hkimura	57	2026-02-21 16:33:12.909201
688338	gira	127	2026-02-26 13:20:51.57618
688339	imora1107	74	2026-03-04 13:38:00.42664
\.


--
-- Data for Name: roll_calls; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.roll_calls (id, login, pt, created_at) FROM stdin;
22440	miyu_0913	0	2025-04-14 11:22:47.7
22441	miyu_0913	38	2025-04-14 11:23:49.807
22442	miyu_0913	56	2025-04-14 11:25:02.297
22443	miyu_0913	56	2025-04-14 11:26:08.552
22444	miyu_0913	50	2025-04-14 11:27:12.021
22445	akitennis	6	2025-04-16 08:41:53.221
22446	shudo-220_	0	2025-04-16 08:41:56.348
22447	shimo1225	0	2025-04-16 08:42:17.203
22448	knt_07	23	2025-04-16 08:42:23.431
22449	kassy_0531	0	2025-04-16 08:42:29.699
22450	yuudai1201	37	2025-04-16 08:42:56.876
22451	shishamo	57	2025-04-16 08:42:57.645
22452	akitennis	41	2025-04-16 08:43:03.687
22453	shudo-220_	0	2025-04-16 08:43:07.511
22454	shimo1225	0	2025-04-16 08:43:21.166
22455	knt_07	29	2025-04-16 08:43:33.701
22456	hibiki-118	33	2025-04-16 08:43:37.238
22457	kassy_0531	0	2025-04-16 08:43:37.687
22458	shishamo	41	2025-04-16 08:44:03.531
22459	kuri-sou1	24	2025-04-16 08:44:08.093
22460	jo_07-18	0	2025-04-16 08:44:10.355
22461	shudo-220_	0	2025-04-16 08:44:13.188
22462	sa-sa_0127	0	2025-04-16 08:44:15.419
22463	shimo1225	0	2025-04-16 08:44:24.875
22464	ri8_hoon-	0	2025-04-16 08:44:25.493
22465	akitennis	21	2025-04-16 08:44:27.014
22466	axvo5145	58	2025-04-16 08:44:32.82
22467	knt_07	0	2025-04-16 08:44:38.778
22468	kassy_0531	0	2025-04-16 08:44:46.596
22469	kuri-sou1	0	2025-04-16 08:45:13.34
22470	sa-sa_0127	0	2025-04-16 08:45:19.215
22471	shudo-220_	41	2025-04-16 08:45:24.064
22472	ri8_hoon-	0	2025-04-16 08:45:27.545
22473	shimo1225	24	2025-04-16 08:45:28.049
22474	jo_07-18	0	2025-04-16 08:45:30.645
22475	akitennis	43	2025-04-16 08:45:33.84
22476	vertin15	25	2025-04-16 08:45:34.989
22477	shishamo	18	2025-04-16 08:45:35.351
22478	kota_07-15	9	2025-04-16 08:45:41.969
22479	axvo5145	0	2025-04-16 08:45:43.443
22480	knt_07	111	2025-04-16 08:45:47.89
22481	knt_07	110	2025-04-16 08:45:49.766
22482	tya-han_04	24	2025-04-16 08:45:58.912
22483	kyama10_	56	2025-04-16 08:46:02.641
22484	lions-fan1	0	2025-04-16 08:46:21.495
22485	sa-sa_0127	0	2025-04-16 08:46:23.933
22486	kinniku29	0	2025-04-16 08:46:24.068
22487	shudo-220_	121	2025-04-16 08:46:26.466
22488	waku1waku2	6	2025-04-16 08:46:31.986
22489	kassy_0531	0	2025-04-16 08:46:32.737
22490	hibiki-118	61	2025-04-16 08:46:35.457
22491	vertin15	71	2025-04-16 08:46:40.71
22492	tyankonabe	30	2025-04-16 08:46:43.56
22493	knt_07	38	2025-04-16 08:46:52.886
22494	ri8_hoon-	0	2025-04-16 08:46:55.524
22495	shimo1225	31	2025-04-16 08:47:04.766
22496	kyama10_	25	2025-04-16 08:47:10.182
22497	shishamo	65	2025-04-16 08:47:10.704
22498	kassy_0531	0	2025-04-16 08:47:16.849
22499	jo_07-18	15	2025-04-16 08:47:18.424
22500	haruuu4	0	2025-04-16 08:47:20.877
22501	otsukisama	40	2025-04-16 08:47:23.174
22502	kota_07-15	0	2025-04-16 08:47:23.943
22503	ishumi	0	2025-04-16 08:47:24.809
22504	sa-sa_0127	25	2025-04-16 08:47:28.721
22505	agdh6537	51	2025-04-16 08:47:30.152
22506	gyt4-3_24	21	2025-04-16 08:47:35.001
22507	akitennis	52	2025-04-16 08:47:36.018
22508	axvo5145	36	2025-04-16 08:47:36.591
22509	shudo-220_	46	2025-04-16 08:47:37.572
22510	lions-fan1	0	2025-04-16 08:47:39.176
22511	masatoshi	16	2025-04-16 08:47:41.332
22512	tyankonabe	36	2025-04-16 08:47:50.552
22513	ri8_hoon-	35	2025-04-16 08:47:57.041
22514	satohina13	0	2025-04-16 08:48:00.417
22515	kinniku29	0	2025-04-16 08:48:02.287
22516	m0gu	0	2025-04-16 08:48:17.293
22517	kfc055	0	2025-04-16 08:48:17.622
22518	tya-han_04	52	2025-04-16 08:48:18.662
22519	kyama10_	0	2025-04-16 08:48:19.66
22520	waku1waku2	118	2025-04-16 08:48:21.768
22521	sum-lov_13	0	2025-04-16 08:48:23.623
22522	kassy_0531	25	2025-04-16 08:48:30.593
22523	otsukisama	33	2025-04-16 08:48:32.396
22524	haruuu4	0	2025-04-16 08:48:32.974
22525	sa-sa_0127	74	2025-04-16 08:48:34.285
22526	usshi-	0	2025-04-16 08:48:34.406
22527	knt_07	38	2025-04-16 08:48:35.663
22528	mikyu397	49	2025-04-16 08:48:36.134
22529	axvo5145	17	2025-04-16 08:48:41.26
22530	daisuke	21	2025-04-16 08:48:44.948
22531	gyt4-3_24	52	2025-04-16 08:48:44.956
22532	ri8_hoon-	0	2025-04-16 08:48:45.085
22533	vertin15	40	2025-04-16 08:48:46.493
22534	ri8_hoon-	0	2025-04-16 08:48:55.261
22535	akitennis	39	2025-04-16 08:48:57.995
22536	hitomi0413	32	2025-04-16 08:48:58.573
22537	okiku_0408	0	2025-04-16 08:49:02.81
22538	kochi	0	2025-04-16 08:49:03.173
22539	masatoshi	32	2025-04-16 08:49:07.376
22540	kaxejn1	0	2025-04-16 08:49:13.231
22541	kota_07-15	0	2025-04-16 08:49:21.512
22542	shudo-220_	50	2025-04-16 08:49:23.033
22543	kuri-sou1	0	2025-04-16 08:49:23.523
22544	kyama10_	0	2025-04-16 08:49:24.512
22545	kfc055	0	2025-04-16 08:49:25.441
22546	agdh6537	28	2025-04-16 08:49:31.33
22547	mi-01_28	0	2025-04-16 08:49:36.135
22548	sa-sa_0127	53	2025-04-16 08:49:39.139
22549	lions-fan1	76	2025-04-16 08:49:42.119
22550	usshi-	0	2025-04-16 08:49:42.658
22551	mikyu397	31	2025-04-16 08:49:42.864
22552	tyankonabe	56	2025-04-16 08:49:48.003
22553	axvo5145	59	2025-04-16 08:49:49.392
22554	satohina13	0	2025-04-16 08:49:50.367
22555	otsukisama	55	2025-04-16 08:49:51.31
22556	ishumi	45	2025-04-16 08:49:53.734
22557	gyt4-3_24	0	2025-04-16 08:49:54.031
22558	sum-lov_13	0	2025-04-16 08:49:54.177
22559	akitennis	129	2025-04-16 08:49:54.227
22560	jo_07-18	41	2025-04-16 08:49:54.709
22561	daisuke	5	2025-04-16 08:50:00.457
22562	hitomi0413	0	2025-04-16 08:50:04.562
22563	waku1waku2	21	2025-04-16 08:50:04.712
22564	haru-714	7	2025-04-16 08:50:07.902
22565	haruuu4	0	2025-04-16 08:50:10.126
22566	okiku_0408	0	2025-04-16 08:50:11.068
22567	masatoshi	14	2025-04-16 08:50:12.493
22568	ri8_hoon-	0	2025-04-16 08:50:13.757
22569	kaxejn1	39	2025-04-16 08:50:18.517
22570	kassy_0531	29	2025-04-16 08:50:20.361
22571	kiyodai	15	2025-04-16 08:50:21.382
22572	kou-1603	0	2025-04-16 08:50:26.392
22573	kochi	0	2025-04-16 08:50:26.925
22574	imora1107	0	2025-04-16 08:50:27.209
22575	axvo4241	0	2025-04-16 08:50:30.645
22576	kyama10_	54	2025-04-16 08:50:34.953
22577	patinca-nu	63	2025-04-16 08:50:36.723
22578	kfc055	0	2025-04-16 08:50:37.747
22579	kota_07-15	17	2025-04-16 08:50:38.743
22583	fuuta_s	0	2025-04-16 08:50:44.817
22584	kota_07-15	0	2025-04-16 08:50:46.018
22585	atomic	0	2025-04-16 08:50:46.164
22588	otsukisama	59	2025-04-16 08:50:52.232
22590	agdh6537	3	2025-04-16 08:50:57.772
22591	tyanpo-n88	41	2025-04-16 08:51:02.606
22592	yes_eo080	3	2025-04-16 08:51:06.937
22596	gyt4-3_24	0	2025-04-16 08:51:12.744
22597	ishumi	0	2025-04-16 08:51:14.876
22598	haruuu4	0	2025-04-16 08:51:15.14
22599	shimo1225	35	2025-04-16 08:51:18.992
22600	mikyu397	32	2025-04-16 08:51:20.46
22604	yuudai1201	32	2025-04-16 08:51:27.786
22607	tya-han_04	13	2025-04-16 08:51:33.553
22613	vertin15	47	2025-04-16 08:51:42.602
22614	masatoshi	51	2025-04-16 08:51:45.221
22615	sa-sa_0127	65	2025-04-16 08:51:45.407
22620	kaxejn1	36	2025-04-16 08:51:47.711
22580	knt_07	0	2025-04-16 08:50:39.021
22581	shishamo	58	2025-04-16 08:50:41.378
22582	sa-sa_0127	0	2025-04-16 08:50:42.506
22586	shudo-220_	2	2025-04-16 08:50:46.773
22587	jo_07-18	0	2025-04-16 08:50:51.879
22589	axvo5145	0	2025-04-16 08:50:56.125
22593	hitomi0413	0	2025-04-16 08:51:08.785
22594	ha-ruto_00	75	2025-04-16 08:51:09.106
22595	daisuke	28	2025-04-16 08:51:10.02
22601	sum-lov_13	0	2025-04-16 08:51:21.761
22602	ri8_hoon-	5	2025-04-16 08:51:23.579
22603	kassy_0531	41	2025-04-16 08:51:27.055
22605	kuri-sou1	0	2025-04-16 08:51:27.916
22606	kiyodai	81	2025-04-16 08:51:30.142
22608	papico181	0	2025-04-16 08:51:34.855
22609	shirogane	36	2025-04-16 08:51:36.95
22610	okiku_0408	18	2025-04-16 08:51:37.44
22611	kinniku29	8	2025-04-16 08:51:39.447
22612	kochi	35	2025-04-16 08:51:40.421
22616	axvo4241	0	2025-04-16 08:51:45.506
22617	hibiki-118	25	2025-04-16 08:51:46.325
22618	kfc055	0	2025-04-16 08:51:46.695
22619	posting	69	2025-04-16 08:51:47.513
22621	fuuta_s	0	2025-04-16 08:51:50.783
22622	satohina13	26	2025-04-16 08:51:54.529
22623	shishamo	96	2025-04-16 08:51:56.543
22624	waku1waku2	20	2025-04-16 08:51:57.034
22625	lions-fan1	23	2025-04-16 08:51:57.67
22626	imora1107	70	2025-04-16 08:51:57.89
22627	usshi-	13	2025-04-16 08:51:58.19
22628	kyama10_	28	2025-04-16 08:51:58.321
22629	m0gu	0	2025-04-16 08:51:58.577
22630	tyankonabe	84	2025-04-16 08:51:59.847
22631	haru-714	0	2025-04-16 08:52:01.066
22632	kou-1603	69	2025-04-16 08:52:01.474
22633	axvo5145	0	2025-04-16 08:52:03.735
22634	tyanpo-n88	21	2025-04-16 08:52:07.731
22635	atomic	0	2025-04-16 08:52:08.543
22636	akitennis	24	2025-04-16 08:52:08.568
22637	knt_07	60	2025-04-16 08:52:12.507
22638	gyt4-3_24	0	2025-04-16 08:52:17.148
22639	ha-ruto_00	0	2025-04-16 08:52:24.037
22640	ishumi	79	2025-04-16 08:52:26.535
22641	jo_07-18	76	2025-04-16 08:52:28.436
22642	papico181	21	2025-04-16 08:52:39.06
22643	kuri-sou1	0	2025-04-16 08:52:41.944
22644	musiko	0	2025-04-16 08:52:51.35
22645	patinca-nu	54	2025-04-16 08:52:52.118
22646	yes_eo080	78	2025-04-16 08:52:52.322
22647	kota_07-15	60	2025-04-16 08:52:52.924
22648	axvo4241	48	2025-04-16 08:52:53.885
22649	inu255-12	27	2025-04-16 08:52:59.481
22650	posting	64	2025-04-16 08:53:15.567
22651	tujiri_01	19	2025-04-16 08:53:17.755
22652	otsukisama	63	2025-04-16 08:53:18.024
22653	aaaaa	53	2025-04-16 08:53:41.991
22654	imora1107	0	2025-04-16 08:53:51.207
22655	ask-mog1_1	22	2025-04-16 08:53:52.335
22656	miyu_0913	81	2025-04-16 08:53:54.771
22657	musiko	40	2025-04-16 08:54:08.491
22658	inu255-12	0	2025-04-16 08:54:09.104
22659	taiga228	0	2025-04-16 08:54:10.951
22660	agdh6537	0	2025-04-16 08:54:14.385
22661	yukiflcx	25	2025-04-16 08:54:26.228
22662	italia_lia	0	2025-04-16 08:54:43.371
22663	tujiri_01	31	2025-04-16 08:54:53.585
22664	aritomo	3	2025-04-16 08:54:56.372
22665	aaaaa	0	2025-04-16 08:55:11.875
22666	taiga228	29	2025-04-16 08:55:58.527
22667	italia_lia	0	2025-04-16 08:56:01.051
22668	aritomo	0	2025-04-16 08:56:04.915
22669	musiko	44	2025-04-16 08:56:05.252
22670	tujiri_01	65	2025-04-16 08:56:14.87
22671	masatoshi	0	2025-04-16 09:07:45.058
22672	waku1waku2	41	2025-04-16 14:25:09.034
22673	lions-fan1	112	2025-04-16 14:25:27.781
22674	waku1waku2	43	2025-04-16 14:26:12.762
22675	lions-fan1	57	2025-04-16 14:27:52.336
22676	waku1waku2	25	2025-04-16 14:28:10.259
22677	waku1waku2	57	2025-04-16 14:29:15.464
22678	lions-fan1	25	2025-04-16 14:30:17.472
22679	waku1waku2	56	2025-04-16 14:31:30.274
22680	waku1waku2	24	2025-04-16 14:32:35.344
22681	kassy_0531	76	2025-04-23 08:41:22.419
22682	masatoshi	0	2025-04-23 08:41:39.189
22683	shishamo	61	2025-04-23 08:42:11.581
22684	waku1waku2	17	2025-04-23 08:42:19.307
22685	kassy_0531	0	2025-04-23 08:42:33.869
22686	vertin15	35	2025-04-23 08:42:34.117
22687	kfc055	0	2025-04-23 08:42:35.315
22688	masatoshi	0	2025-04-23 08:42:46
22689	lions-fan1	37	2025-04-23 08:42:49.695
22690	shirogane	28	2025-04-23 08:42:58.312
22691	shudo-220_	50	2025-04-23 08:43:02.493
22692	shishamo	107	2025-04-23 08:43:28.595
22693	waku1waku2	94	2025-04-23 08:43:44.045
22694	kfc055	20	2025-04-23 08:43:59.046
22695	shimo1225	0	2025-04-23 08:44:00.087
22696	hitomi0413	35	2025-04-23 08:44:01.771
22697	shudo-220_	47	2025-04-23 08:44:21.345
22698	kuri-sou1	0	2025-04-23 08:44:29.252
22699	lions-fan1	69	2025-04-23 08:44:32.111
22700	yuudai1201	29	2025-04-23 08:44:36.738
22701	waku1waku2	56	2025-04-23 08:44:46.305
22702	shirogane	37	2025-04-23 08:44:47.81
22703	shishamo	130	2025-04-23 08:44:55.19
22704	shimo1225	32	2025-04-23 08:45:01.41
22705	masatoshi	51	2025-04-23 08:45:07.9
22706	hitomi0413	18	2025-04-23 08:45:10.193
22707	kfc055	0	2025-04-23 08:45:19.034
22708	shudo-220_	33	2025-04-23 08:45:29.422
22709	lions-fan1	119	2025-04-23 08:45:29.871
22710	kassy_0531	0	2025-04-23 08:45:30.617
22711	kuri-sou1	31	2025-04-23 08:45:38.281
22712	agdh6537	0	2025-04-23 08:45:38.891
22713	hibiki-118	50	2025-04-23 08:45:45.133
22714	waku1waku2	62	2025-04-23 08:45:49.474
22715	yuudai1201	22	2025-04-23 08:45:51.095
22716	shirogane	42	2025-04-23 08:45:54.426
22717	shimo1225	8	2025-04-23 08:46:01.455
22718	kuri-sou1	0	2025-04-23 08:46:05.33
22719	aaaaa	61	2025-04-23 08:46:09.43
22720	masatoshi	31	2025-04-23 08:46:11.351
22721	shishamo	76	2025-04-23 08:46:16.321
22722	vertin15	60	2025-04-23 08:46:25.925
22723	kfc055	0	2025-04-23 08:46:28.935
22724	lions-fan1	58	2025-04-23 08:46:33.629
22725	kota_07-15	130	2025-04-23 08:46:34.067
22726	kassy_0531	0	2025-04-23 08:46:35.987
22727	shudo-220_	47	2025-04-23 08:46:45.79
22728	shimo1225	111	2025-04-23 08:46:47.683
22729	axvo4241	42	2025-04-23 08:46:48.304
22730	waku1waku2	37	2025-04-23 08:46:51.143
22731	usshi-	44	2025-04-23 08:46:56.077
22732	agdh6537	53	2025-04-23 08:46:56.275
22733	tya-han_04	18	2025-04-23 08:46:56.291
22734	yuudai1201	48	2025-04-23 08:47:03.513
22735	shirogane	29	2025-04-23 08:47:05.521
22736	masatoshi	0	2025-04-23 08:47:28.423
22737	yes_eo080	58	2025-04-23 08:47:29.775
22738	m0gu	50	2025-04-23 08:47:35.635
22740	lions-fan1	53	2025-04-23 08:47:41.649
22743	kota_07-15	105	2025-04-23 08:47:49.148
22745	haru-714	27	2025-04-23 08:47:58.58
22746	usshi-	71	2025-04-23 08:48:02.085
22749	hibiki-118	124	2025-04-23 08:48:04.894
22751	kou-1603	69	2025-04-23 08:48:05.695
22739	jo_07-18	0	2025-04-23 08:47:40.528
22741	kuri-sou1	41	2025-04-23 08:47:41.669
22742	aaaaa	83	2025-04-23 08:47:46.452
22744	waku1waku2	78	2025-04-23 08:47:56.566
22747	agdh6537	0	2025-04-23 08:48:02.166
22748	ha-ruto_00	83	2025-04-23 08:48:03.662
22750	mt_bird	83	2025-04-23 08:48:05.692
22752	kou-1603	51	2025-04-23 08:48:08.396
22753	musiko	7	2025-04-23 08:48:10.02
22754	mi-01_28	51	2025-04-23 08:48:15.676
22755	tya-han_04	71	2025-04-23 08:48:17.536
22756	akitennis	28	2025-04-23 08:48:18.417
22757	shudo-220_	44	2025-04-23 08:48:20.492
22758	taiga228	45	2025-04-23 08:48:29.98
22759	masatoshi	65	2025-04-23 08:48:31.487
22760	fuuta_s	23	2025-04-23 08:48:34.507
22761	shirogane	46	2025-04-23 08:48:34.901
22762	knt_07	0	2025-04-23 08:48:35.378
22763	sum-lov_13	33	2025-04-23 08:48:38.889
22764	haruuu4	1	2025-04-23 08:48:40.658
22765	yes_eo080	38	2025-04-23 08:48:44.781
22766	lions-fan1	64	2025-04-23 08:48:45.059
22767	axvo5145	0	2025-04-23 08:48:45.8
22768	mikyu397	59	2025-04-23 08:48:45.991
22769	kuri-sou1	39	2025-04-23 08:48:47.635
22770	jo_07-18	47	2025-04-23 08:48:49.272
22771	sa-sa_0127	66	2025-04-23 08:48:51.082
22772	kaxejn1	52	2025-04-23 08:48:52.376
22773	aaaaa	44	2025-04-23 08:48:52.768
22774	kfc055	0	2025-04-23 08:49:02.149
22775	waku1waku2	70	2025-04-23 08:49:03.277
22776	agdh6537	62	2025-04-23 08:49:07.356
22777	mt_bird	49	2025-04-23 08:49:07.551
22778	ha-ruto_00	36	2025-04-23 08:49:08.194
22779	gyt4-3_24	0	2025-04-23 08:49:12.701
22780	kinniku29	0	2025-04-23 08:49:12.791
22781	kota_07-15	50	2025-04-23 08:49:13.213
22782	ishumi	36	2025-04-23 08:49:15.587
22783	italia_lia	26	2025-04-23 08:49:16.044
22784	shishamo	148	2025-04-23 08:49:17.106
22785	kuri-sou1	0	2025-04-23 08:49:17.866
22786	kou-1603	60	2025-04-23 08:49:18.67
22787	usshi-	47	2025-04-23 08:49:18.75
22788	musiko	20	2025-04-23 08:49:18.771
22789	kassy_0531	0	2025-04-23 08:49:23.617
22790	akitennis	61	2025-04-23 08:49:23.641
22791	ri8_hoon-	40	2025-04-23 08:49:34.231
22792	taiga228	34	2025-04-23 08:49:37.016
22793	fuuta_s	33	2025-04-23 08:49:42.398
22794	knt_07	0	2025-04-23 08:49:42.578
22795	hitomi0413	21	2025-04-23 08:49:46.826
22796	satohina13	0	2025-04-23 08:49:47.205
22797	yes_eo080	41	2025-04-23 08:49:47.806
22798	axvo5145	0	2025-04-23 08:49:48.448
22799	masatoshi	0	2025-04-23 08:49:48.481
22800	shirogane	31	2025-04-23 08:49:51.012
22801	sa-sa_0127	0	2025-04-23 08:49:52.687
22802	mi-01_28	122	2025-04-23 08:49:53.164
22803	kiyodai	67	2025-04-23 08:49:53.296
22804	tya-han_04	0	2025-04-23 08:49:56.28
22805	lions-fan1	41	2025-04-23 08:49:57.103
22806	otsukisama	65	2025-04-23 08:50:01.485
22807	shudo-220_	48	2025-04-23 08:50:02.799
22808	kfc055	6	2025-04-23 08:50:05.489
22809	aaaaa	59	2025-04-23 08:50:10.057
22810	ha-ruto_00	47	2025-04-23 08:50:11.926
22811	agdh6537	29	2025-04-23 08:50:12.048
22812	mi-01_28	115	2025-04-23 08:50:12.109
22813	haru-714	39	2025-04-23 08:50:13.38
22814	kota_07-15	22	2025-04-23 08:50:16.406
22815	ishumi	61	2025-04-23 08:50:17.213
22816	gyt4-3_24	0	2025-04-23 08:50:20.498
22817	mikyu397	50	2025-04-23 08:50:21.624
22818	kyama10_	35	2025-04-23 08:50:21.86
22819	tyankonabe	29	2025-04-23 08:50:21.913
22820	haruuu4	19	2025-04-23 08:50:22.208
22821	italia_lia	24	2025-04-23 08:50:23.72
22822	usshi-	69	2025-04-23 08:50:23.799
22823	kuri-sou1	39	2025-04-23 08:50:26.078
22824	kassy_0531	0	2025-04-23 08:50:30.266
22825	shimo1225	31	2025-04-23 08:50:30.334
22826	mt_bird	56	2025-04-23 08:50:31.172
22827	akitennis	35	2025-04-23 08:50:33.774
22828	jo_07-18	0	2025-04-23 08:50:33.85
22829	hibiki-118	69	2025-04-23 08:50:35.362
22830	musiko	51	2025-04-23 08:50:44.168
22831	masatoshi	30	2025-04-23 08:50:44.722
22832	sum-lov_13	0	2025-04-23 08:50:45.05
22833	fuuta_s	0	2025-04-23 08:50:50.303
22834	yes_eo080	41	2025-04-23 08:50:50.476
22835	ri8_hoon-	62	2025-04-23 08:50:51.677
22836	sa-sa_0127	0	2025-04-23 08:50:55.214
22837	hitomi0413	38	2025-04-23 08:50:55.398
22838	axvo4241	0	2025-04-23 08:50:55.997
22839	knt_07	43	2025-04-23 08:50:57.161
22840	kiyodai	34	2025-04-23 08:50:57.541
22841	shirogane	34	2025-04-23 08:50:58.431
22842	otsukisama	46	2025-04-23 08:51:03.398
22843	atomic	11	2025-04-23 08:51:03.578
22844	patinca-nu	0	2025-04-23 08:51:06.805
22845	posting	95	2025-04-23 08:51:07.705
22846	aaaaa	78	2025-04-23 08:51:10.153
22847	tya-han_04	70	2025-04-23 08:51:13.734
22848	ha-ruto_00	37	2025-04-23 08:51:15.291
22849	shudo-220_	16	2025-04-23 08:51:15.686
22850	lions-fan1	51	2025-04-23 08:51:18.721
22851	ishumi	53	2025-04-23 08:51:26.312
22852	inu255-12	53	2025-04-23 08:51:28.918
22853	gyt4-3_24	0	2025-04-23 08:51:29.063
22854	italia_lia	29	2025-04-23 08:51:30.114
22855	usshi-	49	2025-04-23 08:51:32.148
22856	kassy_0531	58	2025-04-23 08:51:33.848
22857	mt_bird	88	2025-04-23 08:51:35.075
22858	daisuke	18	2025-04-23 08:51:35.891
22859	taiga228	78	2025-04-23 08:51:36.437
22860	aritomo	0	2025-04-23 08:51:37.137
22861	kochi	45	2025-04-23 08:51:38.266
22862	akitennis	48	2025-04-23 08:51:38.578
22863	kuri-sou1	49	2025-04-23 08:51:40.819
22864	hibiki-118	63	2025-04-23 08:51:40.878
22865	tyankonabe	21	2025-04-23 08:51:41.39
22866	mi-01_28	43	2025-04-23 08:51:42.23
22867	yukiflcx	49	2025-04-23 08:51:43.398
22868	agdh6537	58	2025-04-23 08:51:43.515
22869	jo_07-18	43	2025-04-23 08:51:44.503
22870	miyu_0913	10	2025-04-23 08:51:45.184
22871	musiko	34	2025-04-23 08:51:47.186
22872	kota_07-15	55	2025-04-23 08:51:52.194
22873	masatoshi	21	2025-04-23 08:51:52.51
22874	fuuta_s	13	2025-04-23 08:51:54.453
22875	yes_eo080	53	2025-04-23 08:51:55.193
22876	ri8_hoon-	74	2025-04-23 08:51:57.351
22877	sa-sa_0127	40	2025-04-23 08:52:02.037
22878	kiyodai	62	2025-04-23 08:52:03.052
22879	axvo5145	42	2025-04-23 08:52:05.6
22880	kinniku29	41	2025-04-23 08:52:06.923
22881	posting	76	2025-04-23 08:52:14.717
22882	ha-ruto_00	56	2025-04-23 08:52:18.144
22883	tyanpo-n88	73	2025-04-23 08:52:18.955
22884	lions-fan1	61	2025-04-23 08:52:20.083
22885	knt_07	82	2025-04-23 08:52:21.856
22886	shudo-220_	72	2025-04-23 08:52:22.129
22887	mt_bird	117	2025-04-23 08:52:22.546
22890	yukiflcx	0	2025-04-23 08:52:27.721
22891	tya-han_04	40	2025-04-23 08:52:30.568
22894	gyt4-3_24	17	2025-04-23 08:52:34.857
22896	italia_lia	48	2025-04-23 08:52:37.657
22899	hkimura	43	2025-04-23 08:52:46.256
22903	musiko	25	2025-04-23 08:52:50.671
22904	agdh6537	43	2025-04-23 08:52:50.845
22905	patinca-nu	31	2025-04-23 08:52:52.331
22906	akitennis	1	2025-04-23 08:52:52.445
22907	kota_07-15	33	2025-04-23 08:52:56.198
22911	yes_eo080	54	2025-04-23 08:53:04.666
22913	sa-sa_0127	65	2025-04-23 08:53:06.003
22914	tyankonabe	47	2025-04-23 08:53:07.375
22915	taiga228	87	2025-04-23 08:53:07.475
22916	tujiri_01	58	2025-04-23 08:53:16.903
22918	posting	57	2025-04-23 08:53:18.727
22919	tyanpo-n88	71	2025-04-23 08:53:20.959
22920	ha-ruto_00	54	2025-04-23 08:53:22.237
22923	tya-han_04	45	2025-04-23 08:53:35.573
22924	papico181	0	2025-04-23 08:53:37.119
22926	knt_07	30	2025-04-23 08:53:37.921
22929	hitomi0413	49	2025-04-23 08:53:45.988
22931	kuri-sou1	112	2025-04-23 08:53:49.346
22933	daisuke	0	2025-04-23 08:53:53.087
22934	musiko	0	2025-04-23 08:53:54.242
22888	aritomo	0	2025-04-23 08:52:23.176
22889	knt_07	81	2025-04-23 08:52:24.544
22892	hitomi0413	68	2025-04-23 08:52:34.367
22893	ishumi	75	2025-04-23 08:52:34.8
22895	inu255-12	12	2025-04-23 08:52:35.646
22897	haru-714	0	2025-04-23 08:52:42.954
22898	kuri-sou1	59	2025-04-23 08:52:44.374
22900	daisuke	60	2025-04-23 08:52:46.689
22901	miyu_0913	48	2025-04-23 08:52:47.883
22902	shishamo	78	2025-04-23 08:52:50.224
22908	aaaaa	50	2025-04-23 08:52:57.556
22909	hibiki-118	112	2025-04-23 08:52:59.212
22910	fuuta_s	0	2025-04-23 08:52:59.452
22912	kiyodai	27	2025-04-23 08:53:05.447
22917	yukiflcx	132	2025-04-23 08:53:18.559
22921	aritomo	0	2025-04-23 08:53:32.8
22922	shirogane	37	2025-04-23 08:53:34.198
22925	kyama10_	43	2025-04-23 08:53:37.435
22927	gyt4-3_24	21	2025-04-23 08:53:39.613
22928	inu255-12	45	2025-04-23 08:53:40.677
22930	agdh6537	124	2025-04-23 08:53:47.888
22932	miyu_0913	55	2025-04-23 08:53:50.998
22935	kota_07-15	124	2025-04-23 08:54:00.894
22936	yes_eo080	36	2025-04-23 08:54:11.248
22937	posting	87	2025-04-23 08:54:37.689
22938	papico181	49	2025-04-23 08:54:41.987
22939	imora1107	56	2025-04-23 08:55:17.957
22940	yes_eo080	64	2025-04-23 08:55:18.229
22941	musiko	74	2025-04-23 08:55:21.668
22942	kaxejn1	94	2025-04-23 08:55:34.02
22943	waku1waku2	46	2025-04-30 08:41:49.189
22944	kassy_0531	26	2025-04-30 08:42:10.374
22945	shishamo	95	2025-04-30 08:42:22.945
22946	waku1waku2	128	2025-04-30 08:42:34.626
22947	lions-fan1	48	2025-04-30 08:43:20.792
22948	waku1waku2	67	2025-04-30 08:43:37.148
22949	shishamo	93	2025-04-30 08:43:58.065
22950	kassy_0531	91	2025-04-30 08:44:15.303
22951	lions-fan1	39	2025-04-30 08:44:22.54
22952	waku1waku2	85	2025-04-30 08:44:40.311
22953	kassy_0531	32	2025-04-30 08:45:22.739
22954	waku1waku2	57	2025-04-30 08:45:42.136
22955	kassy_0531	9	2025-04-30 08:46:28.172
22956	waku1waku2	54	2025-04-30 08:46:44.387
22957	axvo5145	47	2025-04-30 08:46:54.022
22958	shudo-220_	56	2025-04-30 08:47:03.543
22959	kassy_0531	34	2025-04-30 08:47:39.768
22960	waku1waku2	43	2025-04-30 08:47:46.843
22961	shudo-220_	44	2025-04-30 08:48:06.704
22962	axvo5145	62	2025-04-30 08:48:10.477
22963	kassy_0531	0	2025-04-30 08:48:53.688
22964	waku1waku2	41	2025-04-30 08:49:01.557
22965	shudo-220_	50	2025-04-30 08:49:10.555
22966	agdh6537	38	2025-04-30 08:49:26.657
22967	axvo5145	42	2025-04-30 08:49:30.879
22968	hitomi0413	41	2025-04-30 08:49:59.503
22969	axvo4241	29	2025-04-30 08:50:01.896
22970	shudo-220_	52	2025-04-30 08:50:14.414
22971	agdh6537	129	2025-04-30 08:50:18.863
22972	kassy_0531	41	2025-04-30 08:50:23.796
22973	axvo5145	48	2025-04-30 08:50:38.506
22974	shudo-220_	45	2025-04-30 08:51:18.241
22975	agdh6537	58	2025-04-30 08:51:25.144
22976	atomic	44	2025-04-30 08:51:33.618
22977	shudo-220_	54	2025-04-30 08:52:21.11
22978	agdh6537	43	2025-04-30 08:52:33.868
22979	agdh6537	74	2025-04-30 08:53:44.47
22980	inu255-12	66	2025-04-30 08:55:28.533
22981	lions-fan1	39	2025-05-07 08:41:12.629
22982	shishamo	83	2025-05-07 08:41:18.87
22983	mi-01_28	24	2025-05-07 08:41:19.241
22984	agdh6537	29	2025-05-07 08:41:19.775
22985	kassy_0531	28	2025-05-07 08:41:44.073
22986	waku1waku2	63	2025-05-07 08:42:00.864
22987	kiyodai	67	2025-05-07 08:42:06.741
22988	axvo5145	41	2025-05-07 08:42:20.288
22989	mi-01_28	35	2025-05-07 08:42:22.455
22990	agdh6537	62	2025-05-07 08:42:22.87
22991	shishamo	85	2025-05-07 08:42:23.179
22992	lions-fan1	33	2025-05-07 08:42:32.687
22993	yuudai1201	65	2025-05-07 08:42:39.886
22994	kaxejn1	31	2025-05-07 08:42:41.361
22995	italia_lia	30	2025-05-07 08:42:50.319
22996	shimo1225	67	2025-05-07 08:42:52.18
22997	kiyodai	129	2025-05-07 08:42:53.455
22998	akitennis	36	2025-05-07 08:42:54.749
22999	shirogane	26	2025-05-07 08:42:59.17
23000	kinniku29	31	2025-05-07 08:43:16.215
23001	kassy_0531	29	2025-05-07 08:43:19.206
23002	waku1waku2	49	2025-05-07 08:43:21.605
23003	knt_07	50	2025-05-07 08:43:24.621
23004	agdh6537	64	2025-05-07 08:43:26.604
23005	kfc055	44	2025-05-07 08:43:28.15
23006	lions-fan1	52	2025-05-07 08:43:36.526
23007	haruuu4	0	2025-05-07 08:43:42.958
23008	kaxejn1	47	2025-05-07 08:43:47.284
23009	axvo5145	50	2025-05-07 08:43:52.84
23010	sa-sa_0127	43	2025-05-07 08:43:54.772
23011	yuudai1201	35	2025-05-07 08:43:54.944
23012	shimo1225	10	2025-05-07 08:43:56.131
23013	kiyodai	18	2025-05-07 08:43:58.874
23014	akitennis	45	2025-05-07 08:44:02
23015	shirogane	45	2025-05-07 08:44:03.724
23016	shishamo	85	2025-05-07 08:44:09.267
23017	masatoshi	1	2025-05-07 08:44:09.336
23018	mi-01_28	24	2025-05-07 08:44:13.163
23019	waku1waku2	91	2025-05-07 08:44:17.025
23020	otsukisama	41	2025-05-07 08:44:19.947
23021	kassy_0531	29	2025-05-07 08:44:25.008
23022	vertin15	0	2025-05-07 08:44:27.834
23023	agdh6537	28	2025-05-07 08:44:30.19
23024	kfc055	18	2025-05-07 08:44:34.96
23025	hibiki-118	45	2025-05-07 08:44:48.758
23026	fuuta_s	20	2025-05-07 08:44:49.165
23027	sa-sa_0127	38	2025-05-07 08:44:56.186
23028	shishamo	126	2025-05-07 08:44:57.524
23029	haruuu4	17	2025-05-07 08:44:58.503
23030	shimo1225	24	2025-05-07 08:44:59.077
23031	italia_lia	52	2025-05-07 08:45:04.837
23032	ha-ruto_00	130	2025-05-07 08:45:06.812
23033	shirogane	78	2025-05-07 08:45:09.36
23034	masatoshi	27	2025-05-07 08:45:11.823
23035	akitennis	50	2025-05-07 08:45:13.275
23036	ishumi	64	2025-05-07 08:45:14.117
23037	axvo5145	71	2025-05-07 08:45:14.92
23038	mi-01_28	28	2025-05-07 08:45:22.493
23039	usshi-	45	2025-05-07 08:45:23.625
23040	lions-fan1	37	2025-05-07 08:45:23.723
23041	waku1waku2	74	2025-05-07 08:45:24.754
23042	otsukisama	51	2025-05-07 08:45:24.937
23043	yukiflcx	53	2025-05-07 08:45:36.656
23044	agdh6537	72	2025-05-07 08:45:37.258
23045	kfc055	29	2025-05-07 08:45:39.313
23046	shishamo	106	2025-05-07 08:45:48.685
23047	haru-714	23	2025-05-07 08:45:51.677
23048	sa-sa_0127	0	2025-05-07 08:45:59.357
23049	shimo1225	67	2025-05-07 08:46:02.292
23050	kota_07-15	86	2025-05-07 08:46:02.981
23051	waku1waku2	132	2025-05-07 08:46:05.512
23052	knt_07	56	2025-05-07 08:46:09.37
23053	ha-ruto_00	60	2025-05-07 08:46:10.265
23054	jo_07-18	0	2025-05-07 08:46:10.269
23055	fuuta_s	27	2025-05-07 08:46:12.244
23056	ishumi	127	2025-05-07 08:46:13.143
23057	italia_lia	42	2025-05-07 08:46:13.395
23058	kuri-sou1	75	2025-05-07 08:46:13.573
23059	masatoshi	7	2025-05-07 08:46:15.365
23060	ri8_hoon-	3	2025-05-07 08:46:16.031
23061	akitennis	57	2025-05-07 08:46:20.237
23062	lions-fan1	61	2025-05-07 08:46:27.195
23063	usshi-	46	2025-05-07 08:46:28.809
23064	kyama10_	39	2025-05-07 08:46:31.185
23065	agdh6537	87	2025-05-07 08:46:31.809
23066	shudo-220_	46	2025-05-07 08:46:36.384
23067	axvo5145	80	2025-05-07 08:46:36.692
23068	mi-01_28	56	2025-05-07 08:46:42.415
23069	shishamo	102	2025-05-07 08:46:44.004
23070	kfc055	0	2025-05-07 08:46:45.424
23071	kou-1603	22	2025-05-07 08:46:58.229
23072	kassy_0531	75	2025-05-07 08:46:58.889
23073	sa-sa_0127	53	2025-05-07 08:47:00.957
23074	kota_07-15	94	2025-05-07 08:47:04.159
23075	italia_lia	132	2025-05-07 08:47:06.107
23076	waku1waku2	48	2025-05-07 08:47:07.99
23077	daisuke	70	2025-05-07 08:47:08.937
23078	kota_07-15	87	2025-05-07 08:47:11.2
23079	ha-ruto_00	47	2025-05-07 08:47:11.952
23080	otsukisama	42	2025-05-07 08:47:15.268
23081	fuuta_s	0	2025-05-07 08:47:17.447
23082	masatoshi	35	2025-05-07 08:47:18.145
23083	yukiflcx	117	2025-05-07 08:47:19.484
23084	akitennis	54	2025-05-07 08:47:25.678
23085	ishumi	53	2025-05-07 08:47:25.833
23086	ri8_hoon-	10	2025-05-07 08:47:26.845
23087	knt_07	54	2025-05-07 08:47:27.546
23088	jo_07-18	64	2025-05-07 08:47:28.064
23089	shudo-220_	28	2025-05-07 08:47:38.353
23090	agdh6537	67	2025-05-07 08:47:41.765
23091	aaaaa	0	2025-05-07 08:47:49.896
23092	kfc055	0	2025-05-07 08:47:51.409
23093	mi-01_28	102	2025-05-07 08:47:54.099
23094	axvo5145	30	2025-05-07 08:47:56.703
23095	sa-sa_0127	65	2025-05-07 08:48:03.803
23096	tya-han_04	36	2025-05-07 08:48:08.253
23097	taiga228	23	2025-05-07 08:48:11.06
23098	waku1waku2	58	2025-05-07 08:48:11.112
23099	usshi-	89	2025-05-07 08:48:19.172
23100	lions-fan1	53	2025-05-07 08:48:19.527
23101	masatoshi	86	2025-05-07 08:48:22.326
23102	shishamo	98	2025-05-07 08:48:23.647
23103	yukiflcx	51	2025-05-07 08:48:25.322
23104	italia_lia	48	2025-05-07 08:48:27.469
23105	kyama10_	54	2025-05-07 08:48:30.388
23106	ishumi	87	2025-05-07 08:48:30.529
23107	akitennis	29	2025-05-07 08:48:31.543
23108	mt_bird	45	2025-05-07 08:48:32.31
23109	fuuta_s	0	2025-05-07 08:48:35.253
23110	atomic	19	2025-05-07 08:48:36.74
23111	agdh6537	77	2025-05-07 08:48:48.593
23112	auct1718	51	2025-05-07 08:48:54.804
23113	aaaaa	46	2025-05-07 08:48:56.983
23114	kota_07-15	0	2025-05-07 08:49:09.046
23115	kfc055	0	2025-05-07 08:49:11.619
23116	tyanpo-n88	37	2025-05-07 08:49:12.188
23117	waku1waku2	72	2025-05-07 08:49:15.083
23118	ask-mog1_1	24	2025-05-07 08:49:26.953
23119	daisuke	120	2025-05-07 08:49:30.615
23120	lions-fan1	44	2025-05-07 08:49:32.881
23121	mikyu397	33	2025-05-07 08:49:33.326
23122	jo_07-18	10	2025-05-07 08:49:38.057
23123	shudo-220_	53	2025-05-07 08:49:59.476
23124	axvo4241	41	2025-05-07 08:50:01.48
23125	kota_07-15	81	2025-05-07 08:50:03.84
23126	kyama10_	23	2025-05-07 08:50:15.203
23127	posting	52	2025-05-07 08:50:17.697
23128	gyt4-3_24	54	2025-05-07 08:50:19.447
23129	shishamo	78	2025-05-07 08:50:22.615
23130	papico181	51	2025-05-07 08:50:26.587
23131	shishamo	77	2025-05-07 08:50:26.841
23132	ha-ruto_00	62	2025-05-07 08:50:28.897
23133	mt_bird	130	2025-05-07 08:50:34.327
23134	daisuke	80	2025-05-07 08:50:35.894
23135	daisuke	79	2025-05-07 08:50:36.85
23136	usshi-	54	2025-05-07 08:50:40.393
23137	imora1107	60	2025-05-07 08:50:41.607
23138	masatoshi	44	2025-05-07 08:50:42.92
23139	tya-han_04	10	2025-05-07 08:50:44.891
23140	kassy_0531	0	2025-05-07 08:50:52.452
23141	okiku_0408	50	2025-05-07 08:50:56.121
23142	sa-sa_0127	18	2025-05-07 08:51:01.022
23143	taiga228	58	2025-05-07 08:51:04.73
23144	kota_07-15	54	2025-05-07 08:51:06.947
23145	akitennis	59	2025-05-07 08:51:07.693
23146	shudo-220_	74	2025-05-07 08:51:08.565
23147	fuuta_s	0	2025-05-07 08:51:19.691
23148	tyanpo-n88	66	2025-05-07 08:51:22.307
23149	kyama10_	34	2025-05-07 08:51:25.75
23150	gyt4-3_24	28	2025-05-07 08:51:26.943
23151	ha-ruto_00	45	2025-05-07 08:51:30.432
23152	agdh6537	49	2025-05-07 08:51:35.13
23153	papico181	68	2025-05-07 08:51:35.281
23154	mt_bird	49	2025-05-07 08:51:35.681
23155	shirogane	34	2025-05-07 08:51:35.836
23156	posting	58	2025-05-07 08:51:36.784
23157	daisuke	37	2025-05-07 08:51:39.129
23158	shishamo	111	2025-05-07 08:51:39.756
23159	shishamo	110	2025-05-07 08:51:40.946
23160	hibiki-118	43	2025-05-07 08:51:41.695
23161	ishumi	81	2025-05-07 08:51:43.853
23162	kuri-sou1	0	2025-05-07 08:51:50.319
23163	yukiflcx	0	2025-05-07 08:51:51.084
23164	shimo1225	108	2025-05-07 08:51:51.44
23165	tya-han_04	51	2025-05-07 08:51:53.255
23166	waku1waku2	53	2025-05-07 08:51:55.761
23167	masatoshi	0	2025-05-07 08:51:57.849
23168	okiku_0408	48	2025-05-07 08:51:58.909
23169	axvo5145	90	2025-05-07 08:52:04.993
23170	axvo4241	64	2025-05-07 08:52:08.777
23171	kota_07-15	59	2025-05-07 08:52:09.79
23172	kassy_0531	0	2025-05-07 08:52:12.007
23173	sa-sa_0127	55	2025-05-07 08:52:13.193
23174	shudo-220_	74	2025-05-07 08:52:14.066
23175	akitennis	49	2025-05-07 08:52:14.75
23176	mikyu397	30	2025-05-07 08:52:17.03
23177	lions-fan1	36	2025-05-07 08:52:20.418
23178	tyankonabe	84	2025-05-07 08:52:21.003
23179	ask-mog1_1	0	2025-05-07 08:52:23.043
23180	kyama10_	26	2025-05-07 08:52:31.341
23181	ha-ruto_00	58	2025-05-07 08:52:31.928
23182	gyt4-3_24	34	2025-05-07 08:52:37.567
23183	shirogane	59	2025-05-07 08:52:38.58
23184	shishamo	121	2025-05-07 08:52:40.294
23185	sa-sa_0127	0	2025-05-07 08:52:41.283
23186	knt_07	42	2025-05-07 08:52:41.447
23187	posting	23	2025-05-07 08:52:41.637
23188	daisuke	57	2025-05-07 08:52:43.583
23189	patinca-nu	31	2025-05-07 08:52:44.583
23190	vertin15	92	2025-05-07 08:52:50.804
23191	yukiflcx	52	2025-05-07 08:52:54.892
23192	kuri-sou1	54	2025-05-07 08:52:55.373
23194	waku1waku2	87	2025-05-07 08:52:58.981
23196	agdh6537	63	2025-05-07 08:53:03.825
23198	hitomi0413	0	2025-05-07 08:53:04.518
23200	kota_07-15	38	2025-05-07 08:53:12.85
23202	mt_bird	93	2025-05-07 08:53:28.287
23205	musiko	41	2025-05-07 08:53:54.373
23209	ri8_hoon-	36	2025-05-07 08:54:12.574
23210	tyanpo-n88	68	2025-05-07 08:54:22.078
23211	tya-han_04	41	2025-05-07 08:54:29.468
23214	kinniku29	85	2025-05-07 08:54:46.609
23216	ask-mog1_1	26	2025-05-07 08:55:17.377
23218	posting	48	2025-05-07 08:55:36.286
23219	ha-ruto_00	52	2025-05-07 08:55:46.099
23220	musiko	29	2025-05-07 08:55:55.901
23221	yes_eo080	39	2025-05-07 08:55:57.354
23193	tya-han_04	54	2025-05-07 08:52:56.812
23195	haru-714	39	2025-05-07 08:53:02.857
23197	hibiki-118	50	2025-05-07 08:53:04.368
23199	kiyodai	17	2025-05-07 08:53:11.162
23201	tyanpo-n88	88	2025-05-07 08:53:20.953
23203	ha-ruto_00	49	2025-05-07 08:53:34.531
23204	tyankonabe	65	2025-05-07 08:53:43.214
23206	posting	27	2025-05-07 08:53:58.79
23207	jo_07-18	53	2025-05-07 08:54:04.581
23208	ask-mog1_1	22	2025-05-07 08:54:12.257
23212	ha-ruto_00	44	2025-05-07 08:54:40.047
23213	yes_eo080	86	2025-05-07 08:54:45.062
23215	kfc055	0	2025-05-07 08:54:56.963
23217	aritomo	43	2025-05-07 08:55:23.019
23222	kiyodai	60	2025-05-14 08:41:08.712
23223	usshi-	89	2025-05-14 08:41:09.688
23224	agdh6537	72	2025-05-14 08:41:33.225
23225	vertin15	103	2025-05-14 08:41:47.625
23226	kassy_0531	35	2025-05-14 08:41:49.325
23227	akitennis	32	2025-05-14 08:41:58.451
23228	tya-han_04	40	2025-05-14 08:42:33.963
23229	kinniku29	9	2025-05-14 08:42:34.154
23230	usshi-	126	2025-05-14 08:42:41.715
23231	vertin15	82	2025-05-14 08:42:51.803
23232	knt_07	17	2025-05-14 08:43:03.011
23233	akitennis	130	2025-05-14 08:43:05.054
23234	haruuu4	44	2025-05-14 08:43:09.497
23235	kiyodai	42	2025-05-14 08:43:10.781
23236	musiko	11	2025-05-14 08:43:17.007
23237	yuudai1201	43	2025-05-14 08:43:25.556
23238	axvo5145	76	2025-05-14 08:43:29.057
23239	shudo-220_	43	2025-05-14 08:43:30.468
23240	kyama10_	45	2025-05-14 08:43:32.796
23241	kassy_0531	35	2025-05-14 08:43:38.524
23242	tya-han_04	25	2025-05-14 08:43:40.666
23243	hibiki-118	56	2025-05-14 08:43:43.438
23244	agdh6537	42	2025-05-14 08:43:49.83
23245	shishamo	121	2025-05-14 08:43:50.346
23246	otsukisama	68	2025-05-14 08:43:50.757
23247	tujiri_01	54	2025-05-14 08:43:55.714
23248	usshi-	77	2025-05-14 08:43:59.569
23249	kuri-sou1	59	2025-05-14 08:44:01.167
23250	kfc055	32	2025-05-14 08:44:07.133
23251	knt_07	58	2025-05-14 08:44:09.518
23252	kiyodai	48	2025-05-14 08:44:12.752
23253	musiko	43	2025-05-14 08:44:19.952
23254	kinniku29	32	2025-05-14 08:44:30.922
23255	yuudai1201	41	2025-05-14 08:44:31.718
23256	shirogane	16	2025-05-14 08:44:32.568
23257	sa-sa_0127	38	2025-05-14 08:44:33.468
23258	shudo-220_	57	2025-05-14 08:44:33.554
23259	vertin15	36	2025-05-14 08:44:33.613
23260	akitennis	86	2025-05-14 08:44:38.219
23261	tya-han_04	40	2025-05-14 08:44:43.47
23262	shishamo	99	2025-05-14 08:44:44.486
23263	kassy_0531	60	2025-05-14 08:44:44.643
23264	hibiki-118	118	2025-05-14 08:44:48.64
23265	shimo1225	26	2025-05-14 08:44:51.525
23266	agdh6537	59	2025-05-14 08:44:53.913
23267	tujiri_01	87	2025-05-14 08:44:56.757
23268	kyama10_	75	2025-05-14 08:45:02.308
23269	usshi-	48	2025-05-14 08:45:06.279
23270	kuri-sou1	99	2025-05-14 08:45:09.684
23271	knt_07	37	2025-05-14 08:45:14.011
23272	kiyodai	15	2025-05-14 08:45:14.639
23273	axvo5145	31	2025-05-14 08:45:19.949
23274	kfc055	0	2025-05-14 08:45:21.203
23275	shirogane	42	2025-05-14 08:45:34.825
23276	otsukisama	53	2025-05-14 08:45:35.435
23277	sa-sa_0127	64	2025-05-14 08:45:35.489
23278	shishamo	122	2025-05-14 08:45:36.806
23279	akitennis	120	2025-05-14 08:45:37.182
23280	shudo-220_	80	2025-05-14 08:45:37.614
23281	shimo1225	82	2025-05-14 08:45:42.067
23282	ha-ruto_00	62	2025-05-14 08:45:47.425
23283	kiyodai	140	2025-05-14 08:45:47.642
23284	tya-han_04	36	2025-05-14 08:45:48.179
23285	yuudai1201	59	2025-05-14 08:45:50.14
23286	agdh6537	46	2025-05-14 08:46:00.797
23287	vertin15	61	2025-05-14 08:46:01.73
23288	hitomi0413	36	2025-05-14 08:46:03.239
23289	hibiki-118	44	2025-05-14 08:46:04.985
23290	haruuu4	12	2025-05-14 08:46:08.132
23291	usshi-	74	2025-05-14 08:46:09.161
23292	tujiri_01	35	2025-05-14 08:46:15.002
23293	musiko	11	2025-05-14 08:46:21.641
23294	ishumi	89	2025-05-14 08:46:22.751
23295	kuri-sou1	35	2025-05-14 08:46:24.312
23296	knt_07	35	2025-05-14 08:46:27.823
23297	satohina13	3	2025-05-14 08:46:31.273
23298	axvo5145	31	2025-05-14 08:46:32.501
23299	kinniku29	44	2025-05-14 08:46:33.623
23300	kfc055	0	2025-05-14 08:46:34.396
23301	sa-sa_0127	74	2025-05-14 08:46:37.389
23302	shudo-220_	53	2025-05-14 08:46:41.62
23303	taiga228	55	2025-05-14 08:46:41.691
23304	kuri-sou1	0	2025-05-14 08:46:41.998
23305	haru-714	89	2025-05-14 08:46:42.574
23306	shimo1225	71	2025-05-14 08:46:46.517
23307	ha-ruto_00	55	2025-05-14 08:46:48.241
23308	kiyodai	42	2025-05-14 08:46:50.533
23309	otsukisama	80	2025-05-14 08:46:53.297
23310	yuudai1201	56	2025-05-14 08:46:54.267
23311	akitennis	98	2025-05-14 08:46:54.857
23312	tya-han_04	40	2025-05-14 08:46:59.491
23313	hitomi0413	56	2025-05-14 08:47:05.359
23314	agdh6537	78	2025-05-14 08:47:09.179
23315	shirogane	32	2025-05-14 08:47:13.412
23316	usshi-	58	2025-05-14 08:47:13.864
23317	haruuu4	76	2025-05-14 08:47:15.027
23318	tyanpo-n88	78	2025-05-14 08:47:17.731
23319	daisuke	93	2025-05-14 08:47:20.053
23320	musiko	55	2025-05-14 08:47:26.696
23321	ishumi	61	2025-05-14 08:47:27.697
23322	axvo5145	66	2025-05-14 08:47:34.448
23323	kfc055	0	2025-05-14 08:47:35.577
23324	kota_07-15	79	2025-05-14 08:47:35.751
23325	kinniku29	49	2025-05-14 08:47:37.738
23326	atomic	0	2025-05-14 08:47:37.861
23327	mikyu397	33	2025-05-14 08:47:38.76
23328	sa-sa_0127	0	2025-05-14 08:47:39.954
23329	satohina13	21	2025-05-14 08:47:40.651
23330	knt_07	36	2025-05-14 08:47:41.408
23331	shimo1225	68	2025-05-14 08:47:46.359
23332	tujiri_01	50	2025-05-14 08:47:46.915
23333	shudo-220_	58	2025-05-14 08:47:49.83
23334	kiyodai	77	2025-05-14 08:47:51.139
23335	kuri-sou1	56	2025-05-14 08:47:51.499
23336	ri8_hoon-	103	2025-05-14 08:47:51.77
23337	shishamo	108	2025-05-14 08:47:55.093
23338	taiga228	59	2025-05-14 08:47:55.945
23339	ha-ruto_00	38	2025-05-14 08:47:58.322
23340	tya-han_04	59	2025-05-14 08:48:02.298
23341	daisuke	107	2025-05-14 08:48:04.002
23342	kassy_0531	54	2025-05-14 08:48:04.299
23343	hitomi0413	43	2025-05-14 08:48:08.379
23344	haru-714	63	2025-05-14 08:48:12.347
23345	kaxejn1	93	2025-05-14 08:48:12.548
23346	agdh6537	48	2025-05-14 08:48:13.051
23347	kaxejn1	92	2025-05-14 08:48:14.181
23348	m0gu	65	2025-05-14 08:48:14.939
23349	shirogane	58	2025-05-14 08:48:16.339
23350	yuudai1201	65	2025-05-14 08:48:22.043
23352	usshi-	52	2025-05-14 08:48:32.49
23353	ishumi	96	2025-05-14 08:48:33.173
23355	kota_07-15	31	2025-05-14 08:48:37.667
23356	kiyodai	76	2025-05-14 08:48:37.978
23357	kfc055	45	2025-05-14 08:48:41.898
23358	kinniku29	52	2025-05-14 08:48:42.882
23361	knt_07	65	2025-05-14 08:48:45.124
23351	musiko	63	2025-05-14 08:48:29.389
23354	akitennis	56	2025-05-14 08:48:34.401
23359	atomic	13	2025-05-14 08:48:42.943
23360	mikyu397	39	2025-05-14 08:48:43.419
23362	sa-sa_0127	0	2025-05-14 08:48:45.27
23363	shimo1225	63	2025-05-14 08:48:49.106
23364	tujiri_01	82	2025-05-14 08:48:50.273
23365	shudo-220_	64	2025-05-14 08:48:51.749
23366	tyankonabe	55	2025-05-14 08:48:54.028
23367	ri8_hoon-	48	2025-05-14 08:48:54.283
23368	axvo5145	13	2025-05-14 08:48:54.951
23369	shishamo	128	2025-05-14 08:48:55.112
23370	masatoshi	30	2025-05-14 08:48:55.196
23371	lions-fan1	43	2025-05-14 08:48:56.506
23372	tya-han_04	56	2025-05-14 08:49:04.625
23373	otsukisama	49	2025-05-14 08:49:05.157
23374	daisuke	20	2025-05-14 08:49:06.93
23375	hibiki-118	97	2025-05-14 08:49:07.791
23376	kassy_0531	41	2025-05-14 08:49:08.197
23377	axvo4241	27	2025-05-14 08:49:13.377
23378	taiga228	44	2025-05-14 08:49:18.395
23379	tyanpo-n88	87	2025-05-14 08:49:18.947
23380	kaxejn1	79	2025-05-14 08:49:21.528
23381	shirogane	64	2025-05-14 08:49:21.806
23382	aaaaa	29	2025-05-14 08:49:24.476
23383	agdh6537	61	2025-05-14 08:49:24.565
23384	auct1718	43	2025-05-14 08:49:27.247
23385	ha-ruto_00	38	2025-05-14 08:49:27.629
23386	yuudai1201	67	2025-05-14 08:49:29.865
23387	usshi-	62	2025-05-14 08:49:35.202
23388	haru-714	23	2025-05-14 08:49:37.163
23389	shudo-220_	103	2025-05-14 08:49:38.83
23390	kochi	39	2025-05-14 08:49:41.172
23391	shishamo	89	2025-05-14 08:49:41.197
23392	kiyodai	49	2025-05-14 08:49:41.516
23393	vertin15	43	2025-05-14 08:49:43.316
23394	shimo1225	49	2025-05-14 08:49:43.41
23395	kfc055	34	2025-05-14 08:49:44.716
23396	sa-sa_0127	67	2025-05-14 08:49:47.553
23397	gyt4-3_24	15	2025-05-14 08:49:47.738
23398	akitennis	65	2025-05-14 08:49:49.94
23399	kuri-sou1	54	2025-05-14 08:49:50.103
23400	knt_07	0	2025-05-14 08:49:52.569
23401	tujiri_01	85	2025-05-14 08:49:52.942
23402	tyankonabe	90	2025-05-14 08:49:56.67
23403	musiko	75	2025-05-14 08:49:57.009
23404	kota_07-15	81	2025-05-14 08:49:58.549
23405	tya-han_04	120	2025-05-14 08:49:58.643
23406	ishumi	46	2025-05-14 08:49:59.914
23407	mikyu397	58	2025-05-14 08:50:03.446
23408	kyama10_	106	2025-05-14 08:50:04.115
23409	lions-fan1	55	2025-05-14 08:50:07.828
23410	daisuke	61	2025-05-14 08:50:09.126
23411	axvo5145	69	2025-05-14 08:50:09.482
23412	tyanpo-n88	54	2025-05-14 08:50:14.508
23413	ri8_hoon-	63	2025-05-14 08:50:15.121
23414	hitomi0413	68	2025-05-14 08:50:16.383
23415	axvo4241	74	2025-05-14 08:50:17.972
23416	kassy_0531	18	2025-05-14 08:50:18.949
23417	patinca-nu	43	2025-05-14 08:50:20.034
23418	otsukisama	47	2025-05-14 08:50:21.289
23419	taiga228	81	2025-05-14 08:50:24.404
23420	shirogane	41	2025-05-14 08:50:24.454
23421	masatoshi	33	2025-05-14 08:50:25.205
23422	agdh6537	70	2025-05-14 08:50:30.77
23423	kou-1603	51	2025-05-14 08:50:31.647
23424	shishamo	126	2025-05-14 08:50:33.788
23425	ha-ruto_00	40	2025-05-14 08:50:35.303
23426	miyu_0913	53	2025-05-14 08:50:35.324
23427	usshi-	48	2025-05-14 08:50:39.274
23428	shudo-220_	55	2025-05-14 08:50:41.72
23429	kinniku29	40	2025-05-14 08:50:44.917
23430	kochi	0	2025-05-14 08:50:46.039
23431	kuri-sou1	124	2025-05-14 08:50:46.795
23432	kiyodai	59	2025-05-14 08:50:48.151
23433	kaxejn1	87	2025-05-14 08:50:49.306
23434	kaxejn1	86	2025-05-14 08:50:49.61
23435	sa-sa_0127	61	2025-05-14 08:50:50.029
23436	aaaaa	57	2025-05-14 08:50:51.178
23437	papico181	48	2025-05-14 08:50:51.639
23438	gyt4-3_24	46	2025-05-14 08:50:54.775
23439	kfc055	1	2025-05-14 08:50:57.635
23440	hibiki-118	56	2025-05-14 08:50:58.025
23441	tyankonabe	58	2025-05-14 08:50:58.776
23442	auct1718	0	2025-05-14 08:50:58.979
23443	tyanpo-n88	127	2025-05-14 08:51:00.74
23444	tya-han_04	24	2025-05-14 08:51:02.392
23445	akitennis	30	2025-05-14 08:51:04.201
23446	mikyu397	58	2025-05-14 08:51:06.545
23447	ishumi	75	2025-05-14 08:51:06.687
23448	knt_07	116	2025-05-14 08:51:06.987
23449	kyama10_	79	2025-05-14 08:51:06.991
23450	kota_07-15	26	2025-05-14 08:51:07.872
23451	tujiri_01	76	2025-05-14 08:51:07.874
23452	satohina13	29	2025-05-14 08:51:08.099
23453	haru-714	57	2025-05-14 08:51:08.853
23454	lions-fan1	38	2025-05-14 08:51:10.019
23455	daisuke	60	2025-05-14 08:51:11.124
23456	musiko	39	2025-05-14 08:51:12.289
23457	patinca-nu	120	2025-05-14 08:51:18.158
23458	hitomi0413	62	2025-05-14 08:51:18.486
23459	otsukisama	116	2025-05-14 08:51:23.235
23460	kassy_0531	54	2025-05-14 08:51:23.358
23461	axvo4241	59	2025-05-14 08:51:24.094
23462	haruuu4	14	2025-05-14 08:51:25.147
23463	ri8_hoon-	60	2025-05-14 08:51:26.853
23464	shudo-220_	103	2025-05-14 08:51:28.88
23465	masatoshi	26	2025-05-14 08:51:30.053
23466	shishamo	88	2025-05-14 08:51:37.583
23467	vertin15	53	2025-05-14 08:51:39.35
23468	axvo5145	24	2025-05-14 08:51:39.489
23469	miyu_0913	57	2025-05-14 08:51:40.499
23470	ha-ruto_00	52	2025-05-14 08:51:42.109
23471	usshi-	53	2025-05-14 08:51:43.32
23472	tyanpo-n88	103	2025-05-14 08:51:44.424
23473	kinniku29	28	2025-05-14 08:51:46.992
23474	kochi	46	2025-05-14 08:51:52.239
23475	sa-sa_0127	0	2025-05-14 08:51:52.429
23476	hibiki-118	101	2025-05-14 08:51:52.938
23477	papico181	47	2025-05-14 08:51:55.657
23478	mt_bird	77	2025-05-14 08:51:59.354
23479	gyt4-3_24	0	2025-05-14 08:51:59.638
23480	kaxejn1	86	2025-05-14 08:52:00.472
23481	kfc055	54	2025-05-14 08:52:00.599
23482	kaxejn1	85	2025-05-14 08:52:01.099
23483	mt_bird	76	2025-05-14 08:52:01.177
23484	tyankonabe	45	2025-05-14 08:52:01.274
23485	mikyu397	136	2025-05-14 08:52:02.068
23486	aritomo	0	2025-05-14 08:52:02.975
23487	imora1107	81	2025-05-14 08:52:03.47
23488	tya-han_04	42	2025-05-14 08:52:07.049
23489	ishumi	82	2025-05-14 08:52:08.778
23490	waku1waku2	64	2025-05-14 08:52:10.683
23491	musiko	20	2025-05-14 08:52:14.586
23492	knt_07	36	2025-05-14 08:52:16.459
23493	kota_07-15	50	2025-05-14 08:52:19.841
23494	hitomi0413	49	2025-05-14 08:52:20.382
23495	tujiri_01	49	2025-05-14 08:52:20.572
23496	sa-sa_0127	0	2025-05-14 08:52:20.603
23497	lions-fan1	44	2025-05-14 08:52:22.452
23498	daisuke	62	2025-05-14 08:52:23.141
23499	shishamo	132	2025-05-14 08:52:26.467
23501	haruuu4	22	2025-05-14 08:52:32.403
23504	miyu_0913	70	2025-05-14 08:52:42.897
23507	usshi-	121	2025-05-14 08:52:46.17
23500	akitennis	66	2025-05-14 08:52:27.529
23502	ask-mog1_1	59	2025-05-14 08:52:34.764
23503	masatoshi	0	2025-05-14 08:52:36.665
23505	shudo-220_	71	2025-05-14 08:52:44.052
23506	ha-ruto_00	81	2025-05-14 08:52:44.351
23508	tyanpo-n88	86	2025-05-14 08:52:46.922
23509	mt_bird	92	2025-05-14 08:52:53.265
23510	papico181	45	2025-05-14 08:52:59.469
23511	tyankonabe	19	2025-05-14 08:53:03.525
23512	kaxejn1	106	2025-05-14 08:53:04.298
23513	imora1107	81	2025-05-14 08:53:11.849
23514	tujiri_01	62	2025-05-14 08:53:22.121
23515	yes_eo080	72	2025-05-14 08:53:24.403
23516	italia_lia	0	2025-05-14 08:53:26.708
23517	gyt4-3_24	21	2025-05-14 08:53:31.251
23518	waku1waku2	50	2025-05-14 08:53:32.625
23519	okiku_0408	128	2025-05-14 08:53:33.706
23520	kfc055	0	2025-05-14 08:53:39.411
23521	ha-ruto_00	26	2025-05-14 08:53:45.099
23522	aritomo	28	2025-05-14 08:53:47.012
23523	yukiflcx	21	2025-05-14 08:54:11.837
23524	yes_eo080	61	2025-05-14 08:54:26.297
23525	okiku_0408	66	2025-05-14 08:54:44.994
23526	ha-ruto_00	42	2025-05-14 08:54:46.07
23527	hitomi0413	67	2025-05-14 08:54:50.527
23528	italia_lia	112	2025-05-14 08:55:03.538
23529	aritomo	42	2025-05-14 08:55:14.296
23530	yukiflcx	43	2025-05-14 08:55:28.682
23531	lions-fan1	41	2025-05-21 08:41:08.831
23532	kyama10_	81	2025-05-21 08:41:23.257
23533	akitennis	83	2025-05-21 08:41:37.309
23534	agdh6537	37	2025-05-21 08:41:56.304
23535	masatoshi	26	2025-05-21 08:42:10.108
23536	lions-fan1	33	2025-05-21 08:42:12.761
23537	hibiki-118	64	2025-05-21 08:42:14.879
23538	sa-sa_0127	116	2025-05-21 08:42:27.553
23539	otsukisama	55	2025-05-21 08:42:39.786
23540	shudo-220_	89	2025-05-21 08:42:41.215
23541	kyama10_	108	2025-05-21 08:42:42.668
23542	agdh6537	42	2025-05-21 08:43:02.037
23543	lions-fan1	61	2025-05-21 08:43:14.817
23544	mi-01_28	40	2025-05-21 08:43:24.045
23545	sa-sa_0127	71	2025-05-21 08:43:32.03
23546	akitennis	73	2025-05-21 08:43:50.522
23547	masatoshi	0	2025-05-21 08:44:01.203
23548	otsukisama	97	2025-05-21 08:44:54.541
23549	shudo-220_	47	2025-05-21 08:44:56.14
23550	kyama10_	58	2025-05-21 08:44:56.36
23551	tujiri_01	51	2025-05-21 08:45:02.252
23552	usshi-	53	2025-05-21 08:45:03.378
23553	masatoshi	49	2025-05-21 08:45:06.012
23554	mi-01_28	78	2025-05-21 08:45:16.6
23555	yuudai1201	59	2025-05-21 08:45:17.15
23556	sa-sa_0127	73	2025-05-21 08:45:38.732
23557	kinniku29	32	2025-05-21 08:45:47.974
23558	kyama10_	61	2025-05-21 08:46:00.003
23559	shudo-220_	79	2025-05-21 08:46:01.018
23560	lions-fan1	47	2025-05-21 08:46:02.963
23561	agdh6537	49	2025-05-21 08:46:04.837
23562	tujiri_01	70	2025-05-21 08:46:06.201
23563	usshi-	56	2025-05-21 08:46:06.875
23564	masatoshi	30	2025-05-21 08:46:08.729
23565	hibiki-118	61	2025-05-21 08:46:09.939
23566	satohina13	16	2025-05-21 08:46:12.803
23567	otsukisama	125	2025-05-21 08:46:20.443
23568	yuudai1201	61	2025-05-21 08:46:22.043
23569	akitennis	52	2025-05-21 08:46:25.068
23570	kfc055	35	2025-05-21 08:46:36.922
23571	tya-han_04	0	2025-05-21 08:46:42.204
23572	sa-sa_0127	47	2025-05-21 08:46:42.648
23573	mi-01_28	49	2025-05-21 08:46:43.312
23574	kassy_0531	38	2025-05-21 08:46:44.563
23575	shishamo	96	2025-05-21 08:46:45.447
23576	kuri-sou1	49	2025-05-21 08:46:54.693
23577	kinniku29	0	2025-05-21 08:46:56.316
23578	posting	62	2025-05-21 08:46:57.379
23579	shudo-220_	53	2025-05-21 08:47:04.254
23580	lions-fan1	43	2025-05-21 08:47:05.564
23581	agdh6537	56	2025-05-21 08:47:10.042
23582	haruuu4	41	2025-05-21 08:47:10.338
23583	tujiri_01	47	2025-05-21 08:47:11.775
23584	kota_07-15	46	2025-05-21 08:47:12.66
23585	masatoshi	46	2025-05-21 08:47:12.861
23586	usshi-	34	2025-05-21 08:47:14.266
23587	akitennis	81	2025-05-21 08:47:28.129
23588	papico181	61	2025-05-21 08:47:30.693
23589	italia_lia	23	2025-05-21 08:47:32.456
23590	tya-han_04	83	2025-05-21 08:47:33.246
23591	musiko	49	2025-05-21 08:47:35.868
23592	hibiki-118	61	2025-05-21 08:47:38.16
23593	aaaaa	44	2025-05-21 08:47:38.678
23594	auct1718	12	2025-05-21 08:47:39.731
23595	kfc055	47	2025-05-21 08:47:40.02
23596	daisuke	124	2025-05-21 08:47:42.731
23597	shishamo	100	2025-05-21 08:47:43.356
23598	kassy_0531	49	2025-05-21 08:47:48.864
23599	mi-01_28	34	2025-05-21 08:47:48.895
23600	atomic	0	2025-05-21 08:47:49.027
23601	kuri-sou1	119	2025-05-21 08:47:50.819
23602	satohina13	16	2025-05-21 08:47:51.817
23603	kinniku29	28	2025-05-21 08:48:00.387
23604	posting	48	2025-05-21 08:48:00.982
23605	axvo5145	34	2025-05-21 08:48:06.587
23606	shudo-220_	58	2025-05-21 08:48:07.948
23607	lions-fan1	65	2025-05-21 08:48:08.583
23608	kota_07-15	56	2025-05-21 08:48:09.794
23609	tujiri_01	59	2025-05-21 08:48:14.505
23610	agdh6537	47	2025-05-21 08:48:15.941
23611	knt_07	35	2025-05-21 08:48:16.366
23612	masatoshi	9	2025-05-21 08:48:18.447
23613	sa-sa_0127	67	2025-05-21 08:48:23.761
23614	kyama10_	46	2025-05-21 08:48:24.079
23615	usshi-	68	2025-05-21 08:48:25.899
23616	kuri-sou1	1	2025-05-21 08:48:26.42
23617	kiyodai	84	2025-05-21 08:48:27.805
23618	tyanpo-n88	68	2025-05-21 08:48:32.384
23619	akitennis	86	2025-05-21 08:48:33.904
23620	shimo1225	53	2025-05-21 08:48:34.591
23621	papico181	41	2025-05-21 08:48:34.871
23622	tya-han_04	68	2025-05-21 08:48:35.22
23623	musiko	23	2025-05-21 08:48:37.808
23624	jo_07-18	71	2025-05-21 08:48:39.692
23625	hibiki-118	60	2025-05-21 08:48:43.072
23626	kfc055	0	2025-05-21 08:48:43.847
23627	italia_lia	82	2025-05-21 08:48:43.879
23628	daisuke	32	2025-05-21 08:48:45.768
23629	yuudai1201	52	2025-05-21 08:48:46.032
23630	shishamo	139	2025-05-21 08:48:48.66
23631	kaxejn1	54	2025-05-21 08:48:50.284
23632	ha-ruto_00	41	2025-05-21 08:48:54.068
23633	mi-01_28	41	2025-05-21 08:48:54.339
23634	atomic	52	2025-05-21 08:48:56.209
23635	shirogane	52	2025-05-21 08:48:57.73
23636	posting	80	2025-05-21 08:49:00.306
23637	aaaaa	42	2025-05-21 08:49:03.474
23638	shudo-220_	99	2025-05-21 08:49:05.274
23639	kassy_0531	48	2025-05-21 08:49:06.164
23640	tujiri_01	126	2025-05-21 08:49:06.313
23641	lions-fan1	80	2025-05-21 08:49:09.999
23642	kota_07-15	53	2025-05-21 08:49:12.111
23643	taiga228	63	2025-05-21 08:49:13.062
23644	axvo5145	61	2025-05-21 08:49:16.354
23646	masatoshi	45	2025-05-21 08:49:23.15
23648	sa-sa_0127	27	2025-05-21 08:49:26.761
23649	usshi-	61	2025-05-21 08:49:29.055
23653	shimo1225	68	2025-05-21 08:49:36.369
23657	jo_07-18	49	2025-05-21 08:49:43.141
23658	papico181	72	2025-05-21 08:49:45.022
23659	kfc055	9	2025-05-21 08:49:47.233
23660	haru-714	91	2025-05-21 08:49:49.405
23663	yuudai1201	57	2025-05-21 08:49:53.753
23665	ha-ruto_00	15	2025-05-21 08:49:55.771
23668	mi-01_28	34	2025-05-21 08:49:59.235
23669	kaxejn1	95	2025-05-21 08:49:59.811
23670	italia_lia	69	2025-05-21 08:50:00.194
23673	ishumi	30	2025-05-21 08:50:07.45
23674	posting	75	2025-05-21 08:50:08.876
23675	shudo-220_	72	2025-05-21 08:50:09.697
23645	agdh6537	59	2025-05-21 08:49:20.044
23647	auct1718	35	2025-05-21 08:49:25.028
23652	haruuu4	32	2025-05-21 08:49:34.459
23654	mikyu397	55	2025-05-21 08:49:40.848
23655	musiko	41	2025-05-21 08:49:41.456
23656	knt_07	20	2025-05-21 08:49:43.005
23661	sum-lov_13	0	2025-05-21 08:49:50.863
23662	tyanpo-n88	98	2025-05-21 08:49:53.297
23664	daisuke	92	2025-05-21 08:49:55.704
23666	shishamo	90	2025-05-21 08:49:56.855
23667	akitennis	55	2025-05-21 08:49:57.999
23671	fuuta_s	52	2025-05-21 08:50:02.461
23672	aaaaa	57	2025-05-21 08:50:07.31
23676	tujiri_01	76	2025-05-21 08:50:15.295
23650	kiyodai	22	2025-05-21 08:49:29.824
23651	kuri-sou1	51	2025-05-21 08:49:32.74
23677	axvo5145	61	2025-05-21 08:50:18.533
23678	taiga228	46	2025-05-21 08:50:20.343
23679	shimo1225	74	2025-05-21 08:50:21.753
23680	masatoshi	27	2025-05-21 08:50:26.979
23681	agdh6537	58	2025-05-21 08:50:27.344
23682	lions-fan1	79	2025-05-21 08:50:29.982
23683	sa-sa_0127	53	2025-05-21 08:50:30.199
23684	usshi-	39	2025-05-21 08:50:31.535
23685	m0gu	38	2025-05-21 08:50:31.662
23686	kiyodai	65	2025-05-21 08:50:31.874
23687	kou-1603	2	2025-05-21 08:50:33.132
23688	tya-han_04	9	2025-05-21 08:50:34.332
23689	kuri-sou1	49	2025-05-21 08:50:38.013
23690	vertin15	117	2025-05-21 08:50:39.348
23691	atomic	44	2025-05-21 08:50:39.594
23692	mikyu397	21	2025-05-21 08:50:45.439
23693	kfc055	27	2025-05-21 08:50:51.239
23694	tyanpo-n88	81	2025-05-21 08:50:54.712
23695	kaxejn1	126	2025-05-21 08:50:56.389
23696	ha-ruto_00	39	2025-05-21 08:50:57.836
23697	musiko	27	2025-05-21 08:51:00.295
23698	daisuke	47	2025-05-21 08:51:01.95
23699	akitennis	90	2025-05-21 08:51:02.657
23700	sum-lov_13	51	2025-05-21 08:51:03.729
23701	knt_07	29	2025-05-21 08:51:05.248
23702	italia_lia	40	2025-05-21 08:51:05.499
23703	ri8_hoon-	56	2025-05-21 08:51:06.117
23704	shishamo	89	2025-05-21 08:51:07.005
23705	jo_07-18	46	2025-05-21 08:51:07.931
23706	shishamo	88	2025-05-21 08:51:07.94
23707	fuuta_s	16	2025-05-21 08:51:09.823
23708	ishumi	80	2025-05-21 08:51:11.146
23709	mi-01_28	60	2025-05-21 08:51:12.226
23710	shudo-220_	39	2025-05-21 08:51:13.139
23711	kiyodai	62	2025-05-21 08:51:14.242
23712	posting	38	2025-05-21 08:51:14.501
23713	tujiri_01	50	2025-05-21 08:51:17.746
23714	axvo5145	43	2025-05-21 08:51:19.521
23715	kochi	49	2025-05-21 08:51:23
23716	shimo1225	57	2025-05-21 08:51:26.588
23717	vertin15	128	2025-05-21 08:51:27.864
23718	yukiflcx	0	2025-05-21 08:51:28.107
23719	kota_07-15	68	2025-05-21 08:51:28.188
23720	masatoshi	49	2025-05-21 08:51:32.29
23721	agdh6537	58	2025-05-21 08:51:33.349
23722	sa-sa_0127	0	2025-05-21 08:51:33.519
23723	lions-fan1	48	2025-05-21 08:51:34.196
23724	yukiflcx	0	2025-05-21 08:51:35.525
23725	taiga228	61	2025-05-21 08:51:37.1
23726	hibiki-118	65	2025-05-21 08:51:39.41
23727	tya-han_04	53	2025-05-21 08:51:39.58
23728	usshi-	54	2025-05-21 08:51:45.345
23729	auct1718	47	2025-05-21 08:51:45.962
23730	yukiflcx	0	2025-05-21 08:51:46.176
23731	imora1107	57	2025-05-21 08:51:46.489
23732	patinca-nu	65	2025-05-21 08:51:47.822
23733	hitomi0413	0	2025-05-21 08:51:51.108
23734	waku1waku2	58	2025-05-21 08:51:52.173
23735	mt_bird	67	2025-05-21 08:51:53.435
23736	kfc055	45	2025-05-21 08:51:53.714
23737	yuudai1201	46	2025-05-21 08:51:53.855
23738	mikyu397	67	2025-05-21 08:51:54.088
23739	tyanpo-n88	47	2025-05-21 08:51:55.97
23740	shirogane	29	2025-05-21 08:51:56.401
23741	satohina13	53	2025-05-21 08:51:58.316
23742	ha-ruto_00	60	2025-05-21 08:51:59.993
23743	shishamo	120	2025-05-21 08:52:01.006
23744	daisuke	70	2025-05-21 08:52:05.509
23745	akitennis	75	2025-05-21 08:52:05.736
23746	musiko	24	2025-05-21 08:52:06.412
23747	yes_eo080	83	2025-05-21 08:52:08.414
23748	jo_07-18	0	2025-05-21 08:52:12.066
23749	fuuta_s	25	2025-05-21 08:52:13.638
23750	kyama10_	70	2025-05-21 08:52:14.056
23751	sum-lov_13	71	2025-05-21 08:52:15.057
23752	ishumi	57	2025-05-21 08:52:15.09
23753	shudo-220_	23	2025-05-21 08:52:15.622
23754	kiyodai	20	2025-05-21 08:52:17.827
23755	posting	60	2025-05-21 08:52:18.321
23756	italia_lia	61	2025-05-21 08:52:18.923
23757	masatoshi	0	2025-05-21 08:52:19.032
23758	aaaaa	55	2025-05-21 08:52:20.82
23759	miyu_0913	92	2025-05-21 08:52:25.045
23760	tyankonabe	44	2025-05-21 08:52:25.797
23761	miyu_0913	91	2025-05-21 08:52:26.152
23762	kochi	23	2025-05-21 08:52:27.553
23763	shimo1225	59	2025-05-21 08:52:28.395
23764	knt_07	43	2025-05-21 08:52:30.456
23765	ask-mog1_1	3	2025-05-21 08:52:32.989
23766	kaxejn1	111	2025-05-21 08:52:33.515
23767	kaxejn1	110	2025-05-21 08:52:33.909
23768	tujiri_01	42	2025-05-21 08:52:34.606
23769	agdh6537	89	2025-05-21 08:52:38.056
23770	m0gu	57	2025-05-21 08:52:42.405
23771	tya-han_04	38	2025-05-21 08:52:42.528
23772	usshi-	47	2025-05-21 08:52:46.993
23773	yukiflcx	36	2025-05-21 08:52:49.209
23774	imora1107	26	2025-05-21 08:52:49.375
23775	mt_bird	83	2025-05-21 08:52:54.547
23776	patinca-nu	51	2025-05-21 08:52:56.304
23777	kfc055	0	2025-05-21 08:52:57.615
23778	waku1waku2	56	2025-05-21 08:52:58.368
23779	tyanpo-n88	57	2025-05-21 08:52:58.689
23780	ha-ruto_00	53	2025-05-21 08:53:02.043
23781	mikyu397	35	2025-05-21 08:53:02.588
23782	hitomi0413	47	2025-05-21 08:53:02.883
23783	lions-fan1	83	2025-05-21 08:53:03.28
23784	musiko	33	2025-05-21 08:53:09.805
23785	yes_eo080	43	2025-05-21 08:53:11.292
23786	fuuta_s	28	2025-05-21 08:53:16.488
23787	vertin15	0	2025-05-21 08:53:20.821
23788	italia_lia	95	2025-05-21 08:53:20.839
23789	jo_07-18	115	2025-05-21 08:53:21.886
23790	posting	57	2025-05-21 08:53:27.537
23791	tyankonabe	26	2025-05-21 08:53:27.687
23792	auct1718	61	2025-05-21 08:53:52.392
23793	shishamo	126	2025-05-21 08:53:53.25
23794	ha-ruto_00	72	2025-05-21 08:54:06.204
23795	aritomo	64	2025-05-21 08:54:15.191
23796	patinca-nu	84	2025-05-21 08:54:16.616
23797	patinca-nu	83	2025-05-21 08:54:17.823
23798	okiku_0408	42	2025-05-21 08:54:29.339
23799	kaxejn1	62	2025-05-21 08:54:37.404
23800	posting	97	2025-05-21 08:54:42.278
23801	agdh6537	118	2025-05-21 08:54:48.955
23802	shirogane	59	2025-05-21 08:54:59.877
23803	okiku_0408	60	2025-05-21 08:55:31.238
23804	hitomi0413	44	2025-05-21 08:56:27.246
23805	shimo1225	23	2025-05-28 08:41:18.612
23806	yuudai1201	74	2025-05-28 08:42:07.451
23807	kfc055	62	2025-05-28 08:42:08.253
23808	lions-fan1	68	2025-05-28 08:42:08.593
23809	waku1waku2	84	2025-05-28 08:42:11.649
23810	usshi-	51	2025-05-28 08:42:17.013
23811	shimo1225	57	2025-05-28 08:42:19.453
23812	sa-sa_0127	28	2025-05-28 08:43:01.364
23813	lions-fan1	62	2025-05-28 08:43:11.631
23814	mi-01_28	41	2025-05-28 08:43:12.483
23815	kfc055	0	2025-05-28 08:43:15.244
23816	shimo1225	56	2025-05-28 08:43:21.265
23817	hibiki-118	68	2025-05-28 08:43:38.012
23820	waku1waku2	46	2025-05-28 08:44:10.764
23821	jo_07-18	0	2025-05-28 08:44:15.239
23822	otsukisama	96	2025-05-28 08:44:19.083
23818	sa-sa_0127	0	2025-05-28 08:44:03.152
23819	usshi-	42	2025-05-28 08:44:07.031
23823	kfc055	29	2025-05-28 08:44:20.968
23824	shimo1225	75	2025-05-28 08:44:23.868
23825	lions-fan1	101	2025-05-28 08:44:32.178
23826	yuudai1201	56	2025-05-28 08:44:33.006
23827	kuri-sou1	10	2025-05-28 08:44:50.454
23828	tya-han_04	79	2025-05-28 08:44:56.014
23829	sa-sa_0127	49	2025-05-28 08:45:04.269
23830	waku1waku2	80	2025-05-28 08:45:12.443
23831	jo_07-18	97	2025-05-28 08:45:12.644
23832	kassy_0531	34	2025-05-28 08:45:13.942
23833	usshi-	86	2025-05-28 08:45:14.032
23834	kfc055	45	2025-05-28 08:45:26.388
23835	otsukisama	74	2025-05-28 08:45:31.889
23836	akitennis	69	2025-05-28 08:45:35.303
23837	kiyodai	58	2025-05-28 08:45:41.075
23838	musiko	72	2025-05-28 08:45:41.442
23839	lions-fan1	47	2025-05-28 08:45:42.647
23840	tujiri_01	123	2025-05-28 08:45:46.116
23841	kuri-sou1	50	2025-05-28 08:45:52.971
23842	tya-han_04	49	2025-05-28 08:45:58.987
23843	knt_07	72	2025-05-28 08:46:00.03
23844	sa-sa_0127	0	2025-05-28 08:46:05.998
23845	kassy_0531	120	2025-05-28 08:46:06.476
23846	kaxejn1	109	2025-05-28 08:46:11.221
23847	waku1waku2	76	2025-05-28 08:46:14.59
23848	waku1waku2	75	2025-05-28 08:46:15.431
23849	jo_07-18	44	2025-05-28 08:46:18.74
23850	posting	61	2025-05-28 08:46:22.512
23851	kyama10_	37	2025-05-28 08:46:23.916
23852	shirogane	31	2025-05-28 08:46:27.12
23853	kfc055	31	2025-05-28 08:46:28.061
23854	usshi-	52	2025-05-28 08:46:28.919
23855	taiga228	48	2025-05-28 08:46:38.267
23856	kiyodai	12	2025-05-28 08:46:41.438
23857	akitennis	56	2025-05-28 08:46:42.225
23858	shimo1225	90	2025-05-28 08:46:43.09
23859	kinniku29	29	2025-05-28 08:46:43.473
23860	musiko	48	2025-05-28 08:46:43.978
23861	lions-fan1	67	2025-05-28 08:46:44.839
23862	tujiri_01	53	2025-05-28 08:46:50.103
23863	shishamo	132	2025-05-28 08:46:52.362
23864	kuri-sou1	60	2025-05-28 08:46:56.086
23865	tya-han_04	29	2025-05-28 08:47:01.402
23866	sa-sa_0127	61	2025-05-28 08:47:07.069
23867	kaxejn1	107	2025-05-28 08:47:08.274
23868	mikyu397	36	2025-05-28 08:47:10.306
23869	kassy_0531	43	2025-05-28 08:47:10.557
23870	knt_07	37	2025-05-28 08:47:11.68
23871	axvo4241	14	2025-05-28 08:47:11.948
23872	waku1waku2	58	2025-05-28 08:47:19.563
23873	axvo5145	0	2025-05-28 08:47:20.584
23874	jo_07-18	35	2025-05-28 08:47:21.556
23875	fuuta_s	82	2025-05-28 08:47:25.021
23876	kfc055	26	2025-05-28 08:47:30.044
23877	shirogane	59	2025-05-28 08:47:30.144
23878	posting	0	2025-05-28 08:47:30.357
23879	ha-ruto_00	49	2025-05-28 08:47:32.197
23880	agdh6537	24	2025-05-28 08:47:35.375
23881	yes_eo080	60	2025-05-28 08:47:35.532
23882	kiyodai	98	2025-05-28 08:47:35.795
23883	usshi-	72	2025-05-28 08:47:39.727
23884	mi-01_28	95	2025-05-28 08:47:44.464
23885	shimo1225	73	2025-05-28 08:47:45.443
23886	haru-714	40	2025-05-28 08:47:46.075
23887	musiko	28	2025-05-28 08:47:47.446
23888	shishamo	91	2025-05-28 08:47:47.889
23889	lions-fan1	51	2025-05-28 08:47:49.837
23890	tujiri_01	55	2025-05-28 08:47:52.224
23891	atomic	0	2025-05-28 08:47:57.358
23892	kinniku29	27	2025-05-28 08:47:58.452
23893	hibiki-118	55	2025-05-28 08:48:00.465
23894	tya-han_04	75	2025-05-28 08:48:03.035
23895	taiga228	68	2025-05-28 08:48:03.18
23896	auct1718	37	2025-05-28 08:48:06.923
23897	kuri-sou1	58	2025-05-28 08:48:06.925
23898	sa-sa_0127	55	2025-05-28 08:48:07.86
23899	akitennis	64	2025-05-28 08:48:08.202
23900	axvo4241	41	2025-05-28 08:48:15.037
23901	knt_07	68	2025-05-28 08:48:15.561
23902	ishumi	47	2025-05-28 08:48:21.037
23903	waku1waku2	66	2025-05-28 08:48:22.534
23904	italia_lia	111	2025-05-28 08:48:26.073
23905	shimo1225	100	2025-05-28 08:48:28.765
23906	fuuta_s	38	2025-05-28 08:48:28.978
23907	kou-1603	47	2025-05-28 08:48:29.193
23908	italia_lia	106	2025-05-28 08:48:29.624
23909	italia_lia	105	2025-05-28 08:48:30.916
23910	mikyu397	79	2025-05-28 08:48:31.324
23911	kfc055	47	2025-05-28 08:48:32.227
23912	shirogane	78	2025-05-28 08:48:33.098
23913	kaxejn1	111	2025-05-28 08:48:34.248
23914	ha-ruto_00	28	2025-05-28 08:48:34.655
23915	kaxejn1	110	2025-05-28 08:48:34.924
23916	axvo5145	36	2025-05-28 08:48:35.24
23917	yes_eo080	116	2025-05-28 08:48:36.187
23918	posting	85	2025-05-28 08:48:38.035
23919	kiyodai	77	2025-05-28 08:48:38.366
23920	imora1107	74	2025-05-28 08:48:38.421
23921	agdh6537	68	2025-05-28 08:48:39.265
23922	kassy_0531	49	2025-05-28 08:48:42.33
23923	usshi-	41	2025-05-28 08:48:43.891
23924	sum-lov_13	89	2025-05-28 08:48:47.542
23925	mi-01_28	54	2025-05-28 08:48:48.169
23926	shishamo	75	2025-05-28 08:48:50.811
23927	lions-fan1	88	2025-05-28 08:48:51.922
23928	musiko	38	2025-05-28 08:48:54.968
23929	atomic	55	2025-05-28 08:48:59.489
23930	kyama10_	33	2025-05-28 08:49:00.075
23931	patinca-nu	49	2025-05-28 08:49:02.829
23932	tujiri_01	64	2025-05-28 08:49:04.983
23933	waku1waku2	111	2025-05-28 08:49:05.002
23934	tya-han_04	24	2025-05-28 08:49:07.889
23935	kinniku29	59	2025-05-28 08:49:10.672
23936	taiga228	63	2025-05-28 08:49:11.729
23937	hibiki-118	56	2025-05-28 08:49:14.341
23938	sa-sa_0127	52	2025-05-28 08:49:14.912
23939	axvo4241	91	2025-05-28 08:49:21.556
23940	jo_07-18	59	2025-05-28 08:49:24.293
23941	ishumi	56	2025-05-28 08:49:24.875
23942	okiku_0408	54	2025-05-28 08:49:26.325
23943	daisuke	61	2025-05-28 08:49:27.283
23944	kou-1603	85	2025-05-28 08:49:31.898
23945	fuuta_s	33	2025-05-28 08:49:32.242
23946	kfc055	36	2025-05-28 08:49:35.241
23947	mikyu397	27	2025-05-28 08:49:35.973
23948	knt_07	111	2025-05-28 08:49:36.076
23949	ha-ruto_00	67	2025-05-28 08:49:36.33
23950	shimo1225	69	2025-05-28 08:49:37.487
23951	knt_07	110	2025-05-28 08:49:37.708
23952	shirogane	31	2025-05-28 08:49:38.129
23953	imora1107	60	2025-05-28 08:49:39.727
23954	yes_eo080	56	2025-05-28 08:49:39.751
23955	kiyodai	54	2025-05-28 08:49:40.236
23956	akitennis	85	2025-05-28 08:49:41.622
23957	agdh6537	44	2025-05-28 08:49:42.947
23958	kuri-sou1	57	2025-05-28 08:49:48.199
23959	auct1718	40	2025-05-28 08:49:48.201
23960	usshi-	61	2025-05-28 08:49:48.62
23961	kassy_0531	42	2025-05-28 08:49:51.804
23962	posting	64	2025-05-28 08:49:52.417
23964	kaxejn1	110	2025-05-28 08:49:55.877
23966	axvo5145	23	2025-05-28 08:49:59.182
23970	patinca-nu	41	2025-05-28 08:50:06.838
23971	waku1waku2	65	2025-05-28 08:50:08.675
23974	tya-han_04	47	2025-05-28 08:50:10.795
23982	shimo1225	74	2025-05-28 08:50:24.999
23994	aritomo	9	2025-05-28 08:50:42.415
24002	tyankonabe	66	2025-05-28 08:50:51.693
24003	sa-sa_0127	78	2025-05-28 08:50:54.948
24004	usshi-	66	2025-05-28 08:50:54.955
24005	axvo5145	32	2025-05-28 08:50:56.308
24007	vertin15	42	2025-05-28 08:50:59.121
24028	axvo4241	55	2025-05-28 08:51:26.833
24046	kaxejn1	110	2025-05-28 08:51:50.98
24047	sa-sa_0127	35	2025-05-28 08:51:56.911
24055	inu255-12	34	2025-05-28 08:52:03.912
24056	mikyu397	50	2025-05-28 08:52:07.251
24057	usshi-	76	2025-05-28 08:52:11.076
24058	aaaaa	55	2025-05-28 08:52:11.688
24059	kota_07-15	77	2025-05-28 08:52:14.065
24061	waku1waku2	55	2025-05-28 08:52:16.196
24062	aritomo	0	2025-05-28 08:52:17.191
23963	kaxejn1	111	2025-05-28 08:49:54.12
23967	lions-fan1	74	2025-05-28 08:50:01.539
23968	aaaaa	20	2025-05-28 08:50:04.693
23969	shishamo	102	2025-05-28 08:50:05.774
23973	ri8_hoon-	54	2025-05-28 08:50:10.72
23975	sum-lov_13	112	2025-05-28 08:50:11.14
23976	kinniku29	19	2025-05-28 08:50:13.826
23977	musiko	112	2025-05-28 08:50:17.914
23981	axvo4241	17	2025-05-28 08:50:21.915
23984	jo_07-18	0	2025-05-28 08:50:29.134
23985	kaxejn1	138	2025-05-28 08:50:29.468
23986	daisuke	76	2025-05-28 08:50:29.781
23990	kfc055	56	2025-05-28 08:50:37.146
23992	m0gu	3	2025-05-28 08:50:38.884
23996	italia_lia	93	2025-05-28 08:50:45.071
23998	agdh6537	67	2025-05-28 08:50:46.191
24001	kuri-sou1	37	2025-05-28 08:50:51.642
24006	shirogane	55	2025-05-28 08:50:57.579
24009	aaaaa	34	2025-05-28 08:51:07.564
24011	shishamo	81	2025-05-28 08:51:08.303
24013	kota_07-15	24	2025-05-28 08:51:11.858
24014	waku1waku2	67	2025-05-28 08:51:13.302
24016	tya-han_04	30	2025-05-28 08:51:15.206
24017	patinca-nu	61	2025-05-28 08:51:16.102
24018	kinniku29	25	2025-05-28 08:51:17.552
24021	imora1107	49	2025-05-28 08:51:19.751
24023	okiku_0408	88	2025-05-28 08:51:19.961
24024	knt_07	73	2025-05-28 08:51:22.385
24029	haru-714	51	2025-05-28 08:51:27.517
24030	posting	89	2025-05-28 08:51:27.942
24031	daisuke	87	2025-05-28 08:51:32.892
24033	hibiki-118	74	2025-05-28 08:51:37.715
24034	ishumi	70	2025-05-28 08:51:38.421
24036	tyanpo-n88	31	2025-05-28 08:51:39.178
24037	fuuta_s	53	2025-05-28 08:51:39.284
24041	kiyodai	62	2025-05-28 08:51:45.205
24043	yes_eo080	35	2025-05-28 08:51:50.053
24045	kaxejn1	111	2025-05-28 08:51:50.558
24048	italia_lia	67	2025-05-28 08:51:57.125
24050	axvo5145	43	2025-05-28 08:51:57.604
24052	shirogane	65	2025-05-28 08:51:59.91
24053	vertin15	82	2025-05-28 08:52:01.099
24054	vertin15	81	2025-05-28 08:52:02.089
23965	vertin15	90	2025-05-28 08:49:55.954
23972	kota_07-15	79	2025-05-28 08:50:09.869
23978	tujiri_01	77	2025-05-28 08:50:18.08
23979	taiga228	66	2025-05-28 08:50:18.786
23980	musiko	110	2025-05-28 08:50:20.356
23983	okiku_0408	60	2025-05-28 08:50:28.134
23987	ishumi	81	2025-05-28 08:50:31.97
23988	yes_eo080	99	2025-05-28 08:50:36.564
23989	fuuta_s	42	2025-05-28 08:50:36.73
23991	hibiki-118	78	2025-05-28 08:50:37.846
23993	ha-ruto_00	57	2025-05-28 08:50:39.237
23995	kiyodai	53	2025-05-28 08:50:43.241
23997	mikyu397	32	2025-05-28 08:50:46.097
23999	akitennis	83	2025-05-28 08:50:46.898
24000	posting	98	2025-05-28 08:50:47.911
24008	inu255-12	38	2025-05-28 08:51:02.709
24010	lions-fan1	63	2025-05-28 08:51:07.631
24012	shudo-220_	63	2025-05-28 08:51:11.757
24015	yuudai1201	61	2025-05-28 08:51:13.576
24019	shimo1225	87	2025-05-28 08:51:17.845
24020	otsukisama	38	2025-05-28 08:51:19.192
24022	mi-01_28	58	2025-05-28 08:51:19.901
24025	auct1718	61	2025-05-28 08:51:22.791
24026	tujiri_01	59	2025-05-28 08:51:23.3
24027	kochi	29	2025-05-28 08:51:26.086
24032	jo_07-18	12	2025-05-28 08:51:34.781
24035	taiga228	48	2025-05-28 08:51:38.775
24038	kfc055	39	2025-05-28 08:51:40.32
24039	ha-ruto_00	37	2025-05-28 08:51:41.302
24040	tyankonabe	111	2025-05-28 08:51:42.905
24042	aritomo	38	2025-05-28 08:51:48
24044	agdh6537	67	2025-05-28 08:51:50.409
24049	kuri-sou1	78	2025-05-28 08:51:57.565
24051	musiko	47	2025-05-28 08:51:58.892
24060	shudo-220_	54	2025-05-28 08:52:15.943
24063	imora1107	0	2025-05-28 08:52:21.671
24064	shishamo	83	2025-05-28 08:52:21.765
24065	shishamo	82	2025-05-28 08:52:21.785
24066	lions-fan1	59	2025-05-28 08:52:22.424
24067	m0gu	9	2025-05-28 08:52:24.003
24068	shimo1225	48	2025-05-28 08:52:24.43
24069	otsukisama	57	2025-05-28 08:52:27.48
24070	miyu_0913	91	2025-05-28 08:52:28.29
24071	knt_07	53	2025-05-28 08:52:31.284
24072	kochi	46	2025-05-28 08:52:33.515
24073	akitennis	66	2025-05-28 08:52:35.428
24074	daisuke	43	2025-05-28 08:52:35.611
24075	kiyodai	62	2025-05-28 08:52:37.863
24076	tyanpo-n88	78	2025-05-28 08:52:42.003
24077	fuuta_s	55	2025-05-28 08:52:42.553
24078	ha-ruto_00	45	2025-05-28 08:52:43.594
24079	yukiflcx	56	2025-05-28 08:52:45.129
24080	kfc055	0	2025-05-28 08:52:59.478
24081	musiko	64	2025-05-28 08:53:01.237
24082	shirogane	59	2025-05-28 08:53:02.98
24083	posting	14	2025-05-28 08:53:04.347
24084	inu255-12	39	2025-05-28 08:53:06.455
24085	yes_eo080	79	2025-05-28 08:53:07.821
24086	miyu_0913	126	2025-05-28 08:53:13.897
24087	tyanpo-n88	52	2025-05-28 08:53:42.627
24088	mt_bird	105	2025-05-28 08:53:50.229
24089	yes_eo080	111	2025-05-28 08:54:12.719
24090	yes_eo080	110	2025-05-28 08:54:15.101
24091	miyu_0913	40	2025-05-28 08:54:16.558
24092	mt_bird	120	2025-05-28 08:54:42.973
24093	shirogane	25	2025-05-28 08:54:50.885
24094	mt_bird	130	2025-05-28 08:55:26.814
24095	yukiflcx	74	2025-05-28 08:55:30.401
24096	masatoshi	14	2025-05-28 08:55:37.732
24097	kyama10_	119	2025-05-28 09:10:13.164
24098	lions-fan1	60	2025-06-11 08:41:49.608
24099	kyama10_	69	2025-06-11 08:41:52.269
24100	mi-01_28	43	2025-06-11 08:41:53.99
24101	waku1waku2	79	2025-06-11 08:42:20.172
24102	lions-fan1	63	2025-06-11 08:42:53.183
24103	kyama10_	58	2025-06-11 08:42:54.932
24104	haruuu4	60	2025-06-11 08:42:56.684
24105	mi-01_28	15	2025-06-11 08:42:59.404
24106	waku1waku2	105	2025-06-11 08:43:00.244
24107	vertin15	26	2025-06-11 08:43:15.59
24108	musiko	100	2025-06-11 08:43:17.058
24109	tujiri_01	62	2025-06-11 08:43:26.856
24110	usshi-	70	2025-06-11 08:43:44.393
24111	kfc055	39	2025-06-11 08:43:48.376
24112	tya-han_04	15	2025-06-11 08:43:53.212
24113	lions-fan1	73	2025-06-11 08:43:55.654
24114	kyama10_	64	2025-06-11 08:43:58.468
24115	waku1waku2	57	2025-06-11 08:44:02.303
24116	mi-01_28	49	2025-06-11 08:44:02.921
24117	sa-sa_0127	36	2025-06-11 08:44:06.745
24118	kassy_0531	61	2025-06-11 08:44:10.143
24119	posting	56	2025-06-11 08:44:11.376
24120	haruuu4	50	2025-06-11 08:44:12.098
24121	axvo5145	54	2025-06-11 08:44:15.451
24122	shirogane	43	2025-06-11 08:44:18.126
24123	vertin15	67	2025-06-11 08:44:18.456
24124	musiko	31	2025-06-11 08:44:20.827
24125	tujiri_01	96	2025-06-11 08:44:28.434
24126	satohina13	46	2025-06-11 08:44:36.655
24127	yuudai1201	53	2025-06-11 08:44:37.92
24128	usshi-	64	2025-06-11 08:44:48.127
24129	kuri-sou1	68	2025-06-11 08:44:57.774
24130	lions-fan1	57	2025-06-11 08:45:02.737
24131	kfc055	11	2025-06-11 08:45:03.27
24132	jo_07-18	46	2025-06-11 08:45:04.39
24133	vertin15	90	2025-06-11 08:45:05.099
24134	waku1waku2	73	2025-06-11 08:45:05.874
24135	mi-01_28	18	2025-06-11 08:45:05.94
24136	sa-sa_0127	53	2025-06-11 08:45:08.619
24137	tya-han_04	72	2025-06-11 08:45:19.539
24138	axvo5145	32	2025-06-11 08:45:22.581
24139	posting	67	2025-06-11 08:45:25.711
24140	miyu_0913	75	2025-06-11 08:45:33.724
24141	shirogane	53	2025-06-11 08:45:33.899
24142	waku1waku2	95	2025-06-11 08:45:36.38
24143	musiko	41	2025-06-11 08:45:37.7
24144	yuudai1201	111	2025-06-11 08:45:40.014
24145	fuuta_s	35	2025-06-11 08:45:41.358
24146	yuudai1201	110	2025-06-11 08:45:42.48
24147	atomic	0	2025-06-11 08:45:46.436
24148	usshi-	119	2025-06-11 08:45:50.369
24149	tujiri_01	72	2025-06-11 08:45:53.452
24150	otsukisama	70	2025-06-11 08:46:00.549
24151	kuri-sou1	65	2025-06-11 08:46:04.231
24152	lions-fan1	82	2025-06-11 08:46:04.586
24153	shimo1225	60	2025-06-11 08:46:04.77
24154	kfc055	36	2025-06-11 08:46:05.309
24155	hibiki-118	91	2025-06-11 08:46:05.328
24156	jo_07-18	17	2025-06-11 08:46:05.869
24157	sa-sa_0127	53	2025-06-11 08:46:10.26
24158	tya-han_04	44	2025-06-11 08:46:20.685
24159	haruuu4	41	2025-06-11 08:46:22.81
24160	axvo5145	44	2025-06-11 08:46:27.315
24161	shudo-220_	72	2025-06-11 08:46:28.503
24162	italia_lia	46	2025-06-11 08:46:28.777
24163	posting	62	2025-06-11 08:46:29.952
24164	satohina13	41	2025-06-11 08:46:34.836
24165	miyu_0913	52	2025-06-11 08:46:37.395
24166	waku1waku2	66	2025-06-11 08:46:38.979
24167	musiko	63	2025-06-11 08:46:40.712
24168	fuuta_s	29	2025-06-11 08:46:42.754
24169	yuudai1201	36	2025-06-11 08:46:46.576
24170	atomic	25	2025-06-11 08:46:48.357
24171	mi-01_28	95	2025-06-11 08:46:51.786
24174	taiga228	67	2025-06-11 08:47:00.336
24175	axvo4241	33	2025-06-11 08:47:01.916
24177	shimo1225	65	2025-06-11 08:47:08.785
24180	hibiki-118	44	2025-06-11 08:47:16.648
24181	lions-fan1	66	2025-06-11 08:47:17.568
24183	tya-han_04	75	2025-06-11 08:47:22.862
24185	haruuu4	48	2025-06-11 08:47:26.449
24188	waku1waku2	82	2025-06-11 08:47:40.46
24189	waku1waku2	81	2025-06-11 08:47:40.976
24190	musiko	72	2025-06-11 08:47:51.143
24192	shimo1225	94	2025-06-11 08:47:53.416
24193	yuudai1201	66	2025-06-11 08:47:53.619
24198	posting	76	2025-06-11 08:48:08.83
24201	kfc055	38	2025-06-11 08:48:13.462
24202	ishumi	77	2025-06-11 08:48:14.996
24204	jo_07-18	71	2025-06-11 08:48:20.26
24205	usshi-	63	2025-06-11 08:48:20.912
24208	waku1waku2	101	2025-06-11 08:48:23.569
24214	ha-ruto_00	107	2025-06-11 08:48:42.466
24215	kassy_0531	32	2025-06-11 08:48:44.659
24218	ri8_hoon-	41	2025-06-11 08:48:50.167
24219	inu255-12	108	2025-06-11 08:48:51.474
24227	miyu_0913	59	2025-06-11 08:49:12.468
24229	yukiflcx	74	2025-06-11 08:49:13.812
24232	kfc055	72	2025-06-11 08:49:16.355
24233	ishumi	111	2025-06-11 08:49:16.969
24235	ishumi	110	2025-06-11 08:49:17.585
24237	shudo-220_	114	2025-06-11 08:49:19.766
24239	jo_07-18	65	2025-06-11 08:49:22.084
24244	atomic	57	2025-06-11 08:49:27.864
24247	tujiri_01	76	2025-06-11 08:49:39.168
24248	fuuta_s	33	2025-06-11 08:49:39.871
24252	axvo4241	62	2025-06-11 08:49:49.869
24254	inu255-12	43	2025-06-11 08:49:53.974
24260	italia_lia	45	2025-06-11 08:50:04.563
24263	patinca-nu	41	2025-06-11 08:50:08.831
24264	kou-1603	119	2025-06-11 08:50:13.826
24265	papico181	38	2025-06-11 08:50:16.591
24266	ri8_hoon-	5	2025-06-11 08:50:18.253
24268	kfc055	63	2025-06-11 08:50:19.198
24271	lions-fan1	53	2025-06-11 08:50:20.48
24273	shudo-220_	94	2025-06-11 08:50:23.094
24275	taiga228	64	2025-06-11 08:50:26.611
24276	masatoshi	44	2025-06-11 08:50:27.274
24282	hibiki-118	140	2025-06-11 08:50:34.475
24283	otsukisama	75	2025-06-11 08:50:36.077
24286	tujiri_01	62	2025-06-11 08:50:43.531
24287	ha-ruto_00	72	2025-06-11 08:50:47.067
24288	mt_bird	128	2025-06-11 08:50:50.82
24172	sa-sa_0127	128	2025-06-11 08:46:57.264
24173	tujiri_01	58	2025-06-11 08:46:59.266
24176	kuri-sou1	58	2025-06-11 08:47:08.207
24178	kfc055	61	2025-06-11 08:47:08.94
24179	jo_07-18	0	2025-06-11 08:47:14.164
24182	usshi-	53	2025-06-11 08:47:19.578
24184	otsukisama	93	2025-06-11 08:47:25.417
24186	fuuta_s	100	2025-06-11 08:47:34.734
24187	shudo-220_	57	2025-06-11 08:47:35.044
24191	musiko	71	2025-06-11 08:47:52.253
24194	sa-sa_0127	73	2025-06-11 08:47:58.631
24195	tujiri_01	76	2025-06-11 08:47:58.745
24196	mi-01_28	47	2025-06-11 08:47:59.069
24197	haru-714	37	2025-06-11 08:48:00.412
24199	taiga228	55	2025-06-11 08:48:12.25
24200	shishamo	146	2025-06-11 08:48:12.787
24203	lions-fan1	61	2025-06-11 08:48:18.474
24206	hibiki-118	88	2025-06-11 08:48:21.773
24207	satohina13	37	2025-06-11 08:48:21.832
24209	mikyu397	126	2025-06-11 08:48:29.478
24210	haruuu4	32	2025-06-11 08:48:30.511
24211	shudo-220_	61	2025-06-11 08:48:37.596
24212	fuuta_s	48	2025-06-11 08:48:38.007
24213	italia_lia	57	2025-06-11 08:48:40.329
24216	axvo4241	135	2025-06-11 08:48:45.903
24217	tya-han_04	33	2025-06-11 08:48:47.054
24220	shimo1225	93	2025-06-11 08:48:52.31
24221	musiko	57	2025-06-11 08:48:55.824
24222	sa-sa_0127	30	2025-06-11 08:48:59.809
24223	kuri-sou1	42	2025-06-11 08:49:01.766
24224	yuudai1201	33	2025-06-11 08:49:06.592
24225	hibiki-118	107	2025-06-11 08:49:06.642
24226	papico181	46	2025-06-11 08:49:11.372
24228	axvo5145	78	2025-06-11 08:49:13.44
24230	shishamo	124	2025-06-11 08:49:14.778
24231	lions-fan1	116	2025-06-11 08:49:15.356
24234	knt_07	64	2025-06-11 08:49:17.414
24236	kou-1603	46	2025-06-11 08:49:18.937
24238	tyanpo-n88	83	2025-06-11 08:49:19.77
24240	usshi-	81	2025-06-11 08:49:25.199
24241	waku1waku2	38	2025-06-11 08:49:25.952
24242	otsukisama	51	2025-06-11 08:49:26.287
24243	aaaaa	68	2025-06-11 08:49:27.737
24245	mikyu397	101	2025-06-11 08:49:28.154
24246	haruuu4	35	2025-06-11 08:49:33.759
24249	haru-714	37	2025-06-11 08:49:41.006
24250	ha-ruto_00	55	2025-06-11 08:49:45.078
24251	satohina13	17	2025-06-11 08:49:46.918
24253	tya-han_04	54	2025-06-11 08:49:51.522
24255	shimo1225	61	2025-06-11 08:49:54.427
24256	shimo1225	60	2025-06-11 08:49:56.258
24257	hibiki-118	89	2025-06-11 08:50:00.02
24258	sa-sa_0127	41	2025-06-11 08:50:01.722
24259	miyu_0913	122	2025-06-11 08:50:02.683
24261	posting	95	2025-06-11 08:50:05.859
24262	yuudai1201	86	2025-06-11 08:50:08.63
24267	yes_eo080	63	2025-06-11 08:50:18.77
24269	tyanpo-n88	88	2025-06-11 08:50:19.538
24270	knt_07	62	2025-06-11 08:50:19.946
24272	ishumi	63	2025-06-11 08:50:20.568
24274	jo_07-18	60	2025-06-11 08:50:23.576
24277	mikyu397	54	2025-06-11 08:50:29.986
24278	aaaaa	67	2025-06-11 08:50:30.123
24279	waku1waku2	77	2025-06-11 08:50:31.187
24280	usshi-	41	2025-06-11 08:50:32.154
24281	inu255-12	132	2025-06-11 08:50:34.281
24284	haruuu4	34	2025-06-11 08:50:36.428
24285	fuuta_s	34	2025-06-11 08:50:41.905
24289	satohina13	36	2025-06-11 08:50:51.739
24290	tya-han_04	77	2025-06-11 08:50:52.705
24291	kuri-sou1	74	2025-06-11 08:50:53.311
24292	kota_07-15	93	2025-06-11 08:50:57.024
24293	shimo1225	49	2025-06-11 08:50:58.66
24294	kaxejn1	50	2025-06-11 08:51:04.095
24295	sa-sa_0127	20	2025-06-11 08:51:08.619
24296	musiko	33	2025-06-11 08:51:10.84
24297	patinca-nu	52	2025-06-11 08:51:11.094
24298	yuudai1201	58	2025-06-11 08:51:13.658
24299	imora1107	79	2025-06-11 08:51:14.156
24300	posting	69	2025-06-11 08:51:21.867
24301	lions-fan1	78	2025-06-11 08:51:22.532
24302	ishumi	46	2025-06-11 08:51:22.809
24303	jo_07-18	67	2025-06-11 08:51:26.266
24304	shudo-220_	45	2025-06-11 08:51:26.469
24305	jo_07-18	66	2025-06-11 08:51:27.718
24306	knt_07	49	2025-06-11 08:51:30.177
24307	gyt4-3_24	45	2025-06-11 08:51:32.313
24308	waku1waku2	84	2025-06-11 08:51:32.854
24309	auct1718	14	2025-06-11 08:51:33.795
24310	waku1waku2	83	2025-06-11 08:51:34.245
24311	aaaaa	35	2025-06-11 08:51:34.502
24312	inu255-12	38	2025-06-11 08:51:38.992
24313	mt_bird	93	2025-06-11 08:51:40.431
24314	usshi-	111	2025-06-11 08:51:41.827
24315	usshi-	110	2025-06-11 08:51:42.482
24316	fuuta_s	50	2025-06-11 08:51:44.162
24317	haruuu4	26	2025-06-11 08:51:48.765
24318	mi-01_28	20	2025-06-11 08:51:52.145
24319	imora1107	133	2025-06-11 08:51:54.558
24320	tya-han_04	83	2025-06-11 08:51:56.038
24321	shimo1225	79	2025-06-11 08:51:57.93
24322	kota_07-15	84	2025-06-11 08:51:59.186
24323	kinniku29	0	2025-06-11 08:52:06.417
24324	yes_eo080	111	2025-06-11 08:52:09.642
24325	yes_eo080	110	2025-06-11 08:52:10.936
24326	tyanpo-n88	42	2025-06-11 08:52:11.028
24327	musiko	88	2025-06-11 08:52:12.294
24328	m0gu	88	2025-06-11 08:52:14.386
24329	kochi	31	2025-06-11 08:52:19.872
24330	yukiflcx	73	2025-06-11 08:52:22.839
24331	lions-fan1	96	2025-06-11 08:52:24.826
24332	mt_bird	87	2025-06-11 08:52:32.5
24333	mt_bird	85	2025-06-11 08:52:32.698
24334	mt_bird	82	2025-06-11 08:52:32.886
24335	mt_bird	79	2025-06-11 08:52:33.242
24336	ri8_hoon-	1	2025-06-11 08:52:33.939
24337	mt_bird	118	2025-06-11 08:52:34.391
24338	tujiri_01	44	2025-06-11 08:52:40.828
24339	inu255-12	12	2025-06-11 08:52:42.448
24340	fuuta_s	40	2025-06-11 08:52:48.533
24341	okiku_0408	90	2025-06-11 08:52:55.832
24342	daisuke	52	2025-06-11 08:52:58.66
24343	tyanpo-n88	106	2025-06-11 08:52:59.892
24344	gyt4-3_24	12	2025-06-11 08:53:00.752
24345	knt_07	75	2025-06-11 08:53:05.329
24346	kinniku29	20	2025-06-11 08:53:11.568
24347	yes_eo080	70	2025-06-11 08:53:12.831
24348	inu255-12	84	2025-06-11 08:53:43.495
24349	fuuta_s	47	2025-06-11 08:53:51.424
24350	tujiri_01	63	2025-06-11 08:53:52.979
24351	aritomo	29	2025-06-11 08:54:01.461
24352	daisuke	43	2025-06-11 08:54:01.507
24353	tyanpo-n88	42	2025-06-11 08:54:03.393
24354	posting	97	2025-06-11 08:54:04.326
24355	kinniku29	40	2025-06-11 08:54:15.054
24356	yes_eo080	130	2025-06-11 08:54:22.683
24357	knt_07	89	2025-06-11 08:54:31.319
24358	fuuta_s	60	2025-06-11 08:54:54.475
24359	posting	80	2025-06-11 08:55:10.456
24360	tujiri_01	81	2025-06-11 08:55:24.607
24361	aritomo	23	2025-06-11 08:55:28.547
24362	hitomi0413	0	2025-06-11 08:56:01.317
24363	hkimura	93	2025-06-18 08:48:48.132
24364	usshi-	111	2025-06-25 08:41:14.91
24365	usshi-	110	2025-06-25 08:41:15.641
24366	otsukisama	100	2025-06-25 08:41:19.014
24367	yuudai1201	37	2025-06-25 08:41:23.36
24368	mi-01_28	135	2025-06-25 08:41:27.021
24369	vertin15	79	2025-06-25 08:41:30.24
24370	waku1waku2	40	2025-06-25 08:41:41.134
24371	lions-fan1	94	2025-06-25 08:41:50.416
24372	axvo5145	71	2025-06-25 08:42:03.514
24373	hibiki-118	90	2025-06-25 08:42:18.004
24374	usshi-	83	2025-06-25 08:42:19.114
24375	otsukisama	73	2025-06-25 08:42:21.437
24376	yuudai1201	41	2025-06-25 08:42:25.869
24377	mi-01_28	68	2025-06-25 08:42:32.196
24378	vertin15	79	2025-06-25 08:42:32.681
24379	kiyodai	34	2025-06-25 08:42:36.106
24380	waku1waku2	66	2025-06-25 08:42:43.076
24381	lions-fan1	85	2025-06-25 08:42:54.539
24382	otsukisama	139	2025-06-25 08:42:58.475
24383	axvo5145	76	2025-06-25 08:43:06.173
24384	kyama10_	28	2025-06-25 08:43:10.581
24385	akitennis	105	2025-06-25 08:43:10.74
24386	kuri-sou1	55	2025-06-25 08:43:20.884
24387	usshi-	66	2025-06-25 08:43:23.613
24388	yuudai1201	57	2025-06-25 08:43:27.569
24389	jo_07-18	36	2025-06-25 08:43:31.027
24390	kiyodai	29	2025-06-25 08:43:37.941
24391	waku1waku2	55	2025-06-25 08:43:44.57
24392	hibiki-118	76	2025-06-25 08:43:49.82
24393	lions-fan1	67	2025-06-25 08:43:56.001
24394	akitennis	94	2025-06-25 08:44:14.701
24395	shudo-220_	62	2025-06-25 08:44:20.564
24396	axvo5145	40	2025-06-25 08:44:23.094
24397	usshi-	82	2025-06-25 08:44:25.541
24398	hibiki-118	133	2025-06-25 08:44:30.401
24399	yuudai1201	51	2025-06-25 08:44:31.275
24400	jo_07-18	45	2025-06-25 08:44:33.66
24401	tya-han_04	75	2025-06-25 08:44:35.869
24402	kiyodai	55	2025-06-25 08:44:40.015
24403	kuri-sou1	43	2025-06-25 08:44:45.052
24404	waku1waku2	81	2025-06-25 08:44:45.284
24405	lions-fan1	75	2025-06-25 08:44:58.658
24406	shudo-220_	54	2025-06-25 08:45:26.476
24407	waku1waku2	106	2025-06-25 08:45:28.067
24408	lions-fan1	83	2025-06-25 08:46:00.317
24409	satohina13	12	2025-06-25 08:46:02.747
24410	mi-01_28	70	2025-06-25 08:46:06.859
24411	kinniku29	53	2025-06-25 08:46:23.33
24412	akitennis	118	2025-06-25 08:46:27.634
24413	usshi-	58	2025-06-25 08:46:39.559
24414	hibiki-118	115	2025-06-25 08:46:45.37
24415	otsukisama	84	2025-06-25 08:46:52.024
24416	jo_07-18	44	2025-06-25 08:46:52.791
24417	kfc055	39	2025-06-25 08:46:54.237
24418	shimo1225	89	2025-06-25 08:46:55.692
24419	ha-ruto_00	56	2025-06-25 08:46:59.434
24420	hibiki-118	116	2025-06-25 08:47:14.904
24421	kyama10_	53	2025-06-25 08:47:20.101
24422	waku1waku2	96	2025-06-25 08:47:21.33
24423	axvo5145	116	2025-06-25 08:47:23.098
24424	akitennis	20	2025-06-25 08:47:32.908
24425	tya-han_04	43	2025-06-25 08:47:34.325
24426	shimo1225	94	2025-06-25 08:47:38.613
24427	usshi-	52	2025-06-25 08:47:45.876
24428	kiyodai	51	2025-06-25 08:47:46.137
24429	sa-sa_0127	118	2025-06-25 08:47:47.36
24430	shudo-220_	70	2025-06-25 08:47:48.433
24431	lions-fan1	64	2025-06-25 08:47:50.042
24432	otsukisama	56	2025-06-25 08:47:58.14
24433	ha-ruto_00	88	2025-06-25 08:48:01.466
24434	shirogane	0	2025-06-25 08:48:05.916
24435	kuri-sou1	71	2025-06-25 08:48:08.305
24436	kfc055	0	2025-06-25 08:48:10.785
24437	yukiflcx	68	2025-06-25 08:48:11.727
24438	haruuu4	39	2025-06-25 08:48:17.173
24439	shimo1225	102	2025-06-25 08:48:19.613
24440	hibiki-118	79	2025-06-25 08:48:22.358
24441	waku1waku2	66	2025-06-25 08:48:23.076
24442	knt_07	53	2025-06-25 08:48:24.042
24443	patinca-nu	51	2025-06-25 08:48:29.813
24444	akitennis	40	2025-06-25 08:48:37.213
24445	jo_07-18	53	2025-06-25 08:48:38.313
24446	taiga228	43	2025-06-25 08:48:41.108
24447	hitomi0413	57	2025-06-25 08:48:44.042
24448	sum-lov_13	83	2025-06-25 08:48:44.676
24449	shudo-220_	51	2025-06-25 08:48:49.5
24450	sa-sa_0127	47	2025-06-25 08:48:49.562
24451	usshi-	58	2025-06-25 08:48:49.859
24452	aaaaa	56	2025-06-25 08:48:54.489
24453	tya-han_04	73	2025-06-25 08:48:54.599
24454	lions-fan1	65	2025-06-25 08:48:55.638
24455	otsukisama	86	2025-06-25 08:48:59.743
24456	ha-ruto_00	58	2025-06-25 08:49:03.102
24457	mikyu397	33	2025-06-25 08:49:03.755
24458	kuri-sou1	93	2025-06-25 08:49:07.492
24459	yuudai1201	49	2025-06-25 08:49:13.633
24460	yukiflcx	58	2025-06-25 08:49:15.673
24461	shirogane	30	2025-06-25 08:49:15.99
24462	haruuu4	70	2025-06-25 08:49:19.684
24463	kfc055	27	2025-06-25 08:49:22.995
24464	shimo1225	75	2025-06-25 08:49:23.466
24465	waku1waku2	51	2025-06-25 08:49:25.109
24466	satohina13	4	2025-06-25 08:49:25.114
24467	shimo1225	73	2025-06-25 08:49:25.166
24468	ri8_hoon-	25	2025-06-25 08:49:26.55
24469	knt_07	91	2025-06-25 08:49:27.662
24470	knt_07	90	2025-06-25 08:49:28.528
24471	hibiki-118	74	2025-06-25 08:49:33.706
24472	akitennis	77	2025-06-25 08:49:41.952
24473	jo_07-18	88	2025-06-25 08:49:42.057
24474	patinca-nu	49	2025-06-25 08:49:45.561
24475	taiga228	51	2025-06-25 08:49:46.452
24476	sum-lov_13	110	2025-06-25 08:49:47.64
24477	okiku_0408	74	2025-06-25 08:49:49.793
24478	hitomi0413	65	2025-06-25 08:49:50.317
24479	atomic	63	2025-06-25 08:49:50.454
24480	sa-sa_0127	53	2025-06-25 08:49:50.459
24481	lions-fan1	77	2025-06-25 08:49:57.818
24482	tya-han_04	66	2025-06-25 08:49:58.889
24483	usshi-	48	2025-06-25 08:50:00.445
24484	ha-ruto_00	51	2025-06-25 08:50:03.495
24485	kiyodai	0	2025-06-25 08:50:06.096
24486	shudo-220_	83	2025-06-25 08:50:07
24487	kuri-sou1	63	2025-06-25 08:50:10.511
24488	hibiki-118	117	2025-06-25 08:50:10.636
24489	mikyu397	43	2025-06-25 08:50:11.786
24490	inu255-12	56	2025-06-25 08:50:14.374
24491	kaxejn1	134	2025-06-25 08:50:21.832
24492	kaxejn1	130	2025-06-25 08:50:21.941
24493	auct1718	23	2025-06-25 08:50:24.324
24494	kfc055	35	2025-06-25 08:50:25.424
24495	haruuu4	82	2025-06-25 08:50:26.629
24496	waku1waku2	56	2025-06-25 08:50:27.288
24497	ishumi	64	2025-06-25 08:50:28.973
24498	shimo1225	71	2025-06-25 08:50:29.9
24499	aritomo	0	2025-06-25 08:50:30.108
24500	shimo1225	70	2025-06-25 08:50:30.618
24501	tyanpo-n88	73	2025-06-25 08:50:31.543
24502	ri8_hoon-	58	2025-06-25 08:50:34.741
24503	yuudai1201	103	2025-06-25 08:50:46.511
24504	jo_07-18	35	2025-06-25 08:50:48.113
24505	akitennis	54	2025-06-25 08:50:48.38
24506	jo_07-18	34	2025-06-25 08:50:48.949
24507	hitomi0413	133	2025-06-25 08:50:49.685
24510	inu255-12	133	2025-06-25 08:50:54.437
24511	aaaaa	37	2025-06-25 08:50:55.02
24518	shudo-220_	47	2025-06-25 08:51:14.372
24520	mikyu397	36	2025-06-25 08:51:15.527
24522	kuri-sou1	89	2025-06-25 08:51:24.603
24524	kfc055	39	2025-06-25 08:51:28.509
24526	haruuu4	27	2025-06-25 08:51:30.123
24530	kou-1603	74	2025-06-25 08:51:34.946
24532	aritomo	62	2025-06-25 08:51:35.748
24533	ishumi	67	2025-06-25 08:51:36.402
24534	tyanpo-n88	44	2025-06-25 08:51:37.255
24535	yukiflcx	66	2025-06-25 08:51:39.078
24536	papico181	75	2025-06-25 08:51:42.642
24538	posting	72	2025-06-25 08:51:45.845
24539	sa-sa_0127	57	2025-06-25 08:51:53.813
24540	kinniku29	24	2025-06-25 08:51:55.54
24544	kaxejn1	135	2025-06-25 08:51:58.821
24545	shishamo	143	2025-06-25 08:51:58.99
24546	kaxejn1	130	2025-06-25 08:51:59.07
24547	tyankonabe	68	2025-06-25 08:52:01.69
24548	lions-fan1	128	2025-06-25 08:52:03.889
24549	haru-714	26	2025-06-25 08:52:04.303
24551	ha-ruto_00	56	2025-06-25 08:52:08.499
24552	fuuta_s	48	2025-06-25 08:52:10.284
24553	papico181	143	2025-06-25 08:52:13.037
24559	gyt4-3_24	42	2025-06-25 08:52:38.347
24560	yukiflcx	80	2025-06-25 08:52:41.48
24561	imora1107	26	2025-06-25 08:52:42.829
24567	inu255-12	49	2025-06-25 08:52:58.079
24568	waku1waku2	83	2025-06-25 08:52:58.92
24569	yes_eo080	89	2025-06-25 08:53:00.108
24570	posting	65	2025-06-25 08:53:01.947
24572	aritomo	47	2025-06-25 08:53:05.087
24576	m0gu	50	2025-06-25 08:53:17.496
24578	musiko	75	2025-06-25 08:53:34.94
24581	kota_07-15	19	2025-06-25 08:53:51.593
24582	tujiri_01	113	2025-06-25 08:53:52.193
24585	inu255-12	48	2025-06-25 08:54:01.534
24588	gyt4-3_24	21	2025-06-25 08:54:06.252
24593	musiko	17	2025-06-25 08:54:36.123
24595	yukiflcx	118	2025-06-25 08:55:05.641
24596	tujiri_01	83	2025-06-25 08:55:05.659
24597	italia_lia	71	2025-06-25 08:55:11.876
24598	kfc055	22	2025-06-25 08:55:24.05
24599	fuuta_s	47	2025-06-25 08:55:29.277
24600	tyankonabe	57	2025-06-25 08:55:32.511
24602	kaxejn1	95	2025-06-25 08:55:34.941
24604	posting	38	2025-06-25 08:55:48.058
24508	kinniku29	0	2025-06-25 08:50:52.179
24509	sa-sa_0127	34	2025-06-25 08:50:52.686
24512	tyankonabe	25	2025-06-25 08:50:56.887
24513	satohina13	20	2025-06-25 08:50:58.918
24514	ha-ruto_00	91	2025-06-25 08:51:06.99
24515	kiyodai	59	2025-06-25 08:51:09.249
24516	atomic	41	2025-06-25 08:51:10.929
24517	tujiri_01	86	2025-06-25 08:51:11.427
24519	lions-fan1	74	2025-06-25 08:51:14.863
24521	shimo1225	59	2025-06-25 08:51:23.231
24523	shishamo	60	2025-06-25 08:51:25.995
24525	waku1waku2	81	2025-06-25 08:51:28.841
24527	musiko	80	2025-06-25 08:51:30.557
24528	patinca-nu	48	2025-06-25 08:51:30.981
24529	tya-han_04	29	2025-06-25 08:51:31.186
24531	usshi-	89	2025-06-25 08:51:35.524
24537	jo_07-18	104	2025-06-25 08:51:42.955
24541	aaaaa	41	2025-06-25 08:51:56.453
24542	inu255-12	70	2025-06-25 08:51:56.626
24543	axvo4241	72	2025-06-25 08:51:58.458
24550	satohina13	19	2025-06-25 08:52:04.759
24554	mikyu397	33	2025-06-25 08:52:19.371
24555	tujiri_01	73	2025-06-25 08:52:22.488
24556	kou-1603	99	2025-06-25 08:52:27.763
24557	usshi-	119	2025-06-25 08:52:32.805
24558	musiko	54	2025-06-25 08:52:33.543
24562	kota_07-15	0	2025-06-25 08:52:49.02
24563	ri8_hoon-	61	2025-06-25 08:52:49.867
24564	tyanpo-n88	73	2025-06-25 08:52:51.522
24565	jo_07-18	86	2025-06-25 08:52:52.639
24566	italia_lia	58	2025-06-25 08:52:54.978
24571	patinca-nu	78	2025-06-25 08:53:03.813
24573	fuuta_s	42	2025-06-25 08:53:12.518
24574	tyankonabe	53	2025-06-25 08:53:15.594
24575	miyu_0913	73	2025-06-25 08:53:16.17
24577	kfc055	49	2025-06-25 08:53:20.43
24579	yukiflcx	96	2025-06-25 08:53:37.957
24580	kaxejn1	126	2025-06-25 08:53:51.134
24583	jo_07-18	85	2025-06-25 08:53:55.58
24584	aritomo	82	2025-06-25 08:53:57.031
24586	yes_eo080	47	2025-06-25 08:54:03.705
24587	italia_lia	31	2025-06-25 08:54:04.23
24589	mt_bird	105	2025-06-25 08:54:14.263
24590	fuuta_s	42	2025-06-25 08:54:15.302
24591	posting	74	2025-06-25 08:54:21.703
24592	kfc055	34	2025-06-25 08:54:22.409
24594	inu255-12	54	2025-06-25 08:55:03.202
24601	aritomo	30	2025-06-25 08:55:33.337
24603	musiko	32	2025-06-25 08:55:37.953
24605	miyu_0913	67	2025-06-25 08:55:52.781
24606	inu255-12	48	2025-06-25 08:56:06.135
24607	lions-fan1	78	2025-07-02 08:41:58.367
24608	usshi-	73	2025-07-02 08:42:12.924
24609	sa-sa_0127	32	2025-07-02 08:42:24.614
24610	hibiki-118	76	2025-07-02 08:42:59.476
24611	lions-fan1	69	2025-07-02 08:43:00.16
24612	tya-han_04	64	2025-07-02 08:43:22.645
24613	sa-sa_0127	49	2025-07-02 08:43:26.201
24614	waku1waku2	51	2025-07-02 08:43:34.459
24615	usshi-	47	2025-07-02 08:43:35.184
24616	tujiri_01	74	2025-07-02 08:43:44.289
24617	posting	126	2025-07-02 08:43:50.205
24618	hibiki-118	100	2025-07-02 08:43:57.479
24619	lions-fan1	71	2025-07-02 08:44:02.196
24620	shirogane	118	2025-07-02 08:44:04.162
24621	kochi	27	2025-07-02 08:44:23.179
24622	akitennis	32	2025-07-02 08:44:25.112
24623	tya-han_04	65	2025-07-02 08:44:27.397
24624	sa-sa_0127	42	2025-07-02 08:44:28.897
24625	fuuta_s	33	2025-07-02 08:44:31.141
24626	italia_lia	60	2025-07-02 08:44:32.454
24627	waku1waku2	95	2025-07-02 08:44:34.656
24628	usshi-	72	2025-07-02 08:44:38.93
24629	tujiri_01	60	2025-07-02 08:44:50.519
24630	hibiki-118	93	2025-07-02 08:45:00.162
24631	lions-fan1	60	2025-07-02 08:45:03.509
24632	daisuke	47	2025-07-02 08:45:03.934
24633	jo_07-18	48	2025-07-02 08:45:14.319
24634	musiko	66	2025-07-02 08:45:20.666
24635	akitennis	85	2025-07-02 08:45:28.496
24636	tya-han_04	43	2025-07-02 08:45:29.431
24637	sa-sa_0127	0	2025-07-02 08:45:30.582
24638	fuuta_s	52	2025-07-02 08:45:32.904
24639	waku1waku2	83	2025-07-02 08:45:37.934
24640	usshi-	85	2025-07-02 08:45:41.292
24641	patinca-nu	25	2025-07-02 08:45:45.377
24642	italia_lia	67	2025-07-02 08:45:46.17
24643	shudo-220_	73	2025-07-02 08:45:46.301
24644	posting	121	2025-07-02 08:45:56.409
24645	vertin15	48	2025-07-02 08:45:58.805
24646	daisuke	75	2025-07-02 08:46:04.939
24647	lions-fan1	70	2025-07-02 08:46:05.003
24648	hibiki-118	53	2025-07-02 08:46:05.522
24649	knt_07	22	2025-07-02 08:46:13.189
24650	tujiri_01	113	2025-07-02 08:46:13.628
24651	shimo1225	124	2025-07-02 08:46:15.492
24652	aaaaa	59	2025-07-02 08:46:17.874
24653	jo_07-18	45	2025-07-02 08:46:18.079
24654	mi-01_28	73	2025-07-02 08:46:21.705
24655	tya-han_04	61	2025-07-02 08:46:32.141
24656	akitennis	74	2025-07-02 08:46:32.32
24657	fuuta_s	28	2025-07-02 08:46:36.004
24658	waku1waku2	73	2025-07-02 08:46:39.615
24659	kochi	57	2025-07-02 08:46:41.032
24660	kfc055	15	2025-07-02 08:46:48.743
24661	shimo1225	109	2025-07-02 08:46:50.868
24662	posting	117	2025-07-02 08:46:54
24663	usshi-	68	2025-07-02 08:46:54.569
24664	axvo5145	130	2025-07-02 08:47:00.524
24665	vertin15	59	2025-07-02 08:47:00.825
24666	musiko	88	2025-07-02 08:47:03.126
24667	lions-fan1	54	2025-07-02 08:47:05.326
24668	patinca-nu	21	2025-07-02 08:47:06.641
24669	daisuke	78	2025-07-02 08:47:06.642
24670	hibiki-118	81	2025-07-02 08:47:06.652
24671	knt_07	76	2025-07-02 08:47:17.746
24672	shudo-220_	75	2025-07-02 08:47:21.915
24673	kaxejn1	0	2025-07-02 08:47:23.222
24674	jo_07-18	34	2025-07-02 08:47:24.188
24675	tujiri_01	85	2025-07-02 08:47:24.476
24676	mi-01_28	28	2025-07-02 08:47:27.223
24677	yuudai1201	53	2025-07-02 08:47:29.78
24678	tya-han_04	30	2025-07-02 08:47:35.513
24679	italia_lia	73	2025-07-02 08:47:36.186
24680	shimo1225	87	2025-07-02 08:47:36.677
24681	aaaaa	62	2025-07-02 08:47:38.865
24682	akitennis	72	2025-07-02 08:47:39.635
24683	waku1waku2	57	2025-07-02 08:47:40.858
24684	fuuta_s	44	2025-07-02 08:47:46.18
24685	kfc055	33	2025-07-02 08:47:50.954
24686	atomic	25	2025-07-02 08:47:51.302
24687	kuri-sou1	107	2025-07-02 08:47:53.996
24688	mikyu397	66	2025-07-02 08:47:54.367
24689	papico181	67	2025-07-02 08:47:56.936
24690	usshi-	71	2025-07-02 08:47:59.596
24691	posting	89	2025-07-02 08:48:01.569
24692	musiko	96	2025-07-02 08:48:01.871
24693	tyanpo-n88	67	2025-07-02 08:48:02.458
24694	lions-fan1	115	2025-07-02 08:48:03.822
24695	vertin15	57	2025-07-02 08:48:04.124
24696	axvo4241	80	2025-07-02 08:48:04.696
24697	daisuke	90	2025-07-02 08:48:06.297
24698	patinca-nu	39	2025-07-02 08:48:09.179
24699	hitomi0413	45	2025-07-02 08:48:18.859
24700	kyama10_	31	2025-07-02 08:48:21.885
24701	knt_07	38	2025-07-02 08:48:22.35
24702	shimo1225	85	2025-07-02 08:48:22.627
24703	jo_07-18	53	2025-07-02 08:48:25.672
24704	shudo-220_	71	2025-07-02 08:48:27.45
24707	mi-01_28	55	2025-07-02 08:48:38.051
24708	tya-han_04	22	2025-07-02 08:48:39.975
24710	satohina13	52	2025-07-02 08:48:40.228
24711	akitennis	70	2025-07-02 08:48:42.118
24713	yuudai1201	61	2025-07-02 08:48:42.943
24714	hibiki-118	111	2025-07-02 08:48:46.39
24715	kaxejn1	0	2025-07-02 08:48:46.856
24716	hibiki-118	110	2025-07-02 08:48:47.29
24717	fuuta_s	35	2025-07-02 08:48:48.629
24718	kfc055	21	2025-07-02 08:48:53.142
24720	kuri-sou1	49	2025-07-02 08:48:56.958
24722	kinniku29	25	2025-07-02 08:48:59.936
24723	mikyu397	36	2025-07-02 08:49:00.223
24727	lions-fan1	64	2025-07-02 08:49:06.022
24731	otsukisama	71	2025-07-02 08:49:09.412
24733	italia_lia	73	2025-07-02 08:49:12.732
24734	shimo1225	101	2025-07-02 08:49:13.735
24737	knt_07	90	2025-07-02 08:49:26.618
24740	posting	141	2025-07-02 08:49:33.503
24741	patinca-nu	33	2025-07-02 08:49:35.283
24742	shudo-220_	46	2025-07-02 08:49:35.447
24746	kaxejn1	99	2025-07-02 08:49:45.047
24748	tya-han_04	53	2025-07-02 08:49:47.412
24751	yuudai1201	77	2025-07-02 08:49:51.539
24752	hibiki-118	82	2025-07-02 08:49:53.125
24753	kfc055	63	2025-07-02 08:49:55.31
24755	axvo5145	47	2025-07-02 08:49:57.139
24756	akitennis	62	2025-07-02 08:49:57.168
24757	inu255-12	48	2025-07-02 08:49:57.22
24758	kuri-sou1	60	2025-07-02 08:50:00.349
24759	atomic	64	2025-07-02 08:50:01.634
24760	italia_lia	104	2025-07-02 08:50:02.373
24762	papico181	52	2025-07-02 08:50:03.598
24764	lions-fan1	105	2025-07-02 08:50:08.333
24765	kota_07-15	33	2025-07-02 08:50:09.039
24766	aaaaa	65	2025-07-02 08:50:10.787
24768	kyama10_	50	2025-07-02 08:50:13.513
24771	posting	110	2025-07-02 08:50:22.83
24772	tyankonabe	56	2025-07-02 08:50:25.569
24773	usshi-	92	2025-07-02 08:50:25.909
24774	usshi-	91	2025-07-02 08:50:26.707
24705	tujiri_01	113	2025-07-02 08:48:33.357
24706	tyanpo-n88	115	2025-07-02 08:48:35.278
24709	posting	100	2025-07-02 08:48:40.188
24719	axvo5145	53	2025-07-02 08:48:54.719
24721	atomic	84	2025-07-02 08:48:58.603
24725	ha-ruto_00	47	2025-07-02 08:49:00.653
24726	daisuke	114	2025-07-02 08:49:04.51
24728	musiko	67	2025-07-02 08:49:06.558
24732	usshi-	74	2025-07-02 08:49:09.698
24735	tyankonabe	36	2025-07-02 08:49:18.348
24736	hitomi0413	65	2025-07-02 08:49:21.007
24738	jo_07-18	21	2025-07-02 08:49:27.661
24739	knt_07	89	2025-07-02 08:49:27.771
24745	taiga228	56	2025-07-02 08:49:43.975
24747	auct1718	48	2025-07-02 08:49:45.384
24749	kinniku29	105	2025-07-02 08:49:48.11
24750	tyanpo-n88	74	2025-07-02 08:49:49.907
24712	waku1waku2	92	2025-07-02 08:48:42.559
24724	papico181	69	2025-07-02 08:49:00.448
24729	aaaaa	45	2025-07-02 08:49:07.02
24730	axvo4241	70	2025-07-02 08:49:07.817
24743	tujiri_01	66	2025-07-02 08:49:37.506
24744	waku1waku2	72	2025-07-02 08:49:43.861
24754	shimo1225	85	2025-07-02 08:49:55.345
24761	ha-ruto_00	80	2025-07-02 08:50:03.06
24763	kochi	32	2025-07-02 08:50:05.702
24767	axvo4241	49	2025-07-02 08:50:11.544
24769	tujiri_01	123	2025-07-02 08:50:18.51
24770	musiko	87	2025-07-02 08:50:19.614
24775	hitomi0413	99	2025-07-02 08:50:28.863
24776	kou-1603	66	2025-07-02 08:50:29.244
24777	jo_07-18	54	2025-07-02 08:50:29.556
24778	waku1waku2	100	2025-07-02 08:50:35.543
24779	aritomo	13	2025-07-02 08:50:36.374
24780	tyanpo-n88	94	2025-07-02 08:50:42.325
24781	haruuu4	65	2025-07-02 08:50:45.925
24782	shishamo	102	2025-07-02 08:50:47.032
24783	hibiki-118	63	2025-07-02 08:50:56.845
24784	axvo5145	62	2025-07-02 08:51:00.476
24785	inu255-12	38	2025-07-02 08:51:01.554
24786	musiko	93	2025-07-02 08:51:02.607
24787	ha-ruto_00	53	2025-07-02 08:51:04.585
24788	mikyu397	78	2025-07-02 08:51:05.556
24789	papico181	74	2025-07-02 08:51:07.279
24790	sum-lov_13	93	2025-07-02 08:51:07.46
24791	taiga228	73	2025-07-02 08:51:08.576
24792	italia_lia	63	2025-07-02 08:51:09.255
24793	axvo4241	95	2025-07-02 08:51:11.337
24794	kota_07-15	58	2025-07-02 08:51:11.931
24795	aaaaa	41	2025-07-02 08:51:15.398
24796	ri8_hoon-	50	2025-07-02 08:51:17.202
24797	ishumi	77	2025-07-02 08:51:22.193
24798	posting	116	2025-07-02 08:51:24.55
24799	kfc055	51	2025-07-02 08:51:24.578
24800	tujiri_01	31	2025-07-02 08:51:24.907
24801	lions-fan1	70	2025-07-02 08:51:24.947
24802	yuudai1201	54	2025-07-02 08:51:28.392
24803	usshi-	111	2025-07-02 08:51:29.129
24804	tyankonabe	45	2025-07-02 08:51:29.705
24805	jo_07-18	49	2025-07-02 08:51:29.828
24806	usshi-	110	2025-07-02 08:51:29.839
24807	shishamo	124	2025-07-02 08:51:35.74
24808	waku1waku2	79	2025-07-02 08:51:36.697
24809	aritomo	31	2025-07-02 08:51:38.681
24810	haru-714	43	2025-07-02 08:51:46.065
24811	ha-ruto_00	128	2025-07-02 08:51:49.603
24812	italia_lia	135	2025-07-02 08:51:50.322
24813	musiko	97	2025-07-02 08:51:54.263
24814	tyanpo-n88	84	2025-07-02 08:52:06.576
24815	yes_eo080	85	2025-07-02 08:52:07.183
24816	hibiki-118	124	2025-07-02 08:52:15.096
24817	kiyodai	92	2025-07-02 08:52:16.058
24818	hitomi0413	70	2025-07-02 08:52:16.17
24819	ri8_hoon-	55	2025-07-02 08:52:19.363
24820	inu255-12	79	2025-07-02 08:52:19.931
24821	imora1107	97	2025-07-02 08:52:21.342
24822	kota_07-15	63	2025-07-02 08:52:31.769
24823	jo_07-18	89	2025-07-02 08:52:32
24824	ishumi	56	2025-07-02 08:52:32.233
24825	okiku_0408	137	2025-07-02 08:52:33.134
24826	posting	141	2025-07-02 08:52:44.131
24827	tyankonabe	54	2025-07-02 08:52:44.131
24828	usshi-	68	2025-07-02 08:52:46.565
24829	italia_lia	95	2025-07-02 08:52:48.931
24830	shishamo	102	2025-07-02 08:53:08.824
24831	taiga228	87	2025-07-02 08:53:08.834
24832	haruuu4	41	2025-07-02 08:53:10.698
24833	ha-ruto_00	77	2025-07-02 08:53:16.387
24834	okiku_0408	128	2025-07-02 08:53:16.408
24835	yukiflcx	141	2025-07-02 08:53:16.86
24836	kiyodai	74	2025-07-02 08:53:18.752
24837	aritomo	53	2025-07-02 08:53:19.667
24838	inu255-12	51	2025-07-02 08:53:24.709
24839	musiko	100	2025-07-02 08:53:28.631
24840	yes_eo080	122	2025-07-02 08:53:29.429
24841	ishumi	46	2025-07-02 08:53:35.294
24842	tyanpo-n88	84	2025-07-02 08:53:38.581
24843	tyanpo-n88	83	2025-07-02 08:53:39.127
24844	tyankonabe	35	2025-07-02 08:53:45.858
24845	m0gu	105	2025-07-02 08:53:47.074
24846	tujiri_01	76	2025-07-02 08:53:49.744
24847	usshi-	92	2025-07-02 08:53:55.697
24848	usshi-	91	2025-07-02 08:53:56.48
24849	posting	90	2025-07-02 08:53:57.58
24850	auct1718	95	2025-07-02 08:53:57.977
24851	aritomo	0	2025-07-02 08:53:59.06
24852	kiyodai	82	2025-07-02 08:54:07.698
24853	haruuu4	35	2025-07-02 08:54:13.881
24854	ha-ruto_00	112	2025-07-02 08:54:22.181
24855	yes_eo080	87	2025-07-02 08:54:26.331
24856	sum-lov_13	63	2025-07-02 08:54:29.595
24857	musiko	56	2025-07-02 08:54:30.837
24858	inu255-12	45	2025-07-02 08:54:35.482
24859	tujiri_01	52	2025-07-02 08:54:52.589
24860	mt_bird	59	2025-07-02 08:55:04.698
24861	aritomo	45	2025-07-02 08:55:07.601
24862	musiko	67	2025-07-02 08:55:35.854
24863	posting	104	2025-07-02 08:55:40.66
24864	tujiri_01	113	2025-07-02 08:55:54.222
24865	kfc055	0	2025-07-02 08:55:55.686
24866	aritomo	0	2025-07-02 08:56:00.303
24867	tyankonabe	58	2025-07-02 08:56:03.252
24868	yukiflcx	116	2025-07-02 08:56:18.927
24869	lions-fan1	78	2025-07-09 08:41:27.456
24870	vertin15	63	2025-07-09 08:41:33.805
24871	otsukisama	71	2025-07-09 08:41:54.446
24872	lions-fan1	99	2025-07-09 08:42:12.494
24873	vertin15	85	2025-07-09 08:42:40.731
24874	waku1waku2	64	2025-07-09 08:42:47.593
24875	posting	113	2025-07-09 08:42:49.651
24876	otsukisama	77	2025-07-09 08:42:55.673
24877	musiko	39	2025-07-09 08:43:01.113
24878	posting	35	2025-07-09 08:43:31.122
24879	lions-fan1	68	2025-07-09 08:43:32.122
24880	kiyodai	38	2025-07-09 08:43:32.931
24881	waku1waku2	90	2025-07-09 08:43:48.617
24882	musiko	74	2025-07-09 08:44:07.506
24883	sa-sa_0127	63	2025-07-09 08:44:09.833
24884	satohina13	0	2025-07-09 08:44:29.051
24885	lions-fan1	65	2025-07-09 08:44:33.626
24886	waku1waku2	70	2025-07-09 08:44:50.19
24887	usshi-	50	2025-07-09 08:44:55.587
24888	posting	70	2025-07-09 08:45:09.188
24889	musiko	58	2025-07-09 08:45:10.737
24890	otsukisama	91	2025-07-09 08:45:11.785
24891	sa-sa_0127	0	2025-07-09 08:45:20.762
24892	kiyodai	113	2025-07-09 08:45:25.204
24893	satohina13	56	2025-07-09 08:45:31.052
24894	akitennis	85	2025-07-09 08:45:40.124
24895	mi-01_28	52	2025-07-09 08:45:47.87
24896	shudo-220_	51	2025-07-09 08:45:54.936
24897	otsukisama	87	2025-07-09 08:46:19.928
24898	otsukisama	86	2025-07-09 08:46:19.939
24899	sa-sa_0127	14	2025-07-09 08:46:21.466
24900	knt_07	41	2025-07-09 08:46:25.238
24901	kiyodai	83	2025-07-09 08:46:26.483
24902	lions-fan1	96	2025-07-09 08:46:27.841
24903	usshi-	131	2025-07-09 08:46:29.771
24904	taiga228	63	2025-07-09 08:46:43.351
24905	akitennis	49	2025-07-09 08:46:43.681
24906	axvo5145	62	2025-07-09 08:46:49.978
24907	mi-01_28	46	2025-07-09 08:46:50.711
24908	papico181	66	2025-07-09 08:46:56.364
24911	kinniku29	23	2025-07-09 08:47:13.727
24916	tyanpo-n88	90	2025-07-09 08:47:29.951
24923	inu255-12	50	2025-07-09 08:47:49.779
24924	axvo5145	60	2025-07-09 08:47:51.948
24925	imora1107	60	2025-07-09 08:47:55.661
24926	waku1waku2	79	2025-07-09 08:47:56.234
24928	haruuu4	57	2025-07-09 08:47:59.683
24929	fuuta_s	55	2025-07-09 08:48:03.909
24930	mikyu397	46	2025-07-09 08:48:08.795
24931	atomic	73	2025-07-09 08:48:10.964
24932	posting	86	2025-07-09 08:48:13.392
24933	mi-01_28	59	2025-07-09 08:48:15.176
24934	shudo-220_	55	2025-07-09 08:48:16.612
24937	akitennis	84	2025-07-09 08:48:24.749
24946	knt_07	74	2025-07-09 08:48:43.984
24950	posting	139	2025-07-09 08:48:48.947
24951	axvo5145	95	2025-07-09 08:48:54.717
24952	kiyodai	37	2025-07-09 08:48:55.981
24953	waku1waku2	62	2025-07-09 08:48:57.917
24955	shishamo	96	2025-07-09 08:48:58.169
24956	satohina13	57	2025-07-09 08:48:58.654
24909	shudo-220_	60	2025-07-09 08:46:59.39
24910	posting	78	2025-07-09 08:47:01.352
24912	akitennis	137	2025-07-09 08:47:20.065
24913	sa-sa_0127	29	2025-07-09 08:47:22.503
24914	otsukisama	86	2025-07-09 08:47:23.057
24915	knt_07	31	2025-07-09 08:47:29.729
24917	satohina13	53	2025-07-09 08:47:29.992
24918	kiyodai	73	2025-07-09 08:47:29.996
24919	musiko	65	2025-07-09 08:47:34.3
24920	tya-han_04	49	2025-07-09 08:47:35.445
24921	usshi-	38	2025-07-09 08:47:40.839
24922	taiga228	65	2025-07-09 08:47:48.723
24927	papico181	50	2025-07-09 08:47:59.278
24935	aaaaa	42	2025-07-09 08:48:24.101
24936	sa-sa_0127	48	2025-07-09 08:48:24.217
24938	kinniku29	116	2025-07-09 08:48:33.401
24939	hitomi0413	32	2025-07-09 08:48:35.331
24940	musiko	58	2025-07-09 08:48:36.399
24941	tya-han_04	83	2025-07-09 08:48:36.577
24942	tujiri_01	63	2025-07-09 08:48:37.037
24943	tya-han_04	82	2025-07-09 08:48:37.326
24944	tyanpo-n88	42	2025-07-09 08:48:39.276
24945	knt_07	75	2025-07-09 08:48:42.89
24947	kfc055	40	2025-07-09 08:48:44.187
24948	lions-fan1	73	2025-07-09 08:48:45.816
24949	usshi-	78	2025-07-09 08:48:48.694
24954	shudo-220_	117	2025-07-09 08:48:57.942
24957	kota_07-15	25	2025-07-09 08:49:00.437
24958	haruuu4	42	2025-07-09 08:49:01.293
24959	kaxejn1	67	2025-07-09 08:49:02.77
24960	papico181	33	2025-07-09 08:49:02.898
24961	fuuta_s	63	2025-07-09 08:49:08.74
24962	atomic	73	2025-07-09 08:49:13.44
24963	mikyu397	64	2025-07-09 08:49:15.99
24964	mi-01_28	65	2025-07-09 08:49:17.424
24965	aritomo	57	2025-07-09 08:49:25.266
24966	taiga228	102	2025-07-09 08:49:27.039
24967	aaaaa	44	2025-07-09 08:49:27.674
24968	tyankonabe	76	2025-07-09 08:49:29.247
24969	shirogane	43	2025-07-09 08:49:32.393
24970	kou-1603	50	2025-07-09 08:49:34.534
24971	hitomi0413	115	2025-07-09 08:49:35.351
24972	kinniku29	27	2025-07-09 08:49:36.616
24973	inu255-12	34	2025-07-09 08:49:37.334
24974	musiko	58	2025-07-09 08:49:38.318
24975	tya-han_04	61	2025-07-09 08:49:40.774
24976	tujiri_01	79	2025-07-09 08:49:41.591
24977	tujiri_01	78	2025-07-09 08:49:43.05
24978	kyama10_	61	2025-07-09 08:49:44.51
24979	axvo4241	67	2025-07-09 08:49:46.778
24980	posting	132	2025-07-09 08:49:47.445
24981	lions-fan1	73	2025-07-09 08:49:47.942
24982	m0gu	112	2025-07-09 08:49:47.947
24983	tyanpo-n88	95	2025-07-09 08:49:48.19
24984	kfc055	18	2025-07-09 08:49:50.229
24985	akitennis	83	2025-07-09 08:49:52.101
24986	ri8_hoon-	111	2025-07-09 08:49:53.689
24987	ri8_hoon-	110	2025-07-09 08:49:54.095
24988	yuudai1201	70	2025-07-09 08:49:54.532
24989	kiyodai	73	2025-07-09 08:49:56.646
24990	kuri-sou1	69	2025-07-09 08:49:56.887
24991	waku1waku2	72	2025-07-09 08:50:02.063
24992	satohina13	59	2025-07-09 08:50:03.07
24993	kota_07-15	84	2025-07-09 08:50:03.126
24994	kaxejn1	112	2025-07-09 08:50:03.686
24995	kaxejn1	88	2025-07-09 08:50:03.9
24996	shishamo	64	2025-07-09 08:50:04.323
24997	shudo-220_	69	2025-07-09 08:50:05.253
24998	italia_lia	87	2025-07-09 08:50:09.928
24999	fuuta_s	81	2025-07-09 08:50:10.709
25000	mi-01_28	89	2025-07-09 08:50:17.986
25001	aritomo	0	2025-07-09 08:50:27.437
25002	shudo-220_	69	2025-07-09 08:50:27.92
25003	tyankonabe	0	2025-07-09 08:50:33.343
25004	kiyodai	132	2025-07-09 08:50:36.523
25005	usshi-	82	2025-07-09 08:50:38.024
25006	musiko	81	2025-07-09 08:50:39.308
25007	inu255-12	51	2025-07-09 08:50:40.238
25008	taiga228	67	2025-07-09 08:50:41.803
25009	tya-han_04	44	2025-07-09 08:50:43.233
25010	shishamo	110	2025-07-09 08:50:44.879
25011	axvo4241	54	2025-07-09 08:50:48.645
25012	kou-1603	82	2025-07-09 08:50:50.568
25013	tujiri_01	89	2025-07-09 08:50:51.215
25014	kfc055	48	2025-07-09 08:50:51.787
25015	mikyu397	58	2025-07-09 08:50:51.862
25016	akitennis	52	2025-07-09 08:50:52.857
25017	ha-ruto_00	57	2025-07-09 08:50:54.338
25018	yuudai1201	79	2025-07-09 08:50:56.351
25019	kaxejn1	113	2025-07-09 08:50:57.237
25020	mt_bird	119	2025-07-09 08:50:58.683
25021	kuri-sou1	74	2025-07-09 08:50:59.639
25022	aaaaa	79	2025-07-09 08:51:03.002
25023	waku1waku2	71	2025-07-09 08:51:03.506
25024	patinca-nu	50	2025-07-09 08:51:05.073
25025	kota_07-15	45	2025-07-09 08:51:06.316
25026	lions-fan1	85	2025-07-09 08:51:06.971
25027	ishumi	51	2025-07-09 08:51:10.382
25028	hitomi0413	49	2025-07-09 08:51:10.554
25029	yukiflcx	81	2025-07-09 08:51:11.282
25030	italia_lia	41	2025-07-09 08:51:11.589
25031	fuuta_s	55	2025-07-09 08:51:12.78
25032	imora1107	63	2025-07-09 08:51:12.923
25033	tyanpo-n88	99	2025-07-09 08:51:13.57
25034	tyanpo-n88	83	2025-07-09 08:51:13.694
25035	daisuke	69	2025-07-09 08:51:20.514
25036	atomic	62	2025-07-09 08:51:30.908
25037	posting	103	2025-07-09 08:51:31.418
25038	tyankonabe	46	2025-07-09 08:51:38.162
25039	kiyodai	88	2025-07-09 08:51:39.906
25040	musiko	39	2025-07-09 08:51:40.04
25041	tujiri_01	117	2025-07-09 08:51:40.058
25042	usshi-	111	2025-07-09 08:51:40.279
25043	usshi-	110	2025-07-09 08:51:40.934
25044	kaxejn1	133	2025-07-09 08:51:41.437
25045	inu255-12	77	2025-07-09 08:51:44.684
25046	taiga228	32	2025-07-09 08:51:49.426
25047	axvo4241	72	2025-07-09 08:51:50.813
25048	ha-ruto_00	47	2025-07-09 08:51:55.45
25049	miyu_0913	85	2025-07-09 08:51:56.927
25050	mikyu397	79	2025-07-09 08:51:58.053
25051	shishamo	83	2025-07-09 08:52:01.221
25052	mt_bird	70	2025-07-09 08:52:02.37
25053	kuri-sou1	59	2025-07-09 08:52:03.294
25054	waku1waku2	48	2025-07-09 08:52:05.046
25055	aritomo	45	2025-07-09 08:52:09.354
25056	patinca-nu	45	2025-07-09 08:52:09.432
25057	tya-han_04	50	2025-07-09 08:52:09.889
25058	lions-fan1	73	2025-07-09 08:52:09.912
25059	tyanpo-n88	83	2025-07-09 08:52:11.933
25060	ishumi	42	2025-07-09 08:52:12.83
25061	hitomi0413	78	2025-07-09 08:52:13.589
25062	fuuta_s	63	2025-07-09 08:52:13.844
25063	yuudai1201	46	2025-07-09 08:52:14.644
25064	aaaaa	62	2025-07-09 08:52:14.943
25065	italia_lia	53	2025-07-09 08:52:15.501
25066	kochi	18	2025-07-09 08:52:16.137
25067	kota_07-15	37	2025-07-09 08:52:17.913
25068	shimo1225	57	2025-07-09 08:52:17.946
25069	haru-714	42	2025-07-09 08:52:20.717
25070	daisuke	81	2025-07-09 08:52:23.184
25071	daisuke	80	2025-07-09 08:52:23.903
25072	shishamo	127	2025-07-09 08:52:30.958
25073	tyankonabe	42	2025-07-09 08:52:40.464
25074	kiyodai	86	2025-07-09 08:52:41.487
25076	musiko	55	2025-07-09 08:52:46.304
25077	ha-ruto_00	45	2025-07-09 08:52:57.878
25081	waku1waku2	58	2025-07-09 08:53:07.112
25082	usshi-	44	2025-07-09 08:53:07.201
25083	tujiri_01	46	2025-07-09 08:53:08.44
25084	fuuta_s	65	2025-07-09 08:53:15.665
25085	ishumi	38	2025-07-09 08:53:16.259
25075	kiyodai	85	2025-07-09 08:52:42.29
25078	sum-lov_13	126	2025-07-09 08:52:58.593
25079	miyu_0913	61	2025-07-09 08:52:58.724
25087	shimo1225	32	2025-07-09 08:53:32.374
25090	tyankonabe	69	2025-07-09 08:55:09.011
25080	yes_eo080	45	2025-07-09 08:53:00.023
25086	italia_lia	68	2025-07-09 08:53:26.386
25088	shimo1225	44	2025-07-09 08:54:23.373
25089	yes_eo080	58	2025-07-09 08:55:04.262
25091	yes_eo080	112	2025-07-09 08:56:05.873
25092	kinniku29	28	2025-07-09 08:58:29.015
25093	shudo-220_	81	2025-07-16 08:41:48.044
25094	shimo1225	97	2025-07-16 08:42:30.961
25095	kiyodai	59	2025-07-16 08:42:49.377
25096	usshi-	83	2025-07-16 08:42:52.742
25097	shimo1225	90	2025-07-16 08:43:21.362
25098	otsukisama	53	2025-07-16 08:43:28.494
25099	okiku_0408	54	2025-07-16 08:43:36.058
25100	shudo-220_	95	2025-07-16 08:43:51.514
25101	usshi-	71	2025-07-16 08:43:55.257
25102	hibiki-118	92	2025-07-16 08:44:02.573
25103	kyama10_	57	2025-07-16 08:44:05.217
25104	akitennis	87	2025-07-16 08:44:09.658
25105	shimo1225	67	2025-07-16 08:44:18.348
25106	satohina13	20	2025-07-16 08:44:24.737
25107	taiga228	144	2025-07-16 08:44:31.498
25108	otsukisama	76	2025-07-16 08:44:33.613
25109	kuri-sou1	62	2025-07-16 08:44:38.425
25110	shimo1225	119	2025-07-16 08:44:39.936
25111	hibiki-118	132	2025-07-16 08:44:49.467
25112	vertin15	29	2025-07-16 08:44:55.169
25113	kiyodai	17	2025-07-16 08:44:56.103
25114	usshi-	26	2025-07-16 08:45:04.857
25115	axvo5145	33	2025-07-16 08:45:10.735
25116	akitennis	57	2025-07-16 08:45:15.14
25117	otsukisama	96	2025-07-16 08:45:31.741
25118	shimo1225	85	2025-07-16 08:45:36.588
25119	kuri-sou1	114	2025-07-16 08:45:39.776
25120	kfc055	0	2025-07-16 08:45:42.526
25121	taiga228	125	2025-07-16 08:45:44.747
25122	kinniku29	3	2025-07-16 08:45:46.578
25123	hibiki-118	88	2025-07-16 08:45:54.647
25124	vertin15	95	2025-07-16 08:45:58.363
25125	kiyodai	76	2025-07-16 08:46:01.804
25126	satohina13	41	2025-07-16 08:46:07.073
25127	axvo5145	61	2025-07-16 08:46:14.517
25128	shimo1225	89	2025-07-16 08:46:18.658
25129	aaaaa	78	2025-07-16 08:46:30.577
25130	akitennis	75	2025-07-16 08:46:34.692
25131	ri8_hoon-	42	2025-07-16 08:46:37.352
25132	kuri-sou1	96	2025-07-16 08:46:37.541
25133	shirogane	114	2025-07-16 08:46:41.413
25134	sa-sa_0127	56	2025-07-16 08:46:42.2
25135	usshi-	86	2025-07-16 08:46:43.526
25136	sum-lov_13	73	2025-07-16 08:46:44.027
25137	kfc055	43	2025-07-16 08:46:45.718
25138	kinniku29	14	2025-07-16 08:46:48.684
25139	fuuta_s	111	2025-07-16 08:46:49.317
25140	mikyu397	64	2025-07-16 08:46:49.746
25141	fuuta_s	110	2025-07-16 08:46:50.525
25142	tujiri_01	94	2025-07-16 08:46:52.621
25143	hibiki-118	119	2025-07-16 08:46:55.315
25144	kou-1603	78	2025-07-16 08:46:57.919
25145	kiyodai	40	2025-07-16 08:47:03.893
25146	otsukisama	113	2025-07-16 08:47:05.622
25147	imora1107	54	2025-07-16 08:47:13.578
25148	axvo5145	53	2025-07-16 08:47:16.791
25149	shimo1225	92	2025-07-16 08:47:22.494
25150	aritomo	75	2025-07-16 08:47:23.919
25151	satohina13	45	2025-07-16 08:47:29.011
25152	aaaaa	64	2025-07-16 08:47:32.698
25153	taiga228	100	2025-07-16 08:47:38.387
25154	akitennis	55	2025-07-16 08:47:40.038
25155	hibiki-118	87	2025-07-16 08:47:40.883
25156	shishamo	103	2025-07-16 08:47:41.198
25157	kuri-sou1	87	2025-07-16 08:47:43.967
25158	sa-sa_0127	21	2025-07-16 08:47:44.993
25159	ri8_hoon-	86	2025-07-16 08:47:45.145
25160	ri8_hoon-	85	2025-07-16 08:47:45.886
25161	kfc055	32	2025-07-16 08:47:47.301
25162	yukiflcx	113	2025-07-16 08:47:47.483
25163	shudo-220_	69	2025-07-16 08:47:50.577
25164	fuuta_s	31	2025-07-16 08:47:54.164
25165	tyanpo-n88	96	2025-07-16 08:47:57.538
25166	usshi-	103	2025-07-16 08:47:58.69
25167	axvo4241	57	2025-07-16 08:48:05.421
25168	shimo1225	106	2025-07-16 08:48:05.538
25169	kiyodai	47	2025-07-16 08:48:13.006
25170	kota_07-15	85	2025-07-16 08:48:19.514
25171	otsukisama	78	2025-07-16 08:48:23.787
25172	tya-han_04	47	2025-07-16 08:48:26.357
25173	mikyu397	48	2025-07-16 08:48:30.278
25174	aaaaa	79	2025-07-16 08:48:35.179
25175	aritomo	50	2025-07-16 08:48:36.598
25176	hibiki-118	50	2025-07-16 08:48:41.695
25177	shishamo	91	2025-07-16 08:48:41.866
25178	papico181	76	2025-07-16 08:48:42.223
25179	yukiflcx	96	2025-07-16 08:48:43.572
25180	kfc055	24	2025-07-16 08:48:48.92
25181	akitennis	81	2025-07-16 08:48:49.302
25182	sa-sa_0127	37	2025-07-16 08:48:55.859
25183	fuuta_s	35	2025-07-16 08:48:56.157
25184	kaxejn1	50	2025-07-16 08:48:59.486
25185	italia_lia	50	2025-07-16 08:49:00.188
25186	shimo1225	61	2025-07-16 08:49:00.341
25187	tyankonabe	62	2025-07-16 08:49:03.113
25188	auct1718	32	2025-07-16 08:49:04.129
25189	axvo4241	65	2025-07-16 08:49:09.099
25190	tyanpo-n88	98	2025-07-16 08:49:10.393
25191	kiyodai	59	2025-07-16 08:49:15.576
25192	kota_07-15	53	2025-07-16 08:49:27.141
25193	tya-han_04	49	2025-07-16 08:49:28.674
25194	tujiri_01	114	2025-07-16 08:49:29.626
25195	shishamo	101	2025-07-16 08:49:30.118
25196	masatoshi	0	2025-07-16 08:49:32.226
25197	mikyu397	41	2025-07-16 08:49:32.282
25198	aaaaa	73	2025-07-16 08:49:38.577
25199	papico181	78	2025-07-16 08:49:46.537
25200	yukiflcx	83	2025-07-16 08:49:46.603
25201	shimo1225	86	2025-07-16 08:49:47.594
25202	usshi-	64	2025-07-16 08:49:49.85
25203	akitennis	67	2025-07-16 08:49:51.247
25204	otsukisama	101	2025-07-16 08:49:58.106
25205	knt_07	48	2025-07-16 08:50:01.7
25206	sa-sa_0127	0	2025-07-16 08:50:02.052
25207	italia_lia	54	2025-07-16 08:50:02.758
25208	fuuta_s	60	2025-07-16 08:50:04.583
25209	tyanpo-n88	117	2025-07-16 08:50:05.089
25210	aritomo	23	2025-07-16 08:50:06.009
25211	waku1waku2	149	2025-07-16 08:50:06.388
25212	kaxejn1	111	2025-07-16 08:50:08.51
25213	kaxejn1	110	2025-07-16 08:50:08.92
25214	hibiki-118	72	2025-07-16 08:50:08.965
25215	shishamo	132	2025-07-16 08:50:13.326
25216	tya-han_04	101	2025-07-16 08:50:17.981
25217	tyankonabe	51	2025-07-16 08:50:18.981
25218	aaaaa	128	2025-07-16 08:50:22.772
25219	auct1718	57	2025-07-16 08:50:23.82
25220	axvo4241	64	2025-07-16 08:50:27.941
25221	kota_07-15	44	2025-07-16 08:50:30.484
25222	kochi	17	2025-07-16 08:50:32.71
25223	atomic	32	2025-07-16 08:50:33.2
25224	yuudai1201	79	2025-07-16 08:50:34.209
25225	masatoshi	36	2025-07-16 08:50:35.159
25226	ha-ruto_00	42	2025-07-16 08:50:36.36
25227	mikyu397	49	2025-07-16 08:50:36.434
25233	akitennis	67	2025-07-16 08:50:56.131
25234	daisuke	82	2025-07-16 08:50:58.033
25235	tyanpo-n88	91	2025-07-16 08:50:58.667
25236	miyu_0913	112	2025-07-16 08:51:00.222
25237	italia_lia	53	2025-07-16 08:51:05.864
25238	fuuta_s	51	2025-07-16 08:51:11.204
25239	hibiki-118	75	2025-07-16 08:51:12.527
25240	kaxejn1	111	2025-07-16 08:51:14.408
25244	aritomo	44	2025-07-16 08:51:16.583
25246	kuri-sou1	60	2025-07-16 08:51:16.825
25248	tya-han_04	60	2025-07-16 08:51:19.387
25249	haru-714	0	2025-07-16 08:51:19.493
25254	aaaaa	75	2025-07-16 08:51:24.689
25255	tyankonabe	51	2025-07-16 08:51:24.93
25257	shirogane	58	2025-07-16 08:51:25.31
25259	ha-ruto_00	123	2025-07-16 08:51:29.624
25261	auct1718	59	2025-07-16 08:51:31.792
25265	daisuke	135	2025-07-16 08:51:36.907
25267	ishumi	75	2025-07-16 08:51:37.246
25268	kiyodai	62	2025-07-16 08:51:38.219
25228	m0gu	97	2025-07-16 08:50:39.64
25229	kfc055	20	2025-07-16 08:50:39.745
25230	usshi-	129	2025-07-16 08:50:50.447
25231	waku1waku2	107	2025-07-16 08:50:51.175
25232	shishamo	104	2025-07-16 08:50:54.499
25241	otsukisama	58	2025-07-16 08:51:14.531
25242	axvo5145	63	2025-07-16 08:51:15.141
25243	shudo-220_	61	2025-07-16 08:51:15.712
25245	imora1107	82	2025-07-16 08:51:16.61
25247	imora1107	81	2025-07-16 08:51:18.115
25250	knt_07	82	2025-07-16 08:51:21.561
25251	mikyu397	108	2025-07-16 08:51:21.644
25252	papico181	88	2025-07-16 08:51:22.501
25253	shimo1225	70	2025-07-16 08:51:23.923
25256	tujiri_01	50	2025-07-16 08:51:25.083
25258	shishamo	137	2025-07-16 08:51:28.625
25260	papico181	87	2025-07-16 08:51:30.603
25262	kochi	56	2025-07-16 08:51:34.131
25263	atomic	50	2025-07-16 08:51:34.259
25264	kota_07-15	39	2025-07-16 08:51:36.111
25266	masatoshi	0	2025-07-16 08:51:36.94
25269	yuudai1201	57	2025-07-16 08:51:40.887
25270	mi-01_28	26	2025-07-16 08:51:42.034
25271	patinca-nu	40	2025-07-16 08:51:43.562
25272	waku1waku2	82	2025-07-16 08:51:47.455
25273	miyu_0913	97	2025-07-16 08:51:56.807
25274	akitennis	87	2025-07-16 08:51:58.924
25275	jo_07-18	64	2025-07-16 08:52:04.527
25276	lions-fan1	68	2025-07-16 08:52:06.821
25277	italia_lia	52	2025-07-16 08:52:08.125
25278	fuuta_s	70	2025-07-16 08:52:15.373
25279	shudo-220_	65	2025-07-16 08:52:18.853
25280	hibiki-118	89	2025-07-16 08:52:22.337
25281	haru-714	54	2025-07-16 08:52:22.58
25282	tya-han_04	48	2025-07-16 08:52:23.389
25283	knt_07	95	2025-07-16 08:52:27.857
25284	shirogane	49	2025-07-16 08:52:28.915
25285	otsukisama	91	2025-07-16 08:52:33.467
25286	daisuke	79	2025-07-16 08:52:42.679
25287	patinca-nu	57	2025-07-16 08:52:47.721
25288	kiyodai	52	2025-07-16 08:52:50.621
25289	miyu_0913	74	2025-07-16 08:52:59.745
25290	ishumi	51	2025-07-16 08:53:13.099
25291	ha-ruto_00	95	2025-07-16 08:53:25.323
25292	hibiki-118	100	2025-07-16 08:53:32.87
25293	haruuu4	64	2025-07-16 08:53:43.335
25294	hibiki-118	139	2025-07-16 08:54:06.697
25295	aritomo	12	2025-07-16 08:54:25.009
25296	hitomi0413	0	2025-07-16 08:54:27.224
25297	yes_eo080	92	2025-07-16 08:55:14.572
25298	aritomo	30	2025-07-16 08:55:47.349
25299	mt_bird	90	2025-07-16 08:56:00.701
25300	hitomi0413	16	2025-07-16 09:33:02.127
25301	jo_07-18	92	2025-07-23 08:41:29.523
25302	hibiki-118	94	2025-07-23 08:41:54.774
25303	akitennis	68	2025-07-23 08:41:58.927
25304	vertin15	51	2025-07-23 08:42:10.494
25305	knt_07	24	2025-07-23 08:42:15.898
25306	jo_07-18	20	2025-07-23 08:42:31.592
25307	hibiki-118	87	2025-07-23 08:43:04.95
25308	shudo-220_	46	2025-07-23 08:43:06.216
25309	lions-fan1	103	2025-07-23 08:43:08.907
25310	kfc055	38	2025-07-23 08:43:20.39
25311	akitennis	22	2025-07-23 08:43:21.058
25312	posting	81	2025-07-23 08:43:31.095
25313	lions-fan1	122	2025-07-23 08:43:45.614
25314	hibiki-118	120	2025-07-23 08:44:06.404
25315	posting	122	2025-07-23 08:44:15.894
25316	shudo-220_	76	2025-07-23 08:44:19.21
25317	kinniku29	106	2025-07-23 08:44:20.026
25318	kfc055	42	2025-07-23 08:44:22.829
25319	akitennis	57	2025-07-23 08:44:24.765
25320	mi-01_28	43	2025-07-23 08:44:34.553
25321	hibiki-118	111	2025-07-23 08:44:39.811
25322	lions-fan1	55	2025-07-23 08:44:48.133
25323	axvo5145	62	2025-07-23 08:44:50.626
25324	knt_07	83	2025-07-23 08:44:55.555
25325	satohina13	75	2025-07-23 08:45:15.671
25326	kfc055	81	2025-07-23 08:45:20.03
25327	shimo1225	91	2025-07-23 08:45:20.036
25328	kinniku29	11	2025-07-23 08:45:21.952
25329	gyt4-3_24	35	2025-07-23 08:45:28.869
25330	akitennis	63	2025-07-23 08:45:30.301
25331	shudo-220_	62	2025-07-23 08:45:30.679
25332	shirogane	64	2025-07-23 08:45:39.942
25333	hibiki-118	101	2025-07-23 08:45:44.243
25334	lions-fan1	80	2025-07-23 08:45:50.114
25335	mi-01_28	30	2025-07-23 08:45:51.603
25336	shimo1225	79	2025-07-23 08:46:06.523
25337	yuudai1201	61	2025-07-23 08:46:07.399
25338	axvo5145	66	2025-07-23 08:46:09.843
25339	jo_07-18	37	2025-07-23 08:46:11.151
25340	tyankonabe	35	2025-07-23 08:46:16.129
25341	shudo-220_	128	2025-07-23 08:46:16.447
25342	akitennis	132	2025-07-23 08:46:22.934
25343	kinniku29	35	2025-07-23 08:46:25.155
25344	usshi-	79	2025-07-23 08:46:26.476
25345	gyt4-3_24	6	2025-07-23 08:46:33.609
25346	taiga228	108	2025-07-23 08:46:34.649
25347	sa-sa_0127	78	2025-07-23 08:46:35.552
25348	mi-01_28	133	2025-07-23 08:46:38.905
25349	posting	82	2025-07-23 08:46:43.362
25350	kfc055	63	2025-07-23 08:46:52.05
25351	axvo5145	109	2025-07-23 08:46:52.461
25352	lions-fan1	66	2025-07-23 08:46:56.11
25353	hibiki-118	69	2025-07-23 08:47:00.638
25354	shimo1225	71	2025-07-23 08:47:02.15
25355	jo_07-18	126	2025-07-23 08:47:07.505
25356	yuudai1201	53	2025-07-23 08:47:08.171
25357	otsukisama	92	2025-07-23 08:47:16.513
25358	shudo-220_	64	2025-07-23 08:47:18.61
25359	tyankonabe	64	2025-07-23 08:47:21.013
25360	usshi-	63	2025-07-23 08:47:30.267
25361	aaaaa	48	2025-07-23 08:47:30.496
25362	shimo1225	87	2025-07-23 08:47:39.533
25363	gyt4-3_24	70	2025-07-23 08:47:40.18
25364	satohina13	52	2025-07-23 08:47:42.176
25365	musiko	47	2025-07-23 08:47:43.649
25366	tya-han_04	51	2025-07-23 08:47:47.006
25367	shirogane	80	2025-07-23 08:47:48.516
25368	haruuu4	48	2025-07-23 08:47:52.534
25369	sa-sa_0127	63	2025-07-23 08:47:53.185
25370	taiga228	130	2025-07-23 08:47:53.296
25371	atomic	51	2025-07-23 08:47:57.197
25372	hibiki-118	124	2025-07-23 08:47:57.998
25373	lions-fan1	87	2025-07-23 08:48:02.779
25374	shudo-220_	118	2025-07-23 08:48:03.447
25375	yuudai1201	77	2025-07-23 08:48:11.242
25376	shimo1225	101	2025-07-23 08:48:15.67
25377	posting	97	2025-07-23 08:48:20.942
25378	axvo5145	54	2025-07-23 08:48:23.066
25379	tyankonabe	30	2025-07-23 08:48:23.813
25380	auct1718	18	2025-07-23 08:48:29.056
25381	aaaaa	59	2025-07-23 08:48:32.264
25382	tya-han_04	122	2025-07-23 08:48:36.21
25383	kou-1603	34	2025-07-23 08:48:37.995
25384	ishumi	114	2025-07-23 08:48:40.191
25385	hibiki-118	145	2025-07-23 08:48:43.98
25386	musiko	70	2025-07-23 08:48:45.602
25387	gyt4-3_24	44	2025-07-23 08:48:45.815
25388	shishamo	97	2025-07-23 08:48:47.609
25389	akitennis	47	2025-07-23 08:48:48.004
25390	otsukisama	74	2025-07-23 08:48:48.295
25391	shirogane	59	2025-07-23 08:48:53.467
25392	ha-ruto_00	48	2025-07-23 08:48:53.765
25393	haruuu4	45	2025-07-23 08:48:54.527
25394	sa-sa_0127	56	2025-07-23 08:48:54.541
25395	atomic	68	2025-07-23 08:48:59.141
25396	okiku_0408	59	2025-07-23 08:48:59.154
25397	satohina13	33	2025-07-23 08:48:59.491
25398	shimo1225	66	2025-07-23 08:49:01.581
25399	taiga228	73	2025-07-23 08:49:01.833
25400	sum-lov_13	92	2025-07-23 08:49:02.489
25401	tyanpo-n88	85	2025-07-23 08:49:06.224
25402	patinca-nu	0	2025-07-23 08:49:06.918
25403	mikyu397	37	2025-07-23 08:49:07.109
25404	shudo-220_	60	2025-07-23 08:49:07.713
25405	axvo5145	133	2025-07-23 08:49:18.923
25406	lions-fan1	84	2025-07-23 08:49:20.855
25407	tyankonabe	46	2025-07-23 08:49:25.779
25408	kou-1603	106	2025-07-23 08:49:26.784
25409	aaaaa	41	2025-07-23 08:49:34.122
25410	tya-han_04	59	2025-07-23 08:49:37.919
25411	shimo1225	69	2025-07-23 08:49:47.574
25412	musiko	47	2025-07-23 08:49:47.695
25413	ishumi	37	2025-07-23 08:49:48.89
25414	gyt4-3_24	29	2025-07-23 08:49:49.009
25415	shishamo	95	2025-07-23 08:49:51.082
25416	axvo4241	90	2025-07-23 08:49:56.613
25417	auct1718	50	2025-07-23 08:49:57.023
25418	daisuke	52	2025-07-23 08:49:57.862
25419	haruuu4	35	2025-07-23 08:49:59.277
25420	atomic	84	2025-07-23 08:49:59.529
25421	hibiki-118	93	2025-07-23 08:49:59.891
25422	kota_07-15	60	2025-07-23 08:49:59.977
25423	okiku_0408	77	2025-07-23 08:50:00.157
25424	atomic	83	2025-07-23 08:50:00.659
25425	okiku_0408	76	2025-07-23 08:50:00.995
25426	aritomo	49	2025-07-23 08:50:01.342
25427	ha-ruto_00	50	2025-07-23 08:50:01.368
25428	usshi-	57	2025-07-23 08:50:03.349
25429	sum-lov_13	145	2025-07-23 08:50:04.825
25430	tyanpo-n88	58	2025-07-23 08:50:07.213
25431	patinca-nu	49	2025-07-23 08:50:09.648
25432	otsukisama	64	2025-07-23 08:50:11.442
25433	satohina13	59	2025-07-23 08:50:12.455
25434	aritomo	0	2025-07-23 08:50:16.896
25435	mikyu397	53	2025-07-23 08:50:17.74
25436	akitennis	57	2025-07-23 08:50:20.219
25437	hibiki-118	114	2025-07-23 08:50:24.98
25438	m0gu	58	2025-07-23 08:50:28.891
25439	lions-fan1	97	2025-07-23 08:50:29.725
25440	ri8_hoon-	66	2025-07-23 08:50:31.994
25441	fuuta_s	48	2025-07-23 08:50:36.876
25442	tya-han_04	40	2025-07-23 08:50:39.034
25443	inu255-12	31	2025-07-23 08:50:41.5
25444	ha-ruto_00	134	2025-07-23 08:50:45.112
25445	kaxejn1	2	2025-07-23 08:50:49.954
25446	gyt4-3_24	31	2025-07-23 08:50:50.684
25447	musiko	57	2025-07-23 08:50:52.672
25448	ishumi	38	2025-07-23 08:50:56.245
25449	axvo4241	22	2025-07-23 08:50:59.081
25450	shishamo	78	2025-07-23 08:51:00.414
25451	daisuke	58	2025-07-23 08:51:00.877
25452	kota_07-15	41	2025-07-23 08:51:01.508
25453	haruuu4	41	2025-07-23 08:51:01.542
25454	shishamo	77	2025-07-23 08:51:01.571
25455	okiku_0408	84	2025-07-23 08:51:02.92
25456	usshi-	112	2025-07-23 08:51:04.386
25457	kuri-sou1	45	2025-07-23 08:51:10.723
25458	posting	84	2025-07-23 08:51:17.417
25459	hibiki-118	138	2025-07-23 08:51:18.726
25460	satohina13	36	2025-07-23 08:51:18.936
25461	daisuke	139	2025-07-23 08:51:33.72
25462	otsukisama	59	2025-07-23 08:51:35.405
25463	shimo1225	95	2025-07-23 08:51:40.995
25464	inu255-12	76	2025-07-23 08:51:43.669
25465	imora1107	85	2025-07-23 08:51:44.826
25466	ha-ruto_00	52	2025-07-23 08:51:47.955
25467	musiko	82	2025-07-23 08:51:49.509
25468	kuri-sou1	118	2025-07-23 08:51:52.202
25469	lions-fan1	82	2025-07-23 08:51:54.259
25470	kochi	38	2025-07-23 08:51:55.055
25471	kaxejn1	19	2025-07-23 08:51:56.032
25472	shishamo	102	2025-07-23 08:51:59.16
25473	okiku_0408	73	2025-07-23 08:52:04.709
25474	papico181	73	2025-07-23 08:52:05.637
25475	haru-714	62	2025-07-23 08:52:05.819
25476	gyt4-3_24	45	2025-07-23 08:52:09.907
25477	kota_07-15	38	2025-07-23 08:52:14.364
25478	yes_eo080	117	2025-07-23 08:52:20.855
25479	usshi-	61	2025-07-23 08:52:21.585
25480	tyanpo-n88	87	2025-07-23 08:52:42.566
25481	kyama10_	15	2025-07-23 08:52:46.453
25482	musiko	69	2025-07-23 08:52:52.196
25483	yukiflcx	72	2025-07-23 08:54:00.681
25484	musiko	67	2025-07-23 08:54:14.672
25485	mt_bird	88	2025-07-23 08:54:25.814
25486	hitomi0413	37	2025-07-23 08:55:35.268
25487	musiko	29	2025-07-23 08:58:34.681
25488	lions-fan1	71	2025-07-30 08:41:18.017
25489	waku1waku2	91	2025-07-30 08:41:29.972
25490	shudo-220_	59	2025-07-30 08:41:41.732
25491	usshi-	54	2025-07-30 08:41:51.197
25492	shimo1225	85	2025-07-30 08:41:56.374
25493	lions-fan1	74	2025-07-30 08:42:20.841
25494	waku1waku2	68	2025-07-30 08:42:34.749
25495	shimo1225	60	2025-07-30 08:42:41.678
25496	shudo-220_	60	2025-07-30 08:42:44.67
25497	sa-sa_0127	62	2025-07-30 08:42:46.48
25498	usshi-	51	2025-07-30 08:42:54.779
25499	lions-fan1	80	2025-07-30 08:43:23.527
25500	waku1waku2	74	2025-07-30 08:43:36.31
25501	hibiki-118	92	2025-07-30 08:43:39.764
25502	shimo1225	52	2025-07-30 08:43:43.19
25503	otsukisama	64	2025-07-30 08:43:45.588
25504	sa-sa_0127	65	2025-07-30 08:43:47.733
25505	shudo-220_	60	2025-07-30 08:43:48.741
25506	jo_07-18	72	2025-07-30 08:43:54.416
25507	usshi-	76	2025-07-30 08:44:01.101
25508	lions-fan1	126	2025-07-30 08:44:10.384
25509	posting	127	2025-07-30 08:44:39.838
25510	shimo1225	102	2025-07-30 08:45:08.864
25511	shirogane	47	2025-07-30 08:45:18.395
25512	satohina13	56	2025-07-30 08:45:23.94
25513	hibiki-118	95	2025-07-30 08:45:28.627
25514	lions-fan1	126	2025-07-30 08:45:30.019
25515	usshi-	122	2025-07-30 08:45:44.975
25516	waku1waku2	92	2025-07-30 08:45:47.075
25517	axvo5145	50	2025-07-30 08:45:48.056
25518	okiku_0408	62	2025-07-30 08:45:52.529
25519	jo_07-18	41	2025-07-30 08:45:55.478
25520	otsukisama	75	2025-07-30 08:45:57.513
25521	posting	95	2025-07-30 08:46:07.319
25522	kfc055	46	2025-07-30 08:46:10.082
25523	ri8_hoon-	37	2025-07-30 08:46:16.128
25524	shirogane	45	2025-07-30 08:46:25.473
25525	shimo1225	46	2025-07-30 08:46:26.985
25526	akitennis	98	2025-07-30 08:46:32.644
25527	lions-fan1	58	2025-07-30 08:46:33.031
25528	yuudai1201	46	2025-07-30 08:46:38.103
25529	hibiki-118	66	2025-07-30 08:46:40.532
25534	otsukisama	88	2025-07-30 08:47:02.486
25537	shimo1225	73	2025-07-30 08:47:10.858
25538	kfc055	0	2025-07-30 08:47:11.594
25539	tya-han_04	72	2025-07-30 08:47:16.153
25542	akitennis	43	2025-07-30 08:47:34.816
25543	kyama10_	50	2025-07-30 08:47:39.25
25545	lions-fan1	71	2025-07-30 08:47:40.125
25546	otsukisama	99	2025-07-30 08:47:43.158
25548	kuri-sou1	111	2025-07-30 08:47:46.795
25549	kuri-sou1	110	2025-07-30 08:47:49.276
25551	tyanpo-n88	101	2025-07-30 08:47:56.01
25552	hibiki-118	67	2025-07-30 08:48:00.104
25555	mi-01_28	54	2025-07-30 08:48:01.637
25556	knt_07	28	2025-07-30 08:48:04.184
25559	taiga228	62	2025-07-30 08:48:18.383
25560	tya-han_04	68	2025-07-30 08:48:28.806
25564	waku1waku2	44	2025-07-30 08:48:32.886
25566	vertin15	34	2025-07-30 08:48:40.443
25567	vertin15	33	2025-07-30 08:48:41.918
25572	mikyu397	34	2025-07-30 08:48:53.19
25575	kota_07-15	56	2025-07-30 08:48:58.521
25576	jo_07-18	44	2025-07-30 08:49:02.667
25577	yuudai1201	43	2025-07-30 08:49:04.212
25579	kuri-sou1	85	2025-07-30 08:49:06.856
25580	ishumi	81	2025-07-30 08:49:08.062
25582	mi-01_28	41	2025-07-30 08:49:09.777
25584	waku1waku2	104	2025-07-30 08:49:16.199
25586	hibiki-118	70	2025-07-30 08:49:21.162
25587	hibiki-118	69	2025-07-30 08:49:22.793
25589	ha-ruto_00	111	2025-07-30 08:49:25.546
25590	tya-han_04	52	2025-07-30 08:49:29.936
25591	vertin15	75	2025-07-30 08:49:43.738
25593	lions-fan1	97	2025-07-30 08:49:47.712
25594	imora1107	91	2025-07-30 08:49:48.07
25595	papico181	38	2025-07-30 08:49:48.386
25596	akitennis	53	2025-07-30 08:49:49.816
25598	aritomo	54	2025-07-30 08:49:52.171
25599	shimo1225	72	2025-07-30 08:49:52.894
25600	mikyu397	49	2025-07-30 08:49:58.344
25601	hitomi0413	54	2025-07-30 08:49:58.55
25605	auct1718	55	2025-07-30 08:50:04.663
25606	usshi-	63	2025-07-30 08:50:07.68
25607	tyankonabe	66	2025-07-30 08:50:10.624
25608	ishumi	86	2025-07-30 08:50:13.972
25610	kou-1603	73	2025-07-30 08:50:17.268
25611	waku1waku2	74	2025-07-30 08:50:17.951
25612	shishamo	78	2025-07-30 08:50:20.031
25613	aaaaa	68	2025-07-30 08:50:22.258
25614	ha-ruto_00	94	2025-07-30 08:50:26.582
25617	tya-han_04	14	2025-07-30 08:50:31.748
25618	atomic	29	2025-07-30 08:50:34.666
25620	shimo1225	85	2025-07-30 08:50:45.742
25624	posting	146	2025-07-30 08:50:58.647
25625	hitomi0413	45	2025-07-30 08:51:00.574
25630	shudo-220_	66	2025-07-30 08:51:05.845
25631	fuuta_s	63	2025-07-30 08:51:10.134
25634	usshi-	81	2025-07-30 08:51:12.668
25637	waku1waku2	64	2025-07-30 08:51:19.249
25638	ha-ruto_00	49	2025-07-30 08:51:29.805
25639	imora1107	75	2025-07-30 08:51:36.387
25640	atomic	57	2025-07-30 08:51:36.445
25641	lions-fan1	98	2025-07-30 08:51:41.412
25642	daisuke	81	2025-07-30 08:51:55.525
25643	hibiki-118	104	2025-07-30 08:51:58.632
25644	hitomi0413	60	2025-07-30 08:52:02.36
25645	patinca-nu	61	2025-07-30 08:52:04.345
25651	tyankonabe	56	2025-07-30 08:52:16.894
25656	yukiflcx	73	2025-07-30 08:52:52.629
25657	daisuke	53	2025-07-30 08:52:55.874
25658	masatoshi	20	2025-07-30 08:53:09.189
25659	mt_bird	52	2025-07-30 08:53:12.156
25660	hibiki-118	99	2025-07-30 08:53:16.938
25663	musiko	94	2025-07-30 08:53:33.302
25664	kinniku29	34	2025-07-30 08:53:35.627
25666	fuuta_s	88	2025-07-30 08:53:45.63
25668	posting	118	2025-07-30 08:54:21.191
25669	mt_bird	78	2025-07-30 08:54:21.478
25673	musiko	75	2025-07-30 08:54:38.238
25676	aritomo	69	2025-07-30 08:54:52.477
25677	daisuke	71	2025-07-30 08:54:57.313
25681	musiko	22	2025-07-30 08:55:48.528
25530	waku1waku2	73	2025-07-30 08:46:49.23
25531	axvo5145	84	2025-07-30 08:46:50.395
25532	jo_07-18	30	2025-07-30 08:46:59.178
25533	posting	122	2025-07-30 08:47:02.39
25535	usshi-	57	2025-07-30 08:47:04.74
25536	taiga228	89	2025-07-30 08:47:07.331
25540	sum-lov_13	117	2025-07-30 08:47:22.361
25541	waku1waku2	88	2025-07-30 08:47:30.333
25544	yuudai1201	35	2025-07-30 08:47:39.911
25547	mikyu397	57	2025-07-30 08:47:44.802
25550	shimo1225	111	2025-07-30 08:47:51.135
25553	jo_07-18	69	2025-07-30 08:48:01.123
25554	posting	136	2025-07-30 08:48:01.252
25557	ishumi	60	2025-07-30 08:48:05.936
25558	usshi-	59	2025-07-30 08:48:09.584
25561	shimo1225	104	2025-07-30 08:48:29.742
25562	kaxejn1	0	2025-07-30 08:48:30.369
25563	posting	130	2025-07-30 08:48:30.988
25565	otsukisama	104	2025-07-30 08:48:39.732
25568	lions-fan1	68	2025-07-30 08:48:42.749
25569	akitennis	112	2025-07-30 08:48:43.279
25570	papico181	40	2025-07-30 08:48:45.349
25571	axvo4241	93	2025-07-30 08:48:50.478
25573	hitomi0413	57	2025-07-30 08:48:55.66
25574	tyanpo-n88	47	2025-07-30 08:48:58.484
25578	usshi-	118	2025-07-30 08:49:05.014
25581	ishumi	80	2025-07-30 08:49:09.579
25583	shimo1225	113	2025-07-30 08:49:13.717
25585	aaaaa	54	2025-07-30 08:49:19.265
25588	shishamo	94	2025-07-30 08:49:24.23
25592	kaxejn1	76	2025-07-30 08:49:46.387
25597	axvo4241	82	2025-07-30 08:49:51.97
25602	knt_07	34	2025-07-30 08:49:59.342
25603	tyanpo-n88	55	2025-07-30 08:49:59.949
25604	kota_07-15	37	2025-07-30 08:50:00.302
25609	mi-01_28	64	2025-07-30 08:50:15.167
25615	hibiki-118	118	2025-07-30 08:50:27.625
25616	posting	70	2025-07-30 08:50:28.835
25619	papico181	119	2025-07-30 08:50:45.03
25621	lions-fan1	80	2025-07-30 08:50:50.726
25622	mikyu397	92	2025-07-30 08:50:54.166
25623	aritomo	31	2025-07-30 08:50:54.71
25626	knt_07	75	2025-07-30 08:51:02.248
25627	shishamo	131	2025-07-30 08:51:03.808
25628	kota_07-15	46	2025-07-30 08:51:04.289
25629	akitennis	66	2025-07-30 08:51:05.238
25632	tya-han_04	114	2025-07-30 08:51:12.424
25633	kou-1603	87	2025-07-30 08:51:12.449
25635	tyankonabe	35	2025-07-30 08:51:15.159
25636	ishumi	69	2025-07-30 08:51:15.772
25646	kiyodai	53	2025-07-30 08:52:06.464
25647	kota_07-15	36	2025-07-30 08:52:08.165
25648	knt_07	73	2025-07-30 08:52:10.2
25649	m0gu	46	2025-07-30 08:52:16.404
25650	usshi-	64	2025-07-30 08:52:16.662
25652	haruuu4	34	2025-07-30 08:52:20.353
25653	gyt4-3_24	33	2025-07-30 08:52:21.953
25654	aritomo	39	2025-07-30 08:52:28.869
25655	posting	86	2025-07-30 08:52:33.21
25661	knt_07	76	2025-07-30 08:53:17.57
25662	posting	102	2025-07-30 08:53:19.696
25665	aritomo	42	2025-07-30 08:53:42.147
25667	daisuke	41	2025-07-30 08:53:56.433
25670	miyu_0913	56	2025-07-30 08:54:23.254
25671	satohina13	40	2025-07-30 08:54:37.879
25672	gyt4-3_24	66	2025-07-30 08:54:37.988
25674	fuuta_s	58	2025-07-30 08:54:47.797
25675	posting	93	2025-07-30 08:54:48.542
25678	masatoshi	50	2025-07-30 08:55:08.378
25679	knt_07	87	2025-07-30 08:55:18.842
25680	daisuke	143	2025-07-30 08:55:26.265
25682	fuuta_s	33	2025-07-30 08:55:50.27
25683	hkimura	0	2025-08-03 19:24:57.254
25684	hkimura	0	2025-08-03 19:25:05.25
25685	hkimura	84	2025-09-28 19:20:56.818
25686	hkimura	54	2025-09-29 10:41:37.471
25687	tya-han_04	62	2025-10-07 14:57:01.742
25688	tya-han_04	109	2025-10-07 14:57:48.359
25689	tya-han_04	58	2025-10-07 14:58:50.3
25690	tya-han_04	69	2025-10-07 14:59:52.837
25691	okiku_0408	69	2025-10-14 10:27:01.185
25692	ri8_hoon-	1	2025-10-14 10:28:20.127
25693	knt_07	44	2025-10-14 10:28:42.562
25694	otsukisama	126	2025-10-14 10:28:45.91
25695	aaaaa	59	2025-10-14 10:28:50.031
25696	yukiflcx	123	2025-10-14 10:28:53.502
25697	axvo5145	38	2025-10-14 10:29:00.166
25698	sa-sa_0127	48	2025-10-14 10:29:14.056
25699	ishumi	70	2025-10-14 10:29:15.285
25700	tya-han_04	61	2025-10-14 10:29:28.399
25701	ri8_hoon-	57	2025-10-14 10:29:31.557
25702	kfc055	51	2025-10-14 10:29:39.641
25703	okiku_0408	65	2025-10-14 10:29:42.675
25704	haruuu4	29	2025-10-14 10:29:45.965
25705	usshi-	78	2025-10-14 10:29:45.977
25706	knt_07	58	2025-10-14 10:29:46.504
25707	hitomi0413	81	2025-10-14 10:29:48.758
25708	vertin15	65	2025-10-14 10:29:49.97
25709	aaaaa	46	2025-10-14 10:29:57.586
25710	yukiflcx	91	2025-10-14 10:29:58.918
25711	axvo5145	39	2025-10-14 10:30:01.655
25712	daisuke	95	2025-10-14 10:30:04.253
25713	m0gu	69	2025-10-14 10:30:04.301
25714	atomic	49	2025-10-14 10:30:05.783
25715	waku1waku2	89	2025-10-14 10:30:13.881
25716	sa-sa_0127	39	2025-10-14 10:30:15.966
25717	ishumi	78	2025-10-14 10:30:22.233
25718	shirogane	48	2025-10-14 10:30:30.675
25719	shishamo	77	2025-10-14 10:30:31.744
25720	tya-han_04	56	2025-10-14 10:30:32.059
25721	otsukisama	87	2025-10-14 10:30:36.143
25722	yuudai1201	70	2025-10-14 10:30:38.209
25723	ri8_hoon-	65	2025-10-14 10:30:41.088
25724	mi-01_28	57	2025-10-14 10:30:41.153
25725	kfc055	59	2025-10-14 10:30:42.114
25726	kaxejn1	0	2025-10-14 10:30:42.922
25727	lions-fan1	83	2025-10-14 10:30:43.4
25728	tyanpo-n88	124	2025-10-14 10:30:45.844
25729	kou-1603	99	2025-10-14 10:30:47.847
25730	kiyodai	18	2025-10-14 10:30:49.78
25731	usshi-	33	2025-10-14 10:30:50.062
25732	shimo1225	77	2025-10-14 10:30:50.759
25733	hitomi0413	108	2025-10-14 10:30:56.874
25734	italia_lia	25	2025-10-14 10:30:59.424
25735	miyu_0913	77	2025-10-14 10:31:00.467
25736	masatoshi	28	2025-10-14 10:31:01.008
25737	yukiflcx	86	2025-10-14 10:31:03.044
25738	haru-714	26	2025-10-14 10:31:05.244
25739	axvo5145	32	2025-10-14 10:31:05.44
25740	daisuke	83	2025-10-14 10:31:05.603
25741	kota_07-15	86	2025-10-14 10:31:07.057
25742	atomic	48	2025-10-14 10:31:07.998
25743	tyankonabe	39	2025-10-14 10:31:16.926
25744	kochi	55	2025-10-14 10:31:19.149
25745	posting	88	2025-10-14 10:31:22.572
25746	mikyu397	54	2025-10-14 10:31:23.836
25747	ishumi	63	2025-10-14 10:31:24.713
25748	imora1107	1	2025-10-14 10:31:24.973
25749	kinniku29	30	2025-10-14 10:31:25.22
25750	shishamo	121	2025-10-14 10:31:25.369
25751	waku1waku2	68	2025-10-14 10:31:36.652
25752	yuudai1201	89	2025-10-14 10:31:42.016
25753	tya-han_04	71	2025-10-14 10:31:42.778
25754	otsukisama	82	2025-10-14 10:31:43.553
25755	lions-fan1	85	2025-10-14 10:31:45.459
25756	atomic	136	2025-10-14 10:31:47.653
25757	tyanpo-n88	85	2025-10-14 10:31:50.064
25758	shimo1225	63	2025-10-14 10:31:50.672
25759	kiyodai	20	2025-10-14 10:31:51.13
25760	auct1718	52	2025-10-14 10:31:52.248
25761	kaxejn1	0	2025-10-14 10:31:53.15
25762	daisuke	124	2025-10-14 10:31:53.864
25763	shudo-220_	102	2025-10-14 10:31:54.197
25764	ha-ruto_00	89	2025-10-14 10:31:54.811
25765	miyu_0913	85	2025-10-14 10:31:57.358
25766	axvo5145	100	2025-10-14 10:31:57.362
25767	italia_lia	39	2025-10-14 10:32:03.508
25768	aritomo	42	2025-10-14 10:32:04.352
25769	yukiflcx	132	2025-10-14 10:32:04.772
25770	usshi-	48	2025-10-14 10:32:05.454
25771	patinca-nu	131	2025-10-14 10:32:06.222
25772	shishamo	114	2025-10-14 10:32:08.326
25773	jo_07-18	57	2025-10-14 10:32:09.657
25774	akitennis	59	2025-10-14 10:32:11.139
25775	kota_07-15	29	2025-10-14 10:32:11.417
25776	hibiki-118	69	2025-10-14 10:32:21.046
25777	tyankonabe	48	2025-10-14 10:32:21.174
25778	papico181	83	2025-10-14 10:32:21.176
25779	sum-lov_13	117	2025-10-14 10:32:25.042
25780	taiga228	44	2025-10-14 10:32:29.12
25781	ishumi	62	2025-10-14 10:32:31.925
25782	shimo1225	107	2025-10-14 10:32:33.712
25783	haru-714	34	2025-10-14 10:32:36.994
25784	masatoshi	43	2025-10-14 10:32:39.463
25785	ask-mog1_1	57	2025-10-14 10:32:41.743
25786	yuudai1201	54	2025-10-14 10:32:45.504
25787	waku1waku2	86	2025-10-14 10:32:47.007
25788	kiyodai	0	2025-10-14 10:32:52.109
25789	tyanpo-n88	108	2025-10-14 10:32:53.449
25790	auct1718	85	2025-10-14 10:32:54.936
25791	shudo-220_	82	2025-10-14 10:32:55.269
25792	daisuke	84	2025-10-14 10:32:55.692
25793	miyu_0913	57	2025-10-14 10:32:58.781
25794	posting	112	2025-10-14 10:33:02.745
25795	kaxejn1	64	2025-10-14 10:33:03.947
25796	hitomi0413	70	2025-10-14 10:33:04.395
25797	usshi-	72	2025-10-14 10:33:06.468
25798	yukiflcx	66	2025-10-14 10:33:08.747
25799	jo_07-18	29	2025-10-14 10:33:11.947
25800	kota_07-15	72	2025-10-14 10:33:12.886
25801	shishamo	83	2025-10-14 10:33:13.904
25802	italia_lia	31	2025-10-14 10:33:15.561
25803	kochi	53	2025-10-14 10:33:19.625
25804	tyankonabe	84	2025-10-14 10:33:21.245
25805	hibiki-118	58	2025-10-14 10:33:22.803
25806	imora1107	77	2025-10-14 10:33:23.301
25807	ha-ruto_00	44	2025-10-14 10:33:27.28
25808	satohina13	42	2025-10-14 10:33:27.914
25809	papico181	117	2025-10-14 10:33:28.907
25810	fuuta_s	41	2025-10-14 10:33:30.895
25811	axvo5145	46	2025-10-14 10:33:33.446
25812	taiga228	67	2025-10-14 10:33:35.975
25813	ishumi	67	2025-10-14 10:33:42.001
25814	hibiki-118	122	2025-10-14 10:33:54.699
25815	shimo1225	87	2025-10-14 10:33:56.423
25816	shudo-220_	46	2025-10-14 10:34:00.025
25817	musiko	50	2025-10-14 10:34:03.994
25818	kota_07-15	63	2025-10-14 10:34:16.765
25819	fuuta_s	73	2025-10-14 10:34:20.887
25820	kyama10_	42	2025-10-14 10:34:26.484
25821	ha-ruto_00	61	2025-10-14 10:34:30.053
25822	italia_lia	68	2025-10-14 10:34:36.557
25823	tujiri_01	40	2025-10-14 10:34:45.868
25824	mt_bird	72	2025-10-14 10:35:01.728
25825	italia_lia	0	2025-10-14 10:35:05.43
25826	musiko	87	2025-10-14 10:35:05.643
25827	yes_eo080	118	2025-10-14 10:35:21.963
25828	kuri-sou1	92	2025-10-14 10:35:22.656
25829	tujiri_01	123	2025-10-14 10:35:41.961
25830	mt_bird	114	2025-10-14 10:35:44.466
25831	akitennis	75	2025-10-14 10:36:01.51
25832	tujiri_01	0	2025-10-14 10:36:04.235
25833	aritomo	66	2025-10-14 10:36:08.454
25834	hibiki-118	76	2025-10-14 10:36:13.812
25835	hibiki-118	137	2025-10-14 10:37:02.246
25836	hibiki-118	68	2025-10-14 10:38:02.321
25837	satohina13	59	2025-10-21 10:26:47.542
25838	kfc055	51	2025-10-21 10:26:48.025
25839	taiga228	50	2025-10-21 10:27:10.683
25840	usshi-	58	2025-10-21 10:27:12.427
25841	akitennis	68	2025-10-21 10:27:16.409
25842	otsukisama	87	2025-10-21 10:27:29.912
25843	haruuu4	40	2025-10-21 10:27:32.359
25844	shudo-220_	80	2025-10-21 10:27:37.649
25845	mikyu397	74	2025-10-21 10:27:39.772
25846	sa-sa_0127	49	2025-10-21 10:27:41.605
25847	kfc055	28	2025-10-21 10:27:49.993
25848	shishamo	92	2025-10-21 10:27:50.114
25849	italia_lia	28	2025-10-21 10:27:50.769
25850	satohina13	38	2025-10-21 10:28:08.712
25851	ishumi	95	2025-10-21 10:28:11.747
25852	haru-714	61	2025-10-21 10:28:16.081
25853	kou-1603	92	2025-10-21 10:28:16.651
25854	waku1waku2	74	2025-10-21 10:28:18.066
25855	lions-fan1	75	2025-10-21 10:28:20.295
25856	usshi-	60	2025-10-21 10:28:21.125
25857	shishamo	125	2025-10-21 10:28:26.21
25858	ha-ruto_00	123	2025-10-21 10:28:28.565
25859	kochi	41	2025-10-21 10:28:29.997
25860	axvo5145	38	2025-10-21 10:28:31.155
25861	kaxejn1	39	2025-10-21 10:28:31.78
25862	otsukisama	49	2025-10-21 10:28:33.33
25863	akitennis	84	2025-10-21 10:28:34.82
25864	haruuu4	61	2025-10-21 10:28:36.348
25865	shudo-220_	92	2025-10-21 10:28:39.528
25866	aaaaa	51	2025-10-21 10:28:40.033
25867	inu255-12	50	2025-10-21 10:28:44.276
25868	mikyu397	61	2025-10-21 10:28:44.721
25869	ri8_hoon-	47	2025-10-21 10:28:47.849
25870	musiko	82	2025-10-21 10:28:48.297
25871	kai-_0224	47	2025-10-21 10:28:49.456
25872	auct1718	43	2025-10-21 10:28:50.867
25873	taiga228	62	2025-10-21 10:28:51.253
25874	posting	80	2025-10-21 10:28:52.26
25875	italia_lia	54	2025-10-21 10:28:54.233
25876	m0gu	69	2025-10-21 10:28:56.916
25877	okiku_0408	77	2025-10-21 10:29:03.005
25878	kinniku29	13	2025-10-21 10:29:04.451
25879	kota_07-15	41	2025-10-21 10:29:05.227
25880	shimo1225	64	2025-10-21 10:29:08.773
25881	satohina13	76	2025-10-21 10:29:15.134
25882	ishumi	57	2025-10-21 10:29:15.153
25883	papico181	64	2025-10-21 10:29:16.194
25884	tya-han_04	0	2025-10-21 10:29:17.553
25885	waku1waku2	64	2025-10-21 10:29:21.272
25886	shishamo	104	2025-10-21 10:29:23.94
25887	jo_07-18	59	2025-10-21 10:29:27.697
25888	ha-ruto_00	44	2025-10-21 10:29:30.286
25889	atomic	79	2025-10-21 10:29:31.825
25890	kaxejn1	77	2025-10-21 10:29:32.603
25891	usshi-	58	2025-10-21 10:29:33.415
25892	axvo5145	93	2025-10-21 10:29:34.079
25893	kochi	117	2025-10-21 10:29:36.924
25894	tyankonabe	20	2025-10-21 10:29:39.201
25895	inu255-12	104	2025-10-21 10:29:49.31
25896	knt_07	30	2025-10-21 10:29:50.684
25897	posting	124	2025-10-21 10:29:51.254
25898	kai-_0224	0	2025-10-21 10:29:51.879
25899	shimo1225	82	2025-10-21 10:29:56.503
25900	hibiki-118	61	2025-10-21 10:29:59.537
25901	musiko	78	2025-10-21 10:30:01.327
25902	kiyodai	50	2025-10-21 10:30:02.978
25903	italia_lia	55	2025-10-21 10:30:02.998
25904	waku1waku2	105	2025-10-21 10:30:09.425
25905	kinniku29	37	2025-10-21 10:30:09.694
25906	okiku_0408	89	2025-10-21 10:30:11.77
25907	patinca-nu	64	2025-10-21 10:30:12.388
25908	shudo-220_	122	2025-10-21 10:30:13.295
25909	aritomo	58	2025-10-21 10:30:13.444
25910	auct1718	23	2025-10-21 10:30:14.029
25911	yuudai1201	124	2025-10-21 10:30:17.003
25912	lions-fan1	60	2025-10-21 10:30:18.608
25913	kota_07-15	71	2025-10-21 10:30:18.67
25914	miyu_0913	84	2025-10-21 10:30:19.077
25915	papico181	51	2025-10-21 10:30:19.601
25916	tya-han_04	63	2025-10-21 10:30:20.473
25917	axvo4241	69	2025-10-21 10:30:21.152
25918	ishumi	68	2025-10-21 10:30:21.852
25919	taiga228	35	2025-10-21 10:30:21.887
25920	aaaaa	80	2025-10-21 10:30:24.312
25921	atomic	118	2025-10-21 10:30:26.119
25922	ha-ruto_00	24	2025-10-21 10:30:32.344
25923	imora1107	129	2025-10-21 10:30:32.428
25924	tyanpo-n88	47	2025-10-21 10:30:34.046
25925	usshi-	62	2025-10-21 10:30:36.801
25926	tyankonabe	122	2025-10-21 10:30:38.419
25927	akitennis	91	2025-10-21 10:30:39.565
25928	kuri-sou1	70	2025-10-21 10:30:41.11
25929	knt_07	95	2025-10-21 10:30:41.124
25930	shimo1225	104	2025-10-21 10:30:41.727
25931	hitomi0413	75	2025-10-21 10:30:45.312
25932	axvo5145	37	2025-10-21 10:30:47.028
25933	kaxejn1	87	2025-10-21 10:30:48.908
25934	shirogane	130	2025-10-21 10:30:49.441
25935	inu255-12	65	2025-10-21 10:30:53.705
25936	shishamo	135	2025-10-21 10:30:56.255
25937	hibiki-118	22	2025-10-21 10:31:02.227
25938	waku1waku2	74	2025-10-21 10:31:11.572
25939	italia_lia	55	2025-10-21 10:31:13.446
25940	kiyodai	55	2025-10-21 10:31:13.958
25941	tyanpo-n88	83	2025-10-21 10:31:14.322
25942	otsukisama	79	2025-10-21 10:31:15.176
25943	shudo-220_	45	2025-10-21 10:31:15.959
25944	okiku_0408	66	2025-10-21 10:31:16.443
25945	yuudai1201	46	2025-10-21 10:31:18.298
25946	jo_07-18	54	2025-10-21 10:31:19.459
25947	kota_07-15	45	2025-10-21 10:31:20.492
25948	miyu_0913	58	2025-10-21 10:31:21.071
25949	usshi-	132	2025-10-21 10:31:21.647
25950	haru-714	30	2025-10-21 10:31:22.806
25951	tya-han_04	21	2025-10-21 10:31:22.886
25952	axvo4241	82	2025-10-21 10:31:23.788
25953	kai-_0224	47	2025-10-21 10:31:24.047
25954	atomic	90	2025-10-21 10:31:28.276
25955	lions-fan1	81	2025-10-21 10:31:29.159
25956	aritomo	49	2025-10-21 10:31:29.481
25957	papico181	68	2025-10-21 10:31:29.627
25958	kyama10_	37	2025-10-21 10:31:30.528
25959	shimo1225	66	2025-10-21 10:31:32.329
25960	ha-ruto_00	62	2025-10-21 10:31:34.126
25961	musiko	80	2025-10-21 10:31:42.138
25962	kuri-sou1	60	2025-10-21 10:31:45.097
25963	posting	86	2025-10-21 10:31:45.282
25964	knt_07	124	2025-10-21 10:31:46.065
25965	hitomi0413	42	2025-10-21 10:31:47.256
25966	akitennis	87	2025-10-21 10:31:47.747
25967	sum-lov_13	23	2025-10-21 10:31:49.505
25968	daisuke	91	2025-10-21 10:32:02.637
25969	hibiki-118	73	2025-10-21 10:32:03.198
25970	tyanpo-n88	116	2025-10-21 10:32:11.63
25971	waku1waku2	68	2025-10-21 10:32:13.791
25972	kiyodai	59	2025-10-21 10:32:15.823
25973	shimo1225	40	2025-10-21 10:32:17.335
25974	shudo-220_	60	2025-10-21 10:32:19.027
25975	ask-mog1_1	118	2025-10-21 10:32:20.183
25976	yukiflcx	125	2025-10-21 10:32:23.437
25977	tya-han_04	49	2025-10-21 10:32:24.776
25978	tyankonabe	46	2025-10-21 10:32:25.708
25979	lions-fan1	91	2025-10-21 10:32:30.91
25980	hibiki-118	104	2025-10-21 10:32:34.332
25981	ha-ruto_00	80	2025-10-21 10:32:37.397
25982	aritomo	54	2025-10-21 10:32:41.005
25983	musiko	70	2025-10-21 10:32:48.635
25984	mt_bird	79	2025-10-21 10:32:52.174
25985	yes_eo080	0	2025-10-21 10:32:57.069
25986	daisuke	94	2025-10-21 10:32:59.143
25987	tya-han_04	70	2025-10-21 10:33:27.585
25988	mt_bird	116	2025-10-21 10:33:31.306
25989	yukiflcx	62	2025-10-21 10:33:34.321
25990	daisuke	106	2025-10-21 10:33:42.742
25991	a-sakito13	24	2025-10-21 10:33:57.766
25992	yes_eo080	83	2025-10-21 10:34:12.44
25993	vertin15	46	2025-10-21 10:34:26.064
25994	aritomo	76	2025-10-21 10:34:46.128
25995	kinniku29	0	2025-10-28 10:26:29.205
25996	ri8_hoon-	88	2025-10-28 10:26:37.45
25997	otsukisama	81	2025-10-28 10:26:50.303
25998	aaaaa	73	2025-10-28 10:26:53.46
25999	mikyu397	62	2025-10-28 10:27:23.672
26000	kinniku29	42	2025-10-28 10:27:32.218
26001	kfc055	49	2025-10-28 10:27:40.75
26002	taiga228	116	2025-10-28 10:27:45.47
26003	italia_lia	123	2025-10-28 10:27:50.399
26004	fuuta_s	0	2025-10-28 10:27:53.919
26005	kou-1603	92	2025-10-28 10:27:55.95
26006	aaaaa	69	2025-10-28 10:27:56.754
26007	axvo5145	92	2025-10-28 10:27:58.233
26008	kyama10_	37	2025-10-28 10:27:58.792
26009	akitennis	57	2025-10-28 10:27:59.396
26010	yes_eo080	70	2025-10-28 10:28:00.548
26011	tya-han_04	44	2025-10-28 10:28:00.875
26012	ishumi	23	2025-10-28 10:28:05.956
26013	usshi-	51	2025-10-28 10:28:07.414
26014	inu255-12	52	2025-10-28 10:28:15.041
26015	lions-fan1	72	2025-10-28 10:28:24.349
26016	haru-714	50	2025-10-28 10:28:31.508
26017	yuudai1201	47	2025-10-28 10:28:34.92
26018	atomic	59	2025-10-28 10:28:35.224
26019	shudo-220_	32	2025-10-28 10:28:36.305
26020	ha-ruto_00	47	2025-10-28 10:28:38.935
26021	shimo1225	87	2025-10-28 10:28:45.002
26022	sum-lov_13	82	2025-10-28 10:28:47.412
26023	daisuke	70	2025-10-28 10:28:47.431
26024	knt_07	64	2025-10-28 10:28:51.564
26025	kai-_0224	23	2025-10-28 10:28:52.374
26026	papico181	54	2025-10-28 10:28:53.027
26027	shishamo	34	2025-10-28 10:28:57.344
26028	aaaaa	122	2025-10-28 10:28:57.823
26029	akitennis	71	2025-10-28 10:29:06.691
26030	kyama10_	65	2025-10-28 10:29:09.509
26031	jo_07-18	41	2025-10-28 10:29:09.729
26032	waku1waku2	76	2025-10-28 10:29:11.884
26033	otsukisama	108	2025-10-28 10:29:17.387
26034	kfc055	49	2025-10-28 10:29:19.747
26035	auct1718	64	2025-10-28 10:29:21.709
26036	kaxejn1	69	2025-10-28 10:29:22.764
26037	lions-fan1	88	2025-10-28 10:29:25.567
26038	musiko	44	2025-10-28 10:29:29.12
26039	atomic	117	2025-10-28 10:29:30.265
26040	daisuke	104	2025-10-28 10:29:33.256
26048	axvo5145	44	2025-10-28 10:29:56.423
26049	kiyodai	45	2025-10-28 10:29:58.622
26050	ishumi	46	2025-10-28 10:29:59.759
26052	papico181	59	2025-10-28 10:30:10.859
26057	shishamo	121	2025-10-28 10:30:24.775
26058	kaxejn1	41	2025-10-28 10:30:25.991
26059	kai-_0224	96	2025-10-28 10:30:27.654
26062	waku1waku2	55	2025-10-28 10:30:37.644
26063	mi-01_28	114	2025-10-28 10:30:39.434
26067	kuri-sou1	16	2025-10-28 10:30:48.279
26068	ha-ruto_00	51	2025-10-28 10:30:50.487
26071	shimo1225	100	2025-10-28 10:30:52.004
26074	imora1107	83	2025-10-28 10:30:54.154
26075	tya-han_04	61	2025-10-28 10:30:56.17
26078	sa-sa_0127	85	2025-10-28 10:31:01.533
26080	ishumi	64	2025-10-28 10:31:07.186
26085	patinca-nu	19	2025-10-28 10:31:16.7
26086	inu255-12	66	2025-10-28 10:31:17.931
26091	lions-fan1	88	2025-10-28 10:31:35.157
26092	shimo1225	73	2025-10-28 10:31:38.321
26097	usshi-	126	2025-10-28 10:31:51.474
26101	tya-han_04	51	2025-10-28 10:31:57.626
26104	yes_eo080	69	2025-10-28 10:32:12.315
26110	kinniku29	32	2025-10-28 10:32:56.069
26113	kuri-sou1	41	2025-10-28 10:33:36.077
26114	tujiri_01	74	2025-10-28 10:33:43.061
26118	hitomi0413	55	2025-10-28 10:35:05.709
26119	yukiflcx	123	2025-10-28 10:35:10.378
26120	a-sakito13	0	2025-10-28 10:35:11.937
26121	mt_bird	55	2025-10-28 10:35:52.143
26041	ha-ruto_00	68	2025-10-28 10:29:40.333
26042	italia_lia	24	2025-10-28 10:29:43.397
26043	haru-714	72	2025-10-28 10:29:44.113
26044	kota_07-15	18	2025-10-28 10:29:44.422
26045	yuudai1201	44	2025-10-28 10:29:48.38
26046	imora1107	50	2025-10-28 10:29:52.773
26047	usshi-	62	2025-10-28 10:29:55.325
26051	shudo-220_	49	2025-10-28 10:30:05.615
26053	aritomo	34	2025-10-28 10:30:11.965
26054	masatoshi	43	2025-10-28 10:30:13.301
26055	inu255-12	45	2025-10-28 10:30:13.869
26056	musiko	100	2025-10-28 10:30:24.768
26060	posting	95	2025-10-28 10:30:33.824
26061	daisuke	81	2025-10-28 10:30:34.61
26064	jo_07-18	57	2025-10-28 10:30:41.352
26065	kota_07-15	71	2025-10-28 10:30:46.261
26066	satohina13	48	2025-10-28 10:30:48.043
26069	yuudai1201	45	2025-10-28 10:30:51.036
26070	atomic	100	2025-10-28 10:30:51.997
26072	ask-mog1_1	63	2025-10-28 10:30:52.112
26073	hibiki-118	39	2025-10-28 10:30:53.132
26076	usshi-	78	2025-10-28 10:30:58.708
26077	axvo5145	63	2025-10-28 10:31:00.521
26079	axvo4241	100	2025-10-28 10:31:05.902
26081	italia_lia	57	2025-10-28 10:31:07.566
26082	shirogane	54	2025-10-28 10:31:07.936
26083	papico181	55	2025-10-28 10:31:14.089
26084	shishamo	90	2025-10-28 10:31:16.197
26087	hitomi0413	59	2025-10-28 10:31:18.214
26088	masatoshi	26	2025-10-28 10:31:19.406
26089	tyanpo-n88	92	2025-10-28 10:31:27.865
26090	taiga228	0	2025-10-28 10:31:32.179
26093	waku1waku2	73	2025-10-28 10:31:39.093
26094	mi-01_28	46	2025-10-28 10:31:43.425
26095	sa-sa_0127	0	2025-10-28 10:31:43.677
26096	hibiki-118	74	2025-10-28 10:31:50.374
26098	ha-ruto_00	74	2025-10-28 10:31:54.273
26099	ask-mog1_1	61	2025-10-28 10:31:56.099
26100	kaxejn1	67	2025-10-28 10:31:56.776
26102	ishumi	62	2025-10-28 10:32:09.973
26103	shishamo	133	2025-10-28 10:32:10.741
26105	italia_lia	75	2025-10-28 10:32:22.098
26106	hibiki-118	72	2025-10-28 10:32:25.248
26107	tyanpo-n88	83	2025-10-28 10:32:29.985
26108	kuri-sou1	35	2025-10-28 10:32:31.83
26109	sa-sa_0127	45	2025-10-28 10:32:47.597
26111	aritomo	31	2025-10-28 10:33:11.15
26112	m0gu	29	2025-10-28 10:33:29.957
26115	haruuu4	42	2025-10-28 10:34:06.849
26116	posting	82	2025-10-28 10:34:22.232
26117	vertin15	58	2025-10-28 10:35:03.543
26122	hibiki-118	103	2025-11-04 10:26:00.155
26123	kiyodai	54	2025-11-04 10:26:05.108
26124	m0gu	61	2025-11-04 10:26:13.803
26125	kinniku29	0	2025-11-04 10:26:19.512
26126	haruuu4	88	2025-11-04 10:26:27.178
26127	tya-han_04	89	2025-11-04 10:26:28.05
26128	satohina13	31	2025-11-04 10:26:28.359
26129	kfc055	48	2025-11-04 10:26:29.851
26130	mikyu397	79	2025-11-04 10:26:35.918
26131	sa-sa_0127	96	2025-11-04 10:26:36.698
26132	hitomi0413	58	2025-11-04 10:26:59.957
26133	tya-han_04	149	2025-11-04 10:27:01.018
26134	hibiki-118	70	2025-11-04 10:27:03.823
26135	inu255-12	46	2025-11-04 10:27:11.79
26136	atomic	62	2025-11-04 10:27:14.723
26137	mi-01_28	73	2025-11-04 10:27:17.336
26138	taiga228	49	2025-11-04 10:27:25.678
26139	a-sakito13	36	2025-11-04 10:27:29.802
26140	kinniku29	16	2025-11-04 10:27:30.581
26141	shishamo	89	2025-11-04 10:27:39.616
26142	sa-sa_0127	0	2025-11-04 10:27:40.702
26143	otsukisama	96	2025-11-04 10:28:00.129
26144	usshi-	50	2025-11-04 10:28:01.197
26145	hitomi0413	57	2025-11-04 10:28:01.85
26146	patinca-nu	93	2025-11-04 10:28:06.704
26147	shimo1225	70	2025-11-04 10:28:11.471
26148	tyankonabe	0	2025-11-04 10:28:14.32
26149	tya-han_04	43	2025-11-04 10:28:17.039
26150	atomic	62	2025-11-04 10:28:18.105
26151	ri8_hoon-	16	2025-11-04 10:28:19.861
26152	kou-1603	87	2025-11-04 10:28:27.009
26153	shudo-220_	63	2025-11-04 10:28:29.075
26154	shishamo	91	2025-11-04 10:28:31.294
26155	axvo5145	118	2025-11-04 10:28:38.671
26156	ishumi	17	2025-11-04 10:28:39.224
26157	kai-_0224	33	2025-11-04 10:28:41.295
26158	haru-714	85	2025-11-04 10:28:41.633
26159	italia_lia	59	2025-11-04 10:28:42.934
26160	taiga228	77	2025-11-04 10:28:43.305
26161	hitomi0413	110	2025-11-04 10:28:45.996
26162	daisuke	108	2025-11-04 10:28:52.846
26163	ha-ruto_00	34	2025-11-04 10:28:53.333
26164	inu255-12	48	2025-11-04 10:28:53.42
26165	imora1107	125	2025-11-04 10:28:54.331
26166	waku1waku2	78	2025-11-04 10:28:56.61
26167	jo_07-18	45	2025-11-04 10:28:56.665
26168	okiku_0408	51	2025-11-04 10:29:00.261
26169	kaxejn1	36	2025-11-04 10:29:00.747
26170	shimo1225	93	2025-11-04 10:29:01.896
26171	usshi-	82	2025-11-04 10:29:03.287
26172	kuri-sou1	47	2025-11-04 10:29:10.776
26173	vertin15	78	2025-11-04 10:29:11.547
26174	atomic	115	2025-11-04 10:29:16.924
26175	aaaaa	64	2025-11-04 10:29:23.4
26176	fuuta_s	43	2025-11-04 10:29:26.696
26177	italia_lia	132	2025-11-04 10:29:28.316
26178	kota_07-15	31	2025-11-04 10:29:30.963
26179	ha-ruto_00	134	2025-11-04 10:29:31.762
26180	lions-fan1	68	2025-11-04 10:29:33.03
26181	kyama10_	54	2025-11-04 10:29:37.36
26182	ishumi	68	2025-11-04 10:29:41.583
26183	axvo5145	50	2025-11-04 10:29:44.483
26184	knt_07	0	2025-11-04 10:29:45.821
26185	shudo-220_	40	2025-11-04 10:29:48.669
26186	kai-_0224	15	2025-11-04 10:29:50.109
26187	shimo1225	57	2025-11-04 10:29:56.503
26188	daisuke	42	2025-11-04 10:29:56.958
26189	imora1107	39	2025-11-04 10:29:57.312
26190	waku1waku2	57	2025-11-04 10:29:58.43
26191	tujiri_01	0	2025-11-04 10:29:58.508
26192	kochi	51	2025-11-04 10:30:06.321
26193	akitennis	70	2025-11-04 10:30:07.74
26194	tyankonabe	50	2025-11-04 10:30:08.618
26195	jo_07-18	48	2025-11-04 10:30:09.362
26196	lions-fan1	137	2025-11-04 10:30:12.368
26197	usshi-	65	2025-11-04 10:30:19.337
26198	okiku_0408	63	2025-11-04 10:30:21.013
26199	aaaaa	73	2025-11-04 10:30:28.143
26200	ha-ruto_00	39	2025-11-04 10:30:33
26201	shimo1225	95	2025-11-04 10:30:35.485
26202	taiga228	72	2025-11-04 10:30:38.198
26203	aritomo	76	2025-11-04 10:30:40.357
26204	kota_07-15	89	2025-11-04 10:30:40.675
26205	fuuta_s	62	2025-11-04 10:30:42.194
26206	tujiri_01	132	2025-11-04 10:30:49.062
26207	shudo-220_	55	2025-11-04 10:30:51.359
26208	knt_07	24	2025-11-04 10:30:53.642
26209	kai-_0224	53	2025-11-04 10:30:54.547
26210	kuri-sou1	58	2025-11-04 10:30:59.962
26211	yukiflcx	44	2025-11-04 10:31:06.721
26212	kochi	71	2025-11-04 10:31:10.289
26213	tyankonabe	46	2025-11-04 10:31:16.137
26214	yes_eo080	86	2025-11-04 10:31:17.208
26215	yuudai1201	61	2025-11-04 10:31:41.508
26216	musiko	71	2025-11-04 10:31:44.935
26217	knt_07	94	2025-11-04 10:31:56.78
26218	kochi	83	2025-11-04 10:32:13.591
26219	yuudai1201	52	2025-11-04 10:33:08.932
26220	tyanpo-n88	70	2025-11-04 10:33:16.897
26221	tyanpo-n88	87	2025-11-04 10:34:18.529
26222	taiga228	40	2025-11-11 10:26:23.919
26223	knt_07	0	2025-11-11 10:26:27.576
26224	otsukisama	66	2025-11-11 10:26:28.856
26225	ri8_hoon-	80	2025-11-11 10:26:55.234
26226	hibiki-118	44	2025-11-11 10:27:23.599
26227	taiga228	52	2025-11-11 10:27:32.217
26228	otsukisama	77	2025-11-11 10:27:34.418
26229	kyama10_	20	2025-11-11 10:27:35.075
26230	sa-sa_0127	0	2025-11-11 10:27:40.486
26231	mikyu397	34	2025-11-11 10:27:44.409
26232	shishamo	93	2025-11-11 10:27:52.946
26233	atomic	62	2025-11-11 10:27:53.99
26234	tya-han_04	57	2025-11-11 10:28:09.57
26235	hibiki-118	94	2025-11-11 10:28:13.178
26236	satohina13	41	2025-11-11 10:28:15.281
26237	axvo4241	61	2025-11-11 10:28:25.198
26238	m0gu	51	2025-11-11 10:28:36.187
26239	taiga228	53	2025-11-11 10:28:40.712
26240	sa-sa_0127	81	2025-11-11 10:28:41.089
26241	shudo-220_	63	2025-11-11 10:28:41.759
26242	usshi-	68	2025-11-11 10:28:44.574
26243	akitennis	56	2025-11-11 10:28:46.287
26244	kfc055	50	2025-11-11 10:28:47.217
26245	shimo1225	90	2025-11-11 10:28:49.131
26246	waku1waku2	119	2025-11-11 10:28:50.595
26247	imora1107	110	2025-11-11 10:28:51.379
26248	vertin15	50	2025-11-11 10:28:54.586
26249	atomic	65	2025-11-11 10:28:55.701
26250	shishamo	69	2025-11-11 10:28:58.249
26251	mi-01_28	43	2025-11-11 10:28:58.639
26252	sum-lov_13	74	2025-11-11 10:29:00.126
26253	ha-ruto_00	53	2025-11-11 10:29:04.781
26254	kiyodai	0	2025-11-11 10:29:06.126
26255	kota_07-15	63	2025-11-11 10:29:08.783
26256	axvo5145	85	2025-11-11 10:29:09.757
26257	tya-han_04	48	2025-11-11 10:29:12.171
26258	yuudai1201	50	2025-11-11 10:29:20.667
26259	otsukisama	78	2025-11-11 10:29:24.848
26260	akitennis	120	2025-11-11 10:29:25.593
26261	auct1718	41	2025-11-11 10:29:26.039
26262	axvo4241	67	2025-11-11 10:29:27.879
26263	kai-_0224	46	2025-11-11 10:29:31.26
26264	kou-1603	86	2025-11-11 10:29:31.34
26265	shirogane	54	2025-11-11 10:29:33.122
26266	papico181	79	2025-11-11 10:29:35.294
26267	kaxejn1	0	2025-11-11 10:29:35.37
26268	shimo1225	80	2025-11-11 10:29:37.127
26269	a-sakito13	0	2025-11-11 10:29:38.831
26270	patinca-nu	27	2025-11-11 10:29:39.149
26271	kochi	42	2025-11-11 10:29:41.948
26272	shudo-220_	74	2025-11-11 10:29:45.47
26273	usshi-	75	2025-11-11 10:29:46.704
26274	waku1waku2	71	2025-11-11 10:29:52.127
26275	imora1107	84	2025-11-11 10:29:53.23
26276	shishamo	136	2025-11-11 10:29:53.303
26277	atomic	68	2025-11-11 10:29:58.856
26278	haru-714	66	2025-11-11 10:30:03.538
26279	posting	78	2025-11-11 10:30:04.368
26280	ha-ruto_00	67	2025-11-11 10:30:06.561
26281	okiku_0408	30	2025-11-11 10:30:09.538
26282	kota_07-15	61	2025-11-11 10:30:12.529
26283	musiko	113	2025-11-11 10:30:15.826
26284	axvo5145	41	2025-11-11 10:30:15.985
26285	tya-han_04	67	2025-11-11 10:30:19.985
26286	ishumi	104	2025-11-11 10:30:22.006
26287	kuri-sou1	64	2025-11-11 10:30:24.318
26288	yuudai1201	58	2025-11-11 10:30:26.08
26289	italia_lia	91	2025-11-11 10:30:27.56
26290	waku1waku2	133	2025-11-11 10:30:32.035
26291	shimo1225	70	2025-11-11 10:30:33.741
26292	kaxejn1	104	2025-11-11 10:30:34.765
26293	kinniku29	0	2025-11-11 10:30:38.747
26294	papico181	52	2025-11-11 10:30:40.142
26295	kai-_0224	6	2025-11-11 10:30:42.582
26296	a-sakito13	73	2025-11-11 10:30:43.245
26297	usshi-	90	2025-11-11 10:30:47.744
26298	kochi	89	2025-11-11 10:30:48.431
26299	akitennis	81	2025-11-11 10:30:57.338
26300	waku1waku2	117	2025-11-11 10:31:07.999
26301	ha-ruto_00	53	2025-11-11 10:31:09.215
26302	fuuta_s	78	2025-11-11 10:31:14.978
26303	axvo5145	24	2025-11-11 10:31:25.029
26304	mikyu397	66	2025-11-11 10:31:27.303
26305	kuri-sou1	76	2025-11-11 10:31:27.54
26306	shimo1225	59	2025-11-11 10:31:29.19
26307	lions-fan1	123	2025-11-11 10:31:35.279
26308	musiko	80	2025-11-11 10:31:35.604
26309	imora1107	96	2025-11-11 10:31:37.071
26310	italia_lia	60	2025-11-11 10:31:37.441
26311	waku1waku2	113	2025-11-11 10:31:37.842
26312	ishumi	57	2025-11-11 10:31:41.971
26313	kochi	80	2025-11-11 10:31:48.157
26314	papico181	50	2025-11-11 10:31:48.383
26315	tya-han_04	96	2025-11-11 10:31:50.045
26316	inu255-12	56	2025-11-11 10:31:51.989
26317	usshi-	78	2025-11-11 10:31:53.059
26318	tyankonabe	61	2025-11-11 10:31:55.498
26319	tyanpo-n88	100	2025-11-11 10:32:02.182
26320	miyu_0913	49	2025-11-11 10:32:04.307
26321	daisuke	97	2025-11-11 10:32:05.339
26322	kinniku29	0	2025-11-11 10:32:09.748
26323	hitomi0413	51	2025-11-11 10:32:18.518
26324	mt_bird	71	2025-11-11 10:32:19.576
26325	fuuta_s	91	2025-11-11 10:32:22.753
26326	kuri-sou1	48	2025-11-11 10:32:31.916
26327	tyankonabe	119	2025-11-11 10:32:37.756
26328	waku1waku2	95	2025-11-11 10:32:38.032
26329	lions-fan1	59	2025-11-11 10:32:38.547
26330	italia_lia	42	2025-11-11 10:32:41.787
26331	aritomo	23	2025-11-11 10:32:41.909
26332	tyanpo-n88	127	2025-11-11 10:32:47.666
26333	aaaaa	54	2025-11-11 10:32:55.714
26334	jo_07-18	63	2025-11-11 10:33:15.122
26335	hitomi0413	75	2025-11-11 10:33:26.643
26336	auct1718	36	2025-11-11 10:33:28.163
26337	masatoshi	76	2025-11-11 10:33:40.945
26338	tyanpo-n88	77	2025-11-11 10:33:43.919
26339	yes_eo080	21	2025-11-11 10:33:54.147
26340	jo_07-18	121	2025-11-11 10:34:06.964
26341	aaaaa	47	2025-11-11 10:34:17.379
26342	aritomo	34	2025-11-11 10:34:17.457
26343	yes_eo080	89	2025-11-11 10:34:54.594
26344	kinniku29	68	2025-11-11 10:35:20.607
26345	aritomo	42	2025-11-11 10:35:36.879
26346	knt_07	50	2025-11-11 10:35:41.562
26347	haru-714	0	2025-11-18 10:26:14.643
26348	atomic	97	2025-11-18 10:26:29.605
26349	aaaaa	52	2025-11-18 10:26:31.824
26350	shimo1225	66	2025-11-18 10:26:38.76
26351	taiga228	57	2025-11-18 10:26:39.668
26352	otsukisama	83	2025-11-18 10:26:42.148
26353	ishumi	52	2025-11-18 10:26:44.395
26354	usshi-	24	2025-11-18 10:26:48.248
26355	kfc055	47	2025-11-18 10:26:48.777
26356	sa-sa_0127	28	2025-11-18 10:26:51.733
26357	posting	97	2025-11-18 10:26:53.382
26360	shimo1225	93	2025-11-18 10:27:20.241
26363	haru-714	69	2025-11-18 10:27:30.463
26364	shishamo	94	2025-11-18 10:27:33.128
26365	tya-han_04	66	2025-11-18 10:27:33.397
26367	atomic	32	2025-11-18 10:27:35.982
26369	satohina13	36	2025-11-18 10:27:45.44
26370	kai-_0224	61	2025-11-18 10:27:46.561
26371	tujiri_01	32	2025-11-18 10:27:47.684
26373	taiga228	70	2025-11-18 10:27:49.404
26374	kiyodai	64	2025-11-18 10:27:49.925
26380	usshi-	59	2025-11-18 10:27:53.609
26381	fuuta_s	0	2025-11-18 10:27:54.29
26382	kyama10_	44	2025-11-18 10:27:54.872
26384	waku1waku2	61	2025-11-18 10:27:59.929
26387	musiko	115	2025-11-18 10:28:05.122
26391	aritomo	33	2025-11-18 10:28:10.924
26393	shudo-220_	39	2025-11-18 10:28:18.231
26399	haru-714	84	2025-11-18 10:28:28.048
26400	hitomi0413	67	2025-11-18 10:28:30.391
26402	tujiri_01	111	2025-11-18 10:28:33.792
26404	tya-han_04	42	2025-11-18 10:28:35.398
26406	atomic	58	2025-11-18 10:28:39.748
26408	kai-_0224	36	2025-11-18 10:28:50.582
26409	kinniku29	25	2025-11-18 10:28:52.617
26412	sa-sa_0127	87	2025-11-18 10:28:56.151
26419	taiga228	50	2025-11-18 10:29:12.401
26421	italia_lia	43	2025-11-18 10:29:14.329
26426	auct1718	43	2025-11-18 10:29:18.437
26428	knt_07	83	2025-11-18 10:29:20.537
26429	kaxejn1	6	2025-11-18 10:29:25.277
26434	hitomi0413	81	2025-11-18 10:29:32.164
26436	atomic	78	2025-11-18 10:29:41.574
26437	mi-01_28	26	2025-11-18 10:29:42.728
26438	masatoshi	32	2025-11-18 10:29:55.452
26440	kai-_0224	12	2025-11-18 10:29:58.794
26441	waku1waku2	78	2025-11-18 10:30:03.758
26443	papico181	46	2025-11-18 10:30:13.501
26445	italia_lia	56	2025-11-18 10:30:25.249
26447	shudo-220_	53	2025-11-18 10:30:31.773
26450	ishumi	75	2025-11-18 10:30:40.389
26451	tya-han_04	47	2025-11-18 10:30:42.513
26452	daisuke	64	2025-11-18 10:30:43.018
26455	ha-ruto_00	47	2025-11-18 10:30:59.137
26456	yuudai1201	56	2025-11-18 10:31:03.951
26458	otsukisama	94	2025-11-18 10:31:16.147
26461	okiku_0408	127	2025-11-18 10:31:22.664
26462	kota_07-15	42	2025-11-18 10:31:25.734
26463	patinca-nu	46	2025-11-18 10:31:28.323
26465	fuuta_s	33	2025-11-18 10:31:34.153
26466	shirogane	60	2025-11-18 10:31:41.031
26467	usshi-	46	2025-11-18 10:31:44.657
26468	daisuke	67	2025-11-18 10:31:46.102
26472	shimo1225	0	2025-11-18 10:31:58.16
26473	italia_lia	64	2025-11-18 10:32:05.197
26475	ha-ruto_00	54	2025-11-18 10:32:06.281
26477	waku1waku2	117	2025-11-18 10:32:18.432
26478	lions-fan1	81	2025-11-18 10:32:20.484
26479	aritomo	77	2025-11-18 10:32:26.612
26480	fuuta_s	65	2025-11-18 10:32:38.18
26484	ha-ruto_00	116	2025-11-18 10:33:04.258
26487	mt_bird	92	2025-11-18 10:35:28.668
26488	axvo5145	40	2025-11-18 10:36:31.999
26489	yukiflcx	125	2025-11-18 10:36:55.174
26358	imora1107	0	2025-11-18 10:27:00.436
26359	lions-fan1	58	2025-11-18 10:27:11.342
26361	fuuta_s	22	2025-11-18 10:27:24.189
26362	papico181	54	2025-11-18 10:27:26.352
26366	aaaaa	62	2025-11-18 10:27:34.781
26368	masatoshi	77	2025-11-18 10:27:43.336
26372	knt_07	25	2025-11-18 10:27:48.103
26375	kfc055	56	2025-11-18 10:27:51.078
26376	ishumi	39	2025-11-18 10:27:51.374
26377	mikyu397	43	2025-11-18 10:27:52.225
26378	sa-sa_0127	18	2025-11-18 10:27:53.215
26379	m0gu	59	2025-11-18 10:27:53.425
26383	italia_lia	36	2025-11-18 10:27:55.464
26385	ha-ruto_00	84	2025-11-18 10:28:02.272
26386	haruuu4	29	2025-11-18 10:28:04.563
26388	ri8_hoon-	42	2025-11-18 10:28:08.133
26389	axvo5145	66	2025-11-18 10:28:10.135
26390	kota_07-15	98	2025-11-18 10:28:10.338
26392	mi-01_28	22	2025-11-18 10:28:14.816
26394	akitennis	62	2025-11-18 10:28:20.191
26395	lions-fan1	66	2025-11-18 10:28:20.959
26396	shimo1225	68	2025-11-18 10:28:22.297
26397	shishamo	79	2025-11-18 10:28:24.52
26398	imora1107	21	2025-11-18 10:28:24.627
26401	papico181	73	2025-11-18 10:28:31.778
26403	hibiki-118	117	2025-11-18 10:28:34.268
26405	aaaaa	36	2025-11-18 10:28:36.855
26407	otsukisama	113	2025-11-18 10:28:46.911
26410	kiyodai	75	2025-11-18 10:28:54.089
26411	mikyu397	61	2025-11-18 10:28:55.884
26413	fuuta_s	40	2025-11-18 10:28:56.152
26414	kyama10_	70	2025-11-18 10:28:58.575
26415	waku1waku2	54	2025-11-18 10:29:01.285
26416	haruuu4	39	2025-11-18 10:29:05.77
26417	usshi-	41	2025-11-18 10:29:07.658
26418	ha-ruto_00	44	2025-11-18 10:29:10.219
26420	ri8_hoon-	80	2025-11-18 10:29:13.141
26422	axvo5145	38	2025-11-18 10:29:14.44
26423	vertin15	83	2025-11-18 10:29:14.535
26424	sum-lov_13	93	2025-11-18 10:29:14.99
26425	shishamo	125	2025-11-18 10:29:16.567
26427	shimo1225	83	2025-11-18 10:29:19.93
26430	ishumi	6	2025-11-18 10:29:26.177
26431	aritomo	117	2025-11-18 10:29:26.513
26432	akitennis	67	2025-11-18 10:29:26.83
26433	shudo-220_	55	2025-11-18 10:29:27.026
26435	tya-han_04	61	2025-11-18 10:29:39.591
26439	fuuta_s	38	2025-11-18 10:29:58.396
26442	kochi	26	2025-11-18 10:30:09.7
26444	usshi-	70	2025-11-18 10:30:14.254
26446	aaaaa	44	2025-11-18 10:30:26.501
26448	axvo5145	49	2025-11-18 10:30:36.016
26449	taiga228	53	2025-11-18 10:30:36.371
26453	okiku_0408	121	2025-11-18 10:30:54.075
26454	akitennis	54	2025-11-18 10:30:56.436
26457	kochi	81	2025-11-18 10:31:15.361
26459	satohina13	40	2025-11-18 10:31:18.803
26460	papico181	61	2025-11-18 10:31:19.279
26464	lions-fan1	128	2025-11-18 10:31:28.464
26469	waku1waku2	70	2025-11-18 10:31:46.315
26470	jo_07-18	36	2025-11-18 10:31:48.6
26471	miyu_0913	72	2025-11-18 10:31:50.106
26474	yuudai1201	70	2025-11-18 10:32:05.753
26476	kochi	38	2025-11-18 10:32:17.041
26481	tyanpo-n88	102	2025-11-18 10:32:43.951
26482	usshi-	60	2025-11-18 10:32:45.795
26483	miyu_0913	66	2025-11-18 10:32:54.16
26485	kuri-sou1	66	2025-11-18 10:33:06.876
26486	tyanpo-n88	82	2025-11-18 10:33:32.454
26490	yes_eo080	44	2025-11-18 11:19:32.369
26491	taiga228	41	2025-12-09 10:26:50.141
26492	masatoshi	38	2025-12-09 10:26:51.304
26493	otsukisama	56	2025-12-09 10:26:56.555
26494	kou-1603	90	2025-12-09 10:27:03.446
26495	shudo-220_	132	2025-12-09 10:27:24.142
26496	kai-_0224	51	2025-12-09 10:27:37.615
26497	sa-sa_0127	55	2025-12-09 10:27:39
26498	fuuta_s	53	2025-12-09 10:27:39.681
26499	satohina13	64	2025-12-09 10:27:43.875
26500	masatoshi	47	2025-12-09 10:27:55.314
26501	taiga228	66	2025-12-09 10:27:56.291
26502	atomic	61	2025-12-09 10:27:58.528
26503	otsukisama	84	2025-12-09 10:28:03.546
26504	daisuke	68	2025-12-09 10:28:03.696
26505	yuudai1201	37	2025-12-09 10:28:22.305
26506	ri8_hoon-	55	2025-12-09 10:28:25.642
26507	shudo-220_	21	2025-12-09 10:28:30.472
26508	tya-han_04	44	2025-12-09 10:28:34.321
26509	masatoshi	0	2025-12-09 10:28:36.912
26510	sa-sa_0127	49	2025-12-09 10:28:40.917
26511	haru-714	98	2025-12-09 10:28:42.056
26512	kai-_0224	58	2025-12-09 10:28:43.512
26513	mi-01_28	95	2025-12-09 10:28:56.154
26514	shimo1225	75	2025-12-09 10:28:56.997
26515	tyankonabe	51	2025-12-09 10:28:58.035
26516	daisuke	72	2025-12-09 10:29:04.605
26517	haruuu4	0	2025-12-09 10:29:04.656
26518	atomic	78	2025-12-09 10:29:05.619
26519	ishumi	40	2025-12-09 10:29:10.323
26520	m0gu	43	2025-12-09 10:29:14.633
26521	axvo5145	81	2025-12-09 10:29:16.811
26522	fuuta_s	39	2025-12-09 10:29:17.654
26523	shirogane	80	2025-12-09 10:29:17.82
26524	mikyu397	82	2025-12-09 10:29:19.694
26525	usshi-	33	2025-12-09 10:29:22.493
26526	jo_07-18	65	2025-12-09 10:29:23.891
26527	yuudai1201	67	2025-12-09 10:29:26.426
26528	ha-ruto_00	119	2025-12-09 10:29:29.926
26529	inu255-12	75	2025-12-09 10:29:31.611
26530	akitennis	52	2025-12-09 10:29:39.829
26531	shishamo	124	2025-12-09 10:29:41.28
26532	tya-han_04	57	2025-12-09 10:29:44.151
26533	shimo1225	67	2025-12-09 10:29:44.949
26534	sum-lov_13	74	2025-12-09 10:29:45.204
26535	patinca-nu	122	2025-12-09 10:29:48.243
26536	kai-_0224	37	2025-12-09 10:29:48.462
26537	tujiri_01	69	2025-12-09 10:29:49.227
26538	daisuke	59	2025-12-09 10:30:05.817
26539	lions-fan1	84	2025-12-09 10:30:07.333
26540	italia_lia	86	2025-12-09 10:30:13.755
26541	ishumi	115	2025-12-09 10:30:18.986
26542	auct1718	35	2025-12-09 10:30:19.801
26543	kaxejn1	117	2025-12-09 10:30:23.711
26544	taiga228	130	2025-12-09 10:30:25.912
26545	shimo1225	83	2025-12-09 10:30:28.913
26546	kochi	23	2025-12-09 10:30:30.321
26547	jo_07-18	28	2025-12-09 10:30:31.361
26548	ha-ruto_00	32	2025-12-09 10:30:33.093
26549	inu255-12	49	2025-12-09 10:30:36.612
26550	tyanpo-n88	113	2025-12-09 10:30:37.9
26551	mi-01_28	58	2025-12-09 10:30:40.781
26552	waku1waku2	50	2025-12-09 10:30:41.165
26553	musiko	81	2025-12-09 10:30:41.442
26554	haruuu4	0	2025-12-09 10:30:47.978
26555	imora1107	22	2025-12-09 10:30:51.044
26556	tujiri_01	84	2025-12-09 10:30:57.066
26557	posting	131	2025-12-09 10:30:59.553
26558	akitennis	58	2025-12-09 10:31:13.128
26559	aaaaa	75	2025-12-09 10:31:13.675
26560	daisuke	86	2025-12-09 10:31:25.959
26561	kuri-sou1	16	2025-12-09 10:31:28.758
26562	usshi-	48	2025-12-09 10:31:29.926
26564	italia_lia	67	2025-12-09 10:31:30.324
26567	kaxejn1	101	2025-12-09 10:31:38.884
26570	haruuu4	92	2025-12-09 10:31:52.067
26575	shirogane	62	2025-12-09 10:32:38.003
26585	shishamo	139	2025-12-09 10:35:48.85
26586	yukiflcx	79	2025-12-09 10:36:00.117
26563	axvo5145	39	2025-12-09 10:31:30.306
26565	fuuta_s	93	2025-12-09 10:31:30.647
26566	miyu_0913	61	2025-12-09 10:31:36.266
26568	vertin15	57	2025-12-09 10:31:39.895
26569	inu255-12	46	2025-12-09 10:31:42.708
26571	posting	89	2025-12-09 10:32:09.119
26572	kfc055	48	2025-12-09 10:32:09.677
26573	musiko	66	2025-12-09 10:32:15.287
26574	waku1waku2	98	2025-12-09 10:32:24.629
26576	kuri-sou1	57	2025-12-09 10:32:38.756
26577	posting	131	2025-12-09 10:33:17.438
26578	musiko	78	2025-12-09 10:33:19.505
26579	shirogane	136	2025-12-09 10:33:27.581
26580	yes_eo080	47	2025-12-09 10:33:31.404
26581	kiyodai	52	2025-12-09 10:33:55.531
26582	papico181	57	2025-12-09 10:34:18.252
26583	yes_eo080	96	2025-12-09 10:34:28.408
26584	aritomo	30	2025-12-09 10:35:36.035
26587	kyama10_	12	2025-12-09 10:36:14.696
26588	waku1waku2	52	2025-12-16 10:26:27.312
26589	papico181	37	2025-12-16 10:26:36.292
26590	kaxejn1	55	2025-12-16 10:26:41.393
26591	shishamo	61	2025-12-16 10:26:42.638
26592	ishumi	39	2025-12-16 10:26:44.051
26593	ha-ruto_00	51	2025-12-16 10:26:48.565
26594	lions-fan1	142	2025-12-16 10:26:49.58
26595	waku1waku2	107	2025-12-16 10:26:54.3
26596	usshi-	31	2025-12-16 10:26:54.496
26597	italia_lia	64	2025-12-16 10:27:13.887
26598	m0gu	72	2025-12-16 10:27:19.846
26599	patinca-nu	35	2025-12-16 10:27:26.786
26600	sa-sa_0127	83	2025-12-16 10:27:28.087
26601	shishamo	131	2025-12-16 10:27:38.201
26602	otsukisama	92	2025-12-16 10:27:38.284
26603	mikyu397	46	2025-12-16 10:27:40.884
26604	papico181	69	2025-12-16 10:27:41.168
26605	akitennis	59	2025-12-16 10:27:43.181
26606	kaxejn1	85	2025-12-16 10:27:44.664
26607	ishumi	57	2025-12-16 10:27:46.538
26608	atomic	57	2025-12-16 10:27:47.442
26609	ri8_hoon-	57	2025-12-16 10:27:48.505
26610	hibiki-118	128	2025-12-16 10:27:48.68
26611	ha-ruto_00	54	2025-12-16 10:27:50.258
26612	waku1waku2	92	2025-12-16 10:27:55.694
26613	knt_07	61	2025-12-16 10:27:56.705
26614	kai-_0224	55	2025-12-16 10:27:57.512
26615	usshi-	59	2025-12-16 10:27:58.012
26616	lions-fan1	69	2025-12-16 10:27:58.442
26617	hitomi0413	130	2025-12-16 10:28:07.19
26618	tya-han_04	81	2025-12-16 10:28:10.267
26619	daisuke	74	2025-12-16 10:28:12.653
26620	aritomo	47	2025-12-16 10:28:13.485
26621	vertin15	46	2025-12-16 10:28:17.02
26622	haru-714	51	2025-12-16 10:28:17.473
26623	kiyodai	38	2025-12-16 10:28:19.857
26624	a-sakito13	42	2025-12-16 10:28:19.879
26625	kou-1603	100	2025-12-16 10:28:29.309
26626	posting	86	2025-12-16 10:28:29.599
26627	mi-01_28	83	2025-12-16 10:28:30.225
26628	sa-sa_0127	69	2025-12-16 10:28:31.229
26629	aaaaa	122	2025-12-16 10:28:32.359
26630	jo_07-18	48	2025-12-16 10:28:33.822
26631	italia_lia	75	2025-12-16 10:28:33.983
26632	tyanpo-n88	78	2025-12-16 10:28:39.052
26633	atomic	46	2025-12-16 10:28:49.067
26634	waku1waku2	121	2025-12-16 10:28:49.839
26635	ha-ruto_00	48	2025-12-16 10:28:51.486
26636	akitennis	68	2025-12-16 10:28:52.238
26637	hibiki-118	91	2025-12-16 10:28:52.682
26638	haruuu4	44	2025-12-16 10:28:52.952
26639	shudo-220_	103	2025-12-16 10:28:53.832
26640	fuuta_s	91	2025-12-16 10:28:55.803
26641	imora1107	79	2025-12-16 10:28:57.166
26642	tya-han_04	127	2025-12-16 10:28:57.3
26643	ishumi	117	2025-12-16 10:28:57.639
26644	kai-_0224	23	2025-12-16 10:29:02.303
26645	usshi-	50	2025-12-16 10:29:03.458
26646	sum-lov_13	71	2025-12-16 10:29:05.096
26647	daisuke	69	2025-12-16 10:29:14.031
26648	musiko	35	2025-12-16 10:29:15.871
26649	axvo5145	68	2025-12-16 10:29:21.649
26650	inu255-12	38	2025-12-16 10:29:28.755
26651	posting	82	2025-12-16 10:29:32.574
26652	aaaaa	69	2025-12-16 10:29:34.749
26653	kuri-sou1	39	2025-12-16 10:29:36.028
26654	kochi	34	2025-12-16 10:29:42.509
26655	atomic	49	2025-12-16 10:29:51.038
26656	waku1waku2	54	2025-12-16 10:29:52.227
26657	shudo-220_	62	2025-12-16 10:29:56.204
26658	akitennis	67	2025-12-16 10:29:56.54
26659	shimo1225	63	2025-12-16 10:29:57.197
26660	tya-han_04	89	2025-12-16 10:29:57.227
26661	fuuta_s	67	2025-12-16 10:29:58.027
26662	tujiri_01	120	2025-12-16 10:29:58.183
26663	usshi-	54	2025-12-16 10:30:08.918
26664	kyama10_	50	2025-12-16 10:30:09.135
26665	musiko	90	2025-12-16 10:30:22.247
26666	waku1waku2	121	2025-12-16 10:30:24.823
26667	inu255-12	58	2025-12-16 10:30:31.004
26668	posting	84	2025-12-16 10:30:33.281
26669	shimo1225	114	2025-12-16 10:30:33.348
26670	axvo5145	35	2025-12-16 10:30:34.726
26671	kochi	34	2025-12-16 10:30:50.594
26672	tyanpo-n88	43	2025-12-16 10:30:52.492
26673	yuudai1201	48	2025-12-16 10:30:52.815
26674	shudo-220_	64	2025-12-16 10:30:58.238
26675	posting	125	2025-12-16 10:31:02.81
26676	tujiri_01	64	2025-12-16 10:31:04.051
26677	shishamo	124	2025-12-16 10:31:13.402
26678	auct1718	38	2025-12-16 10:31:13.591
26679	usshi-	71	2025-12-16 10:31:23.501
26680	inu255-12	50	2025-12-16 10:31:34.916
26681	miyu_0913	68	2025-12-16 10:31:40.845
26682	waku1waku2	53	2025-12-16 10:31:42.301
26683	lions-fan1	79	2025-12-16 10:31:44.084
26684	tujiri_01	97	2025-12-16 10:32:00.14
26685	yuudai1201	87	2025-12-16 10:32:02.31
26686	fuuta_s	0	2025-12-16 10:32:14.334
26687	tyankonabe	40	2025-12-16 10:32:51.312
26688	kuri-sou1	67	2025-12-16 10:33:32.215
26689	tyankonabe	56	2025-12-16 10:34:04.604
26690	yes_eo080	93	2025-12-16 10:36:03.235
26691	mt_bird	94	2025-12-16 10:36:24.194
26692	yukiflcx	81	2025-12-16 10:37:09.104
26693	ishumi	96	2025-12-23 10:27:12.754
26694	ishumi	67	2025-12-23 10:28:19.953
26695	usshi-	40	2025-12-23 10:28:22.269
26696	tyankonabe	18	2025-12-23 10:28:28.073
26697	hibiki-118	95	2025-12-23 10:28:32.759
26698	ha-ruto_00	50	2025-12-23 10:28:36.391
26699	lions-fan1	118	2025-12-23 10:28:39.288
26700	shishamo	142	2025-12-23 10:28:43.158
26701	waku1waku2	102	2025-12-23 10:28:48.527
26702	vertin15	77	2025-12-23 10:28:51.833
26703	kota_07-15	123	2025-12-23 10:29:21.255
26704	atomic	45	2025-12-23 10:29:23.596
26705	usshi-	51	2025-12-23 10:29:23.765
26706	hibiki-118	98	2025-12-23 10:29:31.412
26707	lions-fan1	119	2025-12-23 10:29:32.11
26708	waku1waku2	92	2025-12-23 10:29:32.35
26709	ha-ruto_00	48	2025-12-23 10:29:37.677
26710	tyankonabe	0	2025-12-23 10:29:40.111
26711	aritomo	33	2025-12-23 10:29:43.158
26712	yuudai1201	46	2025-12-23 10:29:46.143
26713	shudo-220_	39	2025-12-23 10:29:47.243
26714	sum-lov_13	104	2025-12-23 10:29:56.7
26715	haru-714	60	2025-12-23 10:29:58.407
26716	shimo1225	97	2025-12-23 10:30:00.888
26717	lions-fan1	110	2025-12-23 10:30:17.67
26718	kai-_0224	50	2025-12-23 10:30:24.049
26719	atomic	83	2025-12-23 10:30:25.455
26720	kou-1603	73	2025-12-23 10:30:25.989
26721	usshi-	49	2025-12-23 10:30:26.038
26722	kuri-sou1	65	2025-12-23 10:30:27.976
26723	waku1waku2	51	2025-12-23 10:30:35.715
26724	ha-ruto_00	64	2025-12-23 10:30:39.656
26725	imora1107	111	2025-12-23 10:30:41.398
26726	kaxejn1	18	2025-12-23 10:30:44.645
26727	tya-han_04	118	2025-12-23 10:30:51.562
26728	shirogane	66	2025-12-23 10:30:51.941
26729	mi-01_28	50	2025-12-23 10:30:52.796
26730	yuudai1201	53	2025-12-23 10:30:56.544
26731	shudo-220_	52	2025-12-23 10:30:56.644
26732	shimo1225	91	2025-12-23 10:31:02.854
26733	fuuta_s	41	2025-12-23 10:31:05.382
26734	axvo5145	51	2025-12-23 10:31:07.784
26735	lions-fan1	82	2025-12-23 10:31:17.162
26736	aaaaa	75	2025-12-23 10:31:20.793
26737	daisuke	85	2025-12-23 10:31:25.078
26738	kai-_0224	80	2025-12-23 10:31:28.239
26739	atomic	57	2025-12-23 10:31:28.664
26740	imora1107	101	2025-12-23 10:31:29.235
26741	kyama10_	46	2025-12-23 10:31:30.589
26742	kuri-sou1	78	2025-12-23 10:31:30.649
26743	waku1waku2	86	2025-12-23 10:31:32.976
26744	musiko	88	2025-12-23 10:31:50.459
26745	tya-han_04	39	2025-12-23 10:31:53.976
26746	yes_eo080	66	2025-12-23 10:31:57.869
26747	tyankonabe	65	2025-12-23 10:31:58.524
26748	fuuta_s	63	2025-12-23 10:32:00.041
26749	m0gu	68	2025-12-23 10:32:06.456
26750	miyu_0913	59	2025-12-23 10:32:13.582
26751	waku1waku2	85	2025-12-23 10:32:19.631
26752	daisuke	90	2025-12-23 10:32:20.667
26753	tyanpo-n88	65	2025-12-23 10:32:22.079
26754	aritomo	38	2025-12-23 10:32:41.911
26755	tyankonabe	117	2025-12-23 10:32:44.895
26756	kochi	0	2025-12-23 10:32:45.069
26757	posting	47	2025-12-23 10:33:02.581
26758	yes_eo080	60	2025-12-23 10:33:07.013
26759	daisuke	96	2025-12-23 10:33:16.281
26760	miyu_0913	53	2025-12-23 10:33:22.742
26761	tyanpo-n88	44	2025-12-23 10:33:23.338
26762	inu255-12	47	2025-12-23 10:33:34.734
26763	lions-fan1	119	2025-12-23 10:33:36.354
26764	kochi	11	2025-12-23 10:33:50.058
26765	miyu_0913	57	2025-12-23 10:34:24.145
26766	aritomo	40	2025-12-23 10:34:31.652
26767	posting	41	2025-12-23 10:34:38.619
26768	lions-fan1	74	2025-12-23 10:34:52.393
26769	waku1waku2	58	2025-12-23 10:35:20.044
26770	miyu_0913	0	2025-12-23 10:35:26.628
26771	usshi-	48	2025-12-23 10:35:44.669
26772	lions-fan1	99	2025-12-23 10:35:54.095
26773	tya-han_04	112	2025-12-23 10:37:01.61
26774	a-sakito13	0	2025-12-23 10:37:58.34
26775	tya-han_04	66	2025-12-23 10:38:15.237
26776	tya-han_04	96	2025-12-23 10:39:08.226
26777	haruuu4	35	2025-12-23 10:39:46.177
26778	yukiflcx	136	2025-12-23 10:39:59.629
26779	tya-han_04	84	2025-12-23 10:40:10.766
26780	mikyu397	37	2025-12-23 10:40:14.761
26781	taiga228	37	2025-12-23 10:40:46.826
26782	imora1107	70	2026-01-06 10:26:09.864
26783	aaaaa	90	2026-01-06 10:26:20.809
26784	kiyodai	0	2026-01-06 10:26:25.466
26785	patinca-nu	28	2026-01-06 10:26:34.594
26786	waku1waku2	54	2026-01-06 10:26:44.989
26787	axvo5145	51	2026-01-06 10:27:08.135
26788	yuudai1201	38	2026-01-06 10:27:12.489
26789	mikyu397	51	2026-01-06 10:27:17.856
26790	shudo-220_	0	2026-01-06 10:27:19.33
26791	atomic	43	2026-01-06 10:27:21.254
26792	aaaaa	52	2026-01-06 10:27:23.485
26793	sa-sa_0127	65	2026-01-06 10:27:26.639
26794	kai-_0224	31	2026-01-06 10:27:29.088
26795	ha-ruto_00	55	2026-01-06 10:27:30.084
26796	tyankonabe	90	2026-01-06 10:27:33.223
26797	tya-han_04	58	2026-01-06 10:27:33.807
26798	shimo1225	89	2026-01-06 10:27:38.005
26799	otsukisama	84	2026-01-06 10:27:41.222
26800	waku1waku2	70	2026-01-06 10:27:47.625
26801	ri8_hoon-	43	2026-01-06 10:27:49.651
26802	akitennis	118	2026-01-06 10:27:50.847
26803	lions-fan1	83	2026-01-06 10:27:51.574
26804	fuuta_s	72	2026-01-06 10:27:52.765
26805	sum-lov_13	127	2026-01-06 10:27:58.417
26806	kyama10_	0	2026-01-06 10:28:02.911
26807	axvo5145	52	2026-01-06 10:28:09.336
26808	kota_07-15	59	2026-01-06 10:28:10.468
26809	shudo-220_	99	2026-01-06 10:28:14.123
26810	yuudai1201	78	2026-01-06 10:28:14.445
26811	atomic	117	2026-01-06 10:28:18.578
26812	shimo1225	90	2026-01-06 10:28:21.031
26813	tujiri_01	83	2026-01-06 10:28:28.01
26814	aaaaa	53	2026-01-06 10:28:28.071
26815	sa-sa_0127	81	2026-01-06 10:28:28.504
26816	knt_07	31	2026-01-06 10:28:28.843
26817	kai-_0224	48	2026-01-06 10:28:31.424
26818	ha-ruto_00	0	2026-01-06 10:28:32.371
26819	haruuu4	63	2026-01-06 10:28:36.402
26820	tyankonabe	82	2026-01-06 10:28:36.704
26821	m0gu	51	2026-01-06 10:28:39.873
26822	haru-714	45	2026-01-06 10:28:40.144
26823	kou-1603	91	2026-01-06 10:28:41.939
26824	hitomi0413	18	2026-01-06 10:28:42.47
26825	papico181	42	2026-01-06 10:28:44.783
26826	auct1718	38	2026-01-06 10:28:46.315
26827	waku1waku2	16	2026-01-06 10:28:49.368
26828	mi-01_28	53	2026-01-06 10:28:53.043
26829	kyama10_	129	2026-01-06 10:28:58.334
26830	tyanpo-n88	102	2026-01-06 10:28:59.197
26831	lions-fan1	112	2026-01-06 10:28:59.614
26832	akitennis	72	2026-01-06 10:29:01.61
26833	shimo1225	90	2026-01-06 10:29:01.75
26834	fuuta_s	42	2026-01-06 10:29:02.856
26835	tya-han_04	36	2026-01-06 10:29:04.487
26836	jo_07-18	33	2026-01-06 10:29:09.413
26837	shudo-220_	62	2026-01-06 10:29:15.368
26838	vertin15	57	2026-01-06 10:29:20.866
26839	atomic	19	2026-01-06 10:29:26.644
26840	posting	130	2026-01-06 10:29:26.929
26841	a-sakito13	0	2026-01-06 10:29:28.267
26842	aaaaa	89	2026-01-06 10:29:30.096
26843	taiga228	52	2026-01-06 10:29:32.999
26844	tyankonabe	119	2026-01-06 10:29:36.363
26845	haru-714	63	2026-01-06 10:29:44.928
26846	ha-ruto_00	54	2026-01-06 10:29:49.527
26847	papico181	38	2026-01-06 10:29:50.619
26848	waku1waku2	66	2026-01-06 10:29:51.072
26849	tyanpo-n88	95	2026-01-06 10:29:55.646
26850	musiko	50	2026-01-06 10:29:56.068
26859	musiko	82	2026-01-06 10:30:58.913
26851	hitomi0413	53	2026-01-06 10:29:59.372
26852	otsukisama	86	2026-01-06 10:30:09.949
26853	tujiri_01	89	2026-01-06 10:30:23.457
26854	posting	132	2026-01-06 10:30:24.01
26855	lions-fan1	85	2026-01-06 10:30:51.783
26856	papico181	64	2026-01-06 10:30:52.326
26857	waku1waku2	74	2026-01-06 10:30:53.779
26858	kiyodai	64	2026-01-06 10:30:57.725
26860	taiga228	112	2026-01-06 10:31:01.443
26865	mt_bird	83	2026-01-06 10:33:27.881
26866	kuri-sou1	72	2026-01-06 10:33:30.401
26867	inu255-12	59	2026-01-06 10:34:17.541
26868	yukiflcx	85	2026-01-06 10:35:59.74
26861	aritomo	41	2026-01-06 10:31:06.394
26862	shishamo	91	2026-01-06 10:31:09.405
26863	kuri-sou1	45	2026-01-06 10:31:49.065
26864	yes_eo080	82	2026-01-06 10:32:43.121
26869	m0gu	82	2026-01-13 10:27:12.33
26870	tyankonabe	104	2026-01-13 10:28:37.907
26871	tyankonabe	102	2026-01-13 10:29:56.584
26872	hibiki-118	87	2026-01-20 10:26:18.241
26873	ishumi	46	2026-01-20 10:26:18.666
26874	otsukisama	118	2026-01-20 10:26:28.226
26875	usshi-	42	2026-01-20 10:26:33.518
26876	mi-01_28	25	2026-01-20 10:26:46.714
26877	ri8_hoon-	44	2026-01-20 10:26:57.781
26878	waku1waku2	77	2026-01-20 10:27:05.247
26879	aaaaa	54	2026-01-20 10:27:07.782
26880	imora1107	69	2026-01-20 10:27:16.76
26881	kiyodai	62	2026-01-20 10:27:18.71
26882	hibiki-118	97	2026-01-20 10:27:20.564
26883	papico181	53	2026-01-20 10:27:22.133
26884	tya-han_04	49	2026-01-20 10:27:23.648
26885	a-sakito13	20	2026-01-20 10:27:23.916
26886	kou-1603	90	2026-01-20 10:27:33.615
26887	usshi-	69	2026-01-20 10:27:40.15
26888	ha-ruto_00	72	2026-01-20 10:27:40.978
26889	hitomi0413	24	2026-01-20 10:27:42.502
26890	yuudai1201	52	2026-01-20 10:27:44.016
26891	sum-lov_13	87	2026-01-20 10:27:46.828
26892	sa-sa_0127	144	2026-01-20 10:27:46.892
26893	lions-fan1	67	2026-01-20 10:27:52.25
26894	jo_07-18	57	2026-01-20 10:27:56.054
26895	atomic	41	2026-01-20 10:27:57.005
26896	daisuke	64	2026-01-20 10:28:03.315
26897	akitennis	41	2026-01-20 10:28:04.412
26898	waku1waku2	69	2026-01-20 10:28:06.314
26899	mikyu397	50	2026-01-20 10:28:17.117
26900	otsukisama	72	2026-01-20 10:28:17.43
26901	fuuta_s	39	2026-01-20 10:28:18.365
26902	papico181	30	2026-01-20 10:28:24.588
26903	tya-han_04	55	2026-01-20 10:28:25.66
26904	shudo-220_	56	2026-01-20 10:28:25.99
26905	haruuu4	37	2026-01-20 10:28:33.485
26906	lions-fan1	119	2026-01-20 10:28:36.932
26907	hitomi0413	116	2026-01-20 10:28:40.579
26908	shishamo	117	2026-01-20 10:28:41.551
26909	ha-ruto_00	58	2026-01-20 10:28:42.747
26910	aaaaa	41	2026-01-20 10:28:43.131
26911	usshi-	82	2026-01-20 10:28:44.782
26912	atomic	96	2026-01-20 10:28:45.982
26913	haru-714	73	2026-01-20 10:28:46.584
26914	axvo5145	24	2026-01-20 10:28:48.151
26915	sa-sa_0127	37	2026-01-20 10:28:48.275
26916	yuudai1201	55	2026-01-20 10:28:58.512
26917	jo_07-18	51	2026-01-20 10:29:01.022
26918	daisuke	70	2026-01-20 10:29:04.847
26919	waku1waku2	80	2026-01-20 10:29:07.217
26920	ishumi	45	2026-01-20 10:29:08.174
26921	kochi	0	2026-01-20 10:29:08.897
26922	akitennis	94	2026-01-20 10:29:10.409
26923	tyankonabe	33	2026-01-20 10:29:13.883
26924	kyama10_	0	2026-01-20 10:29:15.887
26925	italia_lia	96	2026-01-20 10:29:17.507
26926	fuuta_s	48	2026-01-20 10:29:19.191
26927	sa-sa_0127	134	2026-01-20 10:29:24.179
26928	papico181	78	2026-01-20 10:29:25.847
26929	knt_07	40	2026-01-20 10:29:29.168
26930	shudo-220_	84	2026-01-20 10:29:29.817
26931	aritomo	55	2026-01-20 10:29:34.847
26932	vertin15	61	2026-01-20 10:29:35.128
26933	kota_07-15	76	2026-01-20 10:29:35.23
26934	kaxejn1	19	2026-01-20 10:29:37.101
26935	lions-fan1	92	2026-01-20 10:29:37.399
26936	tya-han_04	37	2026-01-20 10:29:37.535
26937	waku1waku2	136	2026-01-20 10:29:43.789
26938	ha-ruto_00	76	2026-01-20 10:29:44.131
26939	atomic	77	2026-01-20 10:29:48.358
26940	axvo5145	66	2026-01-20 10:29:51.979
26941	usshi-	88	2026-01-20 10:29:54.674
26942	shishamo	91	2026-01-20 10:29:55.249
26943	kochi	96	2026-01-20 10:29:59.567
26944	kuri-sou1	63	2026-01-20 10:30:02.967
26945	posting	121	2026-01-20 10:30:04.883
26946	daisuke	66	2026-01-20 10:30:06.327
26947	tyankonabe	72	2026-01-20 10:30:16.568
26948	ishumi	62	2026-01-20 10:30:23.413
26949	italia_lia	51	2026-01-20 10:30:23.476
26950	imora1107	91	2026-01-20 10:30:24.914
26951	kaxejn1	64	2026-01-20 10:30:32.856
26952	papico181	43	2026-01-20 10:30:33.74
26953	shudo-220_	56	2026-01-20 10:30:35.82
26954	yuudai1201	55	2026-01-20 10:30:45.111
26955	waku1waku2	59	2026-01-20 10:30:45.349
26956	lions-fan1	63	2026-01-20 10:30:47.596
26957	kota_07-15	55	2026-01-20 10:30:47.751
26958	ha-ruto_00	50	2026-01-20 10:30:48.768
26959	atomic	57	2026-01-20 10:30:49.928
26960	axvo5145	109	2026-01-20 10:30:51.189
26961	tyankonabe	139	2026-01-20 10:30:53.95
26962	usshi-	54	2026-01-20 10:30:57.74
26963	kochi	61	2026-01-20 10:31:03.66
26964	posting	77	2026-01-20 10:31:10.571
26965	kai-_0224	32	2026-01-20 10:31:32.37
26966	italia_lia	82	2026-01-20 10:31:41.082
26967	tyankonabe	31	2026-01-20 10:31:57.305
26968	tyanpo-n88	111	2026-01-20 10:32:21.155
26969	kuri-sou1	21	2026-01-20 10:32:38.019
26970	m0gu	66	2026-01-20 10:33:18.336
26971	tyanpo-n88	112	2026-01-20 10:33:45.393
26972	mt_bird	80	2026-01-20 10:36:11.075
26973	patinca-nu	48	2026-01-20 10:37:13.901
26974	shimo1225	89	2026-01-27 10:25:58.315
26975	ishumi	100	2026-01-27 10:26:09.788
26976	posting	130	2026-01-27 10:26:14.331
26977	usshi-	39	2026-01-27 10:26:15.922
26978	atomic	66	2026-01-27 10:26:19.66
26979	otsukisama	130	2026-01-27 10:26:20.598
26980	italia_lia	36	2026-01-27 10:26:21.614
26981	kota_07-15	43	2026-01-27 10:26:22.139
26982	kou-1603	74	2026-01-27 10:26:24.857
26983	shudo-220_	58	2026-01-27 10:26:28.357
26984	haru-714	49	2026-01-27 10:26:28.759
26985	shishamo	93	2026-01-27 10:26:33.895
26986	waku1waku2	76	2026-01-27 10:26:34.283
26987	kiyodai	31	2026-01-27 10:26:36.173
26988	taiga228	48	2026-01-27 10:26:39.284
26989	tya-han_04	135	2026-01-27 10:26:39.932
26990	mikyu397	68	2026-01-27 10:26:39.994
26991	haruuu4	9	2026-01-27 10:26:44.785
26992	yuudai1201	67	2026-01-27 10:26:45.772
26993	axvo5145	79	2026-01-27 10:26:49.835
26994	a-sakito13	74	2026-01-27 10:26:50.294
26995	tujiri_01	73	2026-01-27 10:26:52.25
26996	ri8_hoon-	67	2026-01-27 10:26:54.274
26997	kochi	47	2026-01-27 10:26:55.441
26998	sa-sa_0127	54	2026-01-27 10:26:56.096
26999	musiko	68	2026-01-27 10:26:57.665
27000	imora1107	52	2026-01-27 10:26:59.988
27001	shimo1225	79	2026-01-27 10:27:01.141
27002	hibiki-118	74	2026-01-27 10:27:03.306
27003	knt_07	6	2026-01-27 10:27:11.175
27004	ishumi	106	2026-01-27 10:27:12.762
27005	hitomi0413	43	2026-01-27 10:27:13.134
27006	ha-ruto_00	42	2026-01-27 10:27:13.608
27007	lions-fan1	114	2026-01-27 10:27:15.72
27008	m0gu	78	2026-01-27 10:27:19.032
27010	kaxejn1	27	2026-01-27 10:27:20.5
27015	shudo-220_	53	2026-01-27 10:27:32.738
27017	tya-han_04	68	2026-01-27 10:27:40.205
27018	lions-fan1	118	2026-01-27 10:27:46.677
27020	yuudai1201	50	2026-01-27 10:27:52.913
27021	axvo5145	56	2026-01-27 10:27:56.07
27022	tujiri_01	81	2026-01-27 10:27:56.707
27009	usshi-	54	2026-01-27 10:27:19.722
27011	italia_lia	118	2026-01-27 10:27:20.632
27012	atomic	62	2026-01-27 10:27:22.266
27013	akitennis	71	2026-01-27 10:27:26.18
27014	haru-714	98	2026-01-27 10:27:29.539
27016	waku1waku2	69	2026-01-27 10:27:35.769
27019	otsukisama	92	2026-01-27 10:27:51.659
27023	sa-sa_0127	32	2026-01-27 10:27:57.99
27024	kochi	59	2026-01-27 10:27:58.944
27025	imora1107	88	2026-01-27 10:28:03.202
27026	vertin15	85	2026-01-27 10:28:08.196
27027	ishumi	96	2026-01-27 10:28:09.252
27028	ha-ruto_00	89	2026-01-27 10:28:14.582
27029	hitomi0413	54	2026-01-27 10:28:15.942
27030	knt_07	11	2026-01-27 10:28:18.221
27031	usshi-	67	2026-01-27 10:28:23.232
27032	italia_lia	87	2026-01-27 10:28:23.75
27033	taiga228	58	2026-01-27 10:28:24.499
27034	atomic	67	2026-01-27 10:28:26.295
27035	akitennis	77	2026-01-27 10:28:29.008
27036	waku1waku2	58	2026-01-27 10:28:37.781
27037	shudo-220_	64	2026-01-27 10:28:38.365
27038	tya-han_04	65	2026-01-27 10:28:41.505
27039	patinca-nu	46	2026-01-27 10:28:44.426
27040	papico181	65	2026-01-27 10:28:50.651
27041	sum-lov_13	84	2026-01-27 10:28:52.253
27042	tyankonabe	86	2026-01-27 10:28:52.605
27043	kyama10_	82	2026-01-27 10:28:59.166
27044	kochi	38	2026-01-27 10:29:00.319
27045	axvo5145	69	2026-01-27 10:29:06.079
27046	lions-fan1	67	2026-01-27 10:29:06.899
27047	auct1718	21	2026-01-27 10:29:11.519
27048	ha-ruto_00	53	2026-01-27 10:29:16.786
27049	usshi-	72	2026-01-27 10:29:25.756
27050	kai-_0224	0	2026-01-27 10:29:36.98
27051	mi-01_28	57	2026-01-27 10:29:43.697
27052	waku1waku2	52	2026-01-27 10:29:47.165
27053	daisuke	91	2026-01-27 10:29:53.836
27054	shudo-220_	43	2026-01-27 10:29:58.595
27055	papico181	86	2026-01-27 10:30:00.367
27056	tyankonabe	66	2026-01-27 10:30:04.058
27057	kochi	44	2026-01-27 10:30:05.466
27058	jo_07-18	71	2026-01-27 10:30:27.953
27059	kai-_0224	45	2026-01-27 10:30:46.236
27060	lions-fan1	80	2026-01-27 10:30:53.91
27061	daisuke	60	2026-01-27 10:30:55.31
27062	aritomo	13	2026-01-27 10:30:56.647
27063	tyankonabe	35	2026-01-27 10:31:04.873
27064	usshi-	66	2026-01-27 10:31:07.955
27065	tyanpo-n88	79	2026-01-27 10:31:17.064
27066	jo_07-18	29	2026-01-27 10:31:29.689
27067	daisuke	76	2026-01-27 10:31:55.969
27068	kuri-sou1	100	2026-01-27 10:31:58.084
27069	tyanpo-n88	89	2026-01-27 10:32:11.026
27070	mt_bird	87	2026-01-27 10:32:20.762
27071	aaaaa	45	2026-01-27 10:32:21.316
27072	inu255-12	54	2026-01-27 10:32:54.839
27073	kuri-sou1	14	2026-01-27 10:32:59.88
27074	axvo5145	61	2026-02-10 10:26:22.725
27075	sa-sa_0127	103	2026-02-10 10:26:25.204
27076	knt_07	126	2026-02-10 10:26:29.94
27077	hibiki-118	83	2026-02-10 10:26:30.377
27078	tyankonabe	17	2026-02-10 10:26:38.428
27079	usshi-	115	2026-02-10 10:26:41.478
27080	hitomi0413	65	2026-02-10 10:26:54.212
27081	shudo-220_	87	2026-02-10 10:26:57.225
27082	akitennis	47	2026-02-10 10:26:59.434
27083	m0gu	45	2026-02-10 10:26:59.676
27084	kaxejn1	111	2026-02-10 10:27:00.714
27085	vertin15	61	2026-02-10 10:27:00.759
27086	yuudai1201	27	2026-02-10 10:27:05.767
27087	axvo5145	128	2026-02-10 10:27:06.65
27088	imora1107	43	2026-02-10 10:27:08.156
27089	waku1waku2	49	2026-02-10 10:27:08.74
27090	ishumi	46	2026-02-10 10:27:15.029
27091	lions-fan1	92	2026-02-10 10:27:22.061
27092	shishamo	89	2026-02-10 10:27:25.823
27093	musiko	83	2026-02-10 10:27:26.82
27094	kota_07-15	60	2026-02-10 10:27:31.281
27095	sa-sa_0127	76	2026-02-10 10:27:31.383
27096	otsukisama	63	2026-02-10 10:27:33.019
27097	fuuta_s	0	2026-02-10 10:27:36.02
27098	italia_lia	84	2026-02-10 10:27:45.907
27099	tyankonabe	40	2026-02-10 10:27:48.159
27100	usshi-	51	2026-02-10 10:27:48.634
27101	shudo-220_	118	2026-02-10 10:27:54.319
27102	ha-ruto_00	68	2026-02-10 10:27:55.633
27103	hitomi0413	23	2026-02-10 10:27:57.569
27104	taiga228	58	2026-02-10 10:27:59.931
27105	shimo1225	102	2026-02-10 10:28:02.366
27106	akitennis	62	2026-02-10 10:28:03.528
27107	vertin15	32	2026-02-10 10:28:06.372
27108	shishamo	114	2026-02-10 10:28:07.145
27109	waku1waku2	58	2026-02-10 10:28:10.971
27110	ri8_hoon-	28	2026-02-10 10:28:12.48
27111	haru-714	74	2026-02-10 10:28:13.098
27112	yuudai1201	0	2026-02-10 10:28:18.693
27113	kou-1603	102	2026-02-10 10:28:23.157
27114	fuuta_s	92	2026-02-10 10:28:31.59
27115	atomic	52	2026-02-10 10:28:37.124
27116	lions-fan1	95	2026-02-10 10:28:38.821
27117	italia_lia	74	2026-02-10 10:28:48.522
27118	usshi-	79	2026-02-10 10:28:50.12
27119	shishamo	131	2026-02-10 10:28:50.66
27120	shimo1225	66	2026-02-10 10:28:54.335
27121	shudo-220_	59	2026-02-10 10:28:57.622
27122	ha-ruto_00	50	2026-02-10 10:28:57.724
27123	taiga228	34	2026-02-10 10:29:05.712
27124	akitennis	91	2026-02-10 10:29:07.311
27125	kyama10_	9	2026-02-10 10:29:12.099
27126	atomic	135	2026-02-10 10:29:15.37
27127	waku1waku2	74	2026-02-10 10:29:16.038
27128	kiyodai	44	2026-02-10 10:29:16.275
27129	otsukisama	81	2026-02-10 10:29:21.85
27130	ishumi	96	2026-02-10 10:29:24.075
27131	inu255-12	51	2026-02-10 10:29:30.809
27132	fuuta_s	49	2026-02-10 10:29:33.843
27133	yuudai1201	114	2026-02-10 10:29:34.757
27134	kai-_0224	65	2026-02-10 10:29:55.96
27135	mikyu397	68	2026-02-10 10:29:56.605
27136	ha-ruto_00	55	2026-02-10 10:29:58.951
27137	waku1waku2	50	2026-02-10 10:30:09.989
27138	kyama10_	58	2026-02-10 10:30:22.372
27139	papico181	71	2026-02-10 10:30:29.825
27140	inu255-12	40	2026-02-10 10:30:33.033
27141	kuri-sou1	54	2026-02-10 10:30:34.48
27142	kochi	18	2026-02-10 10:30:34.635
27143	lions-fan1	133	2026-02-10 10:30:34.711
27144	aritomo	34	2026-02-10 10:30:39.502
27145	tyanpo-n88	86	2026-02-10 10:30:41.497
27146	kai-_0224	91	2026-02-10 10:31:01.51
27147	haruuu4	41	2026-02-10 10:31:03.406
27148	kuri-sou1	128	2026-02-10 10:31:20.248
27149	posting	19	2026-02-10 10:31:20.803
27150	tujiri_01	49	2026-02-10 10:31:32.519
27151	kochi	0	2026-02-10 10:31:35.834
27152	daisuke	57	2026-02-10 10:31:45.913
27153	tyanpo-n88	101	2026-02-10 10:31:57.791
27154	a-sakito13	0	2026-02-10 10:32:23.102
27155	kochi	43	2026-02-10 10:32:38.198
27156	daisuke	51	2026-02-10 10:32:47.391
27157	auct1718	19	2026-02-10 10:32:50.693
27158	daisuke	64	2026-02-10 10:33:49.692
27159	daisuke	126	2026-02-10 10:34:37.739
27160	sum-lov_13	59	2026-02-10 10:34:43.503
27161	tya-han_04	92	2026-02-10 10:39:06.815
27162	yukiflcx	85	2026-02-10 10:39:18.664
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.schema_migrations (id, applied, description) FROM stdin;
20220316115834	2022-03-16 21:03:52.387	users
\.


--
-- Data for Name: stat; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.stat (stat, updated_at) FROM stdin;
\.


--
-- Name: drills_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.drills_id_seq', 1406, true);


--
-- Name: restarts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.restarts_id_seq', 41017, true);


--
-- Name: results_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.results_id_seq', 688339, true);


--
-- Name: roll_calls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.roll_calls_id_seq', 27162, true);


--
-- Name: drills drills_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.drills
    ADD CONSTRAINT drills_pkey PRIMARY KEY (id);


--
-- Name: restarts restarts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.restarts
    ADD CONSTRAINT restarts_pkey PRIMARY KEY (id);


--
-- Name: results results_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.results
    ADD CONSTRAINT results_pkey PRIMARY KEY (id);


--
-- Name: roll_calls roll_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roll_calls
    ADD CONSTRAINT roll_calls_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_id_key UNIQUE (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

