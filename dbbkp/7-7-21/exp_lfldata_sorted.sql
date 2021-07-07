-- MySQL dump 10.13  Distrib 8.0.17, for macos10.14 (x86_64)
--
-- Host: localhost    Database: exp
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `lfldata_sorted`
--

DROP TABLE IF EXISTS `lfldata_sorted`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lfldata_sorted` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(45) DEFAULT NULL,
  `n1` int DEFAULT NULL,
  `n2` int DEFAULT NULL,
  `n3` int DEFAULT NULL,
  `n4` int DEFAULT NULL,
  `n5` int DEFAULT NULL,
  `n6` int DEFAULT NULL,
  `n7` int DEFAULT NULL,
  `pot` int DEFAULT NULL,
  `dt` datetime DEFAULT NULL,
  `consecutive` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lfldata_sorted`
--

LOCK TABLES `lfldata_sorted` WRITE;
/*!40000 ALTER TABLE `lfldata_sorted` DISABLE KEYS */;
INSERT INTO `lfldata_sorted` VALUES (1,NULL,7,10,24,29,45,1,0,0,'2021-06-17 00:00:00',1),(2,NULL,3,17,19,21,37,12,0,0,'2021-06-14 00:00:00',1),(3,NULL,6,8,10,24,43,15,0,0,'2021-06-10 00:00:00',1),(4,NULL,5,7,18,24,34,18,0,0,'2021-06-07 00:00:00',1),(5,NULL,11,19,22,29,48,6,0,0,'2021-06-03 00:00:00',1),(6,NULL,2,19,28,31,47,9,0,0,'2021-05-31 00:00:00',1),(7,NULL,5,6,8,40,43,17,0,0,'2021-05-27 00:00:00',2),(8,NULL,3,6,7,36,48,3,0,0,'2021-05-24 00:00:00',2),(9,NULL,7,13,38,43,44,11,0,0,'2021-05-20 00:00:00',2),(10,NULL,18,29,32,40,44,16,0,0,'2021-05-17 00:00:00',1),(11,NULL,3,7,25,31,36,8,0,0,'2021-05-13 00:00:00',1),(12,NULL,4,31,32,42,44,7,0,0,'2021-05-10 00:00:00',2),(13,NULL,5,13,26,32,47,8,0,0,'2021-05-06 00:00:00',1),(14,NULL,7,11,12,18,21,10,0,0,'2021-05-03 00:00:00',2),(15,NULL,1,9,10,18,34,13,0,0,'2021-04-29 00:00:00',2),(16,NULL,8,22,33,37,38,10,0,0,'2021-04-26 00:00:00',2),(17,NULL,20,28,29,35,37,15,0,0,'2021-04-22 00:00:00',2),(18,NULL,13,21,31,32,33,15,0,0,'2021-04-19 00:00:00',2),(19,NULL,3,4,18,31,43,4,0,0,'2021-04-15 00:00:00',2),(20,NULL,1,12,16,26,36,4,0,0,'2021-04-12 00:00:00',1),(21,NULL,17,25,30,37,39,10,0,0,'2021-04-08 00:00:00',1),(22,NULL,2,5,16,26,39,10,0,0,'2021-04-05 00:00:00',1),(23,NULL,5,27,36,42,47,9,0,0,'2021-04-01 00:00:00',1),(24,NULL,9,29,32,42,45,4,0,0,'2021-03-29 00:00:00',1),(25,NULL,3,24,25,37,44,5,0,0,'2021-03-25 00:00:00',2),(26,NULL,3,5,24,31,45,1,0,0,'2021-03-22 00:00:00',1),(27,NULL,2,5,21,28,45,15,0,0,'2021-03-18 00:00:00',1),(28,NULL,5,14,15,27,37,7,0,0,'2021-03-15 00:00:00',2),(29,NULL,15,19,28,30,48,5,0,0,'2021-03-11 00:00:00',1),(30,NULL,3,9,40,41,44,6,0,0,'2021-03-08 00:00:00',2),(31,NULL,2,5,32,35,37,2,0,0,'2021-03-04 00:00:00',1),(32,NULL,5,11,17,26,47,3,0,0,'2021-03-01 00:00:00',1),(33,NULL,16,34,35,38,45,1,0,0,'2021-02-25 00:00:00',2),(34,NULL,2,10,12,43,45,1,0,0,'2021-02-22 00:00:00',1),(35,NULL,10,11,17,27,32,15,0,0,'2021-02-18 00:00:00',2),(36,NULL,1,21,22,34,45,11,0,0,'2021-02-15 00:00:00',2),(37,NULL,7,9,15,31,39,1,0,0,'2021-02-11 00:00:00',1),(38,NULL,2,12,22,24,26,11,0,0,'2021-02-08 00:00:00',1),(39,NULL,3,9,13,24,40,16,0,0,'2021-02-04 00:00:00',1),(40,NULL,15,17,27,30,39,2,0,0,'2021-02-01 00:00:00',1),(41,NULL,2,19,24,26,31,1,0,0,'2021-01-28 00:00:00',1),(42,NULL,1,24,28,34,41,2,0,0,'2021-01-25 00:00:00',1),(43,NULL,11,15,26,34,47,15,0,0,'2021-01-21 00:00:00',1),(44,NULL,2,13,14,19,31,7,0,0,'2021-01-18 00:00:00',2),(45,NULL,3,16,20,21,47,10,0,0,'2021-01-14 00:00:00',2),(46,NULL,1,8,20,37,39,8,0,0,'2021-01-11 00:00:00',1),(47,NULL,3,20,25,28,30,18,0,0,'2021-01-07 00:00:00',1),(48,NULL,2,12,21,26,46,7,0,0,'2021-01-04 00:00:00',1),(49,NULL,11,28,30,39,43,14,0,0,'2020-12-31 00:00:00',1),(50,NULL,6,9,11,15,29,14,0,0,'2020-12-28 00:00:00',1),(51,NULL,2,15,40,44,47,12,0,0,'2020-12-24 00:00:00',1),(52,NULL,3,32,35,38,40,3,0,0,'2020-12-21 00:00:00',1),(53,NULL,1,20,28,38,45,8,0,0,'2020-12-17 00:00:00',1),(54,NULL,7,25,34,37,43,9,0,0,'2020-12-14 00:00:00',1),(55,NULL,1,5,10,11,31,15,0,0,'2020-12-10 00:00:00',2),(56,NULL,3,18,22,26,35,14,0,0,'2020-12-07 00:00:00',1),(57,NULL,11,17,22,25,37,4,0,0,'2020-12-03 00:00:00',1),(58,NULL,11,18,21,36,38,9,0,0,'2020-11-30 00:00:00',1),(59,NULL,11,25,31,41,43,9,0,0,'2020-11-26 00:00:00',1),(60,NULL,13,23,31,37,39,11,0,0,'2020-11-23 00:00:00',1),(61,NULL,5,16,27,35,36,4,0,0,'2020-11-19 00:00:00',2),(62,NULL,3,8,16,38,44,15,0,0,'2020-11-16 00:00:00',1),(63,NULL,14,17,24,33,46,2,0,0,'2020-11-12 00:00:00',1),(64,NULL,22,24,33,42,45,5,0,0,'2020-11-09 00:00:00',1),(65,NULL,2,4,8,17,31,2,0,0,'2020-11-05 00:00:00',1),(66,NULL,7,24,26,33,42,11,0,0,'2020-11-02 00:00:00',1),(67,NULL,2,11,32,44,47,10,0,0,'2020-10-29 00:00:00',1),(68,NULL,9,12,20,30,38,6,0,0,'2020-10-26 00:00:00',1),(69,NULL,11,24,35,37,39,8,0,0,'2020-10-22 00:00:00',1),(70,NULL,11,17,23,34,41,7,0,0,'2020-10-19 00:00:00',1),(71,NULL,4,14,27,44,47,11,0,0,'2020-10-15 00:00:00',1),(72,NULL,2,11,21,39,42,4,0,0,'2020-10-12 00:00:00',1),(73,NULL,28,30,31,42,43,13,0,0,'2020-10-08 00:00:00',2),(74,NULL,7,17,29,35,45,17,0,0,'2020-10-05 00:00:00',1),(75,NULL,5,8,9,25,29,1,0,0,'2020-10-01 00:00:00',2),(76,NULL,9,14,45,46,47,8,0,0,'2020-09-28 00:00:00',2),(77,NULL,17,21,30,40,46,4,0,0,'2020-09-24 00:00:00',1),(78,NULL,7,28,39,41,47,3,0,0,'2020-09-21 00:00:00',1),(79,NULL,5,28,34,41,44,5,0,0,'2020-09-17 00:00:00',1),(80,NULL,2,5,25,45,46,10,0,0,'2020-09-14 00:00:00',2),(81,NULL,4,13,25,28,33,15,0,0,'2020-09-10 00:00:00',1),(82,NULL,4,7,25,30,36,9,0,0,'2020-09-07 00:00:00',1),(83,NULL,1,4,13,26,37,13,0,0,'2020-09-03 00:00:00',1),(84,NULL,3,9,14,18,25,11,0,0,'2020-08-31 00:00:00',1),(85,NULL,7,8,12,21,36,4,0,0,'2020-08-27 00:00:00',2),(86,NULL,18,22,25,31,46,18,0,0,'2020-08-24 00:00:00',1),(87,NULL,9,11,18,39,40,9,0,0,'2020-08-20 00:00:00',2),(88,NULL,5,9,11,17,27,2,0,0,'2020-08-17 00:00:00',1),(89,NULL,9,33,34,36,40,14,0,0,'2020-08-13 00:00:00',2),(90,NULL,4,5,16,19,37,1,0,0,'2020-08-10 00:00:00',2),(91,NULL,14,18,30,43,45,9,0,0,'2020-08-06 00:00:00',1),(92,NULL,4,10,20,32,46,15,0,0,'2020-08-03 00:00:00',1),(93,NULL,14,15,16,39,42,10,0,0,'2020-07-30 00:00:00',3),(94,NULL,6,10,13,17,31,9,0,0,'2020-07-27 00:00:00',1),(95,NULL,5,6,23,33,45,3,0,0,'2020-07-23 00:00:00',2),(96,NULL,11,15,37,40,46,6,0,0,'2020-07-20 00:00:00',1),(97,NULL,5,7,20,43,48,1,0,0,'2020-07-16 00:00:00',1),(98,NULL,9,13,34,36,46,10,0,0,'2020-07-13 00:00:00',1),(99,NULL,10,24,28,33,39,12,0,0,'2020-07-09 00:00:00',1),(100,NULL,2,10,40,47,48,15,0,0,'2020-07-06 00:00:00',2),(101,NULL,2,10,15,36,47,18,0,0,'2020-07-02 00:00:00',1),(102,NULL,6,12,16,19,22,2,0,0,'2020-06-29 00:00:00',1),(103,NULL,1,8,18,27,46,16,0,0,'2020-06-25 00:00:00',1),(104,NULL,13,33,34,43,44,1,0,0,'2020-06-22 00:00:00',2),(105,NULL,1,6,16,27,34,2,0,0,'2020-06-18 00:00:00',1),(106,NULL,25,28,32,47,48,14,0,0,'2020-06-15 00:00:00',2),(107,NULL,9,24,25,29,42,6,0,0,'2020-06-11 00:00:00',2),(108,NULL,26,29,31,34,40,1,0,0,'2020-06-08 00:00:00',1),(109,NULL,9,18,24,26,29,8,0,0,'2020-06-04 00:00:00',1),(110,NULL,5,15,30,40,45,16,0,0,'2020-06-01 00:00:00',1),(111,NULL,1,13,36,41,44,1,0,0,'2020-05-28 00:00:00',1),(112,NULL,4,28,31,32,41,2,0,0,'2020-05-25 00:00:00',2),(113,NULL,8,11,24,30,33,12,0,0,'2020-05-21 00:00:00',1),(114,NULL,10,27,32,43,47,10,0,0,'2020-05-18 00:00:00',1),(115,NULL,20,26,29,34,41,15,0,0,'2020-05-14 00:00:00',1),(116,NULL,1,24,28,36,45,7,0,0,'2020-05-11 00:00:00',1),(117,NULL,3,8,22,23,45,15,0,0,'2020-05-07 00:00:00',2),(118,NULL,15,20,22,37,48,11,0,0,'2020-05-04 00:00:00',1),(119,NULL,3,4,11,23,35,17,0,0,'2020-04-30 00:00:00',2),(120,NULL,1,5,9,28,35,9,0,0,'2020-04-27 00:00:00',1),(121,NULL,5,31,38,41,45,1,0,0,'2020-04-23 00:00:00',1),(122,NULL,1,3,6,34,45,12,0,0,'2020-04-20 00:00:00',1),(123,NULL,6,8,20,28,43,15,0,0,'2020-04-16 00:00:00',1),(124,NULL,1,37,39,43,45,17,0,0,'2020-04-13 00:00:00',1),(125,NULL,6,16,23,27,48,10,0,0,'2020-04-09 00:00:00',1),(126,NULL,2,25,26,30,37,8,0,0,'2020-04-06 00:00:00',2),(127,NULL,2,4,23,31,48,5,0,0,'2020-04-02 00:00:00',1),(128,NULL,2,22,29,36,40,18,0,0,'2020-03-30 00:00:00',1),(129,NULL,7,8,10,30,41,13,0,0,'2020-03-26 00:00:00',2),(130,NULL,1,30,31,46,48,8,0,0,'2020-03-23 00:00:00',2),(131,NULL,13,19,24,38,42,14,0,0,'2020-03-19 00:00:00',1),(132,NULL,3,7,24,26,42,18,0,0,'2020-03-16 00:00:00',1),(133,NULL,1,13,23,47,48,11,0,0,'2020-03-12 00:00:00',2),(134,NULL,3,13,16,45,48,13,0,0,'2020-03-09 00:00:00',1),(135,NULL,6,8,9,36,47,7,0,0,'2020-03-05 00:00:00',2),(136,NULL,6,13,24,32,40,13,0,0,'2020-03-02 00:00:00',1),(137,NULL,19,20,32,36,48,4,0,0,'2020-02-27 00:00:00',2),(138,NULL,23,27,33,44,48,11,0,0,'2020-02-24 00:00:00',1),(139,NULL,24,27,36,41,47,2,0,0,'2020-02-20 00:00:00',1),(140,NULL,4,27,29,34,45,14,0,0,'2020-02-17 00:00:00',1),(141,NULL,5,14,31,40,46,2,0,0,'2020-02-13 00:00:00',1),(142,NULL,3,7,21,25,26,4,0,0,'2020-02-10 00:00:00',2),(143,NULL,18,30,31,33,34,16,0,0,'2020-02-06 00:00:00',2),(144,NULL,2,9,34,36,48,13,0,0,'2020-02-03 00:00:00',1),(145,NULL,4,6,8,18,39,15,0,0,'2020-01-30 00:00:00',1),(146,NULL,1,7,17,22,29,15,0,0,'2020-01-27 00:00:00',1),(147,NULL,11,25,28,33,42,18,0,0,'2020-01-23 00:00:00',1),(148,NULL,4,7,8,18,27,5,0,0,'2020-01-20 00:00:00',2),(149,NULL,10,13,15,30,33,8,0,0,'2020-01-16 00:00:00',1),(150,NULL,7,16,30,32,39,17,0,0,'2020-01-13 00:00:00',1),(151,NULL,1,14,21,28,37,12,0,0,'2020-01-09 00:00:00',1),(152,NULL,5,8,15,33,48,2,0,0,'2020-01-06 00:00:00',1),(153,NULL,1,3,18,22,33,7,0,0,'2020-01-02 00:00:00',1),(154,NULL,4,15,34,40,47,16,0,0,'2019-12-30 00:00:00',1),(155,NULL,16,25,29,30,35,17,0,0,'2019-12-26 00:00:00',2),(156,NULL,1,6,16,21,46,13,0,0,'2019-12-23 00:00:00',1),(157,NULL,6,27,28,40,44,9,0,0,'2019-12-19 00:00:00',2),(158,NULL,11,20,21,38,45,17,0,0,'2019-12-16 00:00:00',2),(159,NULL,16,17,21,28,38,8,0,0,'2019-12-12 00:00:00',2),(160,NULL,1,16,27,39,45,10,0,0,'2019-12-09 00:00:00',1),(161,NULL,3,11,16,19,32,3,0,0,'2019-12-05 00:00:00',1),(162,NULL,10,31,43,44,46,13,0,0,'2019-12-02 00:00:00',2),(163,NULL,3,9,22,24,41,3,0,0,'2019-11-28 00:00:00',1),(164,NULL,1,2,3,31,40,5,0,0,'2019-11-25 00:00:00',3),(165,NULL,15,17,20,23,37,7,0,0,'2019-11-21 00:00:00',1),(166,NULL,15,22,28,35,37,17,0,0,'2019-11-18 00:00:00',1),(167,NULL,9,11,21,22,30,14,0,0,'2019-11-14 00:00:00',2),(168,NULL,3,5,22,23,36,12,0,0,'2019-11-11 00:00:00',2),(169,NULL,1,10,15,18,40,15,0,0,'2019-11-07 00:00:00',1),(170,NULL,28,34,42,44,48,15,0,0,'2019-11-04 00:00:00',1),(171,NULL,2,31,33,41,46,18,0,0,'2019-10-31 00:00:00',1),(172,NULL,11,15,18,23,34,10,0,0,'2019-10-28 00:00:00',1),(173,NULL,5,13,24,38,48,6,0,0,'2019-10-24 00:00:00',1),(174,NULL,9,14,15,35,40,10,0,0,'2019-10-21 00:00:00',2),(175,NULL,8,9,25,27,33,17,0,0,'2019-10-17 00:00:00',2),(176,NULL,12,17,19,35,41,9,0,0,'2019-10-14 00:00:00',1),(177,NULL,27,30,31,34,45,16,0,0,'2019-10-10 00:00:00',2),(178,NULL,13,18,31,38,43,16,0,0,'2019-10-07 00:00:00',1),(179,NULL,1,13,42,43,44,18,0,0,'2019-10-03 00:00:00',2),(180,NULL,3,14,45,47,48,3,0,0,'2019-09-30 00:00:00',2),(181,NULL,4,11,33,43,47,17,0,0,'2019-09-26 00:00:00',1),(182,NULL,4,23,25,43,48,9,0,0,'2019-09-23 00:00:00',1),(183,NULL,13,21,27,28,39,5,0,0,'2019-09-19 00:00:00',2),(184,NULL,11,12,22,31,37,7,0,0,'2019-09-16 00:00:00',2),(185,NULL,2,16,29,43,46,3,0,0,'2019-09-12 00:00:00',1),(186,NULL,8,9,17,22,33,18,0,0,'2019-09-09 00:00:00',2),(187,NULL,5,20,32,38,47,15,0,0,'2019-09-05 00:00:00',1),(188,NULL,6,7,22,25,46,14,0,0,'2019-09-02 00:00:00',2),(189,NULL,11,24,28,33,43,10,0,0,'2019-08-29 00:00:00',1),(190,NULL,9,25,30,37,48,14,0,0,'2019-08-26 00:00:00',1),(191,NULL,7,9,14,22,42,14,0,0,'2019-08-22 00:00:00',1),(192,NULL,8,17,26,28,40,10,0,0,'2019-08-19 00:00:00',1),(193,NULL,2,11,13,19,27,8,0,0,'2019-08-15 00:00:00',1),(194,NULL,2,5,14,27,39,3,0,0,'2019-08-12 00:00:00',1),(195,NULL,25,28,34,45,46,18,0,0,'2019-08-08 00:00:00',2),(196,NULL,20,30,37,42,47,10,0,0,'2019-08-05 00:00:00',1),(197,NULL,1,19,22,27,34,15,0,0,'2019-08-01 00:00:00',1),(198,NULL,5,6,16,19,27,9,0,0,'2019-07-29 00:00:00',2),(199,NULL,26,29,35,37,48,3,0,0,'2019-07-25 00:00:00',1),(200,NULL,5,31,33,41,47,17,0,0,'2019-07-22 00:00:00',1),(201,NULL,8,13,32,34,48,2,0,0,'2019-07-18 00:00:00',1),(202,NULL,3,14,18,19,32,4,0,0,'2019-07-15 00:00:00',2),(203,NULL,5,19,23,26,42,13,0,0,'2019-07-11 00:00:00',1),(204,NULL,11,16,18,23,37,7,0,0,'2019-07-08 00:00:00',1),(205,NULL,2,7,31,43,48,6,0,0,'2019-07-04 00:00:00',1),(206,NULL,11,17,22,27,32,16,0,0,'2019-07-01 00:00:00',1),(207,NULL,14,16,19,23,27,14,0,0,'2019-06-27 00:00:00',1),(208,NULL,3,17,21,23,44,2,0,0,'2019-06-24 00:00:00',1),(209,NULL,13,30,33,39,43,4,0,0,'2019-06-20 00:00:00',1),(210,NULL,3,25,29,40,47,8,0,0,'2019-06-17 00:00:00',1),(211,NULL,4,5,8,10,46,5,0,0,'2019-06-13 00:00:00',2),(212,NULL,26,34,39,40,43,11,0,0,'2019-06-10 00:00:00',2),(213,NULL,4,22,28,29,42,5,0,0,'2019-06-06 00:00:00',2),(214,NULL,3,19,24,30,44,4,0,0,'2019-06-03 00:00:00',1),(215,NULL,7,17,18,19,39,9,0,0,'2019-05-30 00:00:00',2),(216,NULL,15,37,43,46,47,10,0,0,'2019-05-27 00:00:00',2),(217,NULL,12,23,29,35,38,18,0,0,'2019-05-23 00:00:00',1),(218,NULL,26,27,29,36,46,2,0,0,'2019-05-20 00:00:00',2),(219,NULL,9,18,26,28,32,2,0,0,'2019-05-16 00:00:00',1),(220,NULL,6,11,13,28,38,18,0,0,'2019-05-13 00:00:00',1),(221,NULL,5,7,39,44,46,15,0,0,'2019-05-09 00:00:00',1),(222,NULL,13,14,26,36,39,9,0,0,'2019-05-06 00:00:00',2),(223,NULL,5,7,9,25,33,16,0,0,'2019-05-02 00:00:00',1),(224,NULL,7,22,28,39,48,5,0,0,'2019-04-29 00:00:00',1),(225,NULL,8,18,21,44,47,13,0,0,'2019-04-25 00:00:00',1),(226,NULL,1,11,20,30,46,1,0,0,'2019-04-22 00:00:00',1),(227,NULL,2,10,27,28,47,18,0,0,'2019-04-18 00:00:00',2),(228,NULL,4,10,20,24,30,3,0,0,'2019-04-15 00:00:00',1),(229,NULL,13,17,30,35,39,7,0,0,'2019-04-11 00:00:00',1),(230,NULL,17,23,34,44,46,14,0,0,'2019-04-08 00:00:00',1),(231,NULL,3,4,8,16,27,3,0,0,'2019-04-04 00:00:00',2),(232,NULL,9,19,22,33,41,4,0,0,'2019-04-01 00:00:00',1),(233,NULL,21,31,34,40,44,10,0,0,'2019-03-28 00:00:00',1),(234,NULL,7,9,14,29,31,8,0,0,'2019-03-25 00:00:00',1),(235,NULL,9,24,26,27,38,11,0,0,'2019-03-21 00:00:00',2),(236,NULL,3,11,24,27,39,14,0,0,'2019-03-18 00:00:00',1),(237,NULL,11,12,23,24,25,9,0,0,'2019-03-14 00:00:00',2),(238,NULL,19,24,30,44,46,1,0,0,'2019-03-11 00:00:00',1),(239,NULL,5,8,29,44,47,8,0,0,'2019-03-07 00:00:00',1),(240,NULL,4,12,28,35,45,13,0,0,'2019-03-04 00:00:00',1),(241,NULL,4,7,10,29,37,1,0,0,'2019-02-28 00:00:00',1),(242,NULL,24,26,31,45,48,17,0,0,'2019-02-25 00:00:00',1),(243,NULL,15,21,23,27,37,14,0,0,'2019-02-21 00:00:00',1),(244,NULL,1,8,15,29,31,2,0,0,'2019-02-18 00:00:00',1),(245,NULL,24,26,32,38,42,18,0,0,'2019-02-14 00:00:00',1),(246,NULL,3,5,10,32,41,10,0,0,'2019-02-11 00:00:00',1),(247,NULL,18,23,29,34,43,3,0,0,'2019-02-07 00:00:00',1),(248,NULL,14,24,30,37,38,12,0,0,'2019-02-04 00:00:00',2),(249,NULL,4,6,10,29,45,10,0,0,'2019-01-31 00:00:00',1),(250,NULL,6,12,30,32,37,18,0,0,'2019-01-28 00:00:00',1),(251,NULL,21,29,30,32,45,10,0,0,'2019-01-24 00:00:00',2),(252,NULL,2,16,40,43,47,12,0,0,'2019-01-21 00:00:00',1),(253,NULL,9,22,27,38,46,5,0,0,'2019-01-17 00:00:00',1),(254,NULL,11,13,18,29,42,3,0,0,'2019-01-14 00:00:00',1),(255,NULL,9,13,21,34,43,9,0,0,'2019-01-10 00:00:00',1),(256,NULL,18,31,34,35,37,14,0,0,'2019-01-07 00:00:00',2),(257,NULL,2,4,17,30,31,15,0,0,'2019-01-03 00:00:00',2),(258,NULL,4,10,15,19,43,8,0,0,'2018-12-31 00:00:00',1),(259,NULL,9,16,32,39,41,9,0,0,'2018-12-27 00:00:00',1),(260,NULL,2,9,14,27,47,7,0,0,'2018-12-24 00:00:00',1),(261,NULL,8,21,26,40,41,13,0,0,'2018-12-20 00:00:00',2),(262,NULL,4,8,31,32,44,9,0,0,'2018-12-17 00:00:00',2),(263,NULL,15,31,38,39,40,1,0,0,'2018-12-13 00:00:00',2),(264,NULL,16,20,26,28,47,16,0,0,'2018-12-10 00:00:00',1),(265,NULL,5,14,26,28,31,5,0,0,'2018-12-06 00:00:00',1),(266,NULL,7,8,28,37,43,11,0,0,'2018-12-03 00:00:00',2),(267,NULL,1,4,11,36,41,8,0,0,'2018-11-29 00:00:00',1),(268,NULL,10,23,29,37,43,14,0,0,'2018-11-26 00:00:00',1),(269,NULL,8,18,38,40,48,2,0,0,'2018-11-22 00:00:00',1),(270,NULL,1,14,15,43,44,15,0,0,'2018-11-19 00:00:00',2),(271,NULL,14,28,29,38,42,2,0,0,'2018-11-15 00:00:00',2),(272,NULL,2,4,9,15,37,15,0,0,'2018-11-12 00:00:00',1),(273,NULL,10,16,38,39,40,13,0,0,'2018-11-08 00:00:00',2),(274,NULL,8,18,28,34,37,9,0,0,'2018-11-05 00:00:00',1),(275,NULL,4,13,31,37,47,5,0,0,'2018-11-01 00:00:00',1),(276,NULL,14,16,26,29,43,13,0,0,'2018-10-29 00:00:00',1),(277,NULL,12,20,22,27,30,16,0,0,'2018-10-25 00:00:00',1),(278,NULL,7,36,37,41,46,16,0,0,'2018-10-22 00:00:00',2),(279,NULL,4,21,24,30,31,16,0,0,'2018-10-18 00:00:00',2),(280,NULL,1,30,39,41,42,12,0,0,'2018-10-15 00:00:00',2),(281,NULL,10,18,33,38,42,7,0,0,'2018-10-11 00:00:00',1),(282,NULL,5,34,35,36,48,15,0,0,'2018-10-08 00:00:00',2),(283,NULL,1,10,15,28,34,11,0,0,'2018-10-04 00:00:00',1),(284,NULL,8,10,13,16,40,1,0,0,'2018-10-01 00:00:00',1),(285,NULL,5,9,29,30,34,14,0,0,'2018-09-27 00:00:00',2),(286,NULL,9,16,21,27,45,17,0,0,'2018-09-24 00:00:00',1),(287,NULL,8,10,17,36,40,16,0,0,'2018-09-20 00:00:00',1),(288,NULL,3,5,6,19,47,15,0,0,'2018-09-17 00:00:00',2),(289,NULL,6,12,23,29,43,4,0,0,'2018-09-13 00:00:00',1),(290,NULL,1,11,13,23,42,3,0,0,'2018-09-10 00:00:00',1),(291,NULL,14,27,29,36,39,6,0,0,'2018-09-06 00:00:00',1),(292,NULL,27,40,43,44,47,3,0,0,'2018-09-03 00:00:00',2),(293,NULL,16,20,32,40,46,10,0,0,'2018-08-30 00:00:00',1),(294,NULL,6,8,12,19,32,17,0,0,'2018-08-27 00:00:00',1),(295,NULL,6,10,28,34,45,7,0,0,'2018-08-23 00:00:00',1),(296,NULL,4,16,36,44,48,11,0,0,'2018-08-20 00:00:00',1),(297,NULL,8,39,42,43,48,11,0,0,'2018-08-16 00:00:00',2),(298,NULL,1,15,22,27,41,7,0,0,'2018-08-13 00:00:00',1),(299,NULL,13,25,30,33,37,5,0,0,'2018-08-09 00:00:00',1),(300,NULL,5,7,13,15,29,5,0,0,'2018-08-06 00:00:00',1),(301,NULL,9,16,17,20,23,3,0,0,'2018-08-02 00:00:00',2),(302,NULL,8,15,34,36,37,2,0,0,'2018-07-30 00:00:00',2),(303,NULL,9,10,14,20,44,16,0,0,'2018-07-26 00:00:00',2),(304,NULL,1,5,11,28,48,7,0,0,'2018-07-23 00:00:00',1),(305,NULL,14,27,29,36,40,4,0,0,'2018-07-19 00:00:00',1),(306,NULL,14,17,18,21,48,12,0,0,'2018-07-16 00:00:00',2),(307,NULL,4,8,14,20,26,6,0,0,'2018-07-12 00:00:00',1),(308,NULL,18,24,43,46,48,6,0,0,'2018-07-09 00:00:00',1),(309,NULL,12,16,31,32,46,17,0,0,'2018-07-05 00:00:00',2),(310,NULL,13,18,27,39,43,8,0,0,'2018-07-02 00:00:00',1),(311,NULL,3,23,27,47,48,3,0,0,'2018-06-28 00:00:00',2),(312,NULL,3,31,42,45,48,17,0,0,'2018-06-25 00:00:00',1),(313,NULL,3,6,25,39,44,1,0,0,'2018-06-21 00:00:00',1),(314,NULL,1,22,27,31,34,6,0,0,'2018-06-18 00:00:00',1),(315,NULL,7,13,33,37,41,18,0,0,'2018-06-14 00:00:00',1),(316,NULL,4,5,25,36,46,9,0,0,'2018-06-11 00:00:00',2),(317,NULL,2,9,27,38,43,13,0,0,'2018-06-07 00:00:00',1),(318,NULL,1,5,20,33,36,5,0,0,'2018-06-04 00:00:00',1),(319,NULL,16,34,41,42,48,3,0,0,'2018-05-31 00:00:00',2),(320,NULL,4,6,13,16,32,7,0,0,'2018-05-28 00:00:00',1),(321,NULL,18,32,38,39,48,12,0,0,'2018-05-24 00:00:00',2),(322,NULL,4,12,31,45,48,7,0,0,'2018-05-21 00:00:00',1),(323,NULL,6,7,14,21,46,8,0,0,'2018-05-17 00:00:00',2),(324,NULL,11,26,33,36,42,14,0,0,'2018-05-14 00:00:00',1),(325,NULL,17,35,46,47,48,11,0,0,'2018-05-10 00:00:00',2),(326,NULL,2,5,6,15,40,16,0,0,'2018-05-07 00:00:00',2),(327,NULL,5,22,26,29,47,8,0,0,'2018-05-03 00:00:00',1),(328,NULL,1,10,13,16,21,17,0,0,'2018-04-30 00:00:00',1),(329,NULL,20,21,27,29,30,17,0,0,'2018-04-26 00:00:00',2),(330,NULL,7,12,20,27,48,13,0,0,'2018-04-23 00:00:00',1),(331,NULL,16,19,35,43,48,9,0,0,'2018-04-19 00:00:00',1),(332,NULL,9,11,26,33,38,7,0,0,'2018-04-16 00:00:00',1),(333,NULL,5,20,33,39,48,18,0,0,'2018-04-12 00:00:00',1),(334,NULL,9,13,20,39,44,18,0,0,'2018-04-09 00:00:00',1),(335,NULL,2,10,12,46,48,12,0,0,'2018-04-05 00:00:00',1),(336,NULL,2,6,11,32,33,4,0,0,'2018-04-02 00:00:00',2),(337,NULL,16,19,31,44,48,7,0,0,'2018-03-29 00:00:00',1),(338,NULL,3,4,15,23,40,6,0,0,'2018-03-26 00:00:00',2),(339,NULL,9,17,27,29,31,16,0,0,'2018-03-22 00:00:00',1),(340,NULL,17,26,31,32,45,14,0,0,'2018-03-19 00:00:00',2),(341,NULL,10,16,17,40,47,5,0,0,'2018-03-15 00:00:00',2),(342,NULL,1,8,20,44,45,15,0,0,'2018-03-12 00:00:00',2),(343,NULL,20,24,26,34,39,18,0,0,'2018-03-08 00:00:00',1),(344,NULL,5,17,23,35,42,12,0,0,'2018-03-05 00:00:00',1),(345,NULL,7,10,26,44,46,14,0,0,'2018-03-01 00:00:00',1),(346,NULL,6,11,16,28,37,11,0,0,'2018-02-26 00:00:00',1),(347,NULL,6,23,32,35,42,8,0,0,'2018-02-22 00:00:00',1),(348,NULL,2,14,41,44,47,16,0,0,'2018-02-19 00:00:00',1),(349,NULL,1,11,36,38,46,10,0,0,'2018-02-15 00:00:00',1),(350,NULL,7,11,33,37,47,10,0,0,'2018-02-12 00:00:00',1),(351,NULL,4,10,13,32,40,12,0,0,'2018-02-08 00:00:00',1),(352,NULL,1,2,5,32,48,17,0,0,'2018-02-05 00:00:00',2),(353,NULL,3,13,21,24,47,10,0,0,'2018-02-01 00:00:00',1),(354,NULL,1,4,6,30,33,2,0,0,'2018-01-29 00:00:00',1),(355,NULL,8,9,31,43,45,6,0,0,'2018-01-25 00:00:00',2),(356,NULL,5,13,26,30,35,5,0,0,'2018-01-22 00:00:00',1),(357,NULL,5,15,21,28,36,14,0,0,'2018-01-18 00:00:00',1),(358,NULL,11,15,32,33,40,18,0,0,'2018-01-15 00:00:00',2),(359,NULL,8,12,15,16,41,9,0,0,'2018-01-11 00:00:00',2),(360,NULL,1,3,15,22,28,15,0,0,'2018-01-08 00:00:00',1),(361,NULL,11,12,19,28,46,4,0,0,'2018-01-04 00:00:00',2),(362,NULL,15,18,25,31,35,2,0,0,'2018-01-01 00:00:00',1),(363,NULL,4,21,29,44,48,7,0,0,'2017-12-28 00:00:00',1),(364,NULL,8,37,43,44,45,16,0,0,'2017-12-25 00:00:00',2),(365,NULL,10,14,15,18,24,16,0,0,'2017-12-21 00:00:00',2),(366,NULL,13,16,21,29,32,17,0,0,'2017-12-18 00:00:00',1),(367,NULL,17,21,25,30,48,10,0,0,'2017-12-14 00:00:00',1),(368,NULL,16,37,46,47,48,9,0,0,'2017-12-11 00:00:00',2),(369,NULL,7,18,21,41,46,2,0,0,'2017-12-07 00:00:00',1),(370,NULL,1,2,7,31,37,8,0,0,'2017-12-04 00:00:00',2),(371,NULL,2,3,27,44,48,16,0,0,'2017-11-30 00:00:00',2),(372,NULL,12,13,20,37,46,1,0,0,'2017-11-27 00:00:00',2),(373,NULL,10,15,19,43,44,8,0,0,'2017-11-23 00:00:00',2),(374,NULL,7,16,20,24,28,11,0,0,'2017-11-20 00:00:00',1),(375,NULL,14,20,21,22,25,13,0,0,'2017-11-16 00:00:00',2),(376,NULL,20,21,37,39,42,17,0,0,'2017-11-13 00:00:00',2),(377,NULL,10,36,40,41,42,9,0,0,'2017-11-09 00:00:00',2),(378,NULL,22,24,28,44,46,18,0,0,'2017-11-06 00:00:00',1),(379,NULL,2,4,8,38,47,16,0,0,'2017-11-02 00:00:00',1),(380,NULL,2,12,22,40,46,10,0,0,'2017-10-30 00:00:00',1),(381,NULL,2,6,12,39,43,2,0,0,'2017-10-26 00:00:00',1),(382,NULL,4,7,9,10,31,15,0,0,'2017-10-23 00:00:00',2),(383,NULL,9,24,27,32,44,15,0,0,'2017-10-19 00:00:00',1),(384,NULL,1,2,12,17,27,7,0,0,'2017-10-16 00:00:00',2),(385,NULL,5,19,27,35,43,10,0,0,'2017-10-12 00:00:00',1),(386,NULL,19,21,23,27,43,2,0,0,'2017-10-09 00:00:00',1),(387,NULL,12,13,21,26,36,6,0,0,'2017-10-05 00:00:00',2),(388,NULL,24,25,28,37,47,5,0,0,'2017-10-02 00:00:00',2),(389,NULL,9,10,12,16,32,14,0,0,'2017-09-28 00:00:00',2),(390,NULL,14,17,19,30,48,4,0,0,'2017-09-25 00:00:00',1),(391,NULL,7,13,19,24,30,12,0,0,'2017-09-21 00:00:00',1),(392,NULL,4,14,19,30,46,9,0,0,'2017-09-18 00:00:00',1),(393,NULL,4,9,14,17,23,17,0,0,'2017-09-14 00:00:00',1),(394,NULL,11,23,27,30,48,18,0,0,'2017-09-11 00:00:00',1),(395,NULL,19,27,28,29,33,16,0,0,'2017-09-07 00:00:00',2),(396,NULL,1,4,9,15,33,3,0,0,'2017-09-04 00:00:00',1),(397,NULL,19,20,36,42,47,12,0,0,'2017-08-31 00:00:00',2),(398,NULL,1,5,6,47,48,17,0,0,'2017-08-28 00:00:00',2),(399,NULL,1,3,27,40,43,9,0,0,'2017-08-24 00:00:00',1),(400,NULL,5,29,38,42,45,1,0,0,'2017-08-21 00:00:00',1),(401,NULL,12,17,31,36,37,9,0,0,'2017-08-17 00:00:00',2),(402,NULL,4,8,15,17,39,2,0,0,'2017-08-14 00:00:00',1),(403,NULL,19,29,30,43,48,3,0,0,'2017-08-10 00:00:00',2),(404,NULL,7,12,22,36,37,12,0,0,'2017-08-07 00:00:00',2),(405,NULL,11,26,30,37,44,18,0,0,'2017-08-03 00:00:00',1),(406,NULL,7,14,22,23,44,5,0,0,'2017-07-31 00:00:00',2),(407,NULL,16,17,31,38,40,9,0,0,'2017-07-27 00:00:00',2),(408,NULL,16,26,27,36,37,2,0,0,'2017-07-24 00:00:00',2),(409,NULL,2,10,13,19,44,2,0,0,'2017-07-20 00:00:00',1),(410,NULL,2,6,8,12,37,5,0,0,'2017-07-17 00:00:00',1),(411,NULL,6,15,18,36,47,10,0,0,'2017-07-13 00:00:00',1),(412,NULL,9,23,32,33,42,16,0,0,'2017-07-10 00:00:00',2),(413,NULL,3,4,10,26,36,1,0,0,'2017-07-06 00:00:00',2),(414,NULL,15,19,43,45,47,18,0,0,'2017-07-03 00:00:00',1),(415,NULL,4,12,27,29,41,14,0,0,'2017-06-29 00:00:00',1),(416,NULL,7,18,21,30,34,5,0,0,'2017-06-26 00:00:00',1),(417,NULL,1,7,12,32,38,10,0,0,'2017-06-22 00:00:00',1),(418,NULL,8,23,24,31,33,1,0,0,'2017-06-19 00:00:00',2),(419,NULL,9,19,36,40,45,14,0,0,'2017-06-15 00:00:00',1),(420,NULL,7,13,29,31,34,7,0,0,'2017-06-12 00:00:00',1),(421,NULL,12,13,26,29,46,13,0,0,'2017-06-08 00:00:00',2),(422,NULL,13,15,17,20,32,17,0,0,'2017-06-05 00:00:00',1),(423,NULL,7,28,34,40,46,18,0,0,'2017-06-01 00:00:00',1),(424,NULL,20,25,29,30,37,1,0,0,'2017-05-29 00:00:00',2),(425,NULL,3,6,14,19,22,15,0,0,'2017-05-25 00:00:00',1),(426,NULL,12,16,31,43,46,15,0,0,'2017-05-22 00:00:00',1),(427,NULL,5,10,34,45,48,12,0,0,'2017-05-18 00:00:00',1),(428,NULL,15,17,30,36,45,8,0,0,'2017-05-15 00:00:00',1),(429,NULL,5,14,17,31,32,5,0,0,'2017-05-11 00:00:00',2),(430,NULL,4,7,23,39,46,2,0,0,'2017-05-08 00:00:00',1),(431,NULL,5,22,29,33,45,2,0,0,'2017-05-04 00:00:00',1),(432,NULL,3,13,23,44,48,11,0,0,'2017-05-01 00:00:00',1),(433,NULL,3,19,39,42,44,2,0,0,'2017-04-27 00:00:00',1),(434,NULL,2,12,32,36,42,6,0,0,'2017-04-24 00:00:00',1),(435,NULL,4,24,29,44,46,16,0,0,'2017-04-20 00:00:00',1),(436,NULL,11,17,25,32,44,9,0,0,'2017-04-17 00:00:00',1),(437,NULL,2,3,21,29,33,13,0,0,'2017-04-13 00:00:00',2),(438,NULL,13,34,36,41,43,7,0,0,'2017-04-10 00:00:00',1),(439,NULL,6,18,37,41,47,6,0,0,'2017-04-06 00:00:00',1),(440,NULL,10,17,32,35,47,14,0,0,'2017-04-03 00:00:00',1),(441,NULL,1,10,21,44,45,15,0,0,'2017-03-30 00:00:00',2),(442,NULL,1,17,19,22,24,13,0,0,'2017-03-27 00:00:00',1),(443,NULL,1,5,6,15,30,1,0,0,'2017-03-23 00:00:00',2),(444,NULL,6,8,18,38,46,14,0,0,'2017-03-20 00:00:00',1),(445,NULL,1,9,25,36,39,15,0,0,'2017-03-16 00:00:00',1),(446,NULL,2,9,24,27,40,16,0,0,'2017-03-13 00:00:00',1),(447,NULL,1,6,12,13,24,14,0,0,'2017-03-09 00:00:00',2),(448,NULL,4,11,19,47,48,2,0,0,'2017-03-06 00:00:00',2),(449,NULL,23,24,25,40,41,5,0,0,'2017-03-02 00:00:00',3),(450,NULL,5,8,27,34,45,3,0,0,'2017-02-27 00:00:00',1),(451,NULL,12,14,17,24,46,2,0,0,'2017-02-23 00:00:00',1),(452,NULL,2,14,18,25,27,10,0,0,'2017-02-20 00:00:00',1),(453,NULL,6,18,40,46,47,1,0,0,'2017-02-16 00:00:00',2),(454,NULL,4,9,38,41,42,5,0,0,'2017-02-13 00:00:00',2),(455,NULL,5,9,17,40,44,4,0,0,'2017-02-09 00:00:00',1),(456,NULL,3,5,6,7,39,11,0,0,'2017-02-06 00:00:00',2),(457,NULL,31,32,36,46,48,14,0,0,'2017-02-02 00:00:00',2),(458,NULL,6,8,28,36,42,12,0,0,'2017-01-30 00:00:00',1),(459,NULL,3,11,13,31,42,6,0,0,'2017-01-26 00:00:00',1),(460,NULL,3,20,29,41,45,1,0,0,'2017-01-23 00:00:00',1),(461,NULL,4,7,15,24,27,7,0,0,'2017-01-19 00:00:00',1),(462,NULL,5,6,24,25,26,1,0,0,'2017-01-16 00:00:00',2),(463,NULL,6,7,10,35,42,9,0,0,'2017-01-12 00:00:00',2),(464,NULL,2,29,34,47,48,10,0,0,'2017-01-09 00:00:00',2),(465,NULL,10,11,26,41,47,2,0,0,'2017-01-05 00:00:00',2),(466,NULL,13,17,28,35,38,14,0,0,'2017-01-02 00:00:00',1),(467,NULL,6,10,15,33,34,13,0,0,'2016-12-29 00:00:00',2),(468,NULL,1,4,27,35,45,18,0,0,'2016-12-26 00:00:00',1),(469,NULL,10,15,21,23,34,1,0,0,'2016-12-22 00:00:00',1),(470,NULL,1,8,35,45,48,9,0,0,'2016-12-19 00:00:00',1),(471,NULL,4,9,27,30,36,7,0,0,'2016-12-15 00:00:00',1),(472,NULL,6,18,25,44,48,15,0,0,'2016-12-12 00:00:00',1),(473,NULL,5,7,8,13,15,9,0,0,'2016-12-08 00:00:00',2),(474,NULL,9,10,17,44,47,15,0,0,'2016-12-05 00:00:00',2),(475,NULL,21,23,39,40,41,18,0,0,'2016-12-01 00:00:00',2),(476,NULL,2,5,6,13,32,16,0,0,'2016-11-28 00:00:00',2),(477,NULL,5,10,15,16,37,12,0,0,'2016-11-24 00:00:00',2),(478,NULL,3,7,12,35,46,10,0,0,'2016-11-21 00:00:00',1),(479,NULL,9,12,19,22,33,16,0,0,'2016-11-17 00:00:00',1),(480,NULL,21,27,37,47,48,13,0,0,'2016-11-14 00:00:00',2),(481,NULL,8,10,12,20,35,11,0,0,'2016-11-10 00:00:00',1),(482,NULL,3,9,33,35,39,11,0,0,'2016-11-07 00:00:00',1),(483,NULL,6,15,24,25,33,2,0,0,'2016-11-03 00:00:00',2),(484,NULL,3,4,12,32,45,5,0,0,'2016-10-31 00:00:00',2),(485,NULL,15,26,34,40,44,11,0,0,'2016-10-27 00:00:00',1),(486,NULL,6,23,33,44,45,9,0,0,'2016-10-24 00:00:00',2),(487,NULL,4,5,9,28,37,14,0,0,'2016-10-20 00:00:00',2),(488,NULL,6,23,31,34,45,4,0,0,'2016-10-17 00:00:00',1),(489,NULL,2,3,9,28,42,16,0,0,'2016-10-13 00:00:00',2),(490,NULL,14,23,26,43,48,5,0,0,'2016-10-10 00:00:00',1),(491,NULL,21,24,28,31,45,15,0,0,'2016-10-06 00:00:00',1),(492,NULL,2,16,20,35,43,3,0,0,'2016-10-03 00:00:00',1),(493,NULL,6,14,25,46,47,16,0,0,'2016-09-29 00:00:00',2),(494,NULL,5,8,14,17,37,1,0,0,'2016-09-26 00:00:00',1),(495,NULL,15,17,27,37,45,8,0,0,'2016-09-22 00:00:00',1),(496,NULL,1,4,19,43,46,14,0,0,'2016-09-19 00:00:00',1),(497,NULL,1,4,16,28,29,10,0,0,'2016-09-15 00:00:00',2),(498,NULL,25,28,30,41,47,8,0,0,'2016-09-12 00:00:00',1),(499,NULL,3,19,33,35,40,14,0,0,'2016-09-08 00:00:00',1),(500,NULL,9,14,21,34,40,18,0,0,'2016-09-05 00:00:00',1),(501,NULL,2,17,24,29,44,13,0,0,'2016-09-01 00:00:00',1),(502,NULL,13,21,27,35,43,14,0,0,'2016-08-29 00:00:00',1),(503,NULL,8,30,35,36,42,7,0,0,'2016-08-25 00:00:00',2),(504,NULL,4,17,18,20,28,14,0,0,'2016-08-22 00:00:00',2),(505,NULL,1,2,14,19,48,16,0,0,'2016-08-18 00:00:00',2),(506,NULL,1,4,14,15,25,17,0,0,'2016-08-15 00:00:00',2),(507,NULL,14,31,32,38,43,1,0,0,'2016-08-11 00:00:00',2),(508,NULL,20,29,31,33,40,10,0,0,'2016-08-08 00:00:00',1),(509,NULL,12,20,37,47,48,2,0,0,'2016-08-04 00:00:00',2),(510,NULL,7,17,24,29,45,14,0,0,'2016-08-01 00:00:00',1),(511,NULL,12,29,33,38,45,14,0,0,'2016-07-28 00:00:00',1),(512,NULL,15,20,32,36,47,5,0,0,'2016-07-25 00:00:00',1),(513,NULL,3,27,36,43,46,12,0,0,'2016-07-21 00:00:00',1),(514,NULL,3,4,10,17,41,17,0,0,'2016-07-18 00:00:00',2),(515,NULL,25,27,30,43,48,5,0,0,'2016-07-14 00:00:00',1),(516,NULL,3,6,17,18,43,9,0,0,'2016-07-11 00:00:00',2),(517,NULL,4,15,18,21,45,10,0,0,'2016-07-07 00:00:00',1),(518,NULL,8,31,34,44,48,7,0,0,'2016-07-04 00:00:00',1),(519,NULL,11,27,29,36,39,11,0,0,'2016-06-30 00:00:00',1),(520,NULL,8,9,13,32,46,2,0,0,'2016-06-27 00:00:00',2),(521,NULL,6,9,19,31,42,18,0,0,'2016-06-23 00:00:00',1),(522,NULL,3,25,38,45,46,7,0,0,'2016-06-20 00:00:00',2),(523,NULL,8,12,20,33,45,15,0,0,'2016-06-16 00:00:00',1),(524,NULL,1,4,21,34,37,7,0,0,'2016-06-13 00:00:00',1),(525,NULL,2,7,25,36,40,4,0,0,'2016-06-09 00:00:00',1),(526,NULL,7,9,22,25,37,8,0,0,'2016-06-06 00:00:00',1),(527,NULL,11,19,36,37,42,10,0,0,'2016-06-02 00:00:00',2),(528,NULL,2,6,26,34,36,13,0,0,'2016-05-30 00:00:00',1),(529,NULL,2,21,22,27,43,6,0,0,'2016-05-26 00:00:00',2),(530,NULL,3,31,35,40,46,9,0,0,'2016-05-23 00:00:00',1),(531,NULL,4,13,24,28,30,15,0,0,'2016-05-19 00:00:00',1),(532,NULL,20,29,30,42,44,14,0,0,'2016-05-16 00:00:00',2),(533,NULL,1,6,25,29,44,8,0,0,'2016-05-12 00:00:00',1),(534,NULL,2,3,9,26,28,17,0,0,'2016-05-09 00:00:00',2),(535,NULL,14,15,21,22,43,14,0,0,'2016-05-05 00:00:00',2),(536,NULL,15,19,23,37,45,17,0,0,'2016-05-02 00:00:00',1),(537,NULL,8,12,27,32,39,8,0,0,'2016-04-28 00:00:00',1),(538,NULL,2,6,13,26,32,18,0,0,'2016-04-25 00:00:00',1),(539,NULL,2,10,16,34,35,13,0,0,'2016-04-21 00:00:00',2),(540,NULL,6,11,22,25,46,9,0,0,'2016-04-18 00:00:00',1),(541,NULL,1,3,12,45,47,16,0,0,'2016-04-14 00:00:00',1),(542,NULL,4,12,16,20,24,18,0,0,'2016-04-11 00:00:00',1),(543,NULL,3,5,27,28,38,14,0,0,'2016-04-07 00:00:00',2),(544,NULL,1,15,27,34,41,17,0,0,'2016-04-04 00:00:00',1),(545,NULL,17,22,26,32,37,9,0,0,'2016-03-31 00:00:00',1),(546,NULL,12,21,25,30,40,5,0,0,'2016-03-28 00:00:00',1),(547,NULL,2,12,18,20,22,12,0,0,'2016-03-24 00:00:00',1),(548,NULL,2,5,12,30,44,13,0,0,'2016-03-21 00:00:00',1),(549,NULL,4,13,14,15,33,16,0,0,'2016-03-17 00:00:00',2),(550,NULL,4,7,8,37,41,1,0,0,'2016-03-14 00:00:00',2),(551,NULL,1,11,12,20,41,12,0,0,'2016-03-10 00:00:00',2),(552,NULL,7,8,12,23,38,3,0,0,'2016-03-07 00:00:00',2),(553,NULL,3,4,10,18,21,2,0,0,'2016-03-03 00:00:00',2),(554,NULL,19,26,31,34,40,11,0,0,'2016-02-29 00:00:00',1),(555,NULL,14,15,31,34,36,7,0,0,'2016-02-25 00:00:00',2),(556,NULL,17,19,30,39,41,16,0,0,'2016-02-22 00:00:00',1),(557,NULL,5,16,21,26,41,2,0,0,'2016-02-18 00:00:00',1),(558,NULL,1,4,11,25,27,17,0,0,'2016-02-15 00:00:00',1),(559,NULL,11,27,29,31,36,5,0,0,'2016-02-11 00:00:00',1),(560,NULL,18,30,31,43,47,16,0,0,'2016-02-08 00:00:00',2);
/*!40000 ALTER TABLE `lfldata_sorted` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07  9:41:37
