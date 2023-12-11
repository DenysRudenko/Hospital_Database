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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idemployee` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `phoneNum` varchar(12) DEFAULT NULL,
  `gender` varchar(1) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idemployee`),
  UNIQUE KEY `idemployee_UNIQUE` (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Carmella','Yakobovitz','1980-06-04','','F','cyakobovitz0@studiopress.com'),(2,'Pancho','Node','1981-08-09','100-922-7560','M',''),(3,'Corinna','Broadfield','1962-06-09','391-967-9756','F','cbroadfield2@seattletimes.com'),(5,'Petey','Patesel','1970-05-25','388-241-1610','M','ppatesel4@tumblr.com'),(6,'Shawna','Dulake','1972-08-06','453-402-2865','F','sdulake5@bandcamp.com'),(7,'Rand','Vina','1991-09-05','844-290-1455','M',''),(8,'Evie','Farrey','1987-11-08','','F','efarrey7@bbb.org'),(9,'Orbadiah','Newport','1973-03-10','542-576-8983','M','onewport8@a8.net'),(10,'Leonid','Nason','1972-04-23','344-276-9721','M','lnason9@youtube.com'),(11,'Evangeline','Espinheira','1966-03-01','265-215-3429','F','eespinheiraa@nationalgeographic.com'),(12,'Colby','Moroney','1986-08-13','233-630-4162','M','cmoroneyb@pinterest.com'),(13,'Renado','Atwood','1972-08-24','448-260-1698','M','ratwoodc@usgs.gov'),(14,'Cristionna','McFfaden','1987-09-26','534-567-6068','F','cmcffadend@yolasite.com'),(15,'Barty','Albrighton','1963-01-15','732-293-3060','M','balbrightone@google.co.jp'),(16,'Veronika','Sprionghall','1991-03-24','265-689-5925','F','vsprionghallf@admin.ch'),(17,'Sibbie','Upson','1988-03-27','','F',''),(19,'Dulci','Magor','1985-03-24','898-927-8442','F','dmagori@sourceforge.net'),(20,'Tobye','Cheak','1991-11-13','941-597-9342','F','');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
