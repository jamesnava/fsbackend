--
-- PostgreSQL database dump
--

\restrict aHRi6PEefg6jC9brtnAnnxJve0uuUE8UoMQztg5unHYgGgy0EuYIH019H7j3jIU

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-07-10 12:36:00

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 219 (class 1259 OID 16570)
-- Name: mstatus; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mstatus (
    idmstatus integer NOT NULL,
    code character varying(20),
    descripcion character varying(100)
);


ALTER TABLE public.mstatus OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16574)
-- Name: mstatus_idmstatus_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.mstatus ALTER COLUMN idmstatus ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.mstatus_idmstatus_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16575)
-- Name: tb_b0; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_b0 (
    idb0 integer NOT NULL,
    code character varying(10),
    descripcion character varying(100)
);


ALTER TABLE public.tb_b0 OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16579)
-- Name: tb_b0_idb0_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tb_b0 ALTER COLUMN idb0 ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tb_b0_idb0_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16580)
-- Name: tb_b12; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_b12 (
    idb12 integer NOT NULL,
    code1 character varying(10),
    code2 character varying(10),
    descripcion character varying(100),
    urlimg character varying(100)
);


ALTER TABLE public.tb_b12 OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16584)
-- Name: tb_b12_idb12_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tb_b12 ALTER COLUMN idb12 ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tb_b12_idb12_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 225 (class 1259 OID 16585)
-- Name: tb_b3; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_b3 (
    idb3 integer NOT NULL,
    code character varying(10),
    descripcion character varying(100)
);


ALTER TABLE public.tb_b3 OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16589)
-- Name: tb_b3_idb3_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.tb_b3 ALTER COLUMN idb3 ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.tb_b3_idb3_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 4925 (class 0 OID 16570)
-- Dependencies: 219
-- Data for Name: mstatus; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.mstatus (idmstatus, code, descripcion) FROM stdin;
1	0	NO ERRORS
2	1	USB COMMUNICATIONS ERROR
3	2	OPERATION NOT ATTEMPTED, DEVICE ALREADY FATAL
4	3	INVALID COMMAND DATA
5	4	SUSPECTED CUSTOMER TAMPERING
6	5	BILLS OUT, NOT ENOUGH NOTES TO SATISFY STACK REQUEST
7	6	TOO MANY REJECTED ITEMS DURING  STACK
8	7	RESERVED
9	8	RESERVED
10	9	RESERVED
11	10	CASSETTE OR BIN POSITION FULL
12	11	RESERVED
13	12	RESERVED
14	13	RESERVED
15	14	RESERVED
16	15	RESERVED
17	16	RESERVED
18	17	RESERVED
19	18	RESERVED
20	19	RESERVED
21	20	CASSETTE OR CONTAINER NOT PRESENT
22	21	INTERMEDIATE SHUTER JAM
23	22	SHUTTER JAMMED OPEN
24	23	SHUTTER JAMMED CLOSED
25	24	BV HARDWARE ERROR
26	25	INTERLOCK OPEN
27	26	UNABLE TO DETERMINE SHUTTER POSITION
28	27	SLOT SENSOR ERROR
29	28	SLOT SHUTTLE JAM
30	29	FEED SENSOR ERROR 
31	30	RESERVED
32	31	MEDIA JAM BETWEEN FEED AND BV
33	32	MEDIA JAM AT BV
34	33	MEDIA JAM BETWEEN BV AND ESCROW
35	34	ESCROW DRUM ERROR
36	35	ESCROW MEDIA JAM
37	36	RESERVED
38	37	RESERVED
39	38	MEDIA JAM BETWEEN ESCROW AD FEED 
40	39	MEDIA JAM IN UPPER EXCEPTION BIN PATH
41	40	RESERVED
42	41	LOWER EXCEPTION CASSETTE ERROR
43	42	MEDIA JAMAT CASSETTE TRANSPORT
44	43	MEDIA JAMAT VERTICAL TRANSPORT
45	44	CASSETTE 1 ERROR
46	45	CASSETTE 2 ERROR
47	46	CASSETTE 3 ERROR
48	47	CASSETTE 4 ERROR
49	48	UPPER CONTROL BOARD ERROR
50	49	LOWER CONTROL BOARD ERROR
51	50	SEQUENCE ERROR
52	51	UPPER UNIT OPEN 
53	52	LOWER UNIT OPEN 
54	53	NOT AUTHORISED, DEVICE SERIAL NUMBER HAS CHANGED
55	54	RESERVED
56	55	RESERVED
57	56	RESERVED
58	57	RESERVED
59	58	RESERVED
60	59	RESERVED
61	60	I2C COMMUNICATIONS ERROR
62	61	UPPER TRANSPORT MOTOR FAILURE
63	62	SENSOR FAILURE BETWEEN FEED AND BV
64	63	SENSOR FAILURE BETWEEN BV AND ESCROW
65	64	SENSOR FAILURE BETWEEN ESCROW AND FEED
66	65	DIVERT FAILURE PRE - BV
67	66	DIVERT FAILURE POST- BV
68	67	DIVERT FAILURE AT UPPER EXCEPTION BIN PATH
69	68	CASSETTE 5 ERROR
70	69	INTER PROCESS COMMUNICATIONS FAILURE 
71	70	DOWNLOAD FAILURE TO CONTROL FIRMWARE
72	71	DOWNLOAD FAILURE DIRECTLY TO BV
73	72	MEDIA JAM AT INTERMEDIATE TRANSPORT
74	73	SENSOR FAILURE AT INTERMEDIATE TRANSPORT
75	74	CASSETE TRANSPORT MOTOR FAILURE 
76	75	CASSETTE TRANSPORT DIVERT GATE FAILURE 
77	76	CASSETTE TRANSPORT SENSOR FAILURE
78	77	VERTICAL TRANSPORT MOTOR FAILURE
79	78	VERTICAL TRANSPORT DIVERT GATE FAILURE
80	79	VERTICAL TRANSPORT SENSOR FAILURE
81	80	SENSOR FAILURE IN UPPER EXCEPTION BIN PATH
82	81	PART REPLACED
83	82	POCKET STAGE JAMMED
84	83	TOO MANY CONSECUTIVE METAL DETECTS
85	84	TOO MANY CONSECUTIVE SUSPECTED FOREIGN OBJECTS
\.


--
-- TOC entry 4927 (class 0 OID 16575)
-- Dependencies: 221
-- Data for Name: tb_b0; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_b0 (idb0, code, descripcion) FROM stdin;
1	00	COMMAND SUCCESSFUL
2	01	OPEN SHUTTER
3	02	CLOSE SHUTTER
4	03	COUNT ITEMS
5	04	STORE 
6	05	CLEAR
7	06	STACK
8	07	CHECK TRANSPORT
9	08	POWER SAVE
10	10	READ LAST STATUS 
11	11	CLEAR LAST STATUS
12	12	READ STACK LIST
13	13	READ STATUS
14	14	READ TELEMETRY
15	15	READ MODULE TRACE DATA
16	16	READ SIGNATURE DATA
17	17	WRITE CASSETTE INFO
18	18	READ CASSETTE INFO
19	19	CLEAR MODULE TRACE DATA 
20	1A	GET BUNCH IMAGE
21	20	SED STATUS LED
22	21	READ STATUS LEDS
23	22	READ CONFIGURATION
24	23	READ TEMPLATE INFO
25	24	RESERVED
26	25	SYNCHRONISE TIME
27	26	READ TIME
28	27	WRITE FITNESS THRESHOLDS
29	28	READ FITNESS THRESHOLDS
30	29	SET BV PARAMETER
31	2A	SET DEVICE PARAMETER
32	2B	CALIBRATE SENSOR FRU
33	30	START DOWNLOAD
34	31	DOWNLOAD BLOCK
35	32	END DOWNLOAD
36	33	ResetStart
37	40	Test Actuators
38	41	Pocket Guide Replacement
\.


