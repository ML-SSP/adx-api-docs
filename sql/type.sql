-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: tenom_new
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deal_city_type`
--

DROP TABLE IF EXISTS `deal_city_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_city_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `country_number` int DEFAULT NULL,
  `country_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `city_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `is_display` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_city_type`
--

LOCK TABLES `deal_city_type` WRITE;
/*!40000 ALTER TABLE `deal_city_type` DISABLE KEYS */;
INSERT INTO `deal_city_type` VALUES (1,4,'AFG','Kabul',1),(2,4,'AFG','Kandahar',1),(3,4,'AFG','Herat',1),(4,4,'AFG','Mazar-i-Sharif',1),(5,4,'AFG','Kunduz',1),(6,4,'AFG','Jalalabad',1),(7,4,'AFG','Taloqan',1),(8,4,'AFG','Puli Khumri',1),(9,4,'AFG','Charikar',1),(10,4,'AFG','Lashkargah',1),(11,4,'AFG','Sheberghan',1),(12,4,'AFG','Ghazni',1),(13,4,'AFG','Khost',1),(14,4,'AFG','Sar-e Pol',1),(15,4,'AFG','Chaghcharan',1),(16,4,'AFG','Mihtarlam',1),(17,4,'AFG','Farah',1),(18,4,'AFG','Puli Alam',1),(19,32,'ARG','Buenos Aires',1),(20,32,'ARG','Cordoba',1);
/*!40000 ALTER TABLE `deal_city_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_device_language_type`
--

DROP TABLE IF EXISTS `deal_device_language_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_device_language_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_code` varchar(45) DEFAULT '',
  `language_name` varchar(45) DEFAULT '',
  `is_display` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_device_language_type`
--

