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
635c2b14-9565-11eb-ae42-00163e06a347:1-27568418';

--
-- Table structure for table `tab_cn_code`
-- country table
--

DROP TABLE IF EXISTS `tab_cn_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_cn_code` (
  `country_id` smallint(6) NOT NULL AUTO_INCREMENT,
  `code` varchar(16) NOT NULL DEFAULT '',
  `three_code` char(3) NOT NULL DEFAULT '',
  `name_chinese` varchar(128) NOT NULL DEFAULT '',
  `name_english` varchar(128) NOT NULL DEFAULT '',
  `is_display` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_cn_code`
--

LOCK TABLES `tab_cn_code` WRITE;
/*!40000 ALTER TABLE `tab_cn_code` DISABLE KEYS */;
INSERT INTO `tab_cn_code` VALUES (4,'AF','AFG','','Afghanistan',1),(10,'AQ','ATA','','Antarctica',1),(32,'AR','ARG','','Argentina',1),(36,'AU','AUS','','Australia',1),(40,'AT','AUT','','Austria',1),(64,'BT','BTN','','Bhutan',1),(76,'BR','BRA','','Brazil',1),(104,'MM','MMR','','Myanmar',1),(112,'BY','BLR','','Belarus',1),(116,'KH','KHM','','Cambodia',1),(124,'CA','CAN','','Canada',1),(140,'CF','CAF','','Central African Republic',1),(152,'CL','CHL','','Chile',1),(156,'CN','CHN','','China',1),(158,'TW','TWN','','Taiwan',1),(170,'CO','COL','','Colombia',1),(191,'HR','HRV','','Croatia',1),(192,'CU','CUB','','Cuba',1),(203,'CZ','CZE','','Czech Republic',1),(208,'DK','DNK','','Denmark',1),(246,'FI','FIN','','Finland',1),(250,'FR','FRA','','France',1),(276,'DE','DEU','','Germany',1),(300,'GR','GRC','','Greece',1),(332,'HT','HTI','','Haiti',1),(340,'HN','HND','','Honduras',1),(344,'HK','HKG','','Hong Kong',1),(348,'HU','HUN','','Hungary',1),(352,'IS','ISL','','Iceland',1),(356,'IN','IND','','India',1),(360,'ID','IDN','','Indonesia',1),(364,'IR','IRN','','Iran',1),(368,'IQ','IRQ','','Iraq',1),(372,'IE','IRL','','Ireland',1),(376,'IL','ISR','','Israel',1),(380,'IT','ITA','','Italy',1),(392,'JP','JPN','','Japan',1),(400,'JO','JOR','','Jordan',1),(408,'KP','PRK','','North Korea',1),(410,'KR','KOR','','South Korea',1),(414,'KW','KWT','','Kuwait',1),(418,'LA','LAO','','Laos',1),(422,'LB','LBN','','Lebanon',1),(434,'LY','LBY','','Libya',1),(440,'LT','LTU','','Lithuania',1),(446,'MO','MAC','','Macao',1),(458,'MY','MYS','','Malaysia',1),(462,'MV','MDV','','Maldives',1),(484,'MX','MEX','','Mexico',1),(499,'ME','MNE','','Montenegro',1),(504,'MA','MAR','','Morocco',1),(528,'NL','NLD','','Netherlands',1),(554,'NZ','NZL','','New Zealand',1),(578,'NO','NOR','','Norway',1),(586,'PK','PAK','','Pakistan',1),(604,'PE','PER','','Peru',1),(608,'PH','PHL','','The Philippines',1),(616,'PL','POL','','Poland',1),(620,'PT','PRT','','Portugal',1),(643,'RU','RUS','','Russian',1),(682,'SA','SAU','','Saudi Arabia',1),(702,'SG','SGP','','Singapore',1),(704,'VN','VNM','','Vietnam',1),(710,'ZA','ZAF','','South Africa',1),(724,'ES','ESP','','Spain',1),(752,'SE','SWE','','Sweden',1),(756,'CH','CHE','','Switzerland',1),(764,'TH','THA','','Thailand',1),(784,'AE','ARE','','United Arab Emirates',1),(792,'TR','TUR','','Turkey',1),(804,'UA','UKR','','Ukraine',1),(818,'EG','EGY','','Egypt',1),(826,'GB','GBR','','England',1),(840,'US','USA','','America',1),(858,'UY','URY','','Uruguay',1),(860,'UZ','UZB','','Uzbekistan',1),(862,'VE','VEN','','Venezuela',1),(863,'KE','KEN','','Kenya',1),(864,'CO','CON','','Congo',1),(865,'TU','TUN','','Tunisia',1),(866,'PA','PAL','','Palestinian Authority (PSE)',1),(867,'QA','QAT','','Qatar',1),(868,'GT','GTM','','Guatemala',1),(869,'SV','SLV','','Salvador',1),(870,'NG','NGA','','Nigeria',1),(871,'BG','BGD','','Bangladesh',1),(872,'KZ','KAZ','','Kazakstan',1);
/*!40000 ALTER TABLE `tab_cn_code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_online_allowance`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_allowance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_allowance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `style` varchar(50) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `bid_price` decimal(11,2) DEFAULT NULL,
  `daily_limit` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_black_pkg`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_black_pkg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_black_pkg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `seller_id` text,
  `bundle` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2659 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_black_pkg_ivt`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_black_pkg_ivt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_black_pkg_ivt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `bundle` text,
  `seller_id` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_floor`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_floor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `style` varchar(50) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `floor` varchar(20) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_floor_ratio`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_floor_ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_floor_ratio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bundle` text,
  `floor_ratio` int(11) DEFAULT '0',
  `posid` int(11) DEFAULT '0',
  `apply_to_all` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_mid`
-- Table for Manage SSP -> Media List page
--

DROP TABLE IF EXISTS `tab_online_mid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_mid` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `pm` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `api` int(11) DEFAULT '0',
  `status` int(11) DEFAULT '0',
  `pubid` int(11) DEFAULT '0',
  `bundle` varchar(500) DEFAULT '',
  `store_url` varchar(500) DEFAULT '',
  `gid` int(11) DEFAULT '0',
  `type` int(11) DEFAULT '0',
  `os` int(11) DEFAULT '0',
  `crid` text,
  `gzip` int(11) DEFAULT '0',
  `app_name` varchar(50) NOT NULL DEFAULT '',
  `app_domain` varchar(255) NOT NULL DEFAULT '',
  `offline_traffic` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '0 no 1 yes',
  `block_domain` text,
  `block_adm_domain` text,
  `block_ad_without_adomain` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `block_ad_without_crid` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `iab_cat` varchar(255) DEFAULT '',
  `level` int(11) DEFAULT '1',
  `company_type` int(11) DEFAULT '0',
  `burl_field` int(11) NOT NULL DEFAULT '0',
  `app_type` varchar(45) DEFAULT '0',
  `block_ad_without_category` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `block_category` text,
  PRIMARY KEY (`mid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=721 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_pos`
-- Table for Manage SSP -> Media PosID page
--

DROP TABLE IF EXISTS `tab_online_pos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_pos` (
  `posid` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `tmax` int(11) DEFAULT '0',
  `os` int(11) DEFAULT '0',
  `style` varchar(50) DEFAULT '',
  `ad_show` int(11) DEFAULT '0',
  `white_dsp` text,
  `white_pkg` text,
  `black_pkg` text,
  `status` int(11) DEFAULT '0',
  `markup` int(11) DEFAULT '0',
  `fixbid` float DEFAULT '0',
  `endpoint` varchar(200) DEFAULT '',
  `device_type` varchar(50) DEFAULT '',
  `dsp_black` text,
  `pub_type` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '1 pub 2 ssp',
  `tactical_filter` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '1 启用智能过滤 0 不启用智能过滤',
  `instl` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '1 全屏 0 非全屏',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ivt_strategy` int(10) DEFAULT '0',
  `black_pkg_ivt` longtext,
  `bundle` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `store_url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '',
  `app_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `app_domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `offline_traffic` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 no 1 yes',
  `white_pkg_ivt` longtext,
  `ivt_detection` int(11) DEFAULT '1',
  `sampling_ratio` int(11) DEFAULT '100',
  `prebid_whiteops` int(11) DEFAULT '1',
  `postbid_protected_media` int(11) DEFAULT '1',
  `postbid_protected_media_sampling_ratio` int(11) DEFAULT '100',
  `postbid_whiteops` int(11) DEFAULT '1',
  `postbid_whiteops_sampling_ratio` int(11) DEFAULT '100',
  `postbid_pixalate` int(11) DEFAULT '1',
  `postbid_pixalate_sampling_ratio` int(11) DEFAULT '100',
  `sdk_funnel_analysis` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `test_mode` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `rewared_video` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `bid_floor_replacement` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `geoedge` int(11) DEFAULT '1',
  `geoedge_sampling_ratio` int(11) DEFAULT '100',
  `geoedge_policy_key` varchar(255) NOT NULL DEFAULT '',
  `rate` tinyint(11) unsigned NOT NULL DEFAULT '0',
  `maxbitrate` varchar(45) DEFAULT NULL,
  `protocol` varchar(45) DEFAULT NULL,
  `min_ad_duration` varchar(45) DEFAULT NULL,
  `max_ad_duration` varchar(45) DEFAULT NULL,
  `assets` varchar(45) DEFAULT '',
  `skippable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skip_offset` varchar(45) DEFAULT NULL,
  `refresh_rate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `refresh_rate_value` int(11) DEFAULT '8',
  `multiple_inventory_sizes` varchar(45) DEFAULT '',
  `multiple_inventory_sizes_enable` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `boxingallowed` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`posid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=720002 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_qps`
-- subtable
--

DROP TABLE IF EXISTS `tab_online_qps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_qps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `style` varchar(50) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `qps` int(11) DEFAULT '0',
  `os` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2535 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_online_style`
-- AD ShowType table
--

DROP TABLE IF EXISTS `tab_online_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_online_style` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `style_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50036 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tab_online_style`
-- KKBOX is different from other saas
--

LOCK TABLES `tab_online_style` WRITE;
/*!40000 ALTER TABLE `tab_online_style` DISABLE KEYS */;
INSERT INTO `tab_online_style` VALUES (101,1200,628,1,'native_1200_628'),(201,300,250,2,'banner_300_250'),(202,320,50,2,'banner_320_50'),(203,320,480,2,'banner_320_480'),(301,1280,720,3,'video_1280_720'),(302,1920,1080,3,'video_1920_1080'),(303,720,1280,3,'video_720_1280'),(304,1080,1920,3,'video_1080_1920'),(305,540,960,3,'video_540_960'),(306,960,540,3,'video_960_540'),(307,768,1024,3,'video_768_1024'),(308,1024,768,3,'video_1024_768'),(309,320,480,3,'video_320_480'),(50000,600,314,1,'native_cm_bigcard'),(50018,480,855,1,'native_cm_applock_background'),(50019,728,90,2,'banner_728_90'),(50020,768,1024,2,'banner_768_1024'),(50021,1024,728,3,'video_1024_728'),(50022,1440,1938,1,'native_1440_1938'),(50023,1200,627,1,'native_1200_627'),(50024,960,640,3,'video_960_640'),(50025,300,250,3,'video_300_250'),(50031,480,320,1,'banner_480_320'),(50032,720,1280,1,'banner_720_1280'),(50033,720,1560,1,'banner_720_1560'),(50034,1080,1290,1,'banner_1080_1290'),(50035,1125,2346,1,'banner_1125_2346');
/*!40000 ALTER TABLE `tab_online_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_pos_cap`
-- subtable
--

DROP TABLE IF EXISTS `tab_pos_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_pos_cap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `mid` varchar(10) DEFAULT '',
  `style` int(11) DEFAULT '0',
  `cap` int(11) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pos_extra_info_setting`
-- subtable
--

DROP TABLE IF EXISTS `tab_pos_extra_info_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_pos_extra_info_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posid` int(11) DEFAULT '0',
  `key` varchar(50) DEFAULT '',
  `value` varchar(50) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_ssp_inbound_rcpm`
-- Table for SSP/Direct Pub Strategy page
--

DROP TABLE IF EXISTS `tab_ssp_inbound_rcpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_ssp_inbound_rcpm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `posid` text NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `srcpm` varchar(20) NOT NULL,
  `ercpm` varchar(20) NOT NULL,
  `filter` int(10) unsigned NOT NULL,
  `gid` int(10) unsigned NOT NULL,
  `mid` text,s
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Table structure for table `tab_ssp_auto_block`
-- Table for "SSP Strategy" page
--

DROP TABLE IF EXISTS `tab_ssp_auto_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_ssp_auto_block` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `posid` text NOT NULL,
  `filter` int unsigned NOT NULL,
  `gid` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
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

-- Dump completed on 2022-12-25 21:20:27
