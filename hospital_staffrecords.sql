-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `staffrecords`
--

DROP TABLE IF EXISTS `staffrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staffrecords` (
  `idstaffRecords` int NOT NULL AUTO_INCREMENT,
  `idDepartment` int NOT NULL,
  `idPosition` int NOT NULL,
  `idEmployee` int NOT NULL,
  `hireDate` date NOT NULL,
  `quitDate` date DEFAULT NULL,
  PRIMARY KEY (`idstaffRecords`),
  UNIQUE KEY `idstaffRecords_UNIQUE` (`idstaffRecords`),
  KEY `staffRecordsDepartment_idx` (`idDepartment`),
  KEY `staffRecordsPosition_idx` (`idPosition`),
  KEY `staffRecordsEmployee_idx` (`idEmployee`),
  CONSTRAINT `staffRecordsDepartment` FOREIGN KEY (`idDepartment`) REFERENCES `department` (`idDepartment`),
  CONSTRAINT `staffRecordsEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `staffRecordsPosition` FOREIGN KEY (`idPosition`) REFERENCES `position` (`idposition`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffrecords`
--

LOCK TABLES `staffrecords` WRITE;
/*!40000 ALTER TABLE `staffrecords` DISABLE KEYS */;
INSERT INTO `staffrecords` VALUES (19,1,3,1,'2002-01-20',NULL),(20,1,4,7,'2015-07-20',NULL),(21,2,3,5,'2010-10-20',NULL),(22,2,4,16,'2001-03-20',NULL),(23,2,4,20,'2003-12-20',NULL),(24,2,6,10,'2001-03-20',NULL),(25,1,6,3,'2005-09-20',NULL),(26,3,3,8,'2014-10-20','2003-07-20'),(27,3,3,2,'2001-07-20',NULL),(28,3,4,11,'2013-11-20',NULL);
/*!40000 ALTER TABLE `staffrecords` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 22:13:46
