-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `tblaccountdetails`
--

DROP TABLE IF EXISTS `tblaccountdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblaccountdetails` (
  `id` int NOT NULL,
  `AccountNumber` int DEFAULT NULL,
  `BalanceDetails` varchar(50) DEFAULT NULL,
  `fk_CustomerDetails` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_CustomerDetails` (`fk_CustomerDetails`),
  CONSTRAINT `tblaccountdetails_ibfk_1` FOREIGN KEY (`fk_CustomerDetails`) REFERENCES `customerdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblaccountdetails`
--

LOCK TABLES `tblaccountdetails` WRITE;
/*!40000 ALTER TABLE `tblaccountdetails` DISABLE KEYS */;
INSERT INTO `tblaccountdetails` VALUES (1,91701319,'1000RS remaining',1),(2,923224533,'5000RS remaining',2),(3,84544532,'5000RS remaining',3),(4,98703278,'5000RS remaining',4),(5,96504265,'4000RS remaining',5),(6,98703278,'5000RS remaining',6),(7,99644325,'7000RS remaining',7),(8,98348976,'15000RS remaining',8),(9,998042231,'35000RS remaining',9),(10,998709843,'6000RS remaining',10),(11,986438654,'3000RS remaining',11),(12,912044421,'2000RS remaining',12),(13,887031156,'9000RS remaining',13),(14,987033278,'5000RS remaining',14);
/*!40000 ALTER TABLE `tblaccountdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 17:03:23