LOCK TABLES `deal_device_language_type` WRITE;
/*!40000 ALTER TABLE `deal_device_language_type` DISABLE KEYS */;
INSERT INTO `deal_device_language_type` VALUES (1,'ar','Arabic',1),(2,'bn','Bengali',1),(3,'bg','Bulgarian',1),(4,'ca','Catalan',1),(5,'zh','Chinese',1),(6,'hr','Croatian',1),(7,'cs','Czech',1),(8,'da','Danish',1),(9,'nl','Dutch',1),(10,'en','English',1),(11,'et','Estonia',1),(12,'fi','Finnish',1),(13,'fr','French',1),(14,'de','German',1),(15,'el','Greek',1),(16,'gu','Gujarati',1),(17,'he','Hebrew',1),(18,'hi','Hindi',1),(19,'hu','Hungarian',1),(20,'is','Icelandic',1),(21,'id','Indonesian',1),(22,'it','Italian',1),(23,'ja','Japanese',1),(24,'kn','Kannada',1),(25,'ko','Korean',1),(26,'lv','Latvian',1),(27,'lv','Lithuanian',1),(28,'ms','Malay',1),(29,'ml','Malayalam',1),(30,'mr','Marathi',1),(31,'no','Norwegian',1),(32,'fa','Persian',1),(33,'pl','Polish',1),(34,'pt','Portuguese',1),(35,'pa','Punjabi',1),(36,'ro','Romanian',1),(37,'ru','Russian',1),(38,'sr','Serbian',1),(39,'sk','Slovak',1),(40,'sl','Slovenian',1),(41,'es','Spanish',1),(42,'sv','Swedish',1),(43,'ta','Tamil',1),(44,'te','Telugu',1),(45,'th','Thai',1),(46,'tr','Turkish',1),(47,'uk','Ukrainian',1),(48,'ur','Urdu',1),(49,'vi','Vietnamese',1);
/*!40000 ALTER TABLE `deal_device_language_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_device_manufacturer_type`
--

DROP TABLE IF EXISTS `deal_device_manufacturer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_device_manufacturer_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `os_number` int DEFAULT NULL,
  `os` varchar(45) DEFAULT '',
  `make` varchar(50) DEFAULT '',
  `is_display` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_device_manufacturer_type`
--

LOCK TABLES `deal_device_manufacturer_type` WRITE;
/*!40000 ALTER TABLE `deal_device_manufacturer_type` DISABLE KEYS */;
INSERT INTO `deal_device_manufacturer_type` VALUES (1,1,'iOS','Apple','1'),(2,2,'Android','Asus','1'),(3,2,'Android','Google Pixel','1'),(4,2,'Android','Honor','1'),(5,2,'Android','HTC','1'),(6,2,'Android','Huawei','1'),(7,2,'Android','Lenovo','1'),(8,2,'Android','LG','1'),(9,2,'Android','Motorola','1'),(10,2,'Android','Nokia','1'),(11,2,'Android','OnePlus','1'),(12,2,'Android','Oppo','1'),(13,2,'Android','Realme','1'),(14,2,'Android','Samsung','1'),(15,2,'Android','Sony','1'),(16,2,'Android','Vivo','1'),(17,2,'Android','Xiaomi','1'),(18,2,'Android','ZTE','1');
/*!40000 ALTER TABLE `deal_device_manufacturer_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_os_version_type`
--

DROP TABLE IF EXISTS `deal_os_version_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_os_version_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `os_number` varchar(45) DEFAULT NULL,
  `os_version` varchar(45) DEFAULT NULL,
  `os_version_name` varchar(45) DEFAULT NULL,
  `is_display` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_os_version_type`
--

LOCK TABLES `deal_os_version_type` WRITE;
/*!40000 ALTER TABLE `deal_os_version_type` DISABLE KEYS */;
INSERT INTO `deal_os_version_type` VALUES (1,'1','11','iOS 11','1'),(2,'1','12','iOS 12','1'),(3,'1','13','iOS 13','1'),(4,'1','14','iOS 14','1'),(5,'1','15','iOS 15','1'),(6,'2','8','Android 8','1'),(7,'2','9','Android 9','1'),(8,'2','10','Android 10','1'),(9,'2','11','Android 11','1'),(10,'2','12','Android 12','1');
/*!40000 ALTER TABLE `deal_os_version_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_cn_code`
--

DROP TABLE IF EXISTS `tab_cn_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_cn_code` (
  `country_id` smallint NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL DEFAULT '',
  `three_code` char(3) NOT NULL DEFAULT '',
  `name_chinese` varchar(128) NOT NULL DEFAULT '',
  `name_english` varchar(128) NOT NULL DEFAULT '',
  `is_display` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_cn_code`
--

LOCK TABLES `tab_cn_code` WRITE;
/*!40000 ALTER TABLE `tab_cn_code` DISABLE KEYS */;
INSERT INTO `tab_cn_code` VALUES (4,'AF','AFG','','Afghanistan',1),(10,'AQ','ATA','','Antarctica',1),(32,'AR','ARG','','Argentina',1),(36,'AU','AUS','','Australia',1),(40,'AT','AUT','','Austria',1),(64,'BT','BTN','','Bhutan',1),(76,'BR','BRA','','Brazil',1),(104,'MM','MMR','','Myanmar',1),(112,'BY','BLR','','Belarus',1),(116,'KH','KHM','','Cambodia',1),(124,'CA','CAN','','Canada',1),(140,'CF','CAF','','Central African Republic',1),(152,'CL','CHL','','Chile',1),(156,'CN','CHN','','China',1),(158,'TW','TWN','','Taiwan',1),(170,'CO','COL','','Colombia',1),(191,'HR','HRV','','Croatia',1),(192,'CU','CUB','','Cuba',1),(203,'CZ','CZE','','Czech Republic',1),(208,'DK','DNK','','Denmark',1),(246,'FI','FIN','','Finland',1),(250,'FR','FRA','','France',1),(276,'DE','DEU','','Germany',1),(300,'GR','GRC','','Greece',1),(332,'HT','HTI','','Haiti',1),(340,'HN','HND','','Honduras',1),(344,'HK','HKG','','Hong Kong',1),(348,'HU','HUN','','Hungary',1),(352,'IS','ISL','','Iceland',1),(356,'IN','IND','','India',1),(360,'ID','IDN','','Indonesia',1),(364,'IR','IRN','','Iran',1),(368,'IQ','IRQ','','Iraq',1),(372,'IE','IRL','','Ireland',1),(376,'IL','ISR','','Israel',1),(380,'IT','ITA','','Italy',1),(392,'JP','JPN','','Japan',1),(400,'JO','JOR','','Jordan',1),(408,'KP','PRK','','North Korea',1),(410,'KR','KOR','','South Korea',1),(414,'KW','KWT','','Kuwait',1),(418,'LA','LAO','','Laos',1),(422,'LB','LBN','','Lebanon',1),(434,'LY','LBY','','Libya',1),(440,'LT','LTU','','Lithuania',1),(446,'MO','MAC','','Macao',1),(458,'MY','MYS','','Malaysia',1),(462,'MV','MDV','','Maldives',1),(484,'MX','MEX','','Mexico',1),(499,'ME','MNE','','Montenegro',1),(504,'MA','MAR','','Morocco',1),(528,'NL','NLD','','Netherlands',1),(554,'NZ','NZL','','New Zealand',1),(578,'NO','NOR','','Norway',1),(586,'PK','PAK','','Pakistan',1),(604,'PE','PER','','Peru',1),(608,'PH','PHL','','The Philippines',1),(616,'PL','POL','','Poland',1),(620,'PT','PRT','','Portugal',1),(643,'RU','RUS','','Russian',1),(682,'SA','SAU','','Saudi Arabia',1),(702,'SG','SGP','','Singapore',1),(704,'VN','VNM','','Vietnam',1),(710,'ZA','ZAF','','South Africa',1),(724,'ES','ESP','','Spain',1),(752,'SE','SWE','','Sweden',1),(756,'CH','CHE','','Switzerland',1),(764,'TH','THA','','Thailand',1),(784,'AE','ARE','','United Arab Emirates',1),(792,'TR','TUR','','Turkey',1),(804,'UA','UKR','','Ukraine',1),(818,'EG','EGY','','Egypt',1),(826,'GB','GBR','','England',1),(840,'US','USA','','America',1),(858,'UY','URY','','Uruguay',1),(860,'UZ','UZB','','Uzbekistan',1),(862,'VE','VEN','','Venezuela',1),(863,'KE','KEN','','Kenya',1),(864,'CO','CON','','Congo',1),(865,'TU','TUN','','Tunisia',1),(866,'PA','PAL','','Palestinian Authority (PSE)',1),(867,'QA','QAT','','Qatar',1),(868,'GT','GTM','','Guatemala',1),(869,'SV','SLV','','Salvador',1),(870,'NG','NGA','','Nigeria',1),(871,'BG','BGD','','Bangladesh',1),(872,'KZ','KAZ','','Kazakstan',1);
/*!40000 ALTER TABLE `tab_cn_code` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-09 16:52:16
