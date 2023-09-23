-- MySQL dump 10.13  Distrib 8.0.33, for macos13.3 (arm64)
--
-- Host: 127.0.0.1    Database: p2p_booklend
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Authors`
--

DROP TABLE IF EXISTS `Authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Authors`
--

LOCK TABLES `Authors` WRITE;
/*!40000 ALTER TABLE `Authors` DISABLE KEYS */;
INSERT INTO `Authors` VALUES (1,'Paulo Coelho'),(2,'James Clear'),(3,'Deepinder Goyal'),(4,'Naina Sahni'),(5,'Ashish Goel');
/*!40000 ALTER TABLE `Authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `isbn` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES (1,'CULTure at Zomato: How to Rewire Your Brain for Greatness','935345171X'),(2,'The Alchemist','9788172234980'),(3,'Atomic Habits','1847941834');
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Countries`
--

DROP TABLE IF EXISTS `Countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Countries` (
  `iso_code` varchar(2) NOT NULL,
  `name` varchar(255) NOT NULL,
  `call_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`iso_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Countries`
--

LOCK TABLES `Countries` WRITE;
/*!40000 ALTER TABLE `Countries` DISABLE KEYS */;
INSERT INTO `Countries` VALUES ('AD','Andorra','+376'),('AE','United Arab Emirates','+971'),('AF','Afghanistan','+93'),('AG','Antigua and Barbuda','+1268'),('AI','Anguilla','+1264'),('AL','Albania','+355'),('AM','Armenia','+374'),('AN','Netherlands Antilles','+599'),('AO','Angola','+244'),('AQ','Antarctica','+672'),('AR','Argentina','+54'),('AS','AmericanSamoa','+1684'),('AT','Austria','+43'),('AU','Australia','+61'),('AW','Aruba','+297'),('AX','Aland Islands','+358'),('AZ','Azerbaijan','+994'),('BA','Bosnia and Herzegovina','+387'),('BB','Barbados','+1246'),('BD','Bangladesh','+880'),('BE','Belgium','+32'),('BF','Burkina Faso','+226'),('BG','Bulgaria','+359'),('BH','Bahrain','+973'),('BI','Burundi','+257'),('BJ','Benin','+229'),('BL','Saint Barthelemy','+590'),('BM','Bermuda','+1441'),('BN','Brunei Darussalam','+673'),('BO','Bolivia, Plurinational State of','+591'),('BR','Brazil','+55'),('BS','Bahamas','+1242'),('BT','Bhutan','+975'),('BW','Botswana','+267'),('BY','Belarus','+375'),('BZ','Belize','+501'),('CA','Canada','+1'),('CC','Cocos (Keeling) Islands','+61'),('CD','Congo, The Democratic Republic of the Congo','+243'),('CF','Central African Republic','+236'),('CG','Congo','+242'),('CH','Switzerland','+41'),('CI','Cote dIvoire','+225'),('CK','Cook Islands','+682'),('CL','Chile','+56'),('CM','Cameroon','+237'),('CN','China','+86'),('CO','Colombia','+57'),('CR','Costa Rica','+506'),('CU','Cuba','+53'),('CV','Cape Verde','+238'),('CX','Christmas Island','+61'),('CY','Cyprus','+357'),('CZ','Czech Republic','+420'),('DE','Germany','+49'),('DJ','Djibouti','+253'),('DK','Denmark','+45'),('DM','Dominica','+1767'),('DO','Dominican Republic','+1849'),('DZ','Algeria','+213'),('EC','Ecuador','+593'),('EE','Estonia','+372'),('EG','Egypt','+20'),('ER','Eritrea','+291'),('ES','Spain','+34'),('ET','Ethiopia','+251'),('FI','Finland','+358'),('FJ','Fiji','+679'),('FK','Falkland Islands (Malvinas)','+500'),('FM','Micronesia, Federated States of Micronesia','+691'),('FO','Faroe Islands','+298'),('FR','France','+33'),('GA','Gabon','+241'),('GB','United Kingdom','+44'),('GD','Grenada','+1473'),('GE','Georgia','+995'),('GF','French Guiana','+594'),('GG','Guernsey','+44'),('GH','Ghana','+233'),('GI','Gibraltar','+350'),('GL','Greenland','+299'),('GM','Gambia','+220'),('GN','Guinea','+224'),('GP','Guadeloupe','+590'),('GQ','Equatorial Guinea','+240'),('GR','Greece','+30'),('GS','South Georgia and the South Sandwich Islands','+500'),('GT','Guatemala','+502'),('GU','Guam','+1671'),('GW','Guinea-Bissau','+245'),('GY','Guyana','+595'),('HK','Hong Kong','+852'),('HN','Honduras','+504'),('HR','Croatia','+385'),('HT','Haiti','+509'),('HU','Hungary','+36'),('ID','Indonesia','+62'),('IE','Ireland','+353'),('IL','Israel','+972'),('IM','Isle of Man','+44'),('IN','India','+91'),('IO','British Indian Ocean Territory','+246'),('IQ','Iraq','+964'),('IR','Iran, Islamic Republic of Persian Gulf','+98'),('IS','Iceland','+354'),('IT','Italy','+39'),('JE','Jersey','+44'),('JM','Jamaica','+1876'),('JO','Jordan','+962'),('JP','Japan','+81'),('KE','Kenya','+254'),('KG','Kyrgyzstan','+996'),('KH','Cambodia','+855'),('KI','Kiribati','+686'),('KM','Comoros','+269'),('KN','Saint Kitts and Nevis','+1869'),('KP','Korea, Democratic Peoples Republic of Korea','+850'),('KR','Korea, Republic of South Korea','+82'),('KW','Kuwait','+965'),('KY','Cayman Islands','+ 345'),('KZ','Kazakhstan','+77'),('LA','Laos','+856'),('LB','Lebanon','+961'),('LC','Saint Lucia','+1758'),('LI','Liechtenstein','+423'),('LK','Sri Lanka','+94'),('LR','Liberia','+231'),('LS','Lesotho','+266'),('LT','Lithuania','+370'),('LU','Luxembourg','+352'),('LV','Latvia','+371'),('LY','Libyan Arab Jamahiriya','+218'),('MA','Morocco','+212'),('MC','Monaco','+377'),('MD','Moldova','+373'),('ME','Montenegro','+382'),('MF','Saint Martin','+590'),('MG','Madagascar','+261'),('MH','Marshall Islands','+692'),('MK','Macedonia','+389'),('ML','Mali','+223'),('MM','Myanmar','+95'),('MN','Mongolia','+976'),('MO','Macao','+853'),('MP','Northern Mariana Islands','+1670'),('MQ','Martinique','+596'),('MR','Mauritania','+222'),('MS','Montserrat','+1664'),('MT','Malta','+356'),('MU','Mauritius','+230'),('MV','Maldives','+960'),('MW','Malawi','+265'),('MX','Mexico','+52'),('MY','Malaysia','+60'),('MZ','Mozambique','+258'),('NA','Namibia','+264'),('NC','New Caledonia','+687'),('NE','Niger','+227'),('NF','Norfolk Island','+672'),('NG','Nigeria','+234'),('NI','Nicaragua','+505'),('NL','Netherlands','+31'),('NO','Norway','+47'),('NP','Nepal','+977'),('NR','Nauru','+674'),('NU','Niue','+683'),('NZ','New Zealand','+64'),('OM','Oman','+968'),('PA','Panama','+507'),('PE','Peru','+51'),('PF','French Polynesia','+689'),('PG','Papua New Guinea','+675'),('PH','Philippines','+63'),('PK','Pakistan','+92'),('PL','Poland','+48'),('PM','Saint Pierre and Miquelon','+508'),('PN','Pitcairn','+872'),('PR','Puerto Rico','+1939'),('PS','Palestinian Territory, Occupied','+970'),('PT','Portugal','+351'),('PW','Palau','+680'),('PY','Paraguay','+595'),('QA','Qatar','+974'),('RE','Reunion','+262'),('RO','Romania','+40'),('RS','Serbia','+381'),('RU','Russia','+7'),('RW','Rwanda','+250'),('SA','Saudi Arabia','+966'),('SB','Solomon Islands','+677'),('SC','Seychelles','+248'),('SD','Sudan','+249'),('SE','Sweden','+46'),('SG','Singapore','+65'),('SH','Saint Helena, Ascension and Tristan Da Cunha','+290'),('SI','Slovenia','+386'),('SJ','Svalbard and Jan Mayen','+47'),('SK','Slovakia','+421'),('SL','Sierra Leone','+232'),('SM','San Marino','+378'),('SN','Senegal','+221'),('SO','Somalia','+252'),('SR','Suriname','+597'),('SS','South Sudan','+211'),('ST','Sao Tome and Principe','+239'),('SV','El Salvador','+503'),('SY','Syrian Arab Republic','+963'),('SZ','Swaziland','+268'),('TC','Turks and Caicos Islands','+1649'),('TD','Chad','+235'),('TG','Togo','+228'),('TH','Thailand','+66'),('TJ','Tajikistan','+992'),('TK','Tokelau','+690'),('TL','Timor-Leste','+670'),('TM','Turkmenistan','+993'),('TN','Tunisia','+216'),('TO','Tonga','+676'),('TR','Turkey','+90'),('TT','Trinidad and Tobago','+1868'),('TV','Tuvalu','+688'),('TW','Taiwan','+886'),('TZ','Tanzania, United Republic of Tanzania','+255'),('UA','Ukraine','+380'),('UG','Uganda','+256'),('US','United States','+1'),('UY','Uruguay','+598'),('UZ','Uzbekistan','+998'),('VA','Holy See (Vatican City State)','+379'),('VC','Saint Vincent and the Grenadines','+1784'),('VE','Venezuela, Bolivarian Republic of Venezuela','+58'),('VG','Virgin Islands, British','+1284'),('VI','Virgin Islands, U.S.','+1340'),('VN','Vietnam','+84'),('VU','Vanuatu','+678'),('WF','Wallis and Futuna','+681'),('WS','Samoa','+685'),('YE','Yemen','+967'),('YT','Mayotte','+262'),('ZA','South Africa','+27'),('ZM','Zambia','+260'),('ZW','Zimbabwe','+263');
/*!40000 ALTER TABLE `Countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Inventory` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book` int NOT NULL,
  `owner` int NOT NULL,
  `status` varchar(10) DEFAULT 'nolend',
  `possessor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book` (`book`),
  KEY `owner` (`owner`),
  KEY `possessor` (`possessor`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`book`) REFERENCES `Books` (`id`),
  CONSTRAINT `inventory_ibfk_2` FOREIGN KEY (`owner`) REFERENCES `Users` (`id`),
  CONSTRAINT `inventory_ibfk_3` FOREIGN KEY (`possessor`) REFERENCES `Users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (2,1,2,'nolend',NULL),(3,1,4,'available',NULL),(4,1,3,'nolend',NULL),(7,2,2,'nolend',NULL),(8,2,3,'available',NULL);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TitleAuthors`
--

DROP TABLE IF EXISTS `TitleAuthors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TitleAuthors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book` int NOT NULL,
  `author` int NOT NULL,
  `is_primary` tinyint DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `book` (`book`),
  KEY `author` (`author`),
  CONSTRAINT `titleauthors_ibfk_1` FOREIGN KEY (`book`) REFERENCES `Books` (`id`),
  CONSTRAINT `titleauthors_ibfk_2` FOREIGN KEY (`author`) REFERENCES `Authors` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TitleAuthors`
--

LOCK TABLES `TitleAuthors` WRITE;
/*!40000 ALTER TABLE `TitleAuthors` DISABLE KEYS */;
INSERT INTO `TitleAuthors` VALUES (1,1,3,1),(2,1,4,0),(3,1,5,0),(4,2,1,1),(5,3,2,1);
/*!40000 ALTER TABLE `TitleAuthors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country` varchar(2) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country` (`country`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`country`) REFERENCES `Countries` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (2,'Nikhil Jose','hi@nikjos.in','IN','8989898989'),(3,'Elon Musk','elon@example.com','US','1212121212'),(4,'Linus Sebastian','ltt@example.com','CA','1212121212');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 11:38:02
