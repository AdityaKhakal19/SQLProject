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
-- Table structure for table `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerdetails` (
  `id` int NOT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerAddress` varchar(100) DEFAULT NULL,
  `CustomerEmailAddress` varchar(30) DEFAULT NULL,
  `CustomerMartialStatus` varchar(20) DEFAULT NULL,
  `CustomerContactNumber` varchar(15) DEFAULT NULL,
  `CustomerAge` int DEFAULT NULL,
  `fk_BranchId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_BranchId` (`fk_BranchId`),
  CONSTRAINT `customerdetails_ibfk_1` FOREIGN KEY (`fk_BranchId`) REFERENCES `tblbranchdetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerdetails`
--

LOCK TABLES `customerdetails` WRITE;
/*!40000 ALTER TABLE `customerdetails` DISABLE KEYS */;
INSERT INTO `customerdetails` VALUES (1,'Aditya Patil','Kalyan','adi@gmail.com','M','+918982887722',25,1),(2,'Prashant Sahane','Dombivili','prashant10@gmail.com','M','+917682987787',28,1),(3,'Omkar Mohite','Thane','omkarmohite@gmail.com','M','+917662567722',30,1),(4,'Akash Choudhari','Bhiwandi','akash@gmail.com','M','+919970047481',35,1),(5,'Aditya Kamthe','Kurla','adityak@gmail.com','M','+917743887722',45,2),(6,'Vishal Bhoir','Ulhasnagar','vishal11@gmail.com','M','+918965436521',28,2),(7,'Sandeep Singh','Thane','sandeep@gmail.com','M','+918998216546',43,3),(8,'Sameer Kode','Kalyan','sameer@gmail.com','M','+917789887692',35,4),(9,'Gajanan kelaskar','Bhiwandi','gajanan@gmail.com','M','+918899886622',32,4),(10,'Udit Shinde','Thane','udit@gmail.com','M','+918878887722',35,5),(11,'Akshay Mandade','Kalyan','akshay@gmail.com','M','+917762447722',29,6),(12,'Sumit Singh','Dombivili','sumit@gmail.com','M','+918888765467',25,6),(13,'Amit Mane','Ulhasnagar','amit@gmail.com','M','+917762547798',40,7),(14,'Kausthub Dabhale','Kurla','kausthub@gmail.com','M','+918982887722',25,8),(15,'Sreejit  Pal','Vithalwadi','sreejit@gmail.com','M','+918769872314',38,9);
/*!40000 ALTER TABLE `customerdetails` ENABLE KEYS */;
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
