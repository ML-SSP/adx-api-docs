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
635c2b14-9565-11eb-ae42-00163e06a347:1-27518232';

--
-- Table structure for table `report`
-- Manage Report 頁面
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `saas_id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `company` int(11) NOT NULL DEFAULT '0',
  `url` varchar(1000) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `company` (`company`),
  KEY `order` (`order`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saas`
-- SAAS Settings 頁面
--

DROP TABLE IF EXISTS `saas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `qps_media` int(11) NOT NULL,
  `qps_dsp` int(11) NOT NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inbound_valid_log` int(11) NOT NULL DEFAULT '1',
  `inbound_invalid_log` int(11) NOT NULL DEFAULT '1',
  `sampling_log` int(11) NOT NULL DEFAULT '2',
  `click_log` int(11) NOT NULL DEFAULT '1',
  `auction_log` int(11) NOT NULL DEFAULT '2',
  `request_related_report` int(11) NOT NULL DEFAULT '2',
  `billing_report` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `saas_strategy`
-- SAAS Strategy 頁面
--

DROP TABLE IF EXISTS `saas_strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saas_strategy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `saas_id` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'key',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saas_strategy`
--

LOCK TABLES `saas_strategy` WRITE;
/*!40000 ALTER TABLE `saas_strategy` DISABLE KEYS */;
INSERT INTO `saas_strategy` VALUES (1,3,'str_1','1','Low income filtered by thousand times qps (rcpm)'),(3,3,'str_3','1','The DSP filters low-income people by a thousandfold QPS (RCPM)'),(4,3,'str_4','1','RTB traffic: Abnormal CTR'),(5,3,'str_5','1','RTB traffic: Bad IP address has been filtered by Pixalate(Pre-bid)'),(6,3,'str_6','1','Requests are filtered due to the setting of global domain filtering'),(7,3,'str_8','1','RTB traffic: High risk app has been filtered by Pixalate(Pre-bid)'),(8,9,'str_1','0','Low income filtered by thousand times qps (rcpm)'),(10,9,'str_3','0','The DSP filters low-income people by a thousandfold QPS (RCPM)'),(11,9,'str_4','0','RTB traffic: Abnormal CTR'),(12,9,'str_5','0','RTB traffic: Bad IP address has been filtered by Pixalate(Pre-bid)'),(13,9,'str_6','0','Requests are filtered due to the setting of global domain filtering'),(14,9,'str_8','0','RTB traffic: High risk app has been filtered by Pixalate(Pre-bid)'),(15,100,'str_1','0','Low income filtered by thousand times qps (rcpm)'),(16,100,'str_3','0','The DSP filters low-income people by a thousandfold QPS (RCPM)'),(17,100,'str_4','0','RTB traffic: Abnormal CTR'),(18,100,'str_5','0','RTB traffic: Bad IP address has been filtered by Third Party'),(19,100,'str_6','0','Requests are filtered due to the setting of global domain filtering'),(20,100,'str_7','0','RTB traffic: High risk app has been filtered by Third Party'),(21,1,'str_1','0','Low income filtered by thousand times qps (rcpm)'),(22,1,'str_3','0','The DSP filters low-income people by a thousandfold QPS (RCPM)'),(23,1,'str_4','0','RTB traffic: Abnormal CTR'),(24,1,'str_5','0','RTB traffic: Bad IP address has been filtered by Third Party'),(25,1,'str_6','0','Requests are filtered due to the setting of global domain filtering'),(26,1,'str_7','0','RTB traffic: High risk app has been filtered by Third Party'),(28,1,'str_8','1','RTB traffic: traffic has been monitored by Third Party(Post-bid)'),(30,10,'str_1','1','Low income filtered by thousand times qps (rcpm)'),(31,10,'str_3','1','The DSP filters low-income people by a thousandfold QPS (RCPM)'),(32,10,'str_4','1','RTB traffic: Abnormal CTR'),(33,10,'str_16','1','RTB traffic: Bad IP address has been filtered by Medialink-X SaaS Service(Pre-bid)'),(34,10,'str_6','0','Requests are filtered due to the setting of global domain filtering'),(35,10,'str_17','1','RTB traffic: High risk app has been filtered by Medialink-X SaaS Service(Pre-bid)'),(36,3,'str_10','1','RTB traffic: Bad device ID has been filtered by Pixalate(Pre-bid)'),(37,3,'str_14','1','RTB traffic: traffic has been monitored by Pixalate(Post-bid)'),(38,9,'str_10','0','RTB traffic: Bad device ID has been filtered by Pixalate(Pre-bid)'),(39,9,'str_14','0','RTB traffic: traffic has been monitored by Pixalate(Post-bid)'),(40,10,'str_18','1','RTB traffic: Bad device ID has been filtered by Medialink-X SaaS Service(Pre-bid)'),(41,3,'str_19','1','RTB traffic: AD creative has been monitored by Geoedge'),(42,10,'str_10','1','RTB traffic: Bad device ID has been filtered by Pixalate(Pre-bid)'),(43,10,'str_14','ON','RTB traffic: traffic has been monitored by Pixalate(Post-bid)'),(44,10,'str_5','1','RTB traffic: Bad IP address has been filtered by Pixalate(Pre-bid)'),(45,10,'str_8','1','RTB traffic: High risk app has been filtered by Pixalate(Pre-bid)');
/*!40000 ALTER TABLE `saas_strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tab_common_conf`
-- Manage Config 頁面
--

DROP TABLE IF EXISTS `tab_common_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_common_conf` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gid` int(10) unsigned NOT NULL DEFAULT '0',
  `key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'key',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tab_company_info`
-- Manage Company 頁面
--

DROP TABLE IF EXISTS `tab_company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tab_company_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `company` varchar(200) NOT NULL DEFAULT '',
  `bill` varchar(32) NOT NULL DEFAULT '',
  `phone` varchar(32) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `email` varchar(32) NOT NULL DEFAULT '',
  `contact` varchar(100) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `status` int(4) NOT NULL DEFAULT '0',
  `srcsys` varchar(30) NOT NULL DEFAULT '',
  `country` varchar(20) DEFAULT '',
  `gid` int(11) DEFAULT '0',
  `bd_owner` varchar(100) NOT NULL DEFAULT '',
  `am_owner` varchar(100) NOT NULL DEFAULT '',
  `available_inventory` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=1190 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `base_sys_user`
-- Manage User 頁面
-- 有增加欄位
--

DROP TABLE IF EXISTS `base_sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_sys_user` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `createTime` datetime(3) NOT NULL COMMENT '创建时间',
  `updateTime` datetime(3) NOT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL,
  `departmentId` bigint DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `passwordV` int NOT NULL DEFAULT '1',
  `nickName` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `socketId` varchar(255) DEFAULT NULL,
  `gid` int NOT NULL DEFAULT '0',
  `company` int NOT NULL DEFAULT '0',
  `type` varchar(45) NOT NULL DEFAULT '',
  `sub_type` varchar(45) NOT NULL DEFAULT '',
  `ids` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_base_sys_user_deleted_at` (`deleted_at`),
  KEY `idx_base_sys_user_department_id` (`departmentId`),
  KEY `idx_base_sys_user_username` (`username`),
  KEY `idx_base_sys_user_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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

-- Dump completed on 2022-12-18 17:08:50
