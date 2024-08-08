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
-- Table structure for table `tblbranchdetails`
--

DROP TABLE IF EXISTS `tblbranchdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbranchdetails` (
  `id` int NOT NULL,
  `BranchName` varchar(100) DEFAULT NULL,
  `BranchAdress` varchar(100) DEFAULT NULL,
  `IFSC_Code` varchar(11) DEFAULT NULL,
  `fk_BankId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_BankId` (`fk_BankId`),
  CONSTRAINT `tblbranchdetails_ibfk_1` FOREIGN KEY (`fk_BankId`) REFERENCES `tblbankdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbranchdetails`
--

LOCK TABLES `tblbranchdetails` WRITE;
/*!40000 ALTER TABLE `tblbranchdetails` DISABLE KEYS */;
INSERT INTO `tblbranchdetails` VALUES (1,'Khadakpada Branch','Kalyan','SBIN0005459',1),(2,'Manpada Branch','Dombivili','BOIM0004450',2),(3,'Shivaji Chowk Branch','Ulhasnagar','BOIM0003550',2),(4,'Beturkarpada Branch','Thane','ICIC0000035',3),(5,'Kolbad Branch','Kurla','IDBI0070046',4),(6,'Majiwada Branch','Thane','IDBI0008935',4),(7,'Kon Branch','Bhiwandi','CBIN0007629',5),(8,'Hiranandani Branch','Thane','UTIC0008976',6),(9,' Khadegolavali Branch','Vithalwadi','BOBD0007786',7);
/*!40000 ALTER TABLE `tblbranchdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-07 17:03:22
