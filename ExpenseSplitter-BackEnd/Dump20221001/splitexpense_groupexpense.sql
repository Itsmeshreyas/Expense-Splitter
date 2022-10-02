-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: splitexpense
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `groupexpense`
--

DROP TABLE IF EXISTS `groupexpense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupexpense` (
  `id` int NOT NULL AUTO_INCREMENT,
  `amount` int NOT NULL,
  `billImage` varchar(255) DEFAULT NULL,
  `criteria` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `totalExp` int NOT NULL,
  `group_id` int DEFAULT NULL,
  `paidby_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8j3e19uxxre1xucaxiaxd8v8a` (`group_id`),
  KEY `FK3uc4n5o4mcwym5hovfmgo58vv` (`paidby_id`),
  CONSTRAINT `FK3uc4n5o4mcwym5hovfmgo58vv` FOREIGN KEY (`paidby_id`) REFERENCES `user` (`uid`),
  CONSTRAINT `FK8j3e19uxxre1xucaxiaxd8v8a` FOREIGN KEY (`group_id`) REFERENCES `usersgroup` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupexpense`
--

LOCK TABLES `groupexpense` WRITE;
/*!40000 ALTER TABLE `groupexpense` DISABLE KEYS */;
/*!40000 ALTER TABLE `groupexpense` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-01 22:09:49
