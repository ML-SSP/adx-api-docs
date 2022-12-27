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
-- Table structure for table `dsp_bundle_cap`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `dsp_bundle_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dsp_bundle_cap` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `dspid` int unsigned NOT NULL DEFAULT '0',
  `country` varchar(1000) NOT NULL DEFAULT '',
  `bundle` text,
  `cap` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_adset`
-- Table for "Dsp Target" page
--

DROP TABLE IF EXISTS `tab_dsp_adset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_adset` (
  `adsetid` int NOT NULL AUTO_INCREMENT,
  `dspid` int DEFAULT '0',
  `protocol` int DEFAULT '0',
  `endpoint` varchar(500) DEFAULT NULL,
  `ext` text,
  `style` varchar(50) DEFAULT '',
  `os` varchar(10) DEFAULT '',
  `pkg_white` mediumtext,
  `pkg_black` mediumtext,
  `status` int DEFAULT '0',
  `pos_black` text,
  `pos_white` text,
  `size` varchar(1000) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `video_type` varchar(50) DEFAULT '',
  `pkg_black_operation` mediumtext,
  `skan_id` text,
  `idfa_consent_filter` tinyint unsigned NOT NULL DEFAULT '0',
  `bidprice_weight` varchar(50) NOT NULL DEFAULT '1.0',
  PRIMARY KEY (`adsetid`)
) ENGINE=InnoDB AUTO_INCREMENT=11512 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_adset_pkgblack`
-- SubTable for "Dsp Target" page
--

DROP TABLE IF EXISTS `tab_dsp_adset_pkgblack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_adset_pkgblack` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int unsigned NOT NULL DEFAULT '0',
  `adsetid` int unsigned NOT NULL DEFAULT '0',
  `mid` varchar(500) NOT NULL DEFAULT '',
  `bundle` longtext,
  `type` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 for ivt 1 for operation',
  `updated` int DEFAULT NULL,
  `style` tinyint DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=284894 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_adset_pkgwhite`
-- Subtable for "Dsp Target" page
--

DROP TABLE IF EXISTS `tab_dsp_adset_pkgwhite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_adset_pkgwhite` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int unsigned NOT NULL DEFAULT '0',
  `adsetid` int unsigned NOT NULL DEFAULT '0',
  `mid` varchar(500) NOT NULL DEFAULT '',
  `bundle` text NOT NULL,
  `style` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=962 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_appid_list`
-- Table for "Dsp AppID" page
--

DROP TABLE IF EXISTS `tab_dsp_appid_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_appid_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) NOT NULL DEFAULT '',
  `bundle` text,
  `dspid` varchar(1000) NOT NULL DEFAULT '',
  `gid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_cap`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_cap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int DEFAULT '0',
  `mid` varchar(10) DEFAULT '',
  `style` int DEFAULT '0',
  `cap` int DEFAULT '0',
  `hourly_cap` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否开启匀速控制 0 不用均匀 1 均匀的',
  `video_type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_floor_ratio`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_floor_ratio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_floor_ratio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int DEFAULT '0',
  `style` varchar(50) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `floor_ratio` int DEFAULT '0',
  `mid` varchar(500) DEFAULT '',
  `bundle` text,
  `video_type` tinyint unsigned NOT NULL DEFAULT '0',
  `daily_allowance_limit` varchar(50) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1730 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_info`
-- Table for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_info` (
  `dspid` int NOT NULL AUTO_INCREMENT,
  `customer` int DEFAULT '0',
  `name` varchar(50) DEFAULT '',
  `api_type` int DEFAULT '0',
  `auc_type` int DEFAULT '0',
  `win_type` int DEFAULT '0',
  `status` int DEFAULT '0',
  `gid` int DEFAULT '0',
  `tmax` int DEFAULT '0',
  `black_pos` text,
  `bundle_markup` text,
  `gzip` int DEFAULT '0',
  `cap` int DEFAULT '0',
  `schain` int DEFAULT '0',
  `dsp_level` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '1 A 2 B 3 C 4 D 5 E',
  `enable_userate` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '是否开启使用率控制',
  `min_impression` int unsigned NOT NULL DEFAULT '0' COMMENT '最少展现多少的时候再控制',
  `use_rate` int unsigned NOT NULL DEFAULT '0' COMMENT '使用阀值',
  `black_offline_bundle` int DEFAULT '0',
  `increase_markup_to_high_ivt_bundle` int unsigned NOT NULL DEFAULT '0',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `impression_mode` int DEFAULT '0',
  `bidprice_weight` varchar(45) NOT NULL DEFAULT '1.0',
  `burl_type` int DEFAULT '0',
  `auto_adjust_dsp_floor_ratio` int unsigned NOT NULL DEFAULT '0',
  `idfa_consent_filter` tinyint unsigned NOT NULL DEFAULT '0',
  `endpoint` varchar(500) DEFAULT NULL,
  `ext` text,
  `whiteops_prebid_block` int DEFAULT '0',
  PRIMARY KEY (`dspid`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=3414 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_outbound_rcpm`
-- Table for "Dsp Strategy" page
--

DROP TABLE IF EXISTS `tab_dsp_outbound_rcpm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_outbound_rcpm` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `dspid` text,
  `type` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `sbidrate` varchar(20) NOT NULL,
  `ebidrate` varchar(20) NOT NULL,
  `srcpm` varchar(20) NOT NULL,
  `ercpm` varchar(20) NOT NULL,
  `filter` int unsigned NOT NULL,
  `gid` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_price`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_price` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int DEFAULT '0',
  `country` varchar(1000) DEFAULT '',
  `min_price` varchar(20) DEFAULT '',
  `max_price` varchar(20) DEFAULT '',
  `style` varchar(20) DEFAULT '',
  `video_type` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_qps`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_qps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_qps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `dspid` int DEFAULT '0',
  `os` varchar(20) DEFAULT '',
  `style` varchar(50) DEFAULT '',
  `country` varchar(1000) DEFAULT '',
  `qps` int DEFAULT '0',
  `video_type` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2471 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_dsp_tagid_list`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_dsp_tagid_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_dsp_tagid_list` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `bundle` text,
  `os` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `style` tinyint unsigned NOT NULL DEFAULT '0',
  `width` int unsigned NOT NULL DEFAULT '0',
  `height` int unsigned NOT NULL DEFAULT '0',
  `video_type` char(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `dspid` varchar(1000) DEFAULT '',
  `gid` int unsigned NOT NULL DEFAULT '0',
  `appid` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '',
  `banner_type` char(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18998 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pos_cap`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_pos_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_pos_cap` (
  `id` int NOT NULL AUTO_INCREMENT,
  `posid` int DEFAULT '0',
  `mid` varchar(10) DEFAULT '',
  `style` int DEFAULT '0',
  `cap` int DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=355 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_pos_extra_info_setting`
-- Subtable for "Dsp List" page
--

DROP TABLE IF EXISTS `tab_pos_extra_info_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_pos_extra_info_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `posid` int DEFAULT '0',
  `key` varchar(50) DEFAULT '',
  `value` varchar(50) DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-28  0:19:46
