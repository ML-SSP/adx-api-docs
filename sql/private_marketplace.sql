-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: rm-t4nol313m2l3axx283o.mysql.singapore.rds.aliyuncs.com    Database: tenom_new
-- ------------------------------------------------------
-- Server version	8.0.18

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '54aabaa4-79cc-11eb-ae7d-00163e04b038:1-7342762,
5a272826-1c0c-11eb-a5d1-00163e000cba:1-45629678,
635c2b14-9565-11eb-ae42-00163e06a347:1-27718238';

--
-- Table structure for table `deal_city_type`
-- Location for Targeting Combination 
--

DROP TABLE IF EXISTS `deal_city_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_city_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_number` int(11) DEFAULT NULL,
  `country_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `city_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  `is_display` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_city_type`
-- Location for Targeting Combination 
--

LOCK TABLES `deal_city_type` WRITE;
/*!40000 ALTER TABLE `deal_city_type` DISABLE KEYS */;
INSERT INTO `deal_city_type` VALUES (1,4,'AFG','Kabul',1),(2,4,'AFG','Kandahar',1),(3,4,'AFG','Herat',1),(4,4,'AFG','Mazar-i-Sharif',1),(5,4,'AFG','Kunduz',1),(6,4,'AFG','Jalalabad',1),(7,4,'AFG','Taloqan',1),(8,4,'AFG','Puli Khumri',1),(9,4,'AFG','Charikar',1),(10,4,'AFG','Lashkargah',1),(11,4,'AFG','Sheberghan',1),(12,4,'AFG','Ghazni',1),(13,4,'AFG','Khost',1),(14,4,'AFG','Sar-e Pol',1),(15,4,'AFG','Chaghcharan',1),(16,4,'AFG','Mihtarlam',1),(17,4,'AFG','Farah',1),(18,4,'AFG','Puli Alam',1),(19,32,'ARG','Buenos Aires',1),(20,32,'ARG','Cordoba',1);
/*!40000 ALTER TABLE `deal_city_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_device_language_type`
-- Device Language for Targeting Combination 
--

DROP TABLE IF EXISTS `deal_device_language_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_device_language_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_code` varchar(45) DEFAULT '',
  `language_name` varchar(45) DEFAULT '',
  `is_display` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_device_language_type`
-- Device Language for Targeting Combination 
--

