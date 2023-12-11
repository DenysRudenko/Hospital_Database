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
-- Table structure for table `appointmets`
--

DROP TABLE IF EXISTS `appointmets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmets` (
  `idAppointmets` int NOT NULL AUTO_INCREMENT,
  `idPatient` int NOT NULL,
  `idEmployee` int NOT NULL,
  `idTreatment` int NOT NULL,
  `dateTime` datetime NOT NULL,
  PRIMARY KEY (`idAppointmets`),
  UNIQUE KEY `idAppointmets_UNIQUE` (`idAppointmets`),
  KEY `appointmentsPatient_idx` (`idPatient`),
  KEY `appointmentsEmployee_idx` (`idEmployee`),
  KEY `appointmentsTreatment_idx` (`idTreatment`),
  CONSTRAINT `appointmentsEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `appointmentsPatient` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `appointmentsTreatment` FOREIGN KEY (`idTreatment`) REFERENCES `treatment` (`idtreatment`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmets`
--

LOCK TABLES `appointmets` WRITE;
/*!40000 ALTER TABLE `appointmets` DISABLE KEYS */;
INSERT INTO `appointmets` VALUES (1,10,7,8,'2023-11-23 11:00:00'),(2,11,7,9,'2023-11-23 12:00:00'),(3,12,7,9,'2023-11-12 13:00:00'),(4,14,16,5,'2023-11-23 11:00:00'),(5,15,20,5,'2023-11-23 11:00:00'),(6,16,16,5,'2023-11-23 12:00:00'),(7,1,20,5,'2023-11-23 12:00:00'),(8,2,16,5,'2023-11-23 13:00:00'),(9,3,20,5,'2023-11-23 13:00:00'),(10,4,7,9,'2023-11-23 14:00:00');
/*!40000 ALTER TABLE `appointmets` ENABLE KEYS */;
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