--
-- TOC entry 4929 (class 0 OID 16580)
-- Dependencies: 223
-- Data for Name: tb_b12; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_b12 (idb12, code1, code2, descripcion, urlimg) FROM stdin;
1	10	01	Pocket - actuator malfunction, DMA1(Stage 1)	\N
2	10	02	Pocket - actuator malfunction, DMA2(Stage 2)	\N
3	10	03	Pocket - actuator malfunction, DMA3(Stage 3)	\N
4	10	04	Pocket - actuator malfunction, DMA3(Stage 3)	\N
5	10	05	Pocket - actuator malfunction, DMA5(Lift Down)	\N
6	10	06	Pocket - actuator malfunction, DMA5(Lift Up)	\N
7	10	07	Pocket - actuator malfunction, SMA1(Deposit Feed)	\N
8	10	08	Pocket - actuator malfunction, BMJ3 (Dispense Feed)	\N
9	10	09	Pocket - actuator malfunction, Deposit Feed	\N
10	10	0A	Pocket - actuator malfunction, Dispense Feed	\N
11	10	0B	Pocket - actuator malfunction, SMA1 rotation error	\N
12	10	11	Pocket - remaining notes, PSA5L	\N
13	10	12	Pocket - remaining notes, PSA5C	\N
14	10	13	Pocket - remaining notes, PSA5R	\N
15	10	14	Pocket - remaining notes, PSA6L	\N
16	10	15	Pocket - remaining notes, PSA6C	\N
17	10	16	Pocket - remaining notes, PSA6R	\N
18	10	70	Pocket - Container full error	\N
19	11	01	Pocket - Sensor PSA1L, ON check error	\N
20	11	02	Pocket - Sensor PSA1C, ON check error	\N
21	11	03	Pocket - Sensor PSA1R, ON check error	\N
22	11	04	Pocket - Sensor PSA2, ON check error	\N
23	11	05	Pocket - Sensor PSA3L, ON check error	\N
24	11	06	Pocket - Sensor PSA3R, ON check error	\N
25	11	07	Pocket - Sensor PSA4L, ON check error	\N
26	11	08	Pocket - Sensor PSA4R, ON check error	\N
27	11	09	Pocket - Sensor PSA5L, ON check error	\N
28	11	0A	Pocket - Sensor PSA5C, ON check error	\N
29	11	0B	Pocket - Sensor PSA5R, ON check error	\N
30	11	0C	Pocket - Sensor PSA6L, ON check erro	\N
31	11	0D	Pocket - Sensor PSA6C, ON check error	\N
32	11	0E	Pocket - Sensor PSA6R, ON check error	\N
33	11	0F	Pocket - Sensor PSA7, ON check error	\N
34	11	11	Pocket - Sensor PSA8, ON check error	\N
35	11	12	Pocket - Sensor PSA9L, ON check error	\N
36	11	13	Pocket - Sensor PSA9R, ON check error	\N
37	11	14	Pocket - Sensor PSA10, ON check error	\N
38	11	21	Pocket - Sensor PSA1L, adjustment error	\N
39	11	22	Pocket - Sensor PSA1C, adjustment error	\N
40	11	23	Pocket - Sensor PSA1R, adjustment error	\N
41	11	24	Pocket - Sensor PSA2, adjustment error	\N
42	11	25	Pocket - Sensor PSA3L, adjustment error	\N
43	11	26	Pocket - Sensor PSA3R, adjustment error	\N
44	11	27	Pocket - Sensor PSA4L, adjustment error	\N
45	11	28	Pocket - Sensor PSA4R, adjustment error	\N
46	11	29	Pocket - Sensor PSA5L, adjustment error	\N
47	11	2A	Pocket - Sensor PSA5C, adjustment error	\N
48	11	2B	Pocket - Sensor PSA5R, adjustment error	\N
49	11	2C	Pocket - Sensor PSA6L, adjustment error	\N
50	11	2D	Pocket - Sensor PSA6C, adjustment error	\N
51	11	2E	Pocket - Sensor PSA6R, adjustment error	\N
52	11	2F	Pocket - Sensor PSA7, adjustment error	\N
53	11	31	Pocket - Sensor PSA1L, Volume upper limit error	\N
54	11	32	Pocket - Sensor PSA1C, Volume upper limit error	\N
55	11	33	Pocket - Sensor PSA1R, Volume upper limit error	\N
56	11	34	Pocket - Sensor PSA2, Volume upper limit error	\N
57	11	35	Pocket - Sensor PSA3L, Volume upper limit error	\N
58	11	36	Pocket - Sensor PSA3R, Volume upper limit error	\N
59	11	37	Pocket - Sensor PSA4L, Volume upper limit error	\N
60	11	38	Pocket - Sensor PSA4R, Volume upper limit error	\N
61	11	39	Pocket - Sensor PSA5L, Volume upper limit error	\N
62	11	3A	Pocket - Sensor PSA5C, Volume upper limit error	\N
63	11	3B	Pocket - Sensor PSA5R, Volume upper limit error	\N
64	11	3C	Pocket - Sensor PSA6L, Volume upper limit error	\N
65	11	3D	Pocket - Sensor PSA6L, Volume upper limit error	\N
66	11	3E	Pocket - Sensor PSA6L, Volume upper limit error	\N
67	11	3F	Pocket - Sensor PSA7, Volume upper limit error	\N
68	11	41	Pocket - Sensor PSA1L, Volume lower limit error	\N
69	11	42	Pocket - Sensor PSA1C, Volume lower limit error	\N
70	11	43	Pocket - Sensor PSA1R, Volume lower limit error	\N
71	11	44	Pocket - Sensor PSA2, Volume lower limit error	\N
72	11	45	Pocket - Sensor PSA3L, Volume lower limit error	\N
73	11	46	Pocket - Sensor PSA3R, Volume lower limit error	\N
74	11	47	Pocket - Sensor PSA4L, Volume lower limit error	\N
75	11	48	Pocket - Sensor PSA4R, Volume lower limit error	\N
76	11	49	Pocket - Sensor PSA5L, Volume lower limit error	\N
77	11	4A	Pocket - Sensor PSA5C, Volume lower limit error	\N
78	11	4B	Pocket - Sensor PSA5R, Volume lower limit error	\N
79	11	4C	Pocket - Sensor PSA6L, Volume lower limit error	\N
80	11	4D	Pocket - Sensor PSA6C, Volume lower limit error	\N
81	11	4E	Pocket - Sensor PSA6R, Volume lower limit error	\N
82	11	4F	Pocket - Sensor PSA7, Volume lower limit error	\N
83	11	51	Pocket - Sensor PSA1L, OFF check error	\N
84	11	52	Pocket - Sensor PSA1C, OFF check error	\N
85	11	53	Pocket - Sensor PSA1R, OFF check error	\N
86	11	54	Pocket - Sensor PSA2, OFF check error	\N
87	11	55	Pocket - Sensor PSA3L, OFF check error	\N
88	11	56	Pocket - Sensor PSA3R, OFF check error	\N
89	11	57	Pocket - Sensor PSA4L, OFF check error	\N
90	11	58	Pocket - Sensor PSA4R, OFF check error	\N
91	11	59	Pocket - Sensor PSA5L, OFF check error	\N
92	11	5A	Pocket - Sensor PSA5C, OFF check error	\N
93	11	5B	Pocket - Sensor PSA5R, OFF check error	\N
94	11	5C	Pocket - Sensor PSA6L, OFF check error	\N
95	11	5D	Pocket - Sensor PSA6C, OFF check error	\N
96	11	5E	Pocket - Sensor PSA6R, OFF check error	\N
97	11	5F	Pocket - Sensor PSA7, OFF check error	\N
98	11	61	Pocket - Sensor PSA8, OFF check error	\N
99	11	62	Pocket - Sensor PSA9L, OFF check error	\N
100	11	63	Pocket - Sensor PSA9R, OFF check error	\N
101	11	64	Pocket - Sensor PSA10, OFF check error	\N
102	11	65	Pocket - Sensor PIA1, OFF check error	\N
103	11	66	Pocket - Sensor PIA2, OFF check error	\N
104	11	67	Pocket - Sensor PIA3, OFF check error	\N
105	11	68	Pocket - Sensor PIA4, OFF check error	\N
106	11	69	Pocket - Sensor PIA5, OFF check error	\N
107	11	6A	Pocket - Sensor PIA6, OFF check error	\N
108	11	6B	Pocket - Sensor PIA7, OFF check error	\N
109	11	6C	Pocket - Sensor PIA8, OFF check error	\N
110	11	6D	Pocket - Sensor PIA9, OFF check error	\N
111	13	01	Pocket - shipping preparation, SerialNo set error	\N
112	13	02	Pocket - shipping preparation, HardwareRev set error	\N
113	13	03	Pocket - shipping preparation, UnitNo set error	\N
114	14	01	Pocket - EEPROM data error	\N
115	14	02	Pocket - EEPROM write error	\N
116	16	21	Pocket - Sensor PSA8, adjustment error	\N
117	16	22	Pocket - Sensor PSA9L (Home Position), adjustment error	\N
118	16	23	Pocket - Sensor PSA9R (Home Position), adjustment error	\N
119	16	24	Pocket - Sensor PSA9L (Home Position), adjustment error	\N
120	16	25	Pocket - Sensor PSA9R (Feed Position), adjustment error	\N
121	16	26	Pocket - Sensor PSA10, adjustment error	\N
122	16	31	Sensor PSA8, volume upper limit error	\N
123	16	32	Sensor PSA9L (Home Position), volume upper limit error	\N
124	16	33	Sensor PSA9R (Home Position), volume upper limit error	\N
125	16	34	Sensor PSA9L (Feed Position), volume upper limit error	\N
126	16	35	Sensor PSA9R (Feed Position), volume upper limit error	\N
127	16	36	Sensor PSA10, volume upper limit error	\N
128	16	41	Pocket - Sensor PSA8, Volume lower limit error	\N
129	16	42	Pocket - Sensor PSA9L (Home Position), Volume lower limit error	\N
130	16	43	Pocket - Sensor PSA9R (Home Position), Volume lower limit error	\N
131	16	44	Pocket - Sensor PSA9L (Feed Position), Volume lower limit error	\N
132	16	45	Pocket - Sensor PSA9R (Feed Position), Volume lower limit error	\N
133	16	46	Pocket - Sensor PSA10, Volume lower limit error	\N
134	1A	61	Camera Unit - banded note detection incomplete	\N
135	1A	62	Camera Unit - preproccession for banded note detection incomplete	\N
136	1A	63	Camera Unit - fake shutter detection incomplete	\N
137	1A	64	Camera Unit - pocket guide detection incomplete	\N
138	1A	65	Camera Unit - JPEG compression incomplete	\N
139	1A	66	Camera Unit - light adjustment incomplete	\N
140	1A	67	Camera Unit - scanning incomplete	\N
141	1A	68	Camera Unit - process incomplete, image capture retry over	\N
142	1A	69	Camera Unit - process incomplete, adjust in the process of camera	\N
143	1A	6A	Camera Unit - process incomplete, command request incomplete	\N
144	1A	6B	Camera Unit - process incomplete, camera busy error	\N
145	1B	01	Camera Unit - ON check error, Light source	\N
146	1B	21	Camera Unit - Sensor adjustment error, Exposure time	\N
147	1B	22	Camera Unit - Sensor adjustment error, Light intensity	\N
148	1B	23	Camera Unit - Sensor adjustment error, White balance	\N
149	1B	24	Camera Unit - Sensor adjustment error, Light intensity (A1)	\N
150	1B	25	Camera Unit - Sensor adjustment error, Light intensity (A2)	\N
151	1B	26	Camera Unit - Sensor adjustment error, Light intensity (A3)	\N
152	1B	27	Camera Unit - Sensor adjustment error, Light intensity (A4)	\N
153	1B	28	Camera Unit - Sensor adjustment error, Light intensity (A5)	\N
154	1B	29	Camera Unit - Sensor adjustment error, White balance (A1)	\N
155	1B	2A	Camera Unit - Sensor adjustment error, White balance (A2)	\N
156	1B	2B	Camera Unit - Sensor adjustment error, White balance (A3)	\N
157	1B	2C	Camera Unit - Sensor adjustment error, White balance (A4)	\N
158	1B	2D	Camera Unit - Sensor adjustment error, White balance (A5)	\N
159	1B	2E	Camera Unit - Sensor adjustment error, Forward dust check	\N
160	1B	2F	Camera Unit - Sensor adjustment error, Bad contrast	\N
161	1B	C2	Metal Detection - Sensor adjustment error, Lower Coil Amplitude	\N
162	1B	C4	Metal Detection - Sensor adjustment error, Lower Coil Offset1	\N
163	1B	C6	Metal Detection - Sensor adjustment error, Lower Coil Offset2	\N
164	1D	52	Metal detection unique error, Lower Coil nothing default	\N
165	1D	54	Metal detection unique error, Lower Coil gain value	\N
166	1D	55	Metal detection unique error, Temperature sensor malfunction	\N
167	1E	01	Camera Unit - EEPROM write error	\N
168	1E	02	Camera Unit - EEPROM data error1	\N
169	1E	03	Camera Unit - EEPROM data error2	\N
170	1E	04	Camera Unit - EEPROM data error3	\N
171	1E	21	Camera Unit - Unplugged connector error, CNLED	\N
172	1F	01	Camera Unit - Data error, Camera register writing	\N
173	1F	02	Camera Unit - Data error, LED driver register writing	\N
174	1F	03	Camera Unit - Data error, Rib range error	\N
175	1F	04	Camera Unit - Data error, Banded note detection area	\N
176	1F	05	Camera Unit - Data error, Compensation image	\N
177	1F	06	Camera Unit - Data error, Light setting	\N
178	1F	41	Camera Unit - Program error, Watchdog reset	\N
179	1F	42	Camera Unit - Program error	\N
180	1F	44	Camera Unit - Program error, Stack overflow	\N
181	20	01	Upper Transport - Actuator malfunction, BMJ1 rotation error	\N
182	20	02	Upper Transport - Actuator malfunction, BMJ2 rotation error	\N
183	20	03	Upper Transport - Actuator malfunction, BMJ3 rotation error	\N
184	20	04	Upper Transport - Actuator malfunction, SMC1(3 way Diversion)	\N
185	20	11	Upper Transport - Remaining notes, PSC1	\N
186	20	12	Upper Transport - Remaining notes, PSC2C	\N
187	20	13	Upper Transport - Remaining notes, PSC2S	\N
188	20	14	Upper Transport - Remaining notes, PSC2C	\N
189	20	15	Upper Transport - Remaining notes, PSC3S	\N
190	20	16	Upper Transport - Remaining notes, PSC4	\N
191	20	17	Upper Transport - Remaining notes, PSC5	\N
192	20	18	Upper Transport - Remaining notes, PSF8C	\N
193	20	19	Upper Transport - Remaining notes, PSF8S	\N
194	20	1A	Upper Transport - Remaining notes, PSF9C	\N
195	20	1B	Upper Transport - Remaining notes, PSF9S	\N
196	20	22	Upper Transport - Jam between sensors PSC2-PSC3	\N
197	20	23	Upper Transport - Jam between sensors PSC3-PSG1	\N
198	20	24	Upper Transport - Jam between sensors PSC3-PSF8	\N
199	20	25	Upper Transport - Jam between sensors PSF8-PSC5	\N
200	20	26	Upper Transport - Jam between sensors PSF8-PSA6	\N
201	20	27	Upper Transport - Jam between sensors PSG1-PSF8	\N
202	20	28	Upper Transport - Jam between sensors PSG1-PSF9	\N
203	20	29	Upper Transport - Jam between sensors PSF9-PSC2	\N
204	20	2C	Upper Transport - Jam between sensors PSA6-PSC2	\N
205	20	2D	Upper Transport - Jam between sensors PSF9-PSR1	\N
206	20	2E	Upper Transport - Jam between sensors PSC3-PSR1	\N
207	20	2F	Upper Transport - Jam between sensors PSA5-PSC2	\N
208	20	36	Upper Transport - Jam on sensor PSC4	\N
209	20	37	Upper Transport - Jam on sensor PSC5	\N
210	20	39	Upper Transport - Jam on sensor PSA6	\N
211	20	3B	Upper Transport - Jam on sensor PSN1	\N
212	20	42	Upper Transport - Unexpected sensor blocking, PSC2	\N
213	20	43	Upper Transport - Unexpected sensor blocking, PSC3	\N
214	20	44	Upper Transport - Unexpected sensor blocking, PSF8	\N
215	20	45	Upper Transport - Unexpected sensor blocking, PSF9	\N
216	20	47	Upper Transport - Unexpected sensor blocking, PSC5	\N
217	20	48	Upper Transport - Unexpected sensor blocking, PSA5	\N
218	20	49	Upper Transport - Unexpected sensor blocking, PSA6	\N
219	20	4A	Upper Transport - Unexpected sensor blocking, PSG1	\N
220	21	01	Upper Transport - ON check error, PSC1 On	\N
221	21	02	Upper Transport - ON check error, PSC2S On	\N
222	21	03	Upper Transport - ON check error, PSC2C On	\N
223	21	04	Upper Transport - ON check error, PSC3S On	\N
224	21	05	Upper Transport - ON check error, PSC3C On	\N
225	21	06	Upper Transport - ON check error, PSC4 On	\N
226	21	07	Upper Transport - ON check error, PSC5 On	\N
227	21	09	Upper Transport - ON check error, PSJ1 On	\N
228	21	21	Upper Transport - Sensor adjustment error, PSC1	\N
229	21	22	Upper Transport - Sensor adjustment error, PSC2S	\N
230	21	23	Upper Transport - Sensor adjustment error, PSC2C	\N
231	21	24	Upper Transport - Sensor adjustment error, PSC3S	\N
232	21	25	Upper Transport - Sensor adjustment error, PSC3C	\N
233	21	26	Upper Transport - Sensor adjustment error, PSC4	\N
234	21	27	Upper Transport - Sensor adjustment error, PSC5	\N
235	21	28	Upper Transport - Sensor adjustment error, PSJ1	\N
236	21	31	Upper Transport - Volume upper limit error, PSC1	\N
237	21	32	Upper Transport - Volume upper limit error, PSC2S	\N
238	21	33	Upper Transport - Volume upper limit error, PSC2C	\N
239	21	34	Upper Transport - Volume upper limit error, PSC3S	\N
240	21	35	Upper Transport - Volume upper limit error, PSC3C	\N
241	21	36	Upper Transport - Volume upper limit error, PSC4	\N
242	21	37	Upper Transport - Volume upper limit error, PSC5	\N
243	21	38	Upper Transport - Volume upper limit error, PSJ1	\N
244	21	41	Upper Transport - Volume lower limit error, PSC1	\N
245	21	42	Upper Transport - Volume lower limit error, PSC2S	\N
246	21	43	Upper Transport - Volume lower limit error, PSC2C	\N
247	21	44	Upper Transport - Volume lower limit error, PSC3S	\N
248	21	45	Upper Transport - Volume lower limit error, PSC3C	\N
249	21	46	Upper Transport - Volume lower limit error, PSC4	\N
250	21	47	Upper Transport - Volume lower limit error, PSC5	\N
251	21	48	Upper Transport - Volume lower limit error, PSJ1	\N
252	21	51	Upper Transport - OFF check error, PSC1 Off	\N
253	21	52	Upper Transport - OFF check error, PSC2S Off	\N
254	21	53	Upper Transport - OFF check error, PSC2C Off	\N
255	21	54	Upper Transport - OFF check error, PSC3S Off	\N
256	21	55	Upper Transport - OFF check error, PSC3C Off	\N
257	21	56	Upper Transport - OFF check error, PSC4 Off	\N
258	21	57	Upper Transport - OFF check error, PSC5 Off	\N
259	21	58	Upper Transport - OFF check error, PIC1 Off	\N
260	21	59	Upper Transport - OFF check error, PSJ1 Off	\N
261	21	5A	Upper Transport - OFF check error, PIJ1 Off	\N
262	21	5B	Upper Transport - OFF check error, PIJ2 Off	\N
263	21	71	Upper Transport - Upper module improper set	\N
264	21	72	Upper Transport - improper set, front open	\N
265	21	73	Upper Transport - improper set, dispense open	\N
266	21	74	Upper Transport - improper set, rear open	\N
267	21	81	Upper Transport - Diversion error, SMC1	\N
268	21	82	Upper Transport - Diversion error, SDF1	\N
269	21	83	Upper Transport - Diversion error, RSC1	\N
270	21	84	Upper Transport - Diversion error, SDC1	\N
271	26	01	Substitute Transport - ON check error, PSF8S On	\N
272	26	02	Substitute Transport - ON check error, PSF8C On	\N
273	26	03	Substitute Transport - ON check error, PSF9S On	\N
274	26	04	Substitute Transport - ON check error, PSF9C On	\N
275	26	21	Substitute Transport - adjustment error, PSF8S	\N
276	26	22	Substitute Transport - adjustment error, PSF8C	\N
277	26	23	Substitute Transport - adjustment error, PSF9S	\N
278	26	24	Substitute Transport - adjustment error, PSF9C	\N
279	26	31	Substitute Transport - Volume upper limit error, PSF8S	\N
280	26	32	Substitute Transport - Volume upper limit error, PSF8C	\N
281	26	33	Substitute Transport - Volume upper limit error, PSF9S	\N
282	26	34	Substitute Transport - Volume upper limit error, PSF9C	\N
283	26	41	Substitute Transport - Volume lower limit error, PSF8S	\N
284	26	42	Substitute Transport - Volume lower limit error, PSF8C	\N
285	26	43	Substitute Transport - Volume lower limit error, PSF9S	\N
286	26	44	Substitute Transport - Volume lower limit error, PSF9C	\N
287	26	51	Substitute Transport - OFF check error, PSF8S Off	\N
288	26	52	Substitute Transport - OFF check error, PSF8C Off	\N
289	26	53	Substitute Transport - OFF check error, PSF9S Off	\N
290	26	54	Substitute Transport - OFF check error, PSF9C Off	\N
291	26	71	Substitute Transport of Centralization open	\N
292	2A	01	SMF1 Position error	\N
293	2A	02	SMF2 Position error	\N
294	2A	03	SMF3 Position error	\N
295	2A	04	SMF4 Position error	\N
296	2A	05	SMF1 Centralization error	\N
297	2A	06	SMF2 Centralization error	\N
298	2A	07	SMF3 Centralization error	\N
299	2A	08	SMF4 Centralization error	\N
300	2A	09	Transport direction switching error	\N
301	2B	01	PSF8RC	\N
302	2B	02	PSF8LC	\N
303	2B	03	PSF8RS	\N
304	2B	04	PSF8LS	\N
305	2B	05	PSF9S	\N
306	2B	06	PSF9C	\N
307	2B	21	PSF8RC (Forward Direction)	\N
308	2B	22	PSF8LC (Forward Direction)	\N
309	2B	23	PSF8RS (Forward Direction)	\N
310	2B	24	PSF8LS (Forward Direction)	\N
311	2B	25	PSF8RC (Reverse Direction)	\N
312	2B	26	PSF8LC (Reverse Direction)	\N
313	2B	27	PSF8RS (Reverse Direction)	\N
314	2B	28	PSF8LS (Reverse Direction)	\N
315	2B	29	PSF9S	\N
316	2B	2A	PSF9C	\N
317	2B	31	PSF8RC (Forward Direction)	\N
318	2B	32	PSF8LC (Forward Direction)	\N
319	2B	33	PSF8RS (Forward Direction)	\N
320	2B	34	PSF8LS (Forward Direction)	\N
321	2B	35	PSF8RC (Reverse Direction)	\N
322	2B	36	PSF8LC (Reverse Direction)	\N
323	2B	37	PSF8RS (Reverse Direction)	\N
324	2B	38	PSF8LS (Reverse Direction)	\N
325	2B	39	PSF9S	\N
326	2B	3A	PSF9C	\N
327	2B	41	PSF8RC (Forward Direction)	\N
328	2B	42	PSF8LC (Forward Direction)	\N
329	2B	43	PSF8RS (Forward Direction)	\N
330	2B	44	PSF8LS (Forward Direction)	\N
331	2B	45	PSF8RC (Reverse Direction)	\N
332	2B	46	PSF8LC (Reverse Direction)	\N
333	2B	47	PSF8RS (Reverse Direction)	\N
334	2B	48	PSF8LS (Reverse Direction)	\N
335	2B	49	PSF9S	\N
336	2B	4A	PSF9C	\N
337	2B	51	PSF8RC	\N
338	2B	52	PSF8LC	\N
339	2B	53	PSF8RS	\N
340	2B	54	PSF8LS	\N
341	2B	55	PSF9S	\N
342	2B	56	PSF9C	\N
343	2B	57	PIF1	\N
344	2B	58	PIF2	\N
345	2B	59	PIF3	\N
346	2B	5A	PIF4	\N
347	2B	5B	PIF5	\N
348	2B	5C	PIF6	\N
349	2B	71	Centralization Transport door open	\N
350	2D	01	SerialNo set error	\N
351	2D	02	HardwareRev set error	\N
352	2E	01	EEPROM data error	\N
353	2E	02	EEPROM write error	\N
354	30	01	Escrow - DMG1(Drum) malfunction	\N
355	30	02	Escrow - BMG1 malfunction	\N
356	30	05	Escrow - Tape end	\N
357	30	06	Escrow - Tape seal	\N
358	30	07	Escrow - Abonormal set position	\N
359	30	08	Escrow - Tape Reel malfunction(PIG2)	\N
360	30	09	Escrow - Tape Reel malfunction(PIG4)	\N
361	30	0A	Escrow - Tape Reel malfunction(PIG5)	\N
362	30	11	Escrow - Remaining notes, PSG1C	\N
363	30	12	Escrow - Remaining notes, PSG1S	\N
364	30	71	Escrow full	\N
365	30	81	Escrow - Transport error, Staying on sensor (PSG1)	\N
366	30	82	Escrow - Transport error, Bill interval (PSG1)	\N
367	30	83	Escrow - Transport error, Bill timing (early)	\N
368	30	84	Escrow - Transport error, Bill timing (later)	\N
369	31	01	Escrow - ON check error, PSG1S On	\N
370	31	02	Escrow - ON check error, PSG1C On	\N
371	31	21	Escrow - adjustment error, PSG1S	\N
372	31	22	Escrow - adjustment error, PSG1C	\N
373	31	31	Escrow - volume upper limit error, PSG1S	\N
374	31	32	Escrow - volume upper limit error, PSG1C	\N
375	31	41	Escrow - volume lower limit error, PSG1S	\N
376	31	42	Escrow - volume lower limit error, PSG1C	\N
377	31	51	Escrow - OFF check error, PSG1S Off	\N
378	31	52	Escrow - OFF check error, PSG1C Off	\N
379	31	53	Escrow - OFF check error, PSG2 Off	\N
380	31	54	Escrow - OFF check error, PSG1 Off	\N
381	31	55	Escrow - OFF check error, PIG2 Off	\N
382	31	56	Escrow - OFF check error, PIG3 Off	\N
383	31	57	Escrow - OFF check error, PIG4 Off	\N
384	31	58	Escrow - OFF check error, PIG5 Off	\N
385	31	71	Escrow Transport open	\N
386	33	01	Escrow - SerialNo set error	\N
387	33	02	Escrow - HardwareRev set error	\N
388	33	03	Escrow - UnitNo set error	\N
389	34	01	Escrow - EEPROM data error	\N
390	34	02	Escrow - EEPROM write error	\N
391	34	B1	Count mismatch (Bills in Escrow are small)	\N
392	34	B2	Count mismatch (Bills in Escrow are large)	\N
393	35	71	Upper Exception Bin full	\N
394	3A	11	Middle Transport - Remaining notes, PSN1	\N
395	3B	01	Middle Transport - ON check error, PSN1 On	\N
396	3B	21	Middle Transport - Adjustment error, PSN1	\N
397	3B	31	Middle Transport - Volume upper limit error, PSN1	\N
398	3B	41	Middle Transport - Volume lower limit error, PSN1	\N
399	3B	51	Middle Transport - OFF check error, PSN1 Off	\N
400	42	01	Upper Module CPU board - Command error (unexecutable)	\N
401	42	02	Upper Module CPU board - Comms error, Command Timeup error	\N
402	42	03	Upper Module CPU board - Comms error, No response	\N
403	42	04	Upper Module CPU board - Comms error, Interrupted reception	\N
404	42	05	Upper Module CPU board - Comms error, Receive data error	\N
405	42	06	Upper Module CPU board - Comms error, Station address error	\N
406	42	07	Upper Module CPU board - Comms error, Response SN error	\N
407	42	08	Upper Module CPU board - Comms error, Timeout in transmission	\N
408	42	09	Upper Module CPU board - Comms error, BCC error	\N
409	42	0A	Upper Module CPU board - Comms error, Overrun error	\N
410	42	0B	Upper Module CPU board - Comms error, Parity error	\N
411	42	0C	Upper Module CPU board - Comms error, Framing error	\N
412	42	21	Upper Module CPU board - Comms error, No response	\N
413	42	22	Upper Module CPU board - Comms error, Timeout in transmission	\N
414	42	23	Upper Module CPU board - Comms error, BCC error	\N
415	42	24	Upper Module CPU board - Comms error, Receive data error	\N
416	42	25	Upper Module CPU board - Comms error, Overrun error	\N
417	42	26	Upper Module CPU board - Comms error, Parity error	\N
418	42	27	Upper Module CPU board - Comms error, Framing error	\N
419	42	31	Upper Module CPU board - Comms error, Command format error	\N
420	42	32	Upper Module CPU board - Comms error, Overrun error	\N
421	42	33	Upper Module CPU board - Comms error, Parity error	\N
422	42	34	Upper Module CPU board - Comms error, Framing error	\N
423	42	35	Upper Module CPU board - Comms error, Undefined data received	\N
424	42	36	Upper Module CPU board - Comms error, Undefined command received	\N
425	42	37	Upper Module CPU board - Comms error, Timing error	\N
426	42	38	Upper Module CPU board - Comms error, Received data error	\N
427	42	42	Upper Module CPU board - Comms error, Command Timeup error	\N
428	42	44	Upper Module CPU board - Comms error, Interrupted reception	\N
429	42	45	Upper Module CPU board - Comms error, Receive data error	\N
430	42	46	Upper Module CPU board - Comms error, Station address error	\N
431	42	47	Upper Module CPU board - Comms error, Response SN error	\N
432	42	49	Upper Module CPU board - Comms error, BCC error	\N
433	42	4A	Upper Module CPU board - Comms error, Overrun error	\N
434	42	4B	Upper Module CPU board - Comms error, Parity error	\N
435	42	4C	Upper Module CPU board - Comms error, Framing error	\N
436	42	51	Upper Module CPU board - Comms error, Timeout in transmission	\N
437	42	52	Upper Module CPU board - Comms error, Multiple command receive	\N
438	42	53	Upper Module CPU board - Comms error, Note validation data send time up	\N
439	43	01	Upper Module CPU board - SerialNo set error	\N
440	43	02	Upper Module CPU board - HardwareRev set error	\N
441	43	03	Upper Module CPU board - DipSW set error	\N
442	44	01	Upper Module CPU board - EEPROM data error	\N
443	44	02	Upper Module CPU board - EEPROM write error	\N
444	44	12	Upper Module CPU board - External flash memory erasing error	\N
445	44	14	Upper Module CPU board - External flash memory writing error	\N
446	44	15	Upper Module CPU board - External flash memory type error	\N
447	44	21	Upper Module CPU board - Unplugged connector, CNA1-3	\N
448	44	22	Upper Module CPU board - Unplugged connector, CNA11-31	\N
449	44	23	Upper Module CPU board - Unplugged connector, CNA12-32	\N
450	44	24	Upper Module CPU board - Unplugged connector, CNA4	\N
451	44	25	Upper Module CPU board - Unplugged connector, CND1	\N
452	44	26	Upper Module CPU board - Unplugged connector, CNHL	\N
453	44	27	Upper Module CPU board - Unplugged connector, CNF1-3	\N
454	44	28	Upper Module CPU board - Unplugged connector, CNF4	\N
455	44	29	Upper Module CPU board - Unplugged connector, CNF5-6	\N
456	44	2A	Upper Module CPU board - Unplugged connector, CNF7-A	\N
457	44	2B	Upper Module CPU board - Unplugged connector, CNG1-2	\N
458	44	2C	Upper Module CPU board - Unplugged connector, CNJ2	\N
459	44	2D	Upper Module CPU board - Unplugged connector, CNJ3-7	\N
460	44	2E	Upper Module CPU board - Unplugged connector, CNJ4	\N
461	44	2F	Upper Module CPU board - Unplugged connector, CNEXT	\N
462	44	31	Upper Module CPU board - Unplugged connector, CNA42	\N
463	44	32	Upper Module CPU board - Unplugged connector, CNA51	\N
464	44	41	Upper Module CPU board - Voltage error, +24V4	\N
465	44	42	Upper Module CPU board - Voltage error, +24V3	\N
466	44	43	Upper Module CPU board - Voltage error, +5V2	\N
467	44	44	Upper Module CPU board - Voltage error, SD+24V2	\N
468	44	45	Upper Module CPU board - Voltage error, +24V2	\N
469	44	46	Upper Module CPU board - Voltage error, LED+5V	\N
470	44	48	Upper Module CPU board - Voltage error, +5V3	\N
471	44	49	Upper Module CPU board - Voltage error, SD+24V3	\N
472	44	47	Upper Module CPU board - Voltage error, Battery low voltage	\N
473	44	91	Upper Module CPU board - Power failure during transaction	\N
474	44	92	Upper Module CPU board - Recieve 'Reset start' command during transaction	\N
475	44	B1	Upper Module CPU board - Counter Incorrect1	\N
476	44	B2	Upper Module CPU board - Counter Incorrect2	\N
477	44	B3	Upper Module CPU board - Counter Incorrect3	\N
478	44	E1	Upper Module CPU board - CPLD error	\N
479	44	F1	Upper Module CPU board - Watchdog reset	\N
480	44	F2	Upper Module CPU board - Program error	\N
481	44	F4	Upper Module CPU board - Stack overflow	\N
482	45	91	BV - Clock error	\N
483	45	92	BV - Temperature error	\N
484	45	93	BV - Interface 1 error	\N
485	45	94	BV - FAN error	\N
486	45	95	BV - VP1L error	\N
487	45	96	BV - VP1R error	\N
488	45	97	BV - VP3L error	\N
489	45	98	BV - VP3R error	\N
490	45	99	BV - Line sensor A error	\N
491	45	9A	BV - Line sensor B error	\N
492	45	9B	BV - Optical recognition sensor L error	\N
493	45	9C	BV - Optical recognition sensor R error	\N
494	45	9D	BV - Fluorescent sensor error	\N
495	45	9E	BV - Magnetic sensor error	\N
496	45	9F	BV - Thickness sensor error	\N
497	49	D1	BV - Internal Flash Memory error	\N
498	49	D2	BV - External flash memory 1-1 error	\N
499	49	D3	BV - External flash memory 1-2 error	\N
500	49	D4	BV - External flash memory 1-3 error	\N
501	49	D5	BV - External flash memory 2 error	\N
502	49	D6	BV - External flash memory 3 error	\N
503	49	D7	BV - Internal RAM error	\N
504	49	D8	BV - External SRAM error	\N
505	49	D9	BV - External DDR error	\N
506	49	DA	BV - External SSRAM1/2 error	\N
507	49	DB	BV - External SSRAM1/4 error	\N
508	49	E1	BV - FPGA1 error	\N
509	49	E2	BV - FPGA2 error	\N
510	49	E3	BV - PLD1 error	\N
511	49	E4	BV - PLD2 error	\N
512	4A	61	Open shutter process incomplete	\N
513	4A	62	Close shutter process incomplete	\N
514	4B	71	Forced shutter opened	\N
515	4B	72	Forced shutter closed	\N
516	4C	01	Abnormal shutter communication	\N
517	50	01	Lower Transport - BMR1 malfunction	\N
518	50	11	Lower Transport - Remaining notes, PSR1S	\N
519	50	12	Lower Transport - Remaining notes, PSR1C	\N
520	50	13	Lower Transport - Remaining notes, PSR2	\N
521	50	14	Lower Transport - Remaining notes, PSR3	\N
522	50	21	Lower Transport - Jam between sensors PSR1-PSL1	\N
523	50	22	Lower Transport - Jam between sensors PSR1-PSR2	\N
524	50	23	Lower Transport - Jam between sensors PSR2-PSL5	\N
525	50	24	Lower Transport - Jam between sensors PSR2-PSL9	\N
526	50	25	Lower Transport - Jam between sensors PSR2-PSR3	\N
527	50	26	Lower Transport - Jam between sensors PSR3-PSL13	\N
528	50	27	Lower Transport - Jam between sensors PSR1-PSW1	\N
529	50	28	Lower Transport - Jam between sensors PSR1-PSW3	\N
530	50	29	Lower Transport - Jam between sensors PSR1-PSW7	\N
531	50	2A	Lower Transport - Jam between sensors PSR1-PSW9	\N
532	50	2B	Lower Transport - Jam between sensors PSR3-PST2	\N
533	50	2C	Lower Transport - Jam between sensors PST2-PSP1	\N
534	50	2D	Lower Transport - Jam between sensors PST2-PSP7	\N
535	50	2E	Lower Transport - Jam between sensors PSR3-PST3	\N
536	50	2F	Lower Transport - Jam between sensors PST3-PSP4	\N
537	50	31	Lower Transport - Jam on sensors, PSR1	\N
538	50	41	Lower Transport - Unexpected sensor blocking, PSR1	\N
539	50	42	Lower Transport - Unexpected sensor blocking, PSR2	\N
540	50	43	Lower Transport - Unexpected sensor blocking, PSR3	\N
541	50	44	Lower Transport - Unexpected sensor blocking, PSR2	\N
542	50	45	Lower Transport - Unexpected sensor blocking, PST3	\N
543	50	51	Lower Transport - Jam, notes Remaining	\N
544	51	01	Lower Transport - ON check error, PSR1S On	\N
545	51	02	Lower Transport - ON check error, PSR1C On	\N
546	51	03	Lower Transport - ON check error, PSR2 On	\N
547	51	04	Lower Transport - ON check error, PSR3 On	\N
548	51	05	Lower Transport - ON check error, PIR1 (Reserved) On	\N
549	51	21	Lower Transport - adjustment error, PSR1S	\N
550	51	22	Lower Transport - adjustment error, PSR1C	\N
551	51	23	Lower Transport - adjustment error, PSR2	\N
552	51	24	Lower Transport - adjustment error, PSR3	\N
553	51	31	Lower Transport - volume upper limit error, PSR1S	\N
554	51	32	Lower Transport - volume upper limit error, PSR1C	\N
555	51	33	Lower Transport - volume upper limit error, PSR2	\N
556	51	34	Lower Transport - volume upper limit error, PSR3	\N
557	51	41	Lower Transport - volume lower limit error, PSR1S	\N
558	51	42	Lower Transport - volume lower limit error, PSR1C	\N
559	51	43	Lower Transport - volume lower limit error, PSR2	\N
560	51	44	Lower Transport - volume lower limit error, PSR3	\N
561	51	51	Lower Transport - OFF check error, PSR1S Off	\N
562	51	52	Lower Transport - OFF check error, PSR1C Off	\N
563	51	53	Lower Transport - OFF check error, PSR2 Off	\N
564	51	54	Lower Transport - OFF check error, PSR3 Off	\N
565	51	55	Lower Transport - OFF check error, PIR1 Off	\N
566	51	70	Lower Module improper set	\N
567	51	71	Lower Transport open	\N
568	51	81	Lower Transport - Diversion error, RSR1	\N
569	51	82	Lower Transport - Diversion error, RSR2	\N
570	51	83	Lower Transport - Diversion error, RSR3	\N
571	51	84	Lower Transport - Diversion error, RSR4	\N
572	51	85	Lower Transport - Diversion error, RSR5	\N
573	55	01	Vertical Transport - Actuator malfunction, BMS1 rotation error	\N
574	55	02	Vertical Transport - Actuator malfunction, BMS2 rotation error	\N
575	56	01	Vertical Transport - ON check error, PIT1 (Reserved) On	\N
576	56	51	Vertical Transport - OFF check error, PIT1 Off	\N
577	56	71	Improper unit set, Vertical Transport open	\N
578	56	81	Vertical Transport - Diversion error, RSR6	\N
579	56	82	Vertical Transport - Diversion error, RST1	\N
580	56	83	Vertical Transport - Diversion error, RST2	\N
581	60	01	Exception Cassette - DMS5 malfunction (Stage up)	\N
582	60	02	Exception Cassette - DMS5 malfunction (Stage down)	\N
583	60	03	Exception Cassette - DMS9 malfunction (Stage up)	\N
584	60	04	Exception Cassette - DMS9 malfunction (Stage down)	\N
585	60	05	Exception Cassette - DMS5 malfunction (Stage positioning)	\N
586	60	06	Exception Cassette - DMS9 malfunction (Stage positioning)	\N
587	60	11	Exception Cassette - Remaining notes, PSW1S	\N
588	60	12	Exception Cassette - Remaining notes, PSW1C	\N
589	60	13	Exception Cassette - Remaining notes, PSW3S	\N
590	60	14	Exception Cassette - Remaining notes, PSW3C	\N
591	60	15	Exception Cassette - Remaining notes, PSW5S	\N
592	60	16	Exception Cassette - Remaining notes, PSW5C	\N
593	60	17	Exception Cassette - Remaining notes, PSW7	\N
594	60	31	Exception Cassette - Jam on sensor, PSW1	\N
595	60	32	Exception Cassette - Jam on sensor, PSW3	\N
596	60	33	Exception Cassette - Jam on sensor, PSW5	\N
597	60	34	Exception Cassette - Jam on sensor, PSW7	\N
598	60	41	Exception Cassette - Unexpected sensor blocking, PSW1	\N
599	60	42	Exception Cassette - Unexpected sensor blocking, PSW3	\N
600	60	43	Exception Cassette - Unexpected sensor blocking, PSW5	\N
601	60	44	Exception Cassette - Unexpected sensor blocking, PSW7	\N
602	60	71	Exception Cassette - Area 1 full	\N
603	60	72	Exception Cassette - Area 2 full	\N
604	60	73	Exception Cassette - Area 3 full	\N
605	60	74	Exception Cassette - Deposit Area full	\N
606	61	01	Exception Cassette - ON check error, PSW1S On	\N
607	61	02	Exception Cassette - ON check error, PSW1C On	\N
608	61	03	Exception Cassette - ON check error, PSW2 On	\N
609	61	04	Exception Cassette - ON check error, PSW3S On	\N
610	61	05	Exception Cassette - ON check error, PSW3C On	\N
611	61	06	Exception Cassette - ON check error, PSW4 On	\N
612	61	07	Exception Cassette - ON check error, PSW5S On	\N
613	61	08	Exception Cassette - ON check error, PSW5C On	\N
614	61	09	Exception Cassette - ON check error, PSW6 On	\N
615	61	0A	Exception Cassette - ON check error, PSW7 On	\N
616	61	0B	Exception Cassette - ON check error, PSW8 On	\N
617	61	0C	Exception Cassette - ON check error, PSW9 On	\N
618	61	0D	Exception Cassette - ON check error, PSW10 On	\N
619	61	21	Exception Cassette - sensor adjustment error, PSW1S	\N
620	61	22	Exception Cassette - sensor adjustment error, PSW1C	\N
621	61	23	Exception Cassette - sensor adjustment error, PSW2	\N
622	61	24	Exception Cassette - sensor adjustment error, PSW3S	\N
623	61	25	Exception Cassette - sensor adjustment error, PSW3C	\N
624	61	26	Exception Cassette - sensor adjustment error, PSW4	\N
625	61	27	Exception Cassette - sensor adjustment error, PSW5S	\N
626	61	28	Exception Cassette - sensor adjustment error, PSW5C	\N
627	61	29	Exception Cassette - sensor adjustment error, PSW6	\N
628	61	2A	Exception Cassette - sensor adjustment error, PSW7	\N
629	61	2B	Exception Cassette - sensor adjustment error, PSW8	\N
630	61	2C	Exception Cassette - sensor adjustment error, PSW9	\N
631	61	2D	Exception Cassette - sensor adjustment error, PSW10	\N
632	61	31	Exception Cassette - Volume upper limit error, PSW1S	\N
633	61	32	Exception Cassette - Volume upper limit error, PSW1C	\N
634	61	33	Exception Cassette - Volume upper limit error, PSW2	\N
635	61	34	Exception Cassette - Volume upper limit error, PSW3S	\N
636	61	35	Exception Cassette - Volume upper limit error, PSW3C	\N
637	61	36	Exception Cassette - Volume upper limit error, PSW4	\N
638	61	37	Exception Cassette - Volume upper limit error, PSW5S	\N
639	61	38	Exception Cassette - Volume upper limit error, PSW5C	\N
640	61	39	Exception Cassette - Volume upper limit error, PSW6	\N
641	61	3A	Exception Cassette - Volume upper limit error, PSW7	\N
642	61	3B	Exception Cassette - Volume upper limit error, PSW8	\N
643	61	3C	Exception Cassette - Volume upper limit error, PSW9	\N
644	61	3D	Exception Cassette - Volume upper limit error, PSW10	\N
645	61	41	Exception Cassette - Volume lower limit error, PSW1S	\N
646	61	42	Exception Cassette - Volume lower limit error, PSW1C	\N
647	61	43	Exception Cassette - Volume lower limit error, PSW2	\N
648	61	44	Exception Cassette - Volume lower limit error, PSW3S	\N
649	61	45	Exception Cassette - Volume lower limit error, PSW3C	\N
650	61	46	Exception Cassette - Volume lower limit error, PSW4	\N
651	61	47	Exception Cassette - Volume lower limit error, PSW5S	\N
652	61	48	Exception Cassette - Volume lower limit error, PSW5C	\N
653	61	49	Exception Cassette - Volume lower limit error, PSW6	\N
654	61	4A	Exception Cassette - Volume lower limit error, PSW7	\N
655	61	4B	Exception Cassette - Volume lower limit error, PSW8	\N
656	61	4C	Exception Cassette - Volume lower limit error, PSW9	\N
657	61	4D	Exception Cassette - Volume lower limit error, PSW10	\N
658	61	51	Exception Cassette - OFF check error, PSW1S Off	\N
659	61	52	Exception Cassette - OFF check error, PSW1C Off	\N
660	61	53	Exception Cassette - OFF check error, PSW2 Off	\N
661	61	54	Exception Cassette - OFF check error, PSW3S Off	\N
662	61	55	Exception Cassette - OFF check error, PSW3C Off	\N
663	61	56	Exception Cassette - OFF check error, PSW4 Off	\N
664	61	57	Exception Cassette - OFF check error, PSW5S Off	\N
665	61	58	Exception Cassette - OFF check error, PSW5C Off	\N
666	61	59	Exception Cassette - OFF check error, PSW6 Off	\N
667	61	5A	Exception Cassette - OFF check error, PSW7 Off	\N
668	61	5B	Exception Cassette - OFF check error, PSW8 Off	\N
669	61	5C	Exception Cassette - OFF check error, PSW9 Off	\N
670	61	5D	Exception Cassette - OFF check error, PSW10 Off	\N
671	61	5E	Exception Cassette - OFF check error, PIW1 Off	\N
672	61	5F	Exception Cassette - OFF check error, PIW2 Off	\N
673	61	61	Exception Cassette - OFF check error, PIW3 Off	\N
674	61	62	Exception Cassette - OFF check error, PIW4 Off	\N
675	61	63	Exception Cassette - OFF check error, PIW5 Off	\N
676	61	64	Exception Cassette - OFF check error, PIW6 Off	\N
677	61	65	Exception Cassette - OFF check error, PIW7 Off	\N
678	61	66	Exception Cassette - OFF check error, PIW8 Off	\N
679	63	01	Exception Cassette - SerialNo set error	\N
680	63	02	Exception Cassette - HardwareRev set error	\N
681	63	03	Exception Cassette - UnitNo set error	\N
682	64	01	Exception Cassette - EEPROM data error	\N
683	64	02	Exception Cassette - EEPROM write error	\N
684	64	21	Exception Cassette - connector1 unplugged	\N
685	64	22	Exception Cassette - connector2 unplugged	\N
686	65	01	Cassette Position 1 - DMS1 malfunction (Stage up)	\N
687	65	02	Cassette Position 1 - DMS1 malfunction (Stage down)	\N
688	65	03	Cassette Position 1 - SMS1 (feed) malfunction	\N
689	65	04	Cassette Position 1 - DMS1 malfunction (Stage positioning)	\N
690	65	11	Cassette Position 1 - Remaining notes, PSL1	\N
691	65	12	Cassette Position 1 - Remaining notes, PSL2	\N
692	65	31	Cassette Position 1 - Jam on sensor, PSL1	\N
693	65	41	Cassette Position 1 - Unexpected sensor blocking, PSL1	\N
694	65	61	Cassette Position 1 - SMS1 Feed error	\N
695	65	62	Cassette Position 1 - Unsupported notes	\N
696	65	71	Cassette Position 1 full	\N
697	66	01	Cassette Position 1 - ON check error, PSL1 On	\N
698	66	02	Cassette Position 1 - ON check error, PSL2 On	\N
699	66	03	Cassette Position 1 - ON check error, PSL3L On	\N
700	66	04	Cassette Position 1 - ON check error, PSL3R On	\N
701	66	05	Cassette Position 1 - ON check error, PSL4 On	\N
702	66	21	Cassette Position 1 - adjustment error, PSL1	\N
703	66	22	Cassette Position 1 - adjustment error, PSL2	\N
704	66	23	Cassette Position 1 - adjustment error, PSL3L	\N
705	66	24	Cassette Position 1 - adjustment error, PSL3R	\N
706	66	25	Cassette Position 1 - adjustment error, PSL4	\N
707	66	31	Cassette Position 1 - volume upper limit error, PSL1	\N
708	66	32	Cassette Position 1 - volume upper limit error, PSL2	\N
709	66	33	Cassette Position 1 - volume upper limit error, PSL3L	\N
710	66	34	Cassette Position 1 - volume upper limit error, PSL3R	\N
711	66	35	Cassette Position 1 - volume upper limit error, PSL4	\N
712	66	41	Cassette Position 1 - volume lower limit error, PSL1	\N
713	66	42	Cassette Position 1 - volume lower limit error, PSL2	\N
714	66	43	Cassette Position 1 - volume lower limit error, PSL3L	\N
715	66	44	Cassette Position 1 - volume lower limit error, PSL3R	\N
716	66	45	Cassette Position 1 - volume lower limit error, PSL4	\N
717	66	51	Cassette Position 1 - OFF check error, PSL1 Off	\N
718	66	52	Cassette Position 1 - OFF check error, PSL2 Off	\N
719	66	53	Cassette Position 1 - OFF check error, PSL3L Off	\N
720	66	54	Cassette Position 1 - OFF check error, PSL3R Off	\N
721	66	55	Cassette Position 1 - OFF check error, PSL4 Off	\N
722	66	56	Cassette Position 1 - OFF check error, PSL1 Off	\N
723	66	57	Cassette Position 1 - OFF check error, PSL2 Off	\N
724	66	58	Cassette Position 1 - OFF check error, PSL3 Off	\N
725	66	59	Cassette Position 1 - OFF check error, PIL13 Off	\N
726	66	5A	Cassette Position 1 - OFF check error, PIL14 Off	\N
727	66	5B	Cassette Position 1 - OFF check error, PIL15 Off	\N
728	68	01	Cassette Position 1 - SerialNo set error	\N
729	68	02	Cassette Position 1 - HardwareRev set error	\N
730	68	03	Cassette Position 1 - UnitNo set error	\N
731	69	01	Cassette Position 1 - EEPROM data error	\N
732	69	02	Cassette Position 1 - EEPROM write error	\N
733	69	21	Cassette Position 1 - connector unplugged	\N
734	70	01	Cassette Position 2 - DMS2 malfunction (Stage up)	\N
735	70	02	Cassette Position 2 - DMS2 malfunction (Stage down)	\N
736	70	03	Cassette Position 2 - SMS2 (feed) malfunction	\N
737	70	04	Cassette Position 2 - DMS2 malfunction (Stage positioning)	\N
738	70	11	Cassette Position 2 - Remaining notes, PSL5	\N
739	70	12	Cassette Position 2 - Remaining notes, PSL6	\N
740	70	31	Cassette Position 2 - Jam on sensor, PSL5	\N
741	70	41	Cassette Position 2 - PSL5	\N
742	70	61	Cassette Position 2 - SMS2 Feed error	\N
743	70	62	Cassette Position 2 - Unsupported notes	\N
744	70	71	Cassette Position 2 - full	\N
745	71	01	Cassette Position 2 - ON check error, PSL5 On	\N
746	71	02	Cassette Position 2 - ON check error, PSL6 On	\N
747	71	03	Cassette Position 2 - ON check error, PSL7L On	\N
748	71	04	Cassette Position 2 - ON check error, PSL7R On	\N
749	71	05	Cassette Position 2 - ON check error, PSL8 On	\N
750	71	21	Cassette Position 2 - ON check error, PSL5 On	\N
751	71	22	Cassette Position 2 - ON check error, PSL6 On	\N
752	71	23	Cassette Position 2 - adjustment error, PSL7L	\N
753	71	24	Cassette Position 2 - adjustment error, PSL7R	\N
754	71	25	Cassette Position 2 - adjustment error, PSL8	\N
755	71	31	Cassette Position 2 - Volume upper limit error, PSL5	\N
756	71	32	Cassette Position 2 - Volume upper limit error, PSL6	\N
757	71	33	Cassette Position 2 - Volume upper limit error, PSL7L	\N
758	71	34	Cassette Position 2 - Volume upper limit error, PSL7R	\N
759	71	35	Cassette Position 2 - Volume upper limit error, PSL8	\N
760	71	41	Cassette Position 2 - Volume lower limit error, PSL5	\N
761	71	42	Cassette Position 2 - Volume lower limit error, PSL6	\N
762	71	43	Cassette Position 2 - Volume lower limit error, PSL7L	\N
763	71	44	Cassette Position 2 - Volume lower limit error, PSL7R	\N
764	71	45	Cassette Position 2 - Volume lower limit error, PSL8	\N
765	71	51	Cassette Position 2 - OFF check error, PSL5 Off	\N
766	71	52	Cassette Position 2 - OFF check error, PSL6 Off	\N
767	71	53	Cassette Position 2 - OFF check error, PSL7L Off	\N
768	71	54	Cassette Position 2 - OFF check error, PSL7R Off	\N
769	71	55	Cassette Position 2 - OFF check error, PSL8 Off	\N
770	71	56	Cassette Position 2 - OFF check error, PSL4 Off	\N
771	71	57	Cassette Position 2 - OFF check error, PSL5 Off	\N
772	71	58	Cassette Position 2 - OFF check error, PSL6 Off	\N
773	71	59	Cassette Position 2 - OFF check error, PIL16 Off	\N
774	71	5A	Cassette Position 2 - OFF check error, PIL17 Off	\N
775	71	5B	Cassette Position 2 - OFF check error, PIL18 Off	\N
776	73	01	Cassette Position 2 - SerialNo set error	\N
777	73	02	Cassette Position 2 - HardwareRev set error	\N
778	73	03	Cassette Position 2 - UnitNo set error	\N
779	74	01	Cassette Position 2 - EEPROM data error	\N
780	74	02	Cassette Position 2 - EEPROM write error	\N
781	74	21	Cassette Position 2 - connector unplugged	\N
782	75	01	Cassette Position 3 - DMS3 malfunction (Stage up)	\N
783	75	02	Cassette Position 3 - DMS3 malfunction (Stage down)	\N
784	75	03	Cassette Position 3 - SMS3 (feed) malfunction	\N
785	75	04	Cassette Position 3 - DMS3 malfunction (Stage positioning)	\N
786	75	11	Cassette Position 3 - Remaining notes, PSL9	\N
787	75	12	Cassette Position 3 - Remaining notes, PSL10	\N
788	75	31	Cassette Position 3 - Jam on sensor, PSL9	\N
789	75	41	Cassette Position 3 - Unexpected sensor blocking, PSL9	\N
790	75	61	Cassette Position 3 - SMS3 Feed error	\N
791	75	62	Cassette Position 3 - Unsupported notes	\N
792	75	71	Cassette Position 3 - full	\N
793	76	01	Cassette Position 3 - ON check error, PSL9 On	\N
794	76	02	Cassette Position 3 - ON check error, PSL10 On	\N
795	76	03	Cassette Position 3 - ON check error, PSL11L On	\N
796	76	04	Cassette Position 3 - ON check error, PSL11R On	\N
797	76	05	Cassette Position 3 - ON check error, PSL12 On	\N
798	76	21	Cassette Position 3 - adjustment error, PSL9	\N
799	76	22	Cassette Position 3 - adjustment error, PSL10	\N
800	76	23	Cassette Position 3 - adjustment error, PSL11L	\N
801	76	24	Cassette Position 3 - adjustment error, PSL11R	\N
802	76	25	Cassette Position 3 - adjustment error, PSL12	\N
803	76	31	Cassette Position 3 - Volume upper limit error, PSL9	\N
804	76	32	Cassette Position 3 - Volume upper limit error, PSL10	\N
805	76	33	Cassette Position 3 - Volume upper limit error, PSL11L	\N
806	76	34	Cassette Position 3 - Volume upper limit error, PSL11R	\N
807	76	35	Cassette Position 3 - Volume upper limit error, PSL12	\N
808	76	41	Cassette Position 3 - Volume upper limit error, PSL9	\N
809	76	42	Cassette Position 3 - Volume upper limit error, PSL10	\N
810	76	43	Cassette Position 3 - Volume lower limit error, PSL11L	\N
811	76	44	Cassette Position 3 - Volume lower limit error, PSL11R	\N
812	76	45	Cassette Position 3 - Volume lower limit error, PSL12	\N
813	76	51	Cassette Position 3 - OFF check error, PSL9 Off	\N
814	76	52	Cassette Position 3 - OFF check error, PSL10 Off	\N
815	76	53	Cassette Position 3 - OFF check error, PSL11L Off	\N
816	76	54	Cassette Position 3 - OFF check error, PSL11R Off	\N
817	76	55	Cassette Position 3 - OFF check error, PSL12 Off	\N
818	76	56	Cassette Position 3 - OFF check error, PIL7 Off	\N
819	76	57	Cassette Position 3 - OFF check error, PIL8 Off	\N
820	76	58	Cassette Position 3 - OFF check error, PIL9 Off	\N
821	76	59	Cassette Position 3 - OFF check error, PIL19 Off	\N
822	76	5A	Cassette Position 3 - OFF check error, PIL20 Off	\N
823	76	5B	Cassette Position 3 - OFF check error, PIL21 Off	\N
824	78	01	Cassette Position 3 - SerialNo set error	\N
825	78	02	Cassette Position 3 - HardwareRev set error	\N
826	78	03	Cassette Position 3 - UnitNo set error	\N
827	79	01	Cassette Position 3 - EEPROM data error	\N
828	79	02	Cassette Position 3 - EEPROM write error	\N
829	79	21	Cassette Position 3 - Unplugged connector	\N
830	80	01	Cassette Position 4 - DMS4 malfunction (Stage up) If split type, Top stage	\N
831	80	02	Cassette Position 4 - DMS4 malfunction (Stage down) If split type, Top stage	\N
832	80	03	Cassette Position 4 - SMS4 malfunction (Feed) If split type, Bottom feed	\N
833	80	04	Cassette Position 4 - DMS6 malfunction (Bottom Stage up)	\N
834	80	05	Cassette Position 4 - DMS6 malfunction (Bottom Stage down)	\N
835	80	06	Cassette Position 4 - SMS5 malfunction (Top feed)	\N
836	80	07	Cassette Position 4 - DMS4 malfunction (Stage positioning) If split type, Top stage	\N
837	80	08	Cassette Position 4 - DMS6 malfunction (Stage positioning) If split type, Bottom stage	\N
838	80	11	Cassette Position 4 - Remaining notes, PSL13	\N
839	80	12	Cassette Position 4 - Remaining notes, PSL14	\N
840	80	13	Cassette Position 4 - Remaining notes, PSP1	\N
841	80	31	Cassette Position 4 - Jam on sensor, PSL13	\N
842	80	32	Cassette Position 4 - Jam on sensor, PSP1	\N
843	80	33	Cassette Position 4 - Jam on sensor, PSP1	\N
844	80	41	Cassette Position 4 - Unexpected sensor blocking, PSL13	\N
845	80	42	Cassette Position 4 - Unexpected sensor blocking, PSP1	\N
846	80	61	Cassette Position 4 - SMS5 Feed error (If split type, Top feed)	\N
847	80	62	Cassette Position 4 - SMS4 Feed error (Bottom)	\N
848	80	63	Cassette Position 4 or 4Top Unsupported notes	\N
849	80	64	Cassette Position 4 Bottom Unsupported notes	\N
850	80	71	Cassette Position 4 full or Top full	\N
851	80	72	Cassette Position 4 Bottom full	\N
852	81	01	Cassette Position 4 - ON check error, PSL13 On	\N
853	81	02	Cassette Position 4 - ON check error, PSL14 On	\N
854	81	03	Cassette Position 4 - ON check error, PSL15L On	\N
855	81	04	Cassette Position 4 - ON check error, PSL15R On	\N
856	81	05	Cassette Position 4 - ON check error, PSL16 On	\N
857	81	09	Cassette Position 4 - ON check error, PSP1 On	\N
858	81	0A	Cassette Position 4 - ON check error, PSP2L On	\N
859	81	0B	Cassette Position 4 - ON check error, PSP2R On	\N
860	81	0C	Cassette Position 4 - ON check error, PSP3 On	\N
861	81	21	Cassette Position 4 - adjustment error, PSL13	\N
862	81	22	Cassette Position 4 - adjustment error, PSL14	\N
863	81	23	Cassette Position 4 - adjustment error, PSL15L	\N
864	81	24	Cassette Position 4 - adjustment error, PSL15R	\N
865	81	25	Cassette Position 4 - adjustment error, PSL16	\N
866	81	29	Cassette Position 4 - adjustment error, PSP1	\N
867	81	2A	Cassette Position 4 - adjustment error, PSP2L	\N
868	81	2B	Cassette Position 4 - adjustment error, PSP2R	\N
869	81	2C	Cassette Position 4 - adjustment error, PSP3	\N
870	81	31	Cassette Position 4 - Volume upper limit error, PSL13	\N
871	81	32	Cassette Position 4 - Volume upper limit error, PSL14	\N
872	81	33	Cassette Position 4 - Volume upper limit error, PSL15L	\N
873	81	34	Cassette Position 4 - Volume upper limit error, PSL15R	\N
874	81	35	Cassette Position 4 - Volume upper limit error, PSL16	\N
875	81	39	Cassette Position 4 - Volume upper limit error, PSP1	\N
876	81	3A	Cassette Position 4 - Volume upper limit error, PSP2L	\N
877	81	3B	Cassette Position 4 - Volume upper limit error, PSP2R	\N
878	81	3C	Cassette Position 4 - Volume upper limit error, PSP3	\N
879	81	41	Cassette Position 4 - Volume lower limit error, PSL13	\N
880	81	42	Cassette Position 4 - Volume lower limit error, PSL14	\N
881	81	43	Cassette Position 4 - Volume lower limit error, PSL15L	\N
882	81	44	Cassette Position 4 - Volume lower limit error, PSL15R	\N
883	81	45	Cassette Position 4 - Volume lower limit error, PSL16	\N
884	81	49	Cassette Position 4 - Volume lower limit error, PSP1	\N
885	81	4A	Cassette Position 4 - Volume lower limit error, PSP2L	\N
886	81	4B	Cassette Position 4 - Volume lower limit error, PSP2R	\N
887	81	4C	Cassette Position 4 - Volume lower limit error, PSP3	\N
888	81	51	Cassette Position 4 - OFF check error, PSL13 Off	\N
889	81	52	Cassette Position 4 - OFF check error, PSL14 Off	\N
890	81	53	Cassette Position 4 - OFF check error, PSL15L Off	\N
891	81	54	Cassette Position 4 - OFF check error, PSL15R Off	\N
892	81	55	Cassette Position 4 - OFF check error, PSL16 Off	\N
893	81	56	Cassette Position 4 - OFF check error, PIL10 Off	\N
894	81	57	Cassette Position 4 - OFF check error, PIL11 Off	\N
895	81	58	Cassette Position 4 - OFF check error, PIL12 Off	\N
896	81	59	Cassette Position 4 - OFF check error, PSP1 Off	\N
897	81	5A	Cassette Position 4 - OFF check error, PSP2L Off	\N
898	81	5B	Cassette Position 4 - OFF check error, PSP2R Off	\N
899	81	5C	Cassette Position 4 - OFF check error, PSP3 Off	\N
900	81	5D	Cassette Position 4 - OFF check error, PIP1 Off	\N
901	81	5E	Cassette Position 4 - OFF check error, PIP2 Off	\N
902	81	5F	Cassette Position 4 - OFF check error, PIP3 Off	\N
903	81	61	Cassette Position 4 - OFF check error, PIL22 Off	\N
904	81	62	Cassette Position 4 - OFF check error, PIL23 Off	\N
905	81	63	Cassette Position 4 - OFF check error, PIL24 Off	\N
906	81	64	Cassette Position 4 - OFF check error, PIP10 Off	\N
907	81	65	Cassette Position 4 - OFF check error, PIP11 Off	\N
908	81	66	Cassette Position 4 - OFF check error, PIP12 Off	\N
909	83	01	Cassette Position 4 - SerialNo set error	\N
910	83	02	Cassette Position 4 - HardwareRev set error	\N
911	83	03	Cassette Position 4 - UnitNo set error	\N
912	84	01	Cassette Position 4 - EEPROM data error	\N
913	84	02	Cassette Position 4 - EEPROM write error	\N
914	84	21	Cassette Position 4 - connector1 unplugged	\N
915	84	22	Cassette Position 4 - connector2 unplugged	\N
916	85	01	Cassette Position 5 - DMS7 malfunction (Bottom stage up)	\N
917	85	02	Cassette Position 5 - DMS7 malfunction (Bottom stage down)	\N
918	85	03	Cassette Position 5 - SMS6 malfunction (Bottom feed)	\N
919	85	04	Cassette Position 5 - DMS8 malfunction (Top stage up)	\N
920	85	05	Cassette Position 5 - DMS8 malfunction (Top stage down)	\N
921	85	06	Cassette Position 5 - SMS7 malfunction (Top feed)	\N
922	85	07	Cassette Position 5 - DMS7 malfunction (Bottom stage positioning)	\N
923	85	08	Cassette Position 5 - DMS8 malfunction (Top stage positioning)	\N
924	85	11	Cassette Position 5 - Remaining notes, PSP7	\N
925	85	12	Cassette Position 5 - Remaining notes, PSP8	\N
926	85	13	Cassette Position 5 - Remaining notes, PSP4	\N
927	85	31	Cassette Position 5 - Jam on sensor, PSP7	\N
928	85	32	Cassette Position 5 - Jam on sensor, PSP4	\N
929	85	33	Cassette Position 5 - Jam on sensor, PSP4	\N
930	85	41	Cassette Position 5 - Unexpected sensor blocking, PSP7	\N
931	85	42	Cassette Position 5 - Unexpected sensor blocking, PSP4	\N
932	85	61	Cassette Position 5 - Feed error (Top)	\N
933	85	62	Cassette Position 5 - Feed error (Bottom)	\N
934	85	63	Cassette Position 5 - Top Unsupported notes	\N
935	85	64	Cassette Position 5 - Bottom Unsupported notes	\N
936	85	71	Cassette Position 5 Top full	\N
937	85	72	Cassette Position 5 Bottom full	\N
938	86	01	Cassette Position 5 - ON check error, PSP7 On	\N
939	86	02	Cassette Position 5 - ON check error, PSP8 On	\N
940	86	03	Cassette Position 5 - ON check error, PSP9L On	\N
941	86	04	Cassette Position 5 - ON check error, PSP9R On	\N
942	86	05	Cassette Position 5 - ON check error, PSP10 On	\N
943	86	09	Cassette Position 5 - ON check error, PSP4 On	\N
944	86	0A	Cassette Position 5 - ON check error, PSP5L On	\N
945	86	0B	Cassette Position 5 - ON check error, PSP5R On	\N
946	86	0C	Cassette Position 5 - ON check error, PSP6 On	\N
947	86	21	Cassette Position 5 - adjustment error, PSP7	\N
948	86	22	Cassette Position 5 - adjustment error, PSP8	\N
949	86	23	Cassette Position 5 - adjustment error, PSP9L	\N
950	86	24	Cassette Position 5 - adjustment error, PSP9R	\N
951	86	25	Cassette Position 5 - adjustment error, PSP10	\N
952	86	29	Cassette Position 5 - adjustment error, PSP4	\N
953	86	2A	Cassette Position 5 - adjustment error, PSP5L	\N
954	86	2B	Cassette Position 5 - adjustment error, PSP5R	\N
955	86	2C	Cassette Position 5 - adjustment error, PSP6	\N
956	86	31	Cassette Position 5 - Volume upper limit error, PSP7	\N
957	86	32	Cassette Position 5 - Volume upper limit error, PSP8	\N
958	86	33	Cassette Position 5 - Volume upper limit error, PSP9L	\N
959	86	34	Cassette Position 5 - Volume upper limit error, PSP9R	\N
960	86	35	Cassette Position 5 - Volume upper limit error, PSP10	\N
961	86	39	Cassette Position 5 - Volume upper limit error, PSP4	\N
962	86	3A	Cassette Position 5 - Volume upper limit error, PSP5L	\N
963	86	3B	Cassette Position 5 - Volume upper limit error, PSP5R	\N
964	86	3C	Cassette Position 5 - Volume upper limit error, PSP6	\N
965	86	41	Cassette Position 5 - Volume lower limit error, PSP7	\N
966	86	42	Cassette Position 5 - Volume lower limit error, PSP8	\N
967	86	43	Cassette Position 5 - Volume lower limit error, PSP9L	\N
968	86	44	Cassette Position 5 - Volume lower limit error, PSP9R	\N
969	86	45	Cassette Position 5 - Volume lower limit error, PSP10	\N
970	86	49	Cassette Position 5 - Volume lower limit error, PSP4	\N
971	86	4A	Cassette Position 5 - Volume lower limit error, PSP5L	\N
972	86	4B	Cassette Position 5 - Volume lower limit error, PSP5R	\N
973	86	4C	Cassette Position 5 - Volume lower limit error, PSP6	\N
974	86	51	Cassette Position 5 - OFF check error, PSP7 Off	\N
975	86	52	Cassette Position 5 - OFF check error, PSP8 Off	\N
976	86	53	Cassette Position 5 - OFF check error, PSP9L Off	\N
977	86	54	Cassette Position 5 - OFF check error, PSP9R Off	\N
978	86	56	Cassette Position 5 - OFF check error, PSP10 Off	\N
979	86	57	Cassette Position 5 - OFF check error, PIP7 Off	\N
980	86	58	Cassette Position 5 - OFF check error, PIP8 Off	\N
981	86	59	Cassette Position 5 - OFF check error, PIP9 Off	\N
982	86	5A	Cassette Position 5 - OFF check error, PSP5L Off	\N
983	86	5B	Cassette Position 5 - OFF check error, PSP5R Off	\N
984	86	5C	Cassette Position 5 - OFF check error, PSP6 Off	\N
985	86	5D	Cassette Position 5 - OFF check error, PIP4 Off	\N
986	86	5E	Cassette Position 5 - OFF check error, PIP5 Off	\N
987	86	5F	Cassette Position 5 - OFF check error, PIP6 Off	\N
988	86	61	Cassette Position 5 - OFF check error, PIP13 Off	\N
989	86	62	Cassette Position 5 - OFF check error, PIP14 Off	\N
990	86	63	Cassette Position 5 - OFF check error, PIP15 Off	\N
991	86	64	Cassette Position 5 - OFF check error, PIP16 Off	\N
992	86	65	Cassette Position 5 - OFF check error, PIP17 Off	\N
993	86	66	Cassette Position 5 - OFF check error, PIP18 Off	\N
994	88	01	Cassette Position 5 - SerialNo set error	\N
995	88	02	Cassette Position 5 - HarwareRev set error	\N
996	88	03	Cassette Position 5 - UnitNo set error	\N
997	89	01	Cassette Position 5 - EEPROM data error	\N
998	89	02	Cassette Position 5 - EEPROM write error	\N
999	89	21	Cassette Position 5 - connector1 unplugged	\N
1000	89	22	Cassette Position 5 - connector2 unplugged	\N
1001	92	01	Lower Module CPU board - Overrun error	\N
1002	92	02	Lower Module CPU board - Framing error	\N
1003	92	03	Lower Module CPU board - Parity error	\N
1004	92	04	Lower Module CPU board - Receive data error	\N
1005	92	05	Lower Module CPU board - BCC error	\N
1006	92	06	Lower Module CPU board - Transmit Timeup error	\N
1007	92	07	Lower Module CPU board - Response Timeup error	\N
1008	92	11	Lower Module CPU board - Overrun error	\N
1009	92	12	Lower Module CPU board - Framing error	\N
1010	92	13	Lower Module CPU board - Parity error	\N
1011	92	14	Lower Module CPU board - Receive data error	\N
1012	92	15	Lower Module CPU board - BCC error	\N
1013	92	16	Lower Module CPU board - Transmit Timeup error	\N
1014	92	17	Lower Module CPU board - Response Timeup error	\N
1015	92	21	Lower Module CPU board - Overrun error	\N
1016	92	22	Lower Module CPU board - Framing error	\N
1017	92	23	Lower Module CPU board - Parity error	\N
1018	92	24	Lower Module CPU board - Receive data error	\N
1019	92	25	Lower Module CPU board - BCC error	\N
1020	92	26	Lower Module CPU board - Transmit Timeup error	\N
1021	92	27	Lower Module CPU board - Response Timeup error	\N
1022	92	31	Lower Module CPU board - Overun error	\N
1023	92	32	Lower Module CPU board - Framing error	\N
1024	92	33	Lower Module CPU board - Parity error	\N
1025	92	34	Lower Module CPU board - Receive data error	\N
1026	92	35	Lower Module CPU board - BCC error	\N
1027	92	36	Lower Module CPU board - Transmit Timeup error	\N
1028	92	37	Lower Module CPU board - Response Timeup error	\N
1029	92	41	Lower Module CPU board - Overrun error	\N
1030	92	42	Lower Module CPU board - Framing error	\N
1031	92	43	Lower Module CPU board - Parity error	\N
1032	92	44	Lower Module CPU board - Receive data error	\N
1033	92	45	Lower Module CPU board - BCC error	\N
1034	92	46	Lower Module CPU board - Transmit Timeup error	\N
1035	92	47	Lower Module CPU board - Response Timeup error	\N
1036	92	51	Lower Module CPU board - Overrun error	\N
1037	92	52	Lower Module CPU board - Framing error	\N
1038	92	53	Lower Module CPU board - Parity error	\N
1039	92	54	Lower Module CPU board - Receive error	\N
1040	92	55	Lower Module CPU board - BCC error	\N
1041	92	56	Lower Module CPU board - Transmit Timeup error	\N
1042	92	57	Lower Module CPU board - Response Timeup error	\N
1043	93	01	Lower Module CPU board - SerialNo set error	\N
1044	93	02	Lower Module CPU board - HarwareRev set error	\N
1045	93	03	Lower Module CPU board - UnitNo set error	\N
1046	93	04	Lower Module CPU board - DipSW set error	\N
1047	94	01	Lower Module CPU board - EEPROM data error	\N
1048	94	02	Lower Module CPU board - EEPROM write error	\N
1049	94	12	Lower Module CPU board - External flash memory erasing error	\N
1050	94	14	Lower Module CPU board - External flash memory write-in error	\N
1051	94	21	Lower Module CPU board - unplugged connector, CNL	\N
1052	94	22	Lower Module CPU board - unplugged connector, CNP1	\N
1053	94	23	Lower Module CPU board - unplugged connector, CNR	\N
1054	94	24	Lower Module CPU board - unplugged connector, CNR3	\N
1055	94	25	Lower Module CPU board - unplugged connector, CNS	\N
1056	94	26	Lower Module CPU board - unplugged connector, CNS8A	\N
1057	94	27	Lower Module CPU board - unplugged connector, CNS8B	\N
1058	94	28	Lower Module CPU board - unplugged connector, CNSA	\N
1059	94	29	Lower Module CPU board - unplugged connector, CNSC	\N
1060	94	2A	Lower Module CPU board - unplugged connector, CNW1	\N
1061	94	2B	Lower Module CPU board - unplugged connector, CNW3	\N
1062	94	2C	Lower Module CPU board - unplugged connector, CNHLOS	\N
1063	94	41	Lower Module CPU board - voltage error, +24V2	\N
1064	94	42	Lower Module CPU board - voltage error, +24V3	\N
1065	94	43	Lower Module CPU board - voltage error, +5V2	\N
1066	94	44	Lower Module CPU board - voltage error, +5V3	\N
1067	94	45	Lower Module CPU board - voltage error, LED+5V	\N
1068	94	46	Lower Module CPU board - voltage error, Battery low voltage	\N
1069	94	F1	Lower Module CPU board - Watchdog reset	\N
1070	94	F2	Lower Module CPU board - Programm error	\N
1071	94	F3	Lower Module CPU board - Mechanical operation time out	\N
1072	94	F4	Lower Module CPU board - Stack overflow	\N
1073	95	01	Lower Extension Unit - BMS3 rotation error	\N
1074	95	02	Lower Extension Unit - BMS4 rotation error	\N
1075	95	11	Lower Extension Unit - Remaining notes, PST2	\N
1076	95	12	Lower Extension Unit - Remaining notes, PST3	\N
1077	96	01	Lower Extension Unit - ON check error, PST2 On	\N
1078	96	02	Lower Extension Unit - ON check error, PST3 On	\N
1079	96	21	Lower Extension Unit - adjustment error, PST2	\N
1080	96	22	Lower Extension Unit - adjustment error, PST3	\N
1081	96	31	Lower Extension Unit - volume upper limit error, PST2	\N
1082	96	32	Lower Extension Unit - volume upper limit error, PST3	\N
1083	96	41	Lower Extension Unit - volume lower limit error, PST2	\N
1084	96	42	Lower Extension Unit - volume lower limit error, PST3	\N
1085	96	51	Lower Extension Unit - OFF check error, PST2 Off	\N
1086	96	52	Lower Extension Unit - OFF check error, PST3 Off	\N
1087	96	71	Lower Extension Unit - Improper set, Extension Vertical Transport 1 open	\N
1088	96	72	Lower Extension Unit - Improper set, Extension Vertical Transport 2 open	\N
1089	96	81	Lower Extension Unit - Diversion error, RSR7	\N
1090	96	82	Lower Extension Unit - Diversion error, RSR8	\N
1091	98	01	Lower Extension Unit - SerialNo set error	\N
1092	98	02	Lower Extension Unit - HardwareRev set error	\N
1093	98	03	Lower Extension Unit - UnitNo set error	\N
1094	99	01	Lower Extension Unit - EEPROM data error	\N
1095	99	02	Lower Extension Unit - EEPROM write error	\N
\.


