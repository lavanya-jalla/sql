-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2025 at 06:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `country`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps_countries`
--

CREATE TABLE `apps_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `apps_countries`
--

INSERT INTO `apps_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'AS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CD', 'Democratic Republic of the Congo'),
(50, 'CG', 'Republic of Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TL', 'Timor-Leste'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan (obsolete)'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GG', 'Guernsey'),
(85, 'GR', 'Greece'),
(86, 'GL', 'Greenland'),
(87, 'GD', 'Grenada'),
(88, 'GP', 'Guadeloupe'),
(89, 'GU', 'Guam'),
(90, 'GT', 'Guatemala'),
(91, 'GN', 'Guinea'),
(92, 'GW', 'Guinea-Bissau'),
(93, 'GY', 'Guyana'),
(94, 'HT', 'Haiti'),
(95, 'HM', 'Heard and Mc Donald Islands'),
(96, 'HN', 'Honduras'),
(97, 'HK', 'Hong Kong'),
(98, 'HU', 'Hungary'),
(99, 'IS', 'Iceland'),
(100, 'IN', 'India'),
(101, 'IM', 'Isle of Man'),
(102, 'ID', 'Indonesia'),
(103, 'IR', 'Iran (Islamic Republic of)'),
(104, 'IQ', 'Iraq'),
(105, 'IE', 'Ireland'),
(106, 'IL', 'Israel'),
(107, 'IT', 'Italy'),
(108, 'CI', 'Ivory Coast'),
(109, 'JE', 'Jersey'),
(110, 'JM', 'Jamaica'),
(111, 'JP', 'Japan'),
(112, 'JO', 'Jordan'),
(113, 'KZ', 'Kazakhstan'),
(114, 'KE', 'Kenya'),
(115, 'KI', 'Kiribati'),
(116, 'KP', 'Korea, Democratic People\'s Republic of'),
(117, 'KR', 'Korea, Republic of'),
(118, 'XK', 'Kosovo'),
(119, 'KW', 'Kuwait'),
(120, 'KG', 'Kyrgyzstan'),
(121, 'LA', 'Lao People\'s Democratic Republic'),
(122, 'LV', 'Latvia'),
(123, 'LB', 'Lebanon'),
(124, 'LS', 'Lesotho'),
(125, 'LR', 'Liberia'),
(126, 'LY', 'Libya'),
(127, 'LI', 'Liechtenstein'),
(128, 'LT', 'Lithuania'),
(129, 'LU', 'Luxembourg'),
(130, 'MO', 'Macau'),
(131, 'MK', 'North Macedonia'),
(132, 'MG', 'Madagascar'),
(133, 'MW', 'Malawi'),
(134, 'MY', 'Malaysia'),
(135, 'MV', 'Maldives'),
(136, 'ML', 'Mali'),
(137, 'MT', 'Malta'),
(138, 'MH', 'Marshall Islands'),
(139, 'MQ', 'Martinique'),
(140, 'MR', 'Mauritania'),
(141, 'MU', 'Mauritius'),
(142, 'YT', 'Mayotte'),
(143, 'MX', 'Mexico'),
(144, 'FM', 'Micronesia, Federated States of'),
(145, 'MD', 'Moldova, Republic of'),
(146, 'MC', 'Monaco'),
(147, 'MN', 'Mongolia'),
(148, 'ME', 'Montenegro'),
(149, 'MS', 'Montserrat'),
(150, 'MA', 'Morocco'),
(151, 'MZ', 'Mozambique'),
(152, 'MM', 'Myanmar'),
(153, 'NA', 'Namibia'),
(154, 'NR', 'Nauru'),
(155, 'NP', 'Nepal'),
(156, 'NL', 'Netherlands'),
(157, 'AN', 'Netherlands Antilles (dissolved)'),
(158, 'NC', 'New Caledonia'),
(159, 'NZ', 'New Zealand'),
(160, 'NI', 'Nicaragua'),
(161, 'NE', 'Niger'),
(162, 'NG', 'Nigeria'),
(163, 'NU', 'Niue'),
(164, 'NF', 'Norfolk Island'),
(165, 'MP', 'Northern Mariana Islands'),
(166, 'NO', 'Norway'),
(167, 'OM', 'Oman'),
(168, 'PK', 'Pakistan'),
(169, 'PW', 'Palau'),
(170, 'PS', 'Palestine'),
(171, 'PA', 'Panama'),
(172, 'PG', 'Papua New Guinea'),
(173, 'PY', 'Paraguay'),
(174, 'PE', 'Peru'),
(175, 'PH', 'Philippines'),
(176, 'PN', 'Pitcairn'),
(177, 'PL', 'Poland'),
(178, 'PT', 'Portugal'),
(179, 'PR', 'Puerto Rico'),
(180, 'QA', 'Qatar'),
(181, 'RE', 'Réunion'),
(182, 'RO', 'Romania'),
(183, 'RU', 'Russian Federation'),
(184, 'RW', 'Rwanda'),
(185, 'KN', 'Saint Kitts and Nevis'),
(186, 'LC', 'Saint Lucia'),
(187, 'VC', 'Saint Vincent and the Grenadines'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'Sao Tome and Principe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SK', 'Slovakia'),
(198, 'SI', 'Slovenia'),
(199, 'SB', 'Solomon Islands'),
(200, 'SO', 'Somalia'),
(201, 'ZA', 'South Africa'),
(202, 'GS', 'South Georgia South Sandwich Islands'),
(203, 'SS', 'South Sudan'),
(204, 'ES', 'Spain'),
(205, 'LK', 'Sri Lanka'),
(206, 'SH', 'St. Helena'),
(207, 'PM', 'St. Pierre and Miquelon'),
(208, 'SD', 'Sudan'),
(209, 'SR', 'Suriname'),
(210, 'SJ', 'Svalbard and Jan Mayen Islands'),
(211, 'SZ', 'Eswatini'),
(212, 'SE', 'Sweden'),
(213, 'CH', 'Switzerland'),
(214, 'SY', 'Syrian Arab Republic'),
(215, 'TW', 'Taiwan'),
(216, 'TJ', 'Tajikistan'),
(217, 'TZ', 'Tanzania, United Republic of'),
(218, 'TH', 'Thailand'),
(219, 'TG', 'Togo'),
(220, 'TK', 'Tokelau'),
(221, 'TO', 'Tonga'),
(222, 'TT', 'Trinidad and Tobago'),
(223, 'TN', 'Tunisia'),
(224, 'TR', 'Turkey'),
(225, 'TM', 'Turkmenistan'),
(226, 'TC', 'Turks and Caicos Islands'),
(227, 'TV', 'Tuvalu'),
(228, 'UG', 'Uganda'),
(229, 'UA', 'Ukraine'),
(230, 'AE', 'United Arab Emirates'),
(231, 'GB', 'United Kingdom'),
(232, 'US', 'United States'),
(233, 'UM', 'United States minor outlying islands'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VU', 'Vanuatu'),
(237, 'VA', 'Vatican City State'),
(238, 'VE', 'Venezuela'),
(239, 'VN', 'Vietnam'),
(240, 'VG', 'Virgin Islands (British)'),
(241, 'VI', 'Virgin Islands (U.S.)'),
(242, 'WF', 'Wallis and Futuna Islands'),
(243, 'EH', 'Western Sahara'),
(244, 'YE', 'Yemen'),
(245, 'ZM', 'Zambia'),
(246, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Stand-in structure for view `asian_countires`
-- (See below for the actual view)
--
CREATE TABLE `asian_countires` (
`country_id` int(11)
,`display_order` int(3)
,`name` varchar(64)
,`full_name` varchar(128)
,`continent_code` char(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `continents`
--

CREATE TABLE `continents` (
  `code` char(2) NOT NULL COMMENT 'Continent code',
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `continents`
--

INSERT INTO `continents` (`code`, `name`) VALUES
('AF', 'Africa'),
('AN', 'Antarctica'),
('AS', 'Asia'),
('EU', 'Europe'),
('NA', 'North America'),
('OC', 'Oceania'),
('SA', 'South America');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `code` char(2) NOT NULL COMMENT 'Two-letter country code (ISO 3166-1 alpha-2)',
  `name` varchar(64) NOT NULL COMMENT 'English country name',
  `full_name` varchar(128) NOT NULL COMMENT 'Full English country name',
  `iso3` char(3) NOT NULL COMMENT 'Three-letter country code (ISO 3166-1 alpha-3)',
  `number` smallint(3) UNSIGNED ZEROFILL NOT NULL COMMENT 'Three-digit country number (ISO 3166-1 numeric)',
  `continent_code` char(2) NOT NULL,
  `display_order` int(3) NOT NULL DEFAULT 900
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `code`, `name`, `full_name`, `iso3`, `number`, `continent_code`, `display_order`) VALUES
(1, 'AD', 'Andorra', 'Principality of Andorra', 'AND', 020, 'EU', 7),
(2, 'AE', 'United Arab Emirates', 'United Arab Emirates', 'ARE', 784, 'AS', 232),
(3, 'AF', 'Afghanistan', 'Islamic Republic of Afghanistan', 'AFG', 004, 'AS', 3),
(4, 'AG', 'Antigua and Barbuda', 'Antigua and Barbuda', 'ATG', 028, 'NA', 11),
(5, 'AI', 'Anguilla', 'Anguilla', 'AIA', 660, 'NA', 9),
(6, 'AL', 'Albania', 'Republic of Albania', 'ALB', 008, 'EU', 4),
(7, 'AM', 'Armenia', 'Republic of Armenia', 'ARM', 051, 'AS', 13),
(8, 'AN', 'Netherlands Antilles', 'Netherlands Antilles', 'ANT', 530, 'NA', 157),
(9, 'AO', 'Angola', 'Republic of Angola', 'AGO', 024, 'AF', 8),
(10, 'AQ', 'Antarctica', 'Antarctica (the territory South of 60 deg S)', 'ATA', 010, 'AN', 10),
(11, 'AR', 'Argentina', 'Argentine Republic', 'ARG', 032, 'SA', 12),
(12, 'AS', 'American Samoa', 'American Samoa', 'ASM', 016, 'OC', 6),
(13, 'AT', 'Austria', 'Republic of Austria', 'AUT', 040, 'EU', 16),
(14, 'AU', 'Australia', 'Commonwealth of Australia', 'AUS', 036, 'OC', 15),
(15, 'AW', 'Aruba', 'Aruba', 'ABW', 533, 'NA', 14),
(16, 'AX', 'Åland', 'Åland Islands', 'ALA', 248, 'EU', 246),
(17, 'AZ', 'Azerbaijan', 'Republic of Azerbaijan', 'AZE', 031, 'AS', 17),
(18, 'BA', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BIH', 070, 'EU', 29),
(19, 'BB', 'Barbados', 'Barbados', 'BRB', 052, 'NA', 21),
(20, 'BD', 'Bangladesh', 'People\'s Republic of Bangladesh', 'BGD', 050, 'AS', 20),
(21, 'BE', 'Belgium', 'Kingdom of Belgium', 'BEL', 056, 'EU', 23),
(22, 'BF', 'Burkina Faso', 'Burkina Faso', 'BFA', 854, 'AF', 37),
(23, 'BG', 'Bulgaria', 'Republic of Bulgaria', 'BGR', 100, 'EU', 36),
(24, 'BH', 'Bahrain', 'Kingdom of Bahrain', 'BHR', 048, 'AS', 19),
(25, 'BI', 'Burundi', 'Republic of Burundi', 'BDI', 108, 'AF', 38),
(26, 'BJ', 'Benin', 'Republic of Benin', 'BEN', 204, 'AF', 25),
(27, 'BL', 'Saint Barthélemy', 'Saint Barthelemy', 'BLM', 652, 'NA', 185),
(28, 'BM', 'Bermuda', 'Bermuda', 'BMU', 060, 'NA', 26),
(29, 'BN', 'Brunei Darussalam', 'Brunei Darussalam', 'BRN', 096, 'AS', 35),
(30, 'BO', 'Bolivia', 'Republic of Bolivia', 'BOL', 068, 'SA', 28),
(31, 'BR', 'Brazil', 'Federative Republic of Brazil', 'BRA', 076, 'SA', 32),
(32, 'BS', 'Bahamas', 'Commonwealth of the Bahamas', 'BHS', 044, 'NA', 18),
(33, 'BT', 'Bhutan', 'Kingdom of Bhutan', 'BTN', 064, 'AS', 27),
(34, 'BV', 'Bouvet Island', 'Bouvet Island (Bouvetoya)', 'BVT', 074, 'AN', 31),
(35, 'BW', 'Botswana', 'Republic of Botswana', 'BWA', 072, 'AF', 30),
(36, 'BY', 'Belarus', 'Republic of Belarus', 'BLR', 112, 'EU', 22),
(37, 'BZ', 'Belize', 'Belize', 'BLZ', 084, 'NA', 24),
(38, 'CA', 'Canada', 'Canada', 'CAN', 124, 'NA', 2),
(39, 'CC', 'Cocos (Keeling) Islands', 'Cocos (Keeling) Islands', 'CCK', 166, 'AS', 48),
(40, 'CD', 'Congo (Kinshasa)', 'Democratic Republic of the Congo', 'COD', 180, 'AF', 51),
(41, 'CF', 'Central African Republic', 'Central African Republic', 'CAF', 140, 'AF', 43),
(42, 'CG', 'Congo (Brazzaville)', 'Republic of the Congo', 'COG', 178, 'AF', 52),
(43, 'CH', 'Switzerland', 'Swiss Confederation', 'CHE', 756, 'EU', 214),
(44, 'CI', 'Côte d\'Ivoire', 'Republic of Cote d\'Ivoire', 'CIV', 384, 'AF', 55),
(45, 'CK', 'Cook Islands', 'Cook Islands', 'COK', 184, 'OC', 53),
(46, 'CL', 'Chile', 'Republic of Chile', 'CHL', 152, 'SA', 45),
(47, 'CM', 'Cameroon', 'Republic of Cameroon', 'CMR', 120, 'AF', 40),
(48, 'CN', 'China', 'People\'s Republic of China', 'CHN', 156, 'AS', 46),
(49, 'CO', 'Colombia', 'Republic of Colombia', 'COL', 170, 'SA', 49),
(50, 'CR', 'Costa Rica', 'Republic of Costa Rica', 'CRI', 188, 'NA', 54),
(51, 'CU', 'Cuba', 'Republic of Cuba', 'CUB', 192, 'NA', 57),
(52, 'CV', 'Cape Verde', 'Republic of Cape Verde', 'CPV', 132, 'AF', 41),
(53, 'CX', 'Christmas Island', 'Christmas Island', 'CXR', 162, 'AS', 47),
(54, 'CY', 'Cyprus', 'Republic of Cyprus', 'CYP', 196, 'AS', 58),
(55, 'CZ', 'Czech Republic', 'Czech Republic', 'CZE', 203, 'EU', 59),
(56, 'DE', 'Germany', 'Federal Republic of Germany', 'DEU', 276, 'EU', 82),
(57, 'DJ', 'Djibouti', 'Republic of Djibouti', 'DJI', 262, 'AF', 61),
(58, 'DK', 'Denmark', 'Kingdom of Denmark', 'DNK', 208, 'EU', 60),
(59, 'DM', 'Dominica', 'Commonwealth of Dominica', 'DMA', 212, 'NA', 62),
(60, 'DO', 'Dominican Republic', 'Dominican Republic', 'DOM', 214, 'NA', 63),
(61, 'DZ', 'Algeria', 'People\'s Democratic Republic of Algeria', 'DZA', 012, 'AF', 5),
(62, 'EC', 'Ecuador', 'Republic of Ecuador', 'ECU', 218, 'SA', 64),
(63, 'EE', 'Estonia', 'Republic of Estonia', 'EST', 233, 'EU', 69),
(64, 'EG', 'Egypt', 'Arab Republic of Egypt', 'EGY', 818, 'AF', 65),
(65, 'EH', 'Western Sahara', 'Western Sahara', 'ESH', 732, 'AF', 242),
(66, 'ER', 'Eritrea', 'State of Eritrea', 'ERI', 232, 'AF', 68),
(67, 'ES', 'Spain', 'Kingdom of Spain', 'ESP', 724, 'EU', 207),
(68, 'ET', 'Ethiopia', 'Federal Democratic Republic of Ethiopia', 'ETH', 231, 'AF', 70),
(69, 'FI', 'Finland', 'Republic of Finland', 'FIN', 246, 'EU', 74),
(70, 'FJ', 'Fiji', 'Republic of the Fiji Islands', 'FJI', 242, 'OC', 73),
(71, 'FK', 'Falkland Islands', 'Falkland Islands (Malvinas)', 'FLK', 238, 'SA', 71),
(72, 'FM', 'Micronesia', 'Federated States of Micronesia', 'FSM', 583, 'OC', 144),
(73, 'FO', 'Faroe Islands', 'Faroe Islands', 'FRO', 234, 'EU', 72),
(74, 'FR', 'France', 'French Republic', 'FRA', 250, 'EU', 75),
(75, 'GA', 'Gabon', 'Gabonese Republic', 'GAB', 266, 'AF', 79),
(76, 'GB', 'United Kingdom', 'United Kingdom of Great Britain & Northern Ireland', 'GBR', 826, 'EU', 233),
(77, 'GD', 'Grenada', 'Grenada', 'GRD', 308, 'NA', 87),
(78, 'GE', 'Georgia', 'Georgia', 'GEO', 268, 'AS', 81),
(79, 'GF', 'French Guiana', 'French Guiana', 'GUF', 254, 'SA', 76),
(80, 'GG', 'Guernsey', 'Bailiwick of Guernsey', 'GGY', 831, 'EU', 91),
(81, 'GH', 'Ghana', 'Republic of Ghana', 'GHA', 288, 'AF', 83),
(82, 'GI', 'Gibraltar', 'Gibraltar', 'GIB', 292, 'EU', 84),
(83, 'GL', 'Greenland', 'Greenland', 'GRL', 304, 'NA', 86),
(84, 'GM', 'Gambia', 'Republic of the Gambia', 'GMB', 270, 'AF', 80),
(85, 'GN', 'Guinea', 'Republic of Guinea', 'GIN', 324, 'AF', 92),
(86, 'GP', 'Guadeloupe', 'Guadeloupe', 'GLP', 312, 'NA', 88),
(87, 'GQ', 'Equatorial Guinea', 'Republic of Equatorial Guinea', 'GNQ', 226, 'AF', 67),
(88, 'GR', 'Greece', 'Hellenic Republic Greece', 'GRC', 300, 'EU', 85),
(89, 'GS', 'South Georgia and South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'SGS', 239, 'AN', 206),
(90, 'GT', 'Guatemala', 'Republic of Guatemala', 'GTM', 320, 'NA', 90),
(91, 'GU', 'Guam', 'Guam', 'GUM', 316, 'OC', 89),
(92, 'GW', 'Guinea-Bissau', 'Republic of Guinea-Bissau', 'GNB', 624, 'AF', 93),
(93, 'GY', 'Guyana', 'Co-operative Republic of Guyana', 'GUY', 328, 'SA', 94),
(94, 'HK', 'Hong Kong', 'Hong Kong Special Administrative Region of China', 'HKG', 344, 'AS', 99),
(95, 'HM', 'Heard and McDonald Islands', 'Heard Island and McDonald Islands', 'HMD', 334, 'AN', 96),
(96, 'HN', 'Honduras', 'Republic of Honduras', 'HND', 340, 'NA', 98),
(97, 'HR', 'Croatia', 'Republic of Croatia', 'HRV', 191, 'EU', 56),
(98, 'HT', 'Haiti', 'Republic of Haiti', 'HTI', 332, 'NA', 95),
(99, 'HU', 'Hungary', 'Republic of Hungary', 'HUN', 348, 'EU', 100),
(100, 'ID', 'Indonesia', 'Republic of Indonesia', 'IDN', 360, 'AS', 103),
(101, 'IE', 'Ireland', 'Ireland', 'IRL', 372, 'EU', 106),
(102, 'IL', 'Israel', 'State of Israel', 'ISR', 376, 'AS', 108),
(103, 'IM', 'Isle of Man', 'Isle of Man', 'IMN', 833, 'EU', 107),
(104, 'IN', 'India', 'Republic of India', 'IND', 356, 'AS', 102),
(105, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory (Chagos Archipelago)', 'IOT', 086, 'AS', 33),
(106, 'IQ', 'Iraq', 'Republic of Iraq', 'IRQ', 368, 'AS', 105),
(107, 'IR', 'Iran', 'Islamic Republic of Iran', 'IRN', 364, 'AS', 104),
(108, 'IS', 'Iceland', 'Republic of Iceland', 'ISL', 352, 'EU', 101),
(109, 'IT', 'Italy', 'Italian Republic', 'ITA', 380, 'EU', 109),
(110, 'JE', 'Jersey', 'Bailiwick of Jersey', 'JEY', 832, 'EU', 112),
(111, 'JM', 'Jamaica', 'Jamaica', 'JAM', 388, 'NA', 110),
(112, 'JO', 'Jordan', 'Hashemite Kingdom of Jordan', 'JOR', 400, 'AS', 113),
(113, 'JP', 'Japan', 'Japan', 'JPN', 392, 'AS', 111),
(114, 'KE', 'Kenya', 'Republic of Kenya', 'KEN', 404, 'AF', 115),
(115, 'KG', 'Kyrgyzstan', 'Kyrgyz Republic', 'KGZ', 417, 'AS', 120),
(116, 'KH', 'Cambodia', 'Kingdom of Cambodia', 'KHM', 116, 'AS', 39),
(117, 'KI', 'Kiribati', 'Republic of Kiribati', 'KIR', 296, 'OC', 116),
(118, 'KM', 'Comoros', 'Union of the Comoros', 'COM', 174, 'AF', 50),
(119, 'KN', 'Saint Kitts and Nevis', 'Federation of Saint Kitts and Nevis', 'KNA', 659, 'NA', 187),
(120, 'KP', 'Korea, North', 'Democratic People\'s Republic of Korea', 'PRK', 408, 'AS', 117),
(121, 'KR', 'Korea, South', 'Republic of Korea', 'KOR', 410, 'AS', 118),
(122, 'KW', 'Kuwait', 'State of Kuwait', 'KWT', 414, 'AS', 119),
(123, 'KY', 'Cayman Islands', 'Cayman Islands', 'CYM', 136, 'NA', 42),
(124, 'KZ', 'Kazakhstan', 'Republic of Kazakhstan', 'KAZ', 398, 'AS', 114),
(125, 'LA', 'Laos', 'Lao People\'s Democratic Republic', 'LAO', 418, 'AS', 121),
(126, 'LB', 'Lebanon', 'Lebanese Republic', 'LBN', 422, 'AS', 123),
(127, 'LC', 'Saint Lucia', 'Saint Lucia', 'LCA', 662, 'NA', 188),
(128, 'LI', 'Liechtenstein', 'Principality of Liechtenstein', 'LIE', 438, 'EU', 127),
(129, 'LK', 'Sri Lanka', 'Democratic Socialist Republic of Sri Lanka', 'LKA', 144, 'AS', 208),
(130, 'LR', 'Liberia', 'Republic of Liberia', 'LBR', 430, 'AF', 125),
(131, 'LS', 'Lesotho', 'Kingdom of Lesotho', 'LSO', 426, 'AF', 124),
(132, 'LT', 'Lithuania', 'Republic of Lithuania', 'LTU', 440, 'EU', 128),
(133, 'LU', 'Luxembourg', 'Grand Duchy of Luxembourg', 'LUX', 442, 'EU', 129),
(134, 'LV', 'Latvia', 'Republic of Latvia', 'LVA', 428, 'EU', 122),
(135, 'LY', 'Libya', 'Libyan Arab Jamahiriya', 'LBY', 434, 'AF', 126),
(136, 'MA', 'Morocco', 'Kingdom of Morocco', 'MAR', 504, 'AF', 150),
(137, 'MC', 'Monaco', 'Principality of Monaco', 'MCO', 492, 'EU', 146),
(138, 'MD', 'Moldova', 'Republic of Moldova', 'MDA', 498, 'EU', 145),
(139, 'ME', 'Montenegro', 'Republic of Montenegro', 'MNE', 499, 'EU', 148),
(140, 'MF', 'Saint Martin (French part)', 'Saint Martin', 'MAF', 663, 'NA', 189),
(141, 'MG', 'Madagascar', 'Republic of Madagascar', 'MDG', 450, 'AF', 132),
(142, 'MH', 'Marshall Islands', 'Republic of the Marshall Islands', 'MHL', 584, 'OC', 138),
(143, 'MK', 'Macedonia', 'Republic of Macedonia', 'MKD', 807, 'EU', 131),
(144, 'ML', 'Mali', 'Republic of Mali', 'MLI', 466, 'AF', 136),
(145, 'MM', 'Myanmar', 'Union of Myanmar', 'MMR', 104, 'AS', 152),
(146, 'MN', 'Mongolia', 'Mongolia', 'MNG', 496, 'AS', 147),
(147, 'MO', 'Macau', 'Macao Special Administrative Region of China', 'MAC', 446, 'AS', 130),
(148, 'MP', 'Northern Mariana Islands', 'Commonwealth of the Northern Mariana Islands', 'MNP', 580, 'OC', 165),
(149, 'MQ', 'Martinique', 'Martinique', 'MTQ', 474, 'NA', 139),
(150, 'MR', 'Mauritania', 'Islamic Republic of Mauritania', 'MRT', 478, 'AF', 140),
(151, 'MS', 'Montserrat', 'Montserrat', 'MSR', 500, 'NA', 149),
(152, 'MT', 'Malta', 'Republic of Malta', 'MLT', 470, 'EU', 137),
(153, 'MU', 'Mauritius', 'Republic of Mauritius', 'MUS', 480, 'AF', 141),
(154, 'MV', 'Maldives', 'Republic of Maldives', 'MDV', 462, 'AS', 135),
(155, 'MW', 'Malawi', 'Republic of Malawi', 'MWI', 454, 'AF', 133),
(156, 'MX', 'Mexico', 'United Mexican States', 'MEX', 484, 'NA', 143),
(157, 'MY', 'Malaysia', 'Malaysia', 'MYS', 458, 'AS', 134),
(158, 'MZ', 'Mozambique', 'Republic of Mozambique', 'MOZ', 508, 'AF', 151),
(159, 'NA', 'Namibia', 'Republic of Namibia', 'NAM', 516, 'AF', 153),
(160, 'NC', 'New Caledonia', 'New Caledonia', 'NCL', 540, 'OC', 158),
(161, 'NE', 'Niger', 'Republic of Niger', 'NER', 562, 'AF', 161),
(162, 'NF', 'Norfolk Island', 'Norfolk Island', 'NFK', 574, 'OC', 164),
(163, 'NG', 'Nigeria', 'Federal Republic of Nigeria', 'NGA', 566, 'AF', 162),
(164, 'NI', 'Nicaragua', 'Republic of Nicaragua', 'NIC', 558, 'NA', 160),
(165, 'NL', 'Netherlands', 'Kingdom of the Netherlands', 'NLD', 528, 'EU', 156),
(166, 'NO', 'Norway', 'Kingdom of Norway', 'NOR', 578, 'EU', 166),
(167, 'NP', 'Nepal', 'State of Nepal', 'NPL', 524, 'AS', 155),
(168, 'NR', 'Nauru', 'Republic of Nauru', 'NRU', 520, 'OC', 154),
(169, 'NU', 'Niue', 'Niue', 'NIU', 570, 'OC', 163),
(170, 'NZ', 'New Zealand', 'New Zealand', 'NZL', 554, 'OC', 159),
(171, 'OM', 'Oman', 'Sultanate of Oman', 'OMN', 512, 'AS', 167),
(172, 'PA', 'Panama', 'Republic of Panama', 'PAN', 591, 'NA', 171),
(173, 'PE', 'Peru', 'Republic of Peru', 'PER', 604, 'SA', 174),
(174, 'PF', 'French Polynesia', 'French Polynesia', 'PYF', 258, 'OC', 77),
(175, 'PG', 'Papua New Guinea', 'Independent State of Papua New Guinea', 'PNG', 598, 'OC', 172),
(176, 'PH', 'Philippines', 'Republic of the Philippines', 'PHL', 608, 'AS', 175),
(177, 'PK', 'Pakistan', 'Islamic Republic of Pakistan', 'PAK', 586, 'AS', 168),
(178, 'PL', 'Poland', 'Republic of Poland', 'POL', 616, 'EU', 177),
(179, 'PM', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'SPM', 666, 'NA', 190),
(180, 'PN', 'Pitcairn', 'Pitcairn Islands', 'PCN', 612, 'OC', 176),
(181, 'PR', 'Puerto Rico', 'Commonwealth of Puerto Rico', 'PRI', 630, 'NA', 179),
(182, 'PS', 'Palestine', 'Occupied Palestinian Territory', 'PSE', 275, 'AS', 170),
(183, 'PT', 'Portugal', 'Portuguese Republic', 'PRT', 620, 'EU', 178),
(184, 'PW', 'Palau', 'Republic of Palau', 'PLW', 585, 'OC', 169),
(185, 'PY', 'Paraguay', 'Republic of Paraguay', 'PRY', 600, 'SA', 173),
(186, 'QA', 'Qatar', 'State of Qatar', 'QAT', 634, 'AS', 180),
(187, 'RE', 'Reunion', 'Reunion', 'REU', 638, 'AF', 181),
(188, 'RO', 'Romania', 'Romania', 'ROU', 642, 'EU', 182),
(189, 'RS', 'Serbia', 'Republic of Serbia', 'SRB', 688, 'EU', 197),
(190, 'RU', 'Russian Federation', 'Russian Federation', 'RUS', 643, 'EU', 183),
(191, 'RW', 'Rwanda', 'Republic of Rwanda', 'RWA', 646, 'AF', 184),
(192, 'SA', 'Saudi Arabia', 'Kingdom of Saudi Arabia', 'SAU', 682, 'AS', 195),
(193, 'SB', 'Solomon Islands', 'Solomon Islands', 'SLB', 090, 'OC', 203),
(194, 'SC', 'Seychelles', 'Republic of Seychelles', 'SYC', 690, 'AF', 198),
(195, 'SD', 'Sudan', 'Republic of Sudan', 'SDN', 736, 'AF', 209),
(196, 'SE', 'Sweden', 'Kingdom of Sweden', 'SWE', 752, 'EU', 213),
(197, 'SG', 'Singapore', 'Republic of Singapore', 'SGP', 702, 'AS', 200),
(198, 'SH', 'Saint Helena', 'Saint Helena', 'SHN', 654, 'AF', 186),
(199, 'SI', 'Slovenia', 'Republic of Slovenia', 'SVN', 705, 'EU', 202),
(200, 'SJ', 'Svalbard and Jan Mayen Islands', 'Svalbard & Jan Mayen Islands', 'SJM', 744, 'EU', 211),
(201, 'SK', 'Slovakia', 'Slovakia (Slovak Republic)', 'SVK', 703, 'EU', 201),
(202, 'SL', 'Sierra Leone', 'Republic of Sierra Leone', 'SLE', 694, 'AF', 199),
(203, 'SM', 'San Marino', 'Republic of San Marino', 'SMR', 674, 'EU', 193),
(204, 'SN', 'Senegal', 'Republic of Senegal', 'SEN', 686, 'AF', 196),
(205, 'SO', 'Somalia', 'Somali Republic', 'SOM', 706, 'AF', 204),
(206, 'SR', 'Suriname', 'Republic of Suriname', 'SUR', 740, 'SA', 210),
(207, 'ST', 'Sao Tome and Principe', 'Democratic Republic of Sao Tome and Principe', 'STP', 678, 'AF', 194),
(208, 'SV', 'El Salvador', 'Republic of El Salvador', 'SLV', 222, 'NA', 66),
(209, 'SY', 'Syria', 'Syrian Arab Republic', 'SYR', 760, 'AS', 215),
(210, 'SZ', 'Swaziland', 'Kingdom of Swaziland', 'SWZ', 748, 'AF', 212),
(211, 'TC', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'TCA', 796, 'NA', 228),
(212, 'TD', 'Chad', 'Republic of Chad', 'TCD', 148, 'AF', 44),
(213, 'TF', 'French Southern Lands', 'French Southern Territories', 'ATF', 260, 'AN', 78),
(214, 'TG', 'Togo', 'Togolese Republic', 'TGO', 768, 'AF', 221),
(215, 'TH', 'Thailand', 'Kingdom of Thailand', 'THA', 764, 'AS', 219),
(216, 'TJ', 'Tajikistan', 'Republic of Tajikistan', 'TJK', 762, 'AS', 217),
(217, 'TK', 'Tokelau', 'Tokelau', 'TKL', 772, 'OC', 222),
(218, 'TL', 'Timor-Leste', 'Democratic Republic of Timor-Leste', 'TLS', 626, 'AS', 220),
(219, 'TM', 'Turkmenistan', 'Turkmenistan', 'TKM', 795, 'AS', 227),
(220, 'TN', 'Tunisia', 'Tunisian Republic', 'TUN', 788, 'AF', 225),
(221, 'TO', 'Tonga', 'Kingdom of Tonga', 'TON', 776, 'OC', 223),
(222, 'TR', 'Turkey', 'Republic of Turkey', 'TUR', 792, 'AS', 226),
(223, 'TT', 'Trinidad and Tobago', 'Republic of Trinidad and Tobago', 'TTO', 780, 'NA', 224),
(224, 'TV', 'Tuvalu', 'Tuvalu', 'TUV', 798, 'OC', 229),
(225, 'TW', 'Taiwan', 'Taiwan', 'TWN', 158, 'AS', 216),
(226, 'TZ', 'Tanzania', 'United Republic of Tanzania', 'TZA', 834, 'AF', 218),
(227, 'UA', 'Ukraine', 'Ukraine', 'UKR', 804, 'EU', 231),
(228, 'UG', 'Uganda', 'Republic of Uganda', 'UGA', 800, 'AF', 230),
(229, 'UM', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', 'UMI', 581, 'OC', 234),
(230, 'US', 'United States of America', 'United States of America', 'USA', 840, 'NA', 1),
(231, 'UY', 'Uruguay', 'Eastern Republic of Uruguay', 'URY', 858, 'SA', 236),
(232, 'UZ', 'Uzbekistan', 'Republic of Uzbekistan', 'UZB', 860, 'AS', 237),
(233, 'VA', 'Vatican City', 'Holy See (Vatican City State)', 'VAT', 336, 'EU', 97),
(234, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'VCT', 670, 'NA', 191),
(235, 'VE', 'Venezuela', 'Bolivarian Republic of Venezuela', 'VEN', 862, 'SA', 239),
(236, 'VG', 'Virgin Islands, British', 'British Virgin Islands', 'VGB', 092, 'NA', 34),
(237, 'VI', 'Virgin Islands, U.S.', 'United States Virgin Islands', 'VIR', 850, 'NA', 235),
(238, 'VN', 'Vietnam', 'Socialist Republic of Vietnam', 'VNM', 704, 'AS', 240),
(239, 'VU', 'Vanuatu', 'Republic of Vanuatu', 'VUT', 548, 'OC', 238),
(240, 'WF', 'Wallis and Futuna Islands', 'Wallis and Futuna', 'WLF', 876, 'OC', 241),
(241, 'WS', 'Samoa', 'Independent State of Samoa', 'WSM', 882, 'OC', 192),
(242, 'YE', 'Yemen', 'Yemen', 'YEM', 887, 'AS', 243),
(243, 'YT', 'Mayotte', 'Mayotte', 'MYT', 175, 'AF', 142),
(244, 'ZA', 'South Africa', 'Republic of South Africa', 'ZAF', 710, 'AF', 205),
(245, 'ZM', 'Zambia', 'Republic of Zambia', 'ZMB', 894, 'AF', 244),
(246, 'ZW', 'Zimbabwe', 'Republic of Zimbabwe', 'ZWE', 716, 'AF', 245);

-- --------------------------------------------------------

--
-- Stand-in structure for view `countries_view`
-- (See below for the actual view)
--
CREATE TABLE `countries_view` (
`country_id` int(11)
,`display_order` int(3)
,`name` varchar(64)
,`full_name` varchar(128)
,`continent_code` char(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `country_view`
-- (See below for the actual view)
--
CREATE TABLE `country_view` (
`country_id` int(11)
,`display_order` int(3)
,`name` varchar(64)
,`full_name` varchar(128)
);

-- --------------------------------------------------------

--
-- Structure for view `asian_countires`
--
DROP TABLE IF EXISTS `asian_countires`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `asian_countires`  AS SELECT `countries_view`.`country_id` AS `country_id`, `countries_view`.`display_order` AS `display_order`, `countries_view`.`name` AS `name`, `countries_view`.`full_name` AS `full_name`, `countries_view`.`continent_code` AS `continent_code` FROM `countries_view` WHERE `countries_view`.`continent_code` = 'AS' ;

-- --------------------------------------------------------

--
-- Structure for view `countries_view`
--
DROP TABLE IF EXISTS `countries_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `countries_view`  AS SELECT `countries`.`country_id` AS `country_id`, `countries`.`display_order` AS `display_order`, `countries`.`name` AS `name`, `countries`.`full_name` AS `full_name`, `countries`.`continent_code` AS `continent_code` FROM `countries` ;

-- --------------------------------------------------------

--
-- Structure for view `country_view`
--
DROP TABLE IF EXISTS `country_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `country_view`  AS SELECT `countries`.`country_id` AS `country_id`, `countries`.`display_order` AS `display_order`, `countries`.`name` AS `name`, `countries`.`full_name` AS `full_name` FROM `countries` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apps_countries`
--
ALTER TABLE `apps_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `continents`
--
ALTER TABLE `continents`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `idx_code` (`code`) USING BTREE,
  ADD KEY `idx_continent_code` (`continent_code`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apps_countries`
--
ALTER TABLE `apps_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `countries`
--
ALTER TABLE `countries`
  ADD CONSTRAINT `countries_ibfk_1` FOREIGN KEY (`continent_code`) REFERENCES `continents` (`code`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
