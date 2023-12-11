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
-- Table structure for table `medicalhistory`
--

DROP TABLE IF EXISTS `medicalhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicalhistory` (
  `idMedicalHistory` int NOT NULL AUTO_INCREMENT,
  `idPatient` int NOT NULL,
  `idEmployee` int NOT NULL,
  `idTreatment` int NOT NULL,
  `date` date NOT NULL,
  `disease` varchar(50) NOT NULL,
  PRIMARY KEY (`idMedicalHistory`),
  UNIQUE KEY `idMedicalHistory_UNIQUE` (`idMedicalHistory`),
  KEY `idPatient_idx` (`idPatient`),
  KEY `idEmployee_idx` (`idEmployee`),
  KEY `idTreatment_idx` (`idTreatment`),
  KEY `medicalHistoryPatient_idx` (`idPatient`),
  KEY `meficalHistoryEmployee_idx` (`idEmployee`),
  KEY `medicalHistoryTreatment_idx` (`idTreatment`),
  CONSTRAINT `medicalHistoryEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `medicalHistoryPatient` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `medicalHistoryTreatment` FOREIGN KEY (`idTreatment`) REFERENCES `treatment` (`idtreatment`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicalhistory`
--

LOCK TABLES `medicalhistory` WRITE;
/*!40000 ALTER TABLE `medicalhistory` DISABLE KEYS */;
INSERT INTO `medicalhistory` VALUES (12,1,5,6,'2003-01-20',''),(13,1,5,5,'2013-03-20',''),(14,2,5,3,'2017-02-20',''),(15,3,1,7,'2014-02-20',''),(16,3,1,8,'2015-03-20',''),(17,4,1,1,'2016-04-20',''),(18,9,2,10,'2020-12-20',''),(19,9,2,9,'2023-12-20',''),(20,6,2,10,'2012-01-20',''),(21,6,2,9,'2014-01-20',''),(22,7,2,9,'2017-01-20','');
/*!40000 ALTER TABLE `medicalhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-19 22:13:45