LOCK TABLES `deal_device_language_type` WRITE;
/*!40000 ALTER TABLE `deal_device_language_type` DISABLE KEYS */;
INSERT INTO `deal_device_language_type` VALUES (1,'ar','Arabic',1),(2,'bn','Bengali',1),(3,'bg','Bulgarian',1),(4,'ca','Catalan',1),(5,'zh','Chinese',1),(6,'hr','Croatian',1),(7,'cs','Czech',1),(8,'da','Danish',1),(9,'nl','Dutch',1),(10,'en','English',1),(11,'et','Estonia',1),(12,'fi','Finnish',1),(13,'fr','French',1),(14,'de','German',1),(15,'el','Greek',1),(16,'gu','Gujarati',1),(17,'he','Hebrew',1),(18,'hi','Hindi',1),(19,'hu','Hungarian',1),(20,'is','Icelandic',1),(21,'id','Indonesian',1),(22,'it','Italian',1),(23,'ja','Japanese',1),(24,'kn','Kannada',1),(25,'ko','Korean',1),(26,'lv','Latvian',1),(27,'lv','Lithuanian',1),(28,'ms','Malay',1),(29,'ml','Malayalam',1),(30,'mr','Marathi',1),(31,'no','Norwegian',1),(32,'fa','Persian',1),(33,'pl','Polish',1),(34,'pt','Portuguese',1),(35,'pa','Punjabi',1),(36,'ro','Romanian',1),(37,'ru','Russian',1),(38,'sr','Serbian',1),(39,'sk','Slovak',1),(40,'sl','Slovenian',1),(41,'es','Spanish',1),(42,'sv','Swedish',1),(43,'ta','Tamil',1),(44,'te','Telugu',1),(45,'th','Thai',1),(46,'tr','Turkish',1),(47,'uk','Ukrainian',1),(48,'ur','Urdu',1),(49,'vi','Vietnamese',1);
/*!40000 ALTER TABLE `deal_device_language_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_device_manufacturer_type`
-- Device Manufacturer for Targeting Combination 
--

DROP TABLE IF EXISTS `deal_device_manufacturer_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_device_manufacturer_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `os_number` int(11) DEFAULT NULL,
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
-- Device OS Version for Targeting Combination 
--

DROP TABLE IF EXISTS `deal_os_version_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_os_version_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `os_number` varchar(45) DEFAULT NULL,
  `os_version` varchar(45) DEFAULT NULL,
  `os_version_name` varchar(45) DEFAULT NULL,
  `is_display` varchar(45) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_os_version_type`
-- Device OS Version for Targeting Combination 
--

LOCK TABLES `deal_os_version_type` WRITE;
/*!40000 ALTER TABLE `deal_os_version_type` DISABLE KEYS */;
INSERT INTO `deal_os_version_type` VALUES (1,'1','11','iOS 11','1'),(2,'1','12','iOS 12','1'),(3,'1','13','iOS 13','1'),(4,'1','14','iOS 14','1'),(5,'1','15','iOS 15','1'),(6,'2','8','Android 8','1'),(7,'2','9','Android 9','1'),(8,'2','10','Android 10','1'),(9,'2','11','Android 11','1'),(10,'2','12','Android 12','1');
/*!40000 ALTER TABLE `deal_os_version_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dsp_budget_cap`
--

DROP TABLE IF EXISTS `dsp_budget_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dsp_budget_cap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dspid` varchar(45) NOT NULL DEFAULT '0',
  `posid` varchar(45) DEFAULT '0',
  `total_budget` text,
  `delivery_impression` varchar(45) DEFAULT NULL,
  `dealkeyid` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160046 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dsp_budget_cap`
--

LOCK TABLES `dsp_budget_cap` WRITE;
/*!40000 ALTER TABLE `dsp_budget_cap` DISABLE KEYS */;
INSERT INTO `dsp_budget_cap` VALUES (1,'0','11237','','2','0'),(2,'11238','265','123','1','0'),(3,'11238','265','123','1','0'),(4,'11239','625','3121','2','0'),(5,'11239','625','3121','2','0'),(6,'11240','476','test','2','0'),(11246,'3122','265001','0.3','2','0'),(11247,'3122','265001',NULL,NULL,'0'),(11251,'3123','265002','10','1','0'),(160001,'3123','265002','test','2','0'),(160002,'3123','265002','88','1','0'),(160003,'190001','642001','5','1','0'),(160004,'190001','642001','5','1','0'),(160005,'190001','265003','10','1','0'),(160006,'190001','265003','0.3','1','0'),(160007,'190001','265001','0.3','1','0'),(160009,'3123','265001','0.3','2','0'),(160014,'190001','265001','0.77','1','160007'),(160015,'190001','265001','0.7','1','160007'),(160017,'190001','524001','5','2','160004'),(160020,'190003','642001','2','2','160010'),(160021,'190004','642001','5','2','160011'),(160023,'190006','642001','5','2','160019'),(160024,'190007','10601','5','2','160020'),(160025,'190010',NULL,'300','1','160029'),(160027,'190001',NULL,'5','1','160006'),(160028,'190001','265001','10','1','160003'),(160029,'190016','692001','2000','1','160038'),(160030,'190013','118003','10','2','160035'),(160031,'190015','118001','10','2','160036'),(160032,'190014','118002','10','2','160037'),(160033,'190017','642001','2','1','160039'),(160034,'190017','118003','2','2','160040'),(160035,'190017','118003','2','1','160041'),(160036,'190018','118003','2','2','160042'),(160037,'190019','118003','2','1','160043'),(160039,'190020','118003','1000','2','160044'),(160040,'190021','118003','2','1','160045'),(160041,'190023','642001','5','1','160046'),(160042,'190024','642001','5','1','160047'),(160043,'190011','710001','100','1','160030'),(160045,'190012',NULL,NULL,'2','160031');
/*!40000 ALTER TABLE `dsp_budget_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_deals`
--

DROP TABLE IF EXISTS `tab_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_deals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dealid` varchar(55) DEFAULT NULL,
  `dspid` int(11) DEFAULT '0',
  `advertiser` text,
  `account_manager` varchar(55) DEFAULT NULL,
  `deal_name` text,
  `deal_type` varchar(50) DEFAULT '',
  `clearing_price_type` varchar(45) DEFAULT '',
  `bidprice_weight` varchar(50) DEFAULT '1.0',
  `skan_id` text,
  `idfa_consent_filter` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bid_floor` varchar(50) DEFAULT '0.1',
  `bid_floor_currency` varchar(50) DEFAULT '',
  `date_radio` varchar(45) DEFAULT '',
  `start_date` varchar(45) DEFAULT '',
  `end_date` varchar(45) DEFAULT '',
  `inventory` varchar(50) DEFAULT '',
  `include` varchar(120) DEFAULT 'Any',
  `targeting` json DEFAULT NULL,
  `style` varchar(45) DEFAULT '',
  `status` int(11) DEFAULT '0',
  `custom_targeting` json DEFAULT NULL,
  `custom_targeting_ui` json DEFAULT NULL,
  `daily_freq_cap` varchar(45) DEFAULT '',
  `buyer_seats` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160053 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-16 15:28:22
