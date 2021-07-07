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
-- Table structure for table `lfldata`
--

DROP TABLE IF EXISTS `lfldata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lfldata` (
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lfldata`
--

LOCK TABLES `lfldata` WRITE;
/*!40000 ALTER TABLE `lfldata` DISABLE KEYS */;
INSERT INTO `lfldata` VALUES (1,NULL,24,45,10,29,7,1,0,0,'2021-06-17 00:00:00'),(2,NULL,37,21,17,19,3,12,0,0,'2021-06-14 00:00:00'),(3,NULL,6,10,24,43,8,15,0,0,'2021-06-10 00:00:00'),(4,NULL,5,34,18,7,24,18,0,0,'2021-06-07 00:00:00'),(5,NULL,19,22,48,29,11,6,0,0,'2021-06-03 00:00:00'),(6,NULL,2,28,19,47,31,9,0,0,'2021-05-31 00:00:00'),(7,NULL,5,43,8,40,6,17,0,0,'2021-05-27 00:00:00'),(8,NULL,48,36,7,6,3,3,0,0,'2021-05-24 00:00:00'),(9,NULL,13,43,38,7,44,11,0,0,'2021-05-20 00:00:00'),(10,NULL,32,40,44,18,29,16,0,0,'2021-05-17 00:00:00'),(11,NULL,31,3,25,36,7,8,0,0,'2021-05-13 00:00:00'),(12,NULL,32,44,31,4,42,7,0,0,'2021-05-10 00:00:00'),(13,NULL,13,26,32,47,5,8,0,0,'2021-05-06 00:00:00'),(14,NULL,21,12,18,7,11,10,0,0,'2021-05-03 00:00:00'),(15,NULL,18,34,10,1,9,13,0,0,'2021-04-29 00:00:00'),(16,NULL,8,38,37,33,22,10,0,0,'2021-04-26 00:00:00'),(17,NULL,28,35,29,37,20,15,0,0,'2021-04-22 00:00:00'),(18,NULL,32,31,33,21,13,15,0,0,'2021-04-19 00:00:00'),(19,NULL,43,3,18,31,4,4,0,0,'2021-04-15 00:00:00'),(20,NULL,16,1,12,26,36,4,0,0,'2021-04-12 00:00:00'),(21,NULL,37,17,39,25,30,10,0,0,'2021-04-08 00:00:00'),(22,NULL,2,26,16,5,39,10,0,0,'2021-04-05 00:00:00'),(23,NULL,36,42,5,27,47,9,0,0,'2021-04-01 00:00:00'),(24,NULL,9,32,42,45,29,4,0,0,'2021-03-29 00:00:00'),(25,NULL,44,37,3,24,25,5,0,0,'2021-03-25 00:00:00'),(26,NULL,3,31,24,45,5,1,0,0,'2021-03-22 00:00:00'),(27,NULL,28,21,45,2,5,15,0,0,'2021-03-18 00:00:00'),(28,NULL,15,14,37,5,27,7,0,0,'2021-03-15 00:00:00'),(29,NULL,48,30,19,28,15,5,0,0,'2021-03-11 00:00:00'),(30,NULL,40,44,3,41,9,6,0,0,'2021-03-08 00:00:00'),(31,NULL,5,32,2,37,35,2,0,0,'2021-03-04 00:00:00'),(32,NULL,5,17,47,26,11,3,0,0,'2021-03-01 00:00:00'),(33,NULL,34,35,16,45,38,1,0,0,'2021-02-25 00:00:00'),(34,NULL,45,43,12,10,2,1,0,0,'2021-02-22 00:00:00'),(35,NULL,32,17,10,11,27,15,0,0,'2021-02-18 00:00:00'),(36,NULL,21,1,45,34,22,11,0,0,'2021-02-15 00:00:00'),(37,NULL,39,7,15,9,31,1,0,0,'2021-02-11 00:00:00'),(38,NULL,2,22,26,24,12,11,0,0,'2021-02-08 00:00:00'),(39,NULL,24,13,3,9,40,16,0,0,'2021-02-04 00:00:00'),(40,NULL,27,15,30,39,17,2,0,0,'2021-02-01 00:00:00'),(41,NULL,26,31,2,19,24,1,0,0,'2021-01-28 00:00:00'),(42,NULL,28,34,1,41,24,2,0,0,'2021-01-25 00:00:00'),(43,NULL,26,15,47,34,11,15,0,0,'2021-01-21 00:00:00'),(44,NULL,13,2,19,14,31,7,0,0,'2021-01-18 00:00:00'),(45,NULL,3,21,20,47,16,10,0,0,'2021-01-14 00:00:00'),(46,NULL,8,37,39,20,1,8,0,0,'2021-01-11 00:00:00'),(47,NULL,3,20,28,25,30,18,0,0,'2021-01-07 00:00:00'),(48,NULL,21,26,2,46,12,7,0,0,'2021-01-04 00:00:00'),(49,NULL,28,39,43,30,11,14,0,0,'2020-12-31 00:00:00'),(50,NULL,9,11,15,6,29,14,0,0,'2020-12-28 00:00:00'),(51,NULL,15,44,2,40,47,12,0,0,'2020-12-24 00:00:00'),(52,NULL,38,3,40,35,32,3,0,0,'2020-12-21 00:00:00'),(53,NULL,38,1,28,45,20,8,0,0,'2020-12-17 00:00:00'),(54,NULL,34,25,7,37,43,9,0,0,'2020-12-14 00:00:00'),(55,NULL,5,31,10,11,1,15,0,0,'2020-12-10 00:00:00'),(56,NULL,3,22,18,35,26,14,0,0,'2020-12-07 00:00:00'),(57,NULL,11,22,17,25,37,4,0,0,'2020-12-03 00:00:00'),(58,NULL,36,18,21,38,11,9,0,0,'2020-11-30 00:00:00'),(59,NULL,43,31,11,41,25,9,0,0,'2020-11-26 00:00:00'),(60,NULL,23,39,37,31,13,11,0,0,'2020-11-23 00:00:00'),(61,NULL,36,16,35,5,27,4,0,0,'2020-11-19 00:00:00'),(62,NULL,38,44,8,3,16,15,0,0,'2020-11-16 00:00:00'),(63,NULL,14,46,17,33,24,2,0,0,'2020-11-12 00:00:00'),(64,NULL,22,45,24,42,33,5,0,0,'2020-11-09 00:00:00'),(65,NULL,8,2,17,31,4,2,0,0,'2020-11-05 00:00:00'),(66,NULL,33,42,7,24,26,11,0,0,'2020-11-02 00:00:00'),(67,NULL,44,32,11,47,2,10,0,0,'2020-10-29 00:00:00'),(68,NULL,20,12,9,38,30,6,0,0,'2020-10-26 00:00:00'),(69,NULL,24,37,39,35,11,8,0,0,'2020-10-22 00:00:00'),(70,NULL,11,41,34,23,17,7,0,0,'2020-10-19 00:00:00'),(71,NULL,4,44,14,27,47,11,0,0,'2020-10-15 00:00:00'),(72,NULL,21,2,11,42,39,4,0,0,'2020-10-12 00:00:00'),(73,NULL,43,28,31,30,42,13,0,0,'2020-10-08 00:00:00'),(74,NULL,7,29,17,35,45,17,0,0,'2020-10-05 00:00:00'),(75,NULL,5,9,25,29,8,1,0,0,'2020-10-01 00:00:00'),(76,NULL,45,47,14,9,46,8,0,0,'2020-09-28 00:00:00'),(77,NULL,17,30,46,40,21,4,0,0,'2020-09-24 00:00:00'),(78,NULL,7,39,28,47,41,3,0,0,'2020-09-21 00:00:00'),(79,NULL,44,41,34,5,28,5,0,0,'2020-09-17 00:00:00'),(80,NULL,2,5,46,25,45,10,0,0,'2020-09-14 00:00:00'),(81,NULL,28,13,33,4,25,15,0,0,'2020-09-10 00:00:00'),(82,NULL,25,30,36,7,4,9,0,0,'2020-09-07 00:00:00'),(83,NULL,1,13,26,4,37,13,0,0,'2020-09-03 00:00:00'),(84,NULL,18,3,9,25,14,11,0,0,'2020-08-31 00:00:00'),(85,NULL,7,8,21,12,36,4,0,0,'2020-08-27 00:00:00'),(86,NULL,31,18,22,25,46,18,0,0,'2020-08-24 00:00:00'),(87,NULL,39,18,40,11,9,9,0,0,'2020-08-20 00:00:00'),(88,NULL,27,11,9,17,5,2,0,0,'2020-08-17 00:00:00'),(89,NULL,9,36,34,40,33,14,0,0,'2020-08-13 00:00:00'),(90,NULL,5,37,16,4,19,1,0,0,'2020-08-10 00:00:00'),(91,NULL,14,43,45,30,18,9,0,0,'2020-08-06 00:00:00'),(92,NULL,20,4,10,46,32,15,0,0,'2020-08-03 00:00:00'),(93,NULL,15,39,42,16,14,10,0,0,'2020-07-30 00:00:00'),(94,NULL,6,13,31,17,10,9,0,0,'2020-07-27 00:00:00'),(95,NULL,5,6,23,33,45,3,0,0,'2020-07-23 00:00:00'),(96,NULL,37,11,40,15,46,6,0,0,'2020-07-20 00:00:00'),(97,NULL,5,20,7,48,43,1,0,0,'2020-07-16 00:00:00'),(98,NULL,13,34,36,9,46,10,0,0,'2020-07-13 00:00:00'),(99,NULL,33,39,10,28,24,12,0,0,'2020-07-09 00:00:00'),(100,NULL,48,47,2,10,40,15,0,0,'2020-07-06 00:00:00'),(101,NULL,36,47,10,2,15,18,0,0,'2020-07-02 00:00:00'),(102,NULL,19,6,16,22,12,2,0,0,'2020-06-29 00:00:00'),(103,NULL,46,18,8,1,27,16,0,0,'2020-06-25 00:00:00'),(104,NULL,34,44,43,13,33,1,0,0,'2020-06-22 00:00:00'),(105,NULL,16,34,27,6,1,2,0,0,'2020-06-18 00:00:00'),(106,NULL,48,32,25,47,28,14,0,0,'2020-06-15 00:00:00'),(107,NULL,42,25,24,9,29,6,0,0,'2020-06-11 00:00:00'),(108,NULL,40,31,34,26,29,1,0,0,'2020-06-08 00:00:00'),(109,NULL,26,9,29,18,24,8,0,0,'2020-06-04 00:00:00'),(110,NULL,15,45,5,40,30,16,0,0,'2020-06-01 00:00:00'),(111,NULL,1,36,44,13,41,1,0,0,'2020-05-28 00:00:00'),(112,NULL,28,32,41,31,4,2,0,0,'2020-05-25 00:00:00'),(113,NULL,33,8,11,30,24,12,0,0,'2020-05-21 00:00:00'),(114,NULL,47,32,10,43,27,10,0,0,'2020-05-18 00:00:00'),(115,NULL,20,41,29,26,34,15,0,0,'2020-05-14 00:00:00'),(116,NULL,28,36,24,45,1,7,0,0,'2020-05-11 00:00:00'),(117,NULL,22,23,3,8,45,15,0,0,'2020-05-07 00:00:00'),(118,NULL,20,22,48,37,15,11,0,0,'2020-05-04 00:00:00'),(119,NULL,35,11,4,3,23,17,0,0,'2020-04-30 00:00:00'),(120,NULL,5,9,28,1,35,9,0,0,'2020-04-27 00:00:00'),(121,NULL,31,5,45,38,41,1,0,0,'2020-04-23 00:00:00'),(122,NULL,1,3,45,6,34,12,0,0,'2020-04-20 00:00:00'),(123,NULL,28,20,43,8,6,15,0,0,'2020-04-16 00:00:00'),(124,NULL,37,43,1,39,45,17,0,0,'2020-04-13 00:00:00'),(125,NULL,48,27,16,23,6,10,0,0,'2020-04-09 00:00:00'),(126,NULL,2,25,26,37,30,8,0,0,'2020-04-06 00:00:00'),(127,NULL,23,4,2,31,48,5,0,0,'2020-04-02 00:00:00'),(128,NULL,36,2,40,22,29,18,0,0,'2020-03-30 00:00:00'),(129,NULL,8,10,7,30,41,13,0,0,'2020-03-26 00:00:00'),(130,NULL,48,46,1,31,30,8,0,0,'2020-03-23 00:00:00'),(131,NULL,42,38,24,19,13,14,0,0,'2020-03-19 00:00:00'),(132,NULL,3,7,26,42,24,18,0,0,'2020-03-16 00:00:00'),(133,NULL,1,23,48,13,47,11,0,0,'2020-03-12 00:00:00'),(134,NULL,16,3,13,48,45,13,0,0,'2020-03-09 00:00:00'),(135,NULL,6,8,47,36,9,7,0,0,'2020-03-05 00:00:00'),(136,NULL,13,32,24,6,40,13,0,0,'2020-03-02 00:00:00'),(137,NULL,19,32,48,20,36,4,0,0,'2020-02-27 00:00:00'),(138,NULL,44,23,33,48,27,11,0,0,'2020-02-24 00:00:00'),(139,NULL,27,41,36,47,24,2,0,0,'2020-02-20 00:00:00'),(140,NULL,27,29,45,34,4,14,0,0,'2020-02-17 00:00:00'),(141,NULL,31,5,40,46,14,2,0,0,'2020-02-13 00:00:00'),(142,NULL,3,21,7,26,25,4,0,0,'2020-02-10 00:00:00'),(143,NULL,34,18,30,33,31,16,0,0,'2020-02-06 00:00:00'),(144,NULL,34,48,9,36,2,13,0,0,'2020-02-03 00:00:00'),(145,NULL,39,18,6,4,8,15,0,0,'2020-01-30 00:00:00'),(146,NULL,7,29,22,17,1,15,0,0,'2020-01-27 00:00:00'),(147,NULL,28,11,42,33,25,18,0,0,'2020-01-23 00:00:00'),(148,NULL,4,7,27,18,8,5,0,0,'2020-01-20 00:00:00'),(149,NULL,15,13,30,33,10,8,0,0,'2020-01-16 00:00:00'),(150,NULL,30,32,39,16,7,17,0,0,'2020-01-13 00:00:00'),(151,NULL,1,37,14,28,21,12,0,0,'2020-01-09 00:00:00'),(152,NULL,8,15,48,33,5,2,0,0,'2020-01-06 00:00:00'),(153,NULL,33,18,1,3,22,7,0,0,'2020-01-02 00:00:00'),(154,NULL,47,15,4,40,34,16,0,0,'2019-12-30 00:00:00'),(155,NULL,30,35,25,16,29,17,0,0,'2019-12-26 00:00:00'),(156,NULL,1,6,46,16,21,13,0,0,'2019-12-23 00:00:00'),(157,NULL,44,28,27,6,40,9,0,0,'2019-12-19 00:00:00'),(158,NULL,45,21,11,20,38,17,0,0,'2019-12-16 00:00:00'),(159,NULL,38,17,21,28,16,8,0,0,'2019-12-12 00:00:00'),(160,NULL,16,45,1,27,39,10,0,0,'2019-12-09 00:00:00'),(161,NULL,32,11,19,16,3,3,0,0,'2019-12-05 00:00:00'),(162,NULL,46,43,10,31,44,13,0,0,'2019-12-02 00:00:00'),(163,NULL,24,9,22,3,41,3,0,0,'2019-11-28 00:00:00'),(164,NULL,31,3,1,40,2,5,0,0,'2019-11-25 00:00:00'),(165,NULL,17,37,20,23,15,7,0,0,'2019-11-21 00:00:00'),(166,NULL,15,28,37,22,35,17,0,0,'2019-11-18 00:00:00'),(167,NULL,30,22,9,11,21,14,0,0,'2019-11-14 00:00:00'),(168,NULL,22,5,3,36,23,12,0,0,'2019-11-11 00:00:00'),(169,NULL,10,1,18,15,40,15,0,0,'2019-11-07 00:00:00'),(170,NULL,44,42,28,48,34,15,0,0,'2019-11-04 00:00:00'),(171,NULL,31,41,33,46,2,18,0,0,'2019-10-31 00:00:00'),(172,NULL,34,15,23,18,11,10,0,0,'2019-10-28 00:00:00'),(173,NULL,5,24,48,13,38,6,0,0,'2019-10-24 00:00:00'),(174,NULL,15,9,35,14,40,10,0,0,'2019-10-21 00:00:00'),(175,NULL,33,9,27,8,25,17,0,0,'2019-10-17 00:00:00'),(176,NULL,41,19,35,17,12,9,0,0,'2019-10-14 00:00:00'),(177,NULL,31,34,30,45,27,16,0,0,'2019-10-10 00:00:00'),(178,NULL,38,18,31,43,13,16,0,0,'2019-10-07 00:00:00'),(179,NULL,1,43,13,42,44,18,0,0,'2019-10-03 00:00:00'),(180,NULL,3,47,45,14,48,3,0,0,'2019-09-30 00:00:00'),(181,NULL,11,4,47,33,43,17,0,0,'2019-09-26 00:00:00'),(182,NULL,4,43,23,48,25,9,0,0,'2019-09-23 00:00:00'),(183,NULL,21,39,28,27,13,5,0,0,'2019-09-19 00:00:00'),(184,NULL,22,37,31,12,11,7,0,0,'2019-09-16 00:00:00'),(185,NULL,16,29,43,2,46,3,0,0,'2019-09-12 00:00:00'),(186,NULL,33,22,9,17,8,18,0,0,'2019-09-09 00:00:00'),(187,NULL,38,20,5,47,32,15,0,0,'2019-09-05 00:00:00'),(188,NULL,6,46,7,25,22,14,0,0,'2019-09-02 00:00:00'),(189,NULL,28,24,43,11,33,10,0,0,'2019-08-29 00:00:00'),(190,NULL,25,37,30,9,48,14,0,0,'2019-08-26 00:00:00'),(191,NULL,42,22,14,7,9,14,0,0,'2019-08-22 00:00:00'),(192,NULL,26,8,28,17,40,10,0,0,'2019-08-19 00:00:00'),(193,NULL,19,13,27,11,2,8,0,0,'2019-08-15 00:00:00'),(194,NULL,2,39,14,5,27,3,0,0,'2019-08-12 00:00:00'),(195,NULL,46,45,34,25,28,18,0,0,'2019-08-08 00:00:00'),(196,NULL,47,20,30,37,42,10,0,0,'2019-08-05 00:00:00'),(197,NULL,34,22,27,1,19,15,0,0,'2019-08-01 00:00:00'),(198,NULL,16,5,19,6,27,9,0,0,'2019-07-29 00:00:00'),(199,NULL,37,35,26,48,29,3,0,0,'2019-07-25 00:00:00'),(200,NULL,33,41,31,47,5,17,0,0,'2019-07-22 00:00:00'),(201,NULL,32,8,13,34,48,2,0,0,'2019-07-18 00:00:00'),(202,NULL,18,19,3,14,32,4,0,0,'2019-07-15 00:00:00'),(203,NULL,23,26,19,42,5,13,0,0,'2019-07-11 00:00:00'),(204,NULL,23,11,16,37,18,7,0,0,'2019-07-08 00:00:00'),(205,NULL,43,48,31,2,7,6,0,0,'2019-07-04 00:00:00'),(206,NULL,22,17,27,11,32,16,0,0,'2019-07-01 00:00:00'),(207,NULL,23,16,27,14,19,14,0,0,'2019-06-27 00:00:00'),(208,NULL,44,23,3,17,21,2,0,0,'2019-06-24 00:00:00'),(209,NULL,43,13,33,30,39,4,0,0,'2019-06-20 00:00:00'),(210,NULL,47,29,40,3,25,8,0,0,'2019-06-17 00:00:00'),(211,NULL,4,46,8,10,5,5,0,0,'2019-06-13 00:00:00'),(212,NULL,26,40,43,39,34,11,0,0,'2019-06-10 00:00:00'),(213,NULL,42,28,29,4,22,5,0,0,'2019-06-06 00:00:00'),(214,NULL,24,19,3,44,30,4,0,0,'2019-06-03 00:00:00'),(215,NULL,17,18,39,7,19,9,0,0,'2019-05-30 00:00:00'),(216,NULL,15,37,46,47,43,10,0,0,'2019-05-27 00:00:00'),(217,NULL,12,29,35,23,38,18,0,0,'2019-05-23 00:00:00'),(218,NULL,46,27,36,29,26,2,0,0,'2019-05-20 00:00:00'),(219,NULL,26,9,32,18,28,2,0,0,'2019-05-16 00:00:00'),(220,NULL,28,11,13,38,6,18,0,0,'2019-05-13 00:00:00'),(221,NULL,5,46,7,39,44,15,0,0,'2019-05-09 00:00:00'),(222,NULL,26,13,39,36,14,9,0,0,'2019-05-06 00:00:00'),(223,NULL,5,9,7,33,25,16,0,0,'2019-05-02 00:00:00'),(224,NULL,39,7,28,22,48,5,0,0,'2019-04-29 00:00:00'),(225,NULL,44,18,21,8,47,13,0,0,'2019-04-25 00:00:00'),(226,NULL,46,20,1,11,30,1,0,0,'2019-04-22 00:00:00'),(227,NULL,10,28,27,47,2,18,0,0,'2019-04-18 00:00:00'),(228,NULL,20,10,4,24,30,3,0,0,'2019-04-15 00:00:00'),(229,NULL,13,17,39,35,30,7,0,0,'2019-04-11 00:00:00'),(230,NULL,44,34,46,17,23,14,0,0,'2019-04-08 00:00:00'),(231,NULL,8,16,3,4,27,3,0,0,'2019-04-04 00:00:00'),(232,NULL,9,19,41,22,33,4,0,0,'2019-04-01 00:00:00'),(233,NULL,44,34,40,31,21,10,0,0,'2019-03-28 00:00:00'),(234,NULL,7,14,31,9,29,8,0,0,'2019-03-25 00:00:00'),(235,NULL,26,9,27,24,38,11,0,0,'2019-03-21 00:00:00'),(236,NULL,39,3,24,27,11,14,0,0,'2019-03-18 00:00:00'),(237,NULL,25,24,11,23,12,9,0,0,'2019-03-14 00:00:00'),(238,NULL,19,24,30,44,46,1,0,0,'2019-03-11 00:00:00'),(239,NULL,5,44,29,8,47,8,0,0,'2019-03-07 00:00:00'),(240,NULL,45,12,28,35,4,13,0,0,'2019-03-04 00:00:00'),(241,NULL,29,4,10,7,37,1,0,0,'2019-02-28 00:00:00'),(242,NULL,45,24,31,48,26,17,0,0,'2019-02-25 00:00:00'),(243,NULL,23,27,21,15,37,14,0,0,'2019-02-21 00:00:00'),(244,NULL,8,31,15,29,1,2,0,0,'2019-02-18 00:00:00'),(245,NULL,38,32,24,26,42,18,0,0,'2019-02-14 00:00:00'),(246,NULL,32,41,5,3,10,10,0,0,'2019-02-11 00:00:00'),(247,NULL,18,29,34,23,43,3,0,0,'2019-02-07 00:00:00'),(248,NULL,30,14,24,37,38,12,0,0,'2019-02-04 00:00:00'),(249,NULL,6,10,45,29,4,10,0,0,'2019-01-31 00:00:00'),(250,NULL,6,12,32,30,37,18,0,0,'2019-01-28 00:00:00'),(251,NULL,21,32,30,29,45,10,0,0,'2019-01-24 00:00:00'),(252,NULL,40,47,2,43,16,12,0,0,'2019-01-21 00:00:00'),(253,NULL,46,27,38,22,9,5,0,0,'2019-01-17 00:00:00'),(254,NULL,42,13,11,18,29,3,0,0,'2019-01-14 00:00:00'),(255,NULL,13,9,21,34,43,9,0,0,'2019-01-10 00:00:00'),(256,NULL,37,18,34,31,35,14,0,0,'2019-01-07 00:00:00'),(257,NULL,2,4,17,30,31,15,0,0,'2019-01-03 00:00:00'),(258,NULL,4,15,10,19,43,8,0,0,'2018-12-31 00:00:00'),(259,NULL,32,39,16,9,41,9,0,0,'2018-12-27 00:00:00'),(260,NULL,27,2,47,14,9,7,0,0,'2018-12-24 00:00:00'),(261,NULL,41,40,26,21,8,13,0,0,'2018-12-20 00:00:00'),(262,NULL,32,4,8,44,31,9,0,0,'2018-12-17 00:00:00'),(263,NULL,31,15,40,38,39,1,0,0,'2018-12-13 00:00:00'),(264,NULL,16,47,28,26,20,16,0,0,'2018-12-10 00:00:00'),(265,NULL,14,31,5,28,26,5,0,0,'2018-12-06 00:00:00'),(266,NULL,7,43,8,37,28,11,0,0,'2018-12-03 00:00:00'),(267,NULL,36,4,11,1,41,8,0,0,'2018-11-29 00:00:00'),(268,NULL,29,10,43,23,37,14,0,0,'2018-11-26 00:00:00'),(269,NULL,40,8,38,48,18,2,0,0,'2018-11-22 00:00:00'),(270,NULL,15,44,43,1,14,15,0,0,'2018-11-19 00:00:00'),(271,NULL,38,42,28,29,14,2,0,0,'2018-11-15 00:00:00'),(272,NULL,15,9,2,37,4,15,0,0,'2018-11-12 00:00:00'),(273,NULL,39,40,38,10,16,13,0,0,'2018-11-08 00:00:00'),(274,NULL,8,28,37,34,18,9,0,0,'2018-11-05 00:00:00'),(275,NULL,47,31,13,4,37,5,0,0,'2018-11-01 00:00:00'),(276,NULL,29,14,43,16,26,13,0,0,'2018-10-29 00:00:00'),(277,NULL,30,20,22,27,12,16,0,0,'2018-10-25 00:00:00'),(278,NULL,7,36,37,46,41,16,0,0,'2018-10-22 00:00:00'),(279,NULL,24,30,4,31,21,16,0,0,'2018-10-18 00:00:00'),(280,NULL,41,1,42,30,39,12,0,0,'2018-10-15 00:00:00'),(281,NULL,33,42,18,38,10,7,0,0,'2018-10-11 00:00:00'),(282,NULL,34,36,48,5,35,15,0,0,'2018-10-08 00:00:00'),(283,NULL,34,28,15,1,10,11,0,0,'2018-10-04 00:00:00'),(284,NULL,16,40,13,8,10,1,0,0,'2018-10-01 00:00:00'),(285,NULL,30,29,34,9,5,14,0,0,'2018-09-27 00:00:00'),(286,NULL,21,45,16,27,9,17,0,0,'2018-09-24 00:00:00'),(287,NULL,17,10,8,40,36,16,0,0,'2018-09-20 00:00:00'),(288,NULL,19,3,6,47,5,15,0,0,'2018-09-17 00:00:00'),(289,NULL,23,43,12,29,6,4,0,0,'2018-09-13 00:00:00'),(290,NULL,1,13,23,11,42,3,0,0,'2018-09-10 00:00:00'),(291,NULL,27,29,36,39,14,6,0,0,'2018-09-06 00:00:00'),(292,NULL,27,44,47,40,43,3,0,0,'2018-09-03 00:00:00'),(293,NULL,20,46,40,32,16,10,0,0,'2018-08-30 00:00:00'),(294,NULL,6,19,32,12,8,17,0,0,'2018-08-27 00:00:00'),(295,NULL,10,45,34,6,28,7,0,0,'2018-08-23 00:00:00'),(296,NULL,16,48,44,36,4,11,0,0,'2018-08-20 00:00:00'),(297,NULL,8,43,42,39,48,11,0,0,'2018-08-16 00:00:00'),(298,NULL,1,27,15,41,22,7,0,0,'2018-08-13 00:00:00'),(299,NULL,13,30,25,37,33,5,0,0,'2018-08-09 00:00:00'),(300,NULL,13,29,15,7,5,5,0,0,'2018-08-06 00:00:00'),(301,NULL,23,20,16,17,9,3,0,0,'2018-08-02 00:00:00'),(302,NULL,8,36,34,37,15,2,0,0,'2018-07-30 00:00:00'),(303,NULL,20,10,44,14,9,16,0,0,'2018-07-26 00:00:00'),(304,NULL,5,28,11,1,48,7,0,0,'2018-07-23 00:00:00'),(305,NULL,36,29,27,40,14,4,0,0,'2018-07-19 00:00:00'),(306,NULL,14,48,17,18,21,12,0,0,'2018-07-16 00:00:00'),(307,NULL,8,14,20,4,26,6,0,0,'2018-07-12 00:00:00'),(308,NULL,43,48,24,18,46,6,0,0,'2018-07-09 00:00:00'),(309,NULL,12,46,16,32,31,17,0,0,'2018-07-05 00:00:00'),(310,NULL,27,39,18,43,13,8,0,0,'2018-07-02 00:00:00'),(311,NULL,47,48,3,27,23,3,0,0,'2018-06-28 00:00:00'),(312,NULL,31,45,42,3,48,17,0,0,'2018-06-25 00:00:00'),(313,NULL,44,25,3,6,39,1,0,0,'2018-06-21 00:00:00'),(314,NULL,27,31,34,22,1,6,0,0,'2018-06-18 00:00:00'),(315,NULL,7,37,33,41,13,18,0,0,'2018-06-14 00:00:00'),(316,NULL,46,4,25,36,5,9,0,0,'2018-06-11 00:00:00'),(317,NULL,9,27,38,2,43,13,0,0,'2018-06-07 00:00:00'),(318,NULL,36,1,5,33,20,5,0,0,'2018-06-04 00:00:00'),(319,NULL,42,16,48,41,34,3,0,0,'2018-05-31 00:00:00'),(320,NULL,16,13,6,4,32,7,0,0,'2018-05-28 00:00:00'),(321,NULL,48,32,38,18,39,12,0,0,'2018-05-24 00:00:00'),(322,NULL,48,31,12,4,45,7,0,0,'2018-05-21 00:00:00'),(323,NULL,21,46,7,14,6,8,0,0,'2018-05-17 00:00:00'),(324,NULL,42,36,26,11,33,14,0,0,'2018-05-14 00:00:00'),(325,NULL,17,48,47,46,35,11,0,0,'2018-05-10 00:00:00'),(326,NULL,5,40,6,2,15,16,0,0,'2018-05-07 00:00:00'),(327,NULL,47,29,22,5,26,8,0,0,'2018-05-03 00:00:00'),(328,NULL,10,13,21,16,1,17,0,0,'2018-04-30 00:00:00'),(329,NULL,29,27,20,30,21,17,0,0,'2018-04-26 00:00:00'),(330,NULL,7,27,48,12,20,13,0,0,'2018-04-23 00:00:00'),(331,NULL,16,35,43,48,19,9,0,0,'2018-04-19 00:00:00'),(332,NULL,11,26,9,38,33,7,0,0,'2018-04-16 00:00:00'),(333,NULL,20,39,5,33,48,18,0,0,'2018-04-12 00:00:00'),(334,NULL,44,9,13,39,20,18,0,0,'2018-04-09 00:00:00'),(335,NULL,12,2,10,48,46,12,0,0,'2018-04-05 00:00:00'),(336,NULL,32,6,2,11,33,4,0,0,'2018-04-02 00:00:00'),(337,NULL,31,19,16,44,48,7,0,0,'2018-03-29 00:00:00'),(338,NULL,15,4,40,23,3,6,0,0,'2018-03-26 00:00:00'),(339,NULL,9,31,27,17,29,16,0,0,'2018-03-22 00:00:00'),(340,NULL,17,31,32,26,45,14,0,0,'2018-03-19 00:00:00'),(341,NULL,17,47,16,40,10,5,0,0,'2018-03-15 00:00:00'),(342,NULL,8,45,1,44,20,15,0,0,'2018-03-12 00:00:00'),(343,NULL,26,34,20,24,39,18,0,0,'2018-03-08 00:00:00'),(344,NULL,5,42,23,17,35,12,0,0,'2018-03-05 00:00:00'),(345,NULL,44,10,7,26,46,14,0,0,'2018-03-01 00:00:00'),(346,NULL,6,11,16,37,28,11,0,0,'2018-02-26 00:00:00'),(347,NULL,42,35,32,23,6,8,0,0,'2018-02-22 00:00:00'),(348,NULL,44,14,41,2,47,16,0,0,'2018-02-19 00:00:00'),(349,NULL,38,11,1,46,36,10,0,0,'2018-02-15 00:00:00'),(350,NULL,47,33,7,37,11,10,0,0,'2018-02-12 00:00:00'),(351,NULL,4,32,40,10,13,12,0,0,'2018-02-08 00:00:00'),(352,NULL,1,5,48,32,2,17,0,0,'2018-02-05 00:00:00'),(353,NULL,24,13,21,3,47,10,0,0,'2018-02-01 00:00:00'),(354,NULL,33,1,6,30,4,2,0,0,'2018-01-29 00:00:00'),(355,NULL,43,31,8,9,45,6,0,0,'2018-01-25 00:00:00'),(356,NULL,35,26,30,13,5,5,0,0,'2018-01-22 00:00:00'),(357,NULL,36,21,28,15,5,14,0,0,'2018-01-18 00:00:00'),(358,NULL,40,11,32,33,15,18,0,0,'2018-01-15 00:00:00'),(359,NULL,15,8,16,41,12,9,0,0,'2018-01-11 00:00:00'),(360,NULL,22,15,28,3,1,15,0,0,'2018-01-08 00:00:00'),(361,NULL,19,11,46,12,28,4,0,0,'2018-01-04 00:00:00'),(362,NULL,25,15,35,31,18,2,0,0,'2018-01-01 00:00:00'),(363,NULL,4,44,29,48,21,7,0,0,'2017-12-28 00:00:00'),(364,NULL,43,44,37,8,45,16,0,0,'2017-12-25 00:00:00'),(365,NULL,14,10,18,15,24,16,0,0,'2017-12-21 00:00:00'),(366,NULL,32,13,21,29,16,17,0,0,'2017-12-18 00:00:00'),(367,NULL,48,17,25,21,30,10,0,0,'2017-12-14 00:00:00'),(368,NULL,47,37,46,16,48,9,0,0,'2017-12-11 00:00:00'),(369,NULL,18,41,21,46,7,2,0,0,'2017-12-07 00:00:00'),(370,NULL,31,1,37,7,2,8,0,0,'2017-12-04 00:00:00'),(371,NULL,48,2,27,3,44,16,0,0,'2017-11-30 00:00:00'),(372,NULL,37,13,20,12,46,1,0,0,'2017-11-27 00:00:00'),(373,NULL,19,10,44,43,15,8,0,0,'2017-11-23 00:00:00'),(374,NULL,7,28,16,20,24,11,0,0,'2017-11-20 00:00:00'),(375,NULL,25,20,14,22,21,13,0,0,'2017-11-16 00:00:00'),(376,NULL,39,21,20,37,42,17,0,0,'2017-11-13 00:00:00'),(377,NULL,40,41,10,42,36,9,0,0,'2017-11-09 00:00:00'),(378,NULL,46,22,24,44,28,18,0,0,'2017-11-06 00:00:00'),(379,NULL,2,8,47,38,4,16,0,0,'2017-11-02 00:00:00'),(380,NULL,46,12,2,40,22,10,0,0,'2017-10-30 00:00:00'),(381,NULL,43,39,2,6,12,2,0,0,'2017-10-26 00:00:00'),(382,NULL,9,10,31,7,4,15,0,0,'2017-10-23 00:00:00'),(383,NULL,32,44,9,27,24,15,0,0,'2017-10-19 00:00:00'),(384,NULL,1,27,2,17,12,7,0,0,'2017-10-16 00:00:00'),(385,NULL,43,5,27,19,35,10,0,0,'2017-10-12 00:00:00'),(386,NULL,43,23,21,27,19,2,0,0,'2017-10-09 00:00:00'),(387,NULL,13,21,26,12,36,6,0,0,'2017-10-05 00:00:00'),(388,NULL,47,24,28,37,25,5,0,0,'2017-10-02 00:00:00'),(389,NULL,9,10,12,16,32,14,0,0,'2017-09-28 00:00:00'),(390,NULL,17,19,30,14,48,4,0,0,'2017-09-25 00:00:00'),(391,NULL,13,24,7,30,19,12,0,0,'2017-09-21 00:00:00'),(392,NULL,19,14,30,4,46,9,0,0,'2017-09-18 00:00:00'),(393,NULL,17,9,4,14,23,17,0,0,'2017-09-14 00:00:00'),(394,NULL,48,27,30,23,11,18,0,0,'2017-09-11 00:00:00'),(395,NULL,29,33,19,28,27,16,0,0,'2017-09-07 00:00:00'),(396,NULL,9,33,1,4,15,3,0,0,'2017-09-04 00:00:00'),(397,NULL,47,19,42,36,20,12,0,0,'2017-08-31 00:00:00'),(398,NULL,48,47,6,5,1,17,0,0,'2017-08-28 00:00:00'),(399,NULL,40,3,27,1,43,9,0,0,'2017-08-24 00:00:00'),(400,NULL,5,29,45,38,42,1,0,0,'2017-08-21 00:00:00'),(401,NULL,37,36,31,17,12,9,0,0,'2017-08-17 00:00:00'),(402,NULL,17,15,39,8,4,2,0,0,'2017-08-14 00:00:00'),(403,NULL,48,30,43,29,19,3,0,0,'2017-08-10 00:00:00'),(404,NULL,37,7,12,36,22,12,0,0,'2017-08-07 00:00:00'),(405,NULL,30,44,37,26,11,18,0,0,'2017-08-03 00:00:00'),(406,NULL,44,7,22,14,23,5,0,0,'2017-07-31 00:00:00'),(407,NULL,17,16,38,31,40,9,0,0,'2017-07-27 00:00:00'),(408,NULL,26,16,27,36,37,2,0,0,'2017-07-24 00:00:00'),(409,NULL,10,44,19,2,13,2,0,0,'2017-07-20 00:00:00'),(410,NULL,8,2,37,6,12,5,0,0,'2017-07-17 00:00:00'),(411,NULL,47,36,6,15,18,10,0,0,'2017-07-13 00:00:00'),(412,NULL,42,32,23,33,9,16,0,0,'2017-07-10 00:00:00'),(413,NULL,3,36,26,4,10,1,0,0,'2017-07-06 00:00:00'),(414,NULL,43,47,19,15,45,18,0,0,'2017-07-03 00:00:00'),(415,NULL,4,27,41,29,12,14,0,0,'2017-06-29 00:00:00'),(416,NULL,7,18,21,30,34,5,0,0,'2017-06-26 00:00:00'),(417,NULL,1,7,38,32,12,10,0,0,'2017-06-22 00:00:00'),(418,NULL,31,8,24,23,33,1,0,0,'2017-06-19 00:00:00'),(419,NULL,40,45,9,36,19,14,0,0,'2017-06-15 00:00:00'),(420,NULL,13,31,29,7,34,7,0,0,'2017-06-12 00:00:00'),(421,NULL,12,13,26,46,29,13,0,0,'2017-06-08 00:00:00'),(422,NULL,32,20,15,13,17,17,0,0,'2017-06-05 00:00:00'),(423,NULL,7,40,34,46,28,18,0,0,'2017-06-01 00:00:00'),(424,NULL,29,25,20,37,30,1,0,0,'2017-05-29 00:00:00'),(425,NULL,6,3,22,14,19,15,0,0,'2017-05-25 00:00:00'),(426,NULL,31,46,43,12,16,15,0,0,'2017-05-22 00:00:00'),(427,NULL,45,5,48,34,10,12,0,0,'2017-05-18 00:00:00'),(428,NULL,36,17,15,45,30,8,0,0,'2017-05-15 00:00:00'),(429,NULL,5,14,31,32,17,5,0,0,'2017-05-11 00:00:00'),(430,NULL,4,39,7,46,23,2,0,0,'2017-05-08 00:00:00'),(431,NULL,5,22,29,45,33,2,0,0,'2017-05-04 00:00:00'),(432,NULL,23,13,44,3,48,11,0,0,'2017-05-01 00:00:00'),(433,NULL,3,42,44,19,39,2,0,0,'2017-04-27 00:00:00'),(434,NULL,12,36,2,42,32,6,0,0,'2017-04-24 00:00:00'),(435,NULL,44,24,4,46,29,16,0,0,'2017-04-20 00:00:00'),(436,NULL,17,32,11,44,25,9,0,0,'2017-04-17 00:00:00'),(437,NULL,29,3,33,2,21,13,0,0,'2017-04-13 00:00:00'),(438,NULL,34,41,43,13,36,7,0,0,'2017-04-10 00:00:00'),(439,NULL,47,37,41,6,18,6,0,0,'2017-04-06 00:00:00'),(440,NULL,17,10,47,32,35,14,0,0,'2017-04-03 00:00:00'),(441,NULL,1,45,10,21,44,15,0,0,'2017-03-30 00:00:00'),(442,NULL,1,17,22,19,24,13,0,0,'2017-03-27 00:00:00'),(443,NULL,30,15,6,1,5,1,0,0,'2017-03-23 00:00:00'),(444,NULL,6,8,46,18,38,14,0,0,'2017-03-20 00:00:00'),(445,NULL,25,36,1,39,9,15,0,0,'2017-03-16 00:00:00'),(446,NULL,9,24,2,27,40,16,0,0,'2017-03-13 00:00:00'),(447,NULL,13,6,1,12,24,14,0,0,'2017-03-09 00:00:00'),(448,NULL,47,48,11,19,4,2,0,0,'2017-03-06 00:00:00'),(449,NULL,23,25,24,41,40,5,0,0,'2017-03-02 00:00:00'),(450,NULL,8,34,45,27,5,3,0,0,'2017-02-27 00:00:00'),(451,NULL,46,17,24,12,14,2,0,0,'2017-02-23 00:00:00'),(452,NULL,27,18,2,25,14,10,0,0,'2017-02-20 00:00:00'),(453,NULL,6,18,40,47,46,1,0,0,'2017-02-16 00:00:00'),(454,NULL,4,41,9,38,42,5,0,0,'2017-02-13 00:00:00'),(455,NULL,5,40,9,17,44,4,0,0,'2017-02-09 00:00:00'),(456,NULL,6,5,39,7,3,11,0,0,'2017-02-06 00:00:00'),(457,NULL,36,32,46,31,48,14,0,0,'2017-02-02 00:00:00'),(458,NULL,6,42,36,28,8,12,0,0,'2017-01-30 00:00:00'),(459,NULL,11,3,42,31,13,6,0,0,'2017-01-26 00:00:00'),(460,NULL,29,41,20,3,45,1,0,0,'2017-01-23 00:00:00'),(461,NULL,24,15,27,7,4,7,0,0,'2017-01-19 00:00:00'),(462,NULL,26,25,5,6,24,1,0,0,'2017-01-16 00:00:00'),(463,NULL,6,7,42,10,35,9,0,0,'2017-01-12 00:00:00'),(464,NULL,48,47,34,2,29,10,0,0,'2017-01-09 00:00:00'),(465,NULL,11,10,47,41,26,2,0,0,'2017-01-05 00:00:00'),(466,NULL,35,13,38,17,28,14,0,0,'2017-01-02 00:00:00'),(467,NULL,6,34,33,10,15,13,0,0,'2016-12-29 00:00:00'),(468,NULL,1,27,45,4,35,18,0,0,'2016-12-26 00:00:00'),(469,NULL,21,34,10,15,23,1,0,0,'2016-12-22 00:00:00'),(470,NULL,48,35,8,1,45,9,0,0,'2016-12-19 00:00:00'),(471,NULL,9,36,27,4,30,7,0,0,'2016-12-15 00:00:00'),(472,NULL,48,6,44,25,18,15,0,0,'2016-12-12 00:00:00'),(473,NULL,8,15,5,13,7,9,0,0,'2016-12-08 00:00:00'),(474,NULL,9,47,44,17,10,15,0,0,'2016-12-05 00:00:00'),(475,NULL,39,23,40,41,21,18,0,0,'2016-12-01 00:00:00'),(476,NULL,6,2,32,5,13,16,0,0,'2016-11-28 00:00:00'),(477,NULL,15,37,5,16,10,12,0,0,'2016-11-24 00:00:00'),(478,NULL,12,35,46,7,3,10,0,0,'2016-11-21 00:00:00'),(479,NULL,12,19,9,33,22,16,0,0,'2016-11-17 00:00:00'),(480,NULL,37,21,47,27,48,13,0,0,'2016-11-14 00:00:00'),(481,NULL,35,10,8,12,20,11,0,0,'2016-11-10 00:00:00'),(482,NULL,9,35,39,33,3,11,0,0,'2016-11-07 00:00:00'),(483,NULL,25,24,33,6,15,2,0,0,'2016-11-03 00:00:00'),(484,NULL,3,4,32,12,45,5,0,0,'2016-10-31 00:00:00'),(485,NULL,15,34,26,44,40,11,0,0,'2016-10-27 00:00:00'),(486,NULL,44,6,45,23,33,9,0,0,'2016-10-24 00:00:00'),(487,NULL,28,9,4,37,5,14,0,0,'2016-10-20 00:00:00'),(488,NULL,6,23,31,45,34,4,0,0,'2016-10-17 00:00:00'),(489,NULL,2,42,9,28,3,16,0,0,'2016-10-13 00:00:00'),(490,NULL,26,23,43,14,48,5,0,0,'2016-10-10 00:00:00'),(491,NULL,21,45,31,24,28,15,0,0,'2016-10-06 00:00:00'),(492,NULL,43,16,2,35,20,3,0,0,'2016-10-03 00:00:00'),(493,NULL,14,25,46,6,47,16,0,0,'2016-09-29 00:00:00'),(494,NULL,5,14,17,37,8,1,0,0,'2016-09-26 00:00:00'),(495,NULL,27,37,45,15,17,8,0,0,'2016-09-22 00:00:00'),(496,NULL,1,4,19,43,46,14,0,0,'2016-09-19 00:00:00'),(497,NULL,1,29,4,28,16,10,0,0,'2016-09-15 00:00:00'),(498,NULL,30,41,25,47,28,8,0,0,'2016-09-12 00:00:00'),(499,NULL,35,40,19,33,3,14,0,0,'2016-09-08 00:00:00'),(500,NULL,21,14,40,9,34,18,0,0,'2016-09-05 00:00:00'),(501,NULL,44,24,2,17,29,13,0,0,'2016-09-01 00:00:00'),(502,NULL,35,43,27,13,21,14,0,0,'2016-08-29 00:00:00'),(503,NULL,8,42,30,36,35,7,0,0,'2016-08-25 00:00:00'),(504,NULL,20,18,17,4,28,14,0,0,'2016-08-22 00:00:00'),(505,NULL,14,48,2,19,1,16,0,0,'2016-08-18 00:00:00'),(506,NULL,14,25,1,15,4,17,0,0,'2016-08-15 00:00:00'),(507,NULL,43,14,32,38,31,1,0,0,'2016-08-11 00:00:00'),(508,NULL,40,33,31,20,29,10,0,0,'2016-08-08 00:00:00'),(509,NULL,48,47,20,37,12,2,0,0,'2016-08-04 00:00:00'),(510,NULL,29,17,7,24,45,14,0,0,'2016-08-01 00:00:00'),(511,NULL,45,38,33,12,29,14,0,0,'2016-07-28 00:00:00'),(512,NULL,47,15,32,20,36,5,0,0,'2016-07-25 00:00:00'),(513,NULL,46,27,43,3,36,12,0,0,'2016-07-21 00:00:00'),(514,NULL,10,41,4,17,3,17,0,0,'2016-07-18 00:00:00'),(515,NULL,25,27,43,30,48,5,0,0,'2016-07-14 00:00:00'),(516,NULL,17,3,6,43,18,9,0,0,'2016-07-11 00:00:00'),(517,NULL,18,45,4,21,15,10,0,0,'2016-07-07 00:00:00'),(518,NULL,31,8,44,34,48,7,0,0,'2016-07-04 00:00:00'),(519,NULL,27,36,11,39,29,11,0,0,'2016-06-30 00:00:00'),(520,NULL,32,9,8,46,13,2,0,0,'2016-06-27 00:00:00'),(521,NULL,19,9,42,6,31,18,0,0,'2016-06-23 00:00:00'),(522,NULL,45,38,3,25,46,7,0,0,'2016-06-20 00:00:00'),(523,NULL,20,45,12,33,8,15,0,0,'2016-06-16 00:00:00'),(524,NULL,4,37,1,34,21,7,0,0,'2016-06-13 00:00:00'),(525,NULL,2,25,40,7,36,4,0,0,'2016-06-09 00:00:00'),(526,NULL,37,7,22,25,9,8,0,0,'2016-06-06 00:00:00'),(527,NULL,11,42,36,37,19,10,0,0,'2016-06-02 00:00:00'),(528,NULL,34,2,36,6,26,13,0,0,'2016-05-30 00:00:00'),(529,NULL,27,21,2,22,43,6,0,0,'2016-05-26 00:00:00'),(530,NULL,3,35,31,40,46,9,0,0,'2016-05-23 00:00:00'),(531,NULL,28,24,13,30,4,15,0,0,'2016-05-19 00:00:00'),(532,NULL,44,42,29,20,30,14,0,0,'2016-05-16 00:00:00'),(533,NULL,44,25,6,29,1,8,0,0,'2016-05-12 00:00:00'),(534,NULL,28,3,9,2,26,17,0,0,'2016-05-09 00:00:00'),(535,NULL,15,22,21,43,14,14,0,0,'2016-05-05 00:00:00'),(536,NULL,45,15,37,23,19,17,0,0,'2016-05-02 00:00:00'),(537,NULL,32,12,27,39,8,8,0,0,'2016-04-28 00:00:00'),(538,NULL,32,13,26,6,2,18,0,0,'2016-04-25 00:00:00'),(539,NULL,2,35,34,10,16,13,0,0,'2016-04-21 00:00:00'),(540,NULL,6,11,22,46,25,9,0,0,'2016-04-18 00:00:00'),(541,NULL,12,45,47,1,3,16,0,0,'2016-04-14 00:00:00'),(542,NULL,24,4,16,20,12,18,0,0,'2016-04-11 00:00:00'),(543,NULL,28,38,27,5,3,14,0,0,'2016-04-07 00:00:00'),(544,NULL,1,41,27,15,34,17,0,0,'2016-04-04 00:00:00'),(545,NULL,22,17,32,37,26,9,0,0,'2016-03-31 00:00:00'),(546,NULL,30,25,21,40,12,5,0,0,'2016-03-28 00:00:00'),(547,NULL,18,12,22,20,2,12,0,0,'2016-03-24 00:00:00'),(548,NULL,30,5,2,12,44,13,0,0,'2016-03-21 00:00:00'),(549,NULL,33,14,13,4,15,16,0,0,'2016-03-17 00:00:00'),(550,NULL,8,4,41,37,7,1,0,0,'2016-03-14 00:00:00'),(551,NULL,11,1,12,41,20,12,0,0,'2016-03-10 00:00:00'),(552,NULL,12,7,8,38,23,3,0,0,'2016-03-07 00:00:00'),(553,NULL,18,21,10,4,3,2,0,0,'2016-03-03 00:00:00'),(554,NULL,34,31,26,40,19,11,0,0,'2016-02-29 00:00:00'),(555,NULL,36,15,14,31,34,7,0,0,'2016-02-25 00:00:00'),(556,NULL,19,41,30,39,17,16,0,0,'2016-02-22 00:00:00'),(557,NULL,5,26,16,41,21,2,0,0,'2016-02-18 00:00:00'),(558,NULL,4,11,25,1,27,17,0,0,'2016-02-15 00:00:00'),(559,NULL,27,29,11,36,31,5,0,0,'2016-02-11 00:00:00'),(560,NULL,18,31,47,43,30,16,0,0,'2016-02-08 00:00:00');
/*!40000 ALTER TABLE `lfldata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07  9:41:40