--
-- TOC entry 4931 (class 0 OID 16585)
-- Dependencies: 225
-- Data for Name: tb_b3; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_b3 (idb3, code, descripcion) FROM stdin;
1	00	Normal end
2	03	Bad command syntax
3	04	Bad command sequence
4	05	Not authenticated
5	10	Incorrect DATA
6	20	Appointed data disappeared
7	30	appointed unit in not connected
8	40	Source unit is not connected
9	50	Destination Unit in not connected
10	60	Destination Unit promise overfull
11	70	Destunation unit full
12	80	Donload data error
13	90	Error occurred
14	A0	Appointed unit is INSPECT SOON
15	A1	Source unit is INSPECT SOON
16	A2	Destination unit is INSPECT SOON
17	B0	Invalid destination in count items
18	B1	Shutter is not closed
19	B2	Pocket is not clear
20	B3	Pocket is clear
21	B4	Unit open
22	FF	Receive buffer full
\.


--
-- TOC entry 4938 (class 0 OID 0)
-- Dependencies: 220
-- Name: mstatus_idmstatus_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.mstatus_idmstatus_seq', 85, true);


--
-- TOC entry 4939 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_b0_idb0_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_b0_idb0_seq', 38, true);


--
-- TOC entry 4940 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_b12_idb12_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_b12_idb12_seq', 1095, true);


--
-- TOC entry 4941 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_b3_idb3_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_b3_idb3_seq', 22, true);


--
-- TOC entry 4771 (class 2606 OID 16591)
-- Name: mstatus mstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.mstatus
    ADD CONSTRAINT mstatus_pkey PRIMARY KEY (idmstatus);


--
-- TOC entry 4773 (class 2606 OID 16593)
-- Name: tb_b0 tb_b0_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_b0
    ADD CONSTRAINT tb_b0_pkey PRIMARY KEY (idb0);


--
-- TOC entry 4775 (class 2606 OID 16595)
-- Name: tb_b12 tb_b12_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_b12
    ADD CONSTRAINT tb_b12_pkey PRIMARY KEY (idb12);


--
-- TOC entry 4777 (class 2606 OID 16597)
-- Name: tb_b3 tb_b3_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_b3
    ADD CONSTRAINT tb_b3_pkey PRIMARY KEY (idb3);


-- Completed on 2026-07-10 12:36:00

--
-- PostgreSQL database dump complete
--

\unrestrict aHRi6PEefg6jC9brtnAnnxJve0uuUE8UoMQztg5unHYgGgy0EuYIH019H7j3jIU

