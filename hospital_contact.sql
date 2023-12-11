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
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `idContact` int NOT NULL AUTO_INCREMENT,
  `idPatient` int NOT NULL,
  `phoneNum` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `postalCode` varchar(6) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`idContact`),
  UNIQUE KEY `idContact_UNIQUE` (`idContact`),
  KEY `contactPatient_idx` (`idPatient`),
  CONSTRAINT `contactPatient` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idpatient`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,1,'179-686-0200','','341 42','Klatovy','5 Westerfield Circle'),(2,2,'785-593-0070','rbertie2@theglobeandmail.com','8324','Cipolletti','76 Kings Point'),(3,3,'201-310-7461','amarzelle3@economist.com','3350','Tigre','99 Bonner Trail'),(4,4,'546-866-4404','gslayny4@amazon.co.jp','6311','Guatrache','07331 Eggendart Way'),(6,6,'145-464-8209','fborres6@telegraph.co.uk','','Tugu','215 Graceland Pass'),(8,8,'741-406-4848','apickaver8@bravesites.com','','Kolomyya','21 Gina Junction'),(9,9,'861-551-0981','hroll9@mac.com','','Maxiao','4422 Ludington Place'),(10,10,'417-396-2552','jcrawfortha@nih.gov','','BÄ«r Nabala','09790 Brickson Park Avenue'),(11,11,'720-609-1195','','','Horki','1206 Northfield Hill'),(12,12,'102-543-5316','mposthillc@instagram.com','87-220','Radzyn Chelminski','254 Coleman Road'),(13,13,'752-102-6391','adwellyd@icq.com','','Fuyong','22110 Sloan Way'),(14,14,'443-275-4796','lcomolettie@senate.gov','','Ampelokipoi','5524 Bluejay Center'),(15,15,'983-405-7525','dmcloneyf@yolasite.com','','Liebu','3161 Eastwood Lane'),(16,16,'331-663-3904','mcapperg@pen.io','','Watubura','2201 Sherman Avenue');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
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
