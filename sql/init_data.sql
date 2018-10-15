--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: Country; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--

INSERT INTO public."Country" VALUES (38, 'Andorra');
INSERT INTO public."Country" VALUES (39, 'United Arab Emirates');
INSERT INTO public."Country" VALUES (40, 'Afghanistan');
INSERT INTO public."Country" VALUES (41, 'Antigua and Barbuda');
INSERT INTO public."Country" VALUES (42, 'Anguilla');
INSERT INTO public."Country" VALUES (43, 'Albania');
INSERT INTO public."Country" VALUES (44, 'Armenia');
INSERT INTO public."Country" VALUES (45, 'Netherlands Antilles');
INSERT INTO public."Country" VALUES (46, 'Angola');
INSERT INTO public."Country" VALUES (47, 'Antarctica');
INSERT INTO public."Country" VALUES (48, 'Argentina');
INSERT INTO public."Country" VALUES (49, 'American Samoa');
INSERT INTO public."Country" VALUES (50, 'Austria');
INSERT INTO public."Country" VALUES (51, 'Australia');
INSERT INTO public."Country" VALUES (52, 'Aruba');
INSERT INTO public."Country" VALUES (53, 'Åland Islands');
INSERT INTO public."Country" VALUES (54, 'Azerbaijan');
INSERT INTO public."Country" VALUES (55, 'Bosnia and Herzegovina');
INSERT INTO public."Country" VALUES (56, 'Barbados');
INSERT INTO public."Country" VALUES (57, 'Bangladesh');
INSERT INTO public."Country" VALUES (58, 'Belgium');
INSERT INTO public."Country" VALUES (59, 'Burkina Faso');
INSERT INTO public."Country" VALUES (60, 'Bulgaria');
INSERT INTO public."Country" VALUES (61, 'Bahrain');
INSERT INTO public."Country" VALUES (62, 'Burundi');
INSERT INTO public."Country" VALUES (63, 'Benin');
INSERT INTO public."Country" VALUES (64, 'Saint Barthélemy');
INSERT INTO public."Country" VALUES (65, 'Bermuda');
INSERT INTO public."Country" VALUES (66, 'Brunei');
INSERT INTO public."Country" VALUES (67, 'Bolivia');
INSERT INTO public."Country" VALUES (68, 'Bonaire, Sint Eustatius and Saba');
INSERT INTO public."Country" VALUES (69, 'Brazil');
INSERT INTO public."Country" VALUES (70, 'Bahamas');
INSERT INTO public."Country" VALUES (71, 'Bhutan');
INSERT INTO public."Country" VALUES (72, 'Bouvet Island');
INSERT INTO public."Country" VALUES (73, 'Botswana');
INSERT INTO public."Country" VALUES (74, 'Belarus');
INSERT INTO public."Country" VALUES (75, 'Belize');
INSERT INTO public."Country" VALUES (76, 'Canada');
INSERT INTO public."Country" VALUES (77, 'Cocos Islands');
INSERT INTO public."Country" VALUES (78, 'The Democratic Republic Of Congo');
INSERT INTO public."Country" VALUES (79, 'Central African Republic');
INSERT INTO public."Country" VALUES (80, 'Congo');
INSERT INTO public."Country" VALUES (81, 'Switzerland');
INSERT INTO public."Country" VALUES (82, 'Côte d''Ivoire');
INSERT INTO public."Country" VALUES (83, 'Cook Islands');
INSERT INTO public."Country" VALUES (84, 'Chile');
INSERT INTO public."Country" VALUES (85, 'Cameroon');
INSERT INTO public."Country" VALUES (86, 'China');
INSERT INTO public."Country" VALUES (87, 'Colombia');
INSERT INTO public."Country" VALUES (88, 'Costa Rica');
INSERT INTO public."Country" VALUES (89, 'Cuba');
INSERT INTO public."Country" VALUES (90, 'Cape Verde');
INSERT INTO public."Country" VALUES (91, 'Curaçao');
INSERT INTO public."Country" VALUES (92, 'Christmas Island');
INSERT INTO public."Country" VALUES (93, 'Cyprus');
INSERT INTO public."Country" VALUES (94, 'Czech Republic');
INSERT INTO public."Country" VALUES (95, 'Germany');
INSERT INTO public."Country" VALUES (96, 'Djibouti');
INSERT INTO public."Country" VALUES (97, 'Denmark');
INSERT INTO public."Country" VALUES (98, 'Dominica');
INSERT INTO public."Country" VALUES (99, 'Dominican Republic');
INSERT INTO public."Country" VALUES (100, 'Algeria');
INSERT INTO public."Country" VALUES (101, 'Ecuador');
INSERT INTO public."Country" VALUES (102, 'Estonia');
INSERT INTO public."Country" VALUES (103, 'Egypt');
INSERT INTO public."Country" VALUES (104, 'Western Sahara');
INSERT INTO public."Country" VALUES (105, 'Eritrea');
INSERT INTO public."Country" VALUES (106, 'Spain');
INSERT INTO public."Country" VALUES (107, 'Ethiopia');
INSERT INTO public."Country" VALUES (108, 'Finland');
INSERT INTO public."Country" VALUES (109, 'Fiji');
INSERT INTO public."Country" VALUES (110, 'Falkland Islands');
INSERT INTO public."Country" VALUES (111, 'Micronesia');
INSERT INTO public."Country" VALUES (112, 'Faroe Islands');
INSERT INTO public."Country" VALUES (113, 'France');
INSERT INTO public."Country" VALUES (114, 'Gabon');
INSERT INTO public."Country" VALUES (115, 'United Kingdom');
INSERT INTO public."Country" VALUES (116, 'Grenada');
INSERT INTO public."Country" VALUES (117, 'Georgia');
INSERT INTO public."Country" VALUES (118, 'French Guiana');
INSERT INTO public."Country" VALUES (119, 'Guernsey');
INSERT INTO public."Country" VALUES (120, 'Ghana');
INSERT INTO public."Country" VALUES (121, 'Gibraltar');
INSERT INTO public."Country" VALUES (122, 'Greenland');
INSERT INTO public."Country" VALUES (123, 'Gambia');
INSERT INTO public."Country" VALUES (124, 'Guinea');
INSERT INTO public."Country" VALUES (125, 'Guadeloupe');
INSERT INTO public."Country" VALUES (126, 'Equatorial Guinea');
INSERT INTO public."Country" VALUES (127, 'Greece');
INSERT INTO public."Country" VALUES (219, 'Guatemala');
INSERT INTO public."Country" VALUES (220, 'Guam');
INSERT INTO public."Country" VALUES (221, 'Guinea-Bissau');
INSERT INTO public."Country" VALUES (222, 'Guyana');
INSERT INTO public."Country" VALUES (223, 'Hong Kong');
INSERT INTO public."Country" VALUES (224, 'Heard Island And McDonald Islands');
INSERT INTO public."Country" VALUES (225, 'Honduras');
INSERT INTO public."Country" VALUES (226, 'Croatia');
INSERT INTO public."Country" VALUES (227, 'Haiti');
INSERT INTO public."Country" VALUES (228, 'Hungary');
INSERT INTO public."Country" VALUES (229, 'Indonesia');
INSERT INTO public."Country" VALUES (230, 'Ireland');
INSERT INTO public."Country" VALUES (231, 'Israel');
INSERT INTO public."Country" VALUES (232, 'Isle Of Man');
INSERT INTO public."Country" VALUES (233, 'India');
INSERT INTO public."Country" VALUES (234, 'British Indian Ocean Territory');
INSERT INTO public."Country" VALUES (235, 'Iraq');
INSERT INTO public."Country" VALUES (236, 'Iran');
INSERT INTO public."Country" VALUES (237, 'Iceland');
INSERT INTO public."Country" VALUES (238, 'Italy');
INSERT INTO public."Country" VALUES (239, 'Jersey');
INSERT INTO public."Country" VALUES (240, 'Jamaica');
INSERT INTO public."Country" VALUES (241, 'Jordan');
INSERT INTO public."Country" VALUES (242, 'Japan');
INSERT INTO public."Country" VALUES (243, 'Kenya');
INSERT INTO public."Country" VALUES (244, 'Kyrgyzstan');
INSERT INTO public."Country" VALUES (245, 'Cambodia');
INSERT INTO public."Country" VALUES (246, 'Kiribati');
INSERT INTO public."Country" VALUES (247, 'Comoros');
INSERT INTO public."Country" VALUES (248, 'Saint Kitts And Nevis');
INSERT INTO public."Country" VALUES (249, 'North Korea');
INSERT INTO public."Country" VALUES (250, 'South Korea');
INSERT INTO public."Country" VALUES (251, 'Kuwait');
INSERT INTO public."Country" VALUES (252, 'Cayman Islands');
INSERT INTO public."Country" VALUES (253, 'Kazakhstan');
INSERT INTO public."Country" VALUES (254, 'Laos');
INSERT INTO public."Country" VALUES (255, 'Lebanon');
INSERT INTO public."Country" VALUES (256, 'Saint Lucia');
INSERT INTO public."Country" VALUES (257, 'Liechtenstein');
INSERT INTO public."Country" VALUES (258, 'Sri Lanka');
INSERT INTO public."Country" VALUES (259, 'Liberia');
INSERT INTO public."Country" VALUES (260, 'Lesotho');
INSERT INTO public."Country" VALUES (261, 'Lithuania');
INSERT INTO public."Country" VALUES (262, 'Luxembourg');
INSERT INTO public."Country" VALUES (263, 'Latvia');
INSERT INTO public."Country" VALUES (264, 'Libya');
INSERT INTO public."Country" VALUES (265, 'Morocco');
INSERT INTO public."Country" VALUES (266, 'Monaco');
INSERT INTO public."Country" VALUES (267, 'Moldova');
INSERT INTO public."Country" VALUES (268, 'Montenegro');
INSERT INTO public."Country" VALUES (269, 'Saint Martin');
INSERT INTO public."Country" VALUES (270, 'Madagascar');
INSERT INTO public."Country" VALUES (271, 'Marshall Islands');
INSERT INTO public."Country" VALUES (272, 'Macedonia');
INSERT INTO public."Country" VALUES (273, 'Mali');
INSERT INTO public."Country" VALUES (274, 'Myanmar');
INSERT INTO public."Country" VALUES (275, 'Mongolia');
INSERT INTO public."Country" VALUES (276, 'Macao');
INSERT INTO public."Country" VALUES (277, 'Northern Mariana Islands');
INSERT INTO public."Country" VALUES (278, 'Martinique');
INSERT INTO public."Country" VALUES (279, 'Mauritania');
INSERT INTO public."Country" VALUES (280, 'Montserrat');
INSERT INTO public."Country" VALUES (281, 'Malta');
INSERT INTO public."Country" VALUES (282, 'Mauritius');
INSERT INTO public."Country" VALUES (283, 'Maldives');
INSERT INTO public."Country" VALUES (284, 'Malawi');
INSERT INTO public."Country" VALUES (285, 'Mexico');
INSERT INTO public."Country" VALUES (286, 'Malaysia');
INSERT INTO public."Country" VALUES (287, 'Mozambique');
INSERT INTO public."Country" VALUES (288, 'Namibia');
INSERT INTO public."Country" VALUES (289, 'New Caledonia');
INSERT INTO public."Country" VALUES (290, 'Niger');
INSERT INTO public."Country" VALUES (291, 'Norfolk Island');
INSERT INTO public."Country" VALUES (292, 'Nigeria');
INSERT INTO public."Country" VALUES (293, 'Nicaragua');
INSERT INTO public."Country" VALUES (294, 'Netherlands');
INSERT INTO public."Country" VALUES (295, 'Norway');
INSERT INTO public."Country" VALUES (296, 'Nepal');
INSERT INTO public."Country" VALUES (297, 'Nauru');
INSERT INTO public."Country" VALUES (298, 'Niue');
INSERT INTO public."Country" VALUES (299, 'New Zealand');
INSERT INTO public."Country" VALUES (300, 'Oman');
INSERT INTO public."Country" VALUES (301, 'Panama');
INSERT INTO public."Country" VALUES (302, 'Peru');
INSERT INTO public."Country" VALUES (303, 'French Polynesia');
INSERT INTO public."Country" VALUES (304, 'Papua New Guinea');
INSERT INTO public."Country" VALUES (305, 'Philippines');
INSERT INTO public."Country" VALUES (306, 'Pakistan');
INSERT INTO public."Country" VALUES (307, 'Poland');
INSERT INTO public."Country" VALUES (308, 'Saint Pierre And Miquelon');
INSERT INTO public."Country" VALUES (309, 'Pitcairn');
INSERT INTO public."Country" VALUES (310, 'Puerto Rico');
INSERT INTO public."Country" VALUES (311, 'Palestine');
INSERT INTO public."Country" VALUES (312, 'Portugal');
INSERT INTO public."Country" VALUES (313, 'Palau');
INSERT INTO public."Country" VALUES (314, 'Paraguay');
INSERT INTO public."Country" VALUES (315, 'Qatar');
INSERT INTO public."Country" VALUES (316, 'Reunion');
INSERT INTO public."Country" VALUES (317, 'Romania');
INSERT INTO public."Country" VALUES (318, 'Serbia');
INSERT INTO public."Country" VALUES (319, 'Russia');
INSERT INTO public."Country" VALUES (320, 'Rwanda');
INSERT INTO public."Country" VALUES (321, 'Saudi Arabia');
INSERT INTO public."Country" VALUES (322, 'Solomon Islands');
INSERT INTO public."Country" VALUES (323, 'Seychelles');
INSERT INTO public."Country" VALUES (324, 'Sudan');
INSERT INTO public."Country" VALUES (325, 'Sweden');
INSERT INTO public."Country" VALUES (326, 'Singapore');
INSERT INTO public."Country" VALUES (327, 'Saint Helena');
INSERT INTO public."Country" VALUES (328, 'Slovenia');
INSERT INTO public."Country" VALUES (329, 'Svalbard And Jan Mayen');
INSERT INTO public."Country" VALUES (330, 'Slovakia');
INSERT INTO public."Country" VALUES (331, 'Sierra Leone');
INSERT INTO public."Country" VALUES (332, 'San Marino');
INSERT INTO public."Country" VALUES (333, 'Senegal');
INSERT INTO public."Country" VALUES (334, 'Somalia');
INSERT INTO public."Country" VALUES (335, 'Suriname');
INSERT INTO public."Country" VALUES (336, 'South Sudan');
INSERT INTO public."Country" VALUES (337, 'Sao Tome And Principe');
INSERT INTO public."Country" VALUES (338, 'El Salvador');
INSERT INTO public."Country" VALUES (339, 'Sint Maarten (Dutch part)');
INSERT INTO public."Country" VALUES (340, 'Syria');
INSERT INTO public."Country" VALUES (341, 'Swaziland');
INSERT INTO public."Country" VALUES (342, 'Turks And Caicos Islands');
INSERT INTO public."Country" VALUES (343, 'Chad');
INSERT INTO public."Country" VALUES (344, 'French Southern Territories');
INSERT INTO public."Country" VALUES (345, 'Togo');
INSERT INTO public."Country" VALUES (346, 'Thailand');
INSERT INTO public."Country" VALUES (347, 'Tajikistan');
INSERT INTO public."Country" VALUES (348, 'Tokelau');
INSERT INTO public."Country" VALUES (349, 'Timor-Leste');
INSERT INTO public."Country" VALUES (350, 'Turkmenistan');
INSERT INTO public."Country" VALUES (351, 'Tunisia');
INSERT INTO public."Country" VALUES (352, 'Tonga');
INSERT INTO public."Country" VALUES (353, 'Turkey');
INSERT INTO public."Country" VALUES (354, 'Trinidad and Tobago');
INSERT INTO public."Country" VALUES (355, 'Tuvalu');
INSERT INTO public."Country" VALUES (356, 'Taiwan');
INSERT INTO public."Country" VALUES (357, 'Tanzania');
INSERT INTO public."Country" VALUES (358, 'Ukraine');
INSERT INTO public."Country" VALUES (359, 'Uganda');
INSERT INTO public."Country" VALUES (360, 'United States Minor Outlying Islands');
INSERT INTO public."Country" VALUES (361, 'United States');
INSERT INTO public."Country" VALUES (362, 'Uruguay');
INSERT INTO public."Country" VALUES (363, 'Uzbekistan');
INSERT INTO public."Country" VALUES (364, 'Vatican');
INSERT INTO public."Country" VALUES (365, 'Saint Vincent And The Grenadines');
INSERT INTO public."Country" VALUES (366, 'Venezuela');
INSERT INTO public."Country" VALUES (367, 'British Virgin Islands');
INSERT INTO public."Country" VALUES (368, 'U.S. Virgin Islands');
INSERT INTO public."Country" VALUES (369, 'Vietnam');
INSERT INTO public."Country" VALUES (370, 'Vanuatu');
INSERT INTO public."Country" VALUES (371, 'Wallis And Futuna');
INSERT INTO public."Country" VALUES (372, 'Samoa');
INSERT INTO public."Country" VALUES (373, 'Yemen');
INSERT INTO public."Country" VALUES (374, 'Mayotte');
INSERT INTO public."Country" VALUES (375, 'South Africa');
INSERT INTO public."Country" VALUES (376, 'Zambia');
INSERT INTO public."Country" VALUES (377, 'Zimbabwe');


--
-- Name: Country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Siarhei_Huba
--

SELECT pg_catalog.setval('public."Country_id_seq"', 377, true);


--
-- Data for Name: Hotel; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--

INSERT INTO public."Hotel" VALUES (1, 'Hyatt Regency', 4, 'https://www.hyatt.com/en-US/hotel/illinois/', 17.318999999999999, 83.212999999999994, '{GARAGE,FREE_BREAKFAST,PET_FRIENDLY,WI_FI}');


--
-- Name: Hotel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Siarhei_Huba
--

SELECT pg_catalog.setval('public."Hotel_id_seq"', 1, true);


--
-- Data for Name: Tour; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--



--
-- Data for Name: User; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--



--
-- Data for Name: Review; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--



--
-- Name: Review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Siarhei_Huba
--

SELECT pg_catalog.setval('public."Review_id_seq"', 1, false);


--
-- Name: Tour_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Siarhei_Huba
--

SELECT pg_catalog.setval('public."Tour_id_seq"', 1, false);


--
-- Data for Name: UserTour; Type: TABLE DATA; Schema: public; Owner: Siarhei_Huba
--



--
-- Name: User_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Siarhei_Huba
--

SELECT pg_catalog.setval('public."User_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

