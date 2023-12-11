CREATE DATABASE `hospital`;

USE `hospital`;

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `idDepartment` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phoneNum` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`idDepartment`),
  UNIQUE KEY `idDepartment_UNIQUE` (`idDepartment`)
) ENGINE=InnoDB AUTO_INCREMENT=11;


DROP TABLE IF EXISTS `employee`;

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
) ENGINE=InnoDB AUTO_INCREMENT=21;


DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `idposition` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`idposition`),
  UNIQUE KEY `idposition_UNIQUE` (`idposition`)
) ENGINE=InnoDB AUTO_INCREMENT=11;


DROP TABLE IF EXISTS `treatment`;

CREATE TABLE `treatment` (
  `idtreatment` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idtreatment`),
  UNIQUE KEY `idtreatment_UNIQUE` (`idtreatment`)
) ENGINE=InnoDB AUTO_INCREMENT=11;


DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `idpatient` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(1) NOT NULL,
  PRIMARY KEY (`idpatient`),
  UNIQUE KEY `idpatient_UNIQUE` (`idpatient`)
) ENGINE=InnoDB AUTO_INCREMENT=17;


DROP TABLE IF EXISTS `contact`;

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
) ENGINE=InnoDB AUTO_INCREMENT=17;


DROP TABLE IF EXISTS `staffrecords`;

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
) ENGINE=InnoDB AUTO_INCREMENT=29;


DROP TABLE IF EXISTS `medicalhistory`;

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
) ENGINE=InnoDB AUTO_INCREMENT=23;


DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
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
) ENGINE=InnoDB AUTO_INCREMENT=11;


DROP TABLE IF EXISTS `hospitalisations`;

CREATE TABLE `hospitalisations` (
  `idHospitalisations` int NOT NULL AUTO_INCREMENT,
  `idPatient` int NOT NULL,
  `idDepartment` int NOT NULL,
  `disease` varchar(50) NOT NULL,
  PRIMARY KEY (`idHospitalisations`),
  UNIQUE KEY `idHospitalisationss_UNIQUE` (`idHospitalisations`),
  KEY `hospitalisationsPatient_idx` (`idPatient`),
  KEY `hospitalisationsDepartment_idx` (`idDepartment`),
  CONSTRAINT `hospitalisationsPatient` FOREIGN KEY (`idPatient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `hospitalisationsDepartment` FOREIGN KEY (`idDepartment`) REFERENCES `department` (`idDepartment`)
) ENGINE=InnoDB AUTO_INCREMENT=11;

DROP TABLE IF EXISTS `employeeDayoffs`;

CREATE TABLE `employeeDayoffs` (
  `idEmployeeDayoffs` int NOT NULL AUTO_INCREMENT,
  `idEmployee` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`idEmployeeDayoffs`),
  UNIQUE KEY `idEmployeeDayoffs_UNIQUE` (`idEmployeeDayoffs`),
  KEY `employeeDayoffsEmployee_idx` (`idEmployee`),
  CONSTRAINT `employeeDayoffsEmployee` FOREIGN KEY (`idEmployee`) REFERENCES `employee` (`idemployee`)
) ENGINE=InnoDB AUTO_INCREMENT=11;

LOCK TABLES `department` WRITE;

INSERT INTO `department` VALUES 
	(1,'Cardiology',NULL),
	(2,'Orthopedics ',NULL),
	(3,'Pediatrics',NULL),
	(4,'Orthopedic Surgery',NULL),
	(5,'Oncology',NULL),
	(6,'Neurology',NULL),
	(7,'Psychiatry',NULL),
	(8,'Pathology',NULL),
	(9,'Laboratory Services',NULL),
	(10,'Physical Therapy',NULL),
	(11,'Administration',NULL);




LOCK TABLES `employee` WRITE;

INSERT INTO `employee` VALUES 
	(1,'Carmella','Yakobovitz','1980-06-04','','F','cyakobovitz0@studiopress.com'),
	(2,'Pancho','Node','1981-08-09','100-922-7560','M',''),
	(3,'Corinna','Broadfield','1962-06-09','391-967-9756','F','cbroadfield2@seattletimes.com'),
	(5,'Petey','Patesel','1970-05-25','388-241-1610','M','ppatesel4@tumblr.com'),
	(6,'Shawna','Dulake','1972-08-06','453-402-2865','F','sdulake5@bandcamp.com'),
	(7,'Rand','Vina','1991-09-05','844-290-1455','M',''),
	(8,'Evie','Farrey','1987-11-08','','F','efarrey7@bbb.org'),
	(9,'Orbadiah','Newport','1973-03-10','542-576-8983','M','onewport8@a8.net'),
	(10,'Leonid','Nason','1972-04-23','344-276-9721','M','lnason9@youtube.com'),
	(11,'Evangeline','Espinheira','1966-03-01','265-215-3429','F','eespinheiraa@nationalgeographic.com'),
	(12,'Colby','Moroney','1986-08-13','233-630-4162','M','cmoroneyb@pinterest.com'),
	(13,'Renado','Atwood','1972-08-24','448-260-1698','M','ratwoodc@usgs.gov'),
	(14,'Cristionna','McFfaden','1987-09-26','534-567-6068','F','cmcffadend@yolasite.com'),
	(15,'Barty','Albrighton','1963-01-15','732-293-3060','M','balbrightone@google.co.jp'),
	(16,'Veronika','Sprionghall','1991-03-24','265-689-5925','F','vsprionghallf@admin.ch'),
	(17,'Sibbie','Upson','1988-03-27','','F',''),
	(19,'Dulci','Magor','1985-03-24','898-927-8442','F','dmagori@sourceforge.net'),
	(20,'Tobye','Cheak','1991-11-13','941-597-9342','F',''),
	(21,'Kavin','Smith','1975-10-01','278-327-3242','M',''),
	(22,'Keith','Sneaky','1995-10-14','921-532-1242','F',''),
	(23,'Sara','Conor','1993-12-05','312-543-3943','F','');




LOCK TABLES `position` WRITE;

INSERT INTO `position` VALUES 
	(1,'Physical Therapist'),
	(2,'Clinical Labaratory Scientist'),
	(3,'Physician'),
	(4,'Nurse'),
	(5,'Medical Assistant'),
	(6,'Head of Department'),
	(7,'Receptionist'),
	(8,'Hospitalist'),
	(9,'Infection Control Specialist'),
	(10,'Hospital Administrator'),
	(11,'Office Worker'),
	(12,'Administrator');




LOCK TABLES `treatment` WRITE;

INSERT INTO `treatment` VALUES
	(1,'Heart Surgary'),
	(2,'Spinal Surgary'),
	(3,'Hand Surgary'),
	(4,'Foot Surgary'),
	(5,'Sports Medicine Procedures'),
	(6,'Fracture Care'),
	(7,'Cardiac Rehabilitation'),
	(8,'Interventional Cardiology'),
	(9,'Electrophysiology Procedures'),
	(10,'Diagnostic Testing');




LOCK TABLES `patient` WRITE;

INSERT INTO `patient` VALUES 
	(1,'Julio','Dwire','1976-09-05','M'),
	(2,'Lucretia','Bucktharp','2012-06-22','F'),
	(3,'Magnum','Doding','2005-10-02','M'),
	(4,'Jessy','Andreotti','1988-11-29','F'),
	(6,'August','Summers','2006-07-18','M'),
	(7,'Braden','Wharby','1981-06-20','M'),
	(8,'Charin','Gary','2015-09-14','F'),
	(9,'Gertie','Carayol','1985-03-11','F'),
	(10,'Marni','Voice','2014-11-29','F'),
	(11,'Fidela','Gruszecki','2013-07-26','F'),
	(12,'Bea','Hume','1979-03-20','F'),
	(13,'Ailbert','Basford','1972-04-23','M'),
	(14,'Elisabet','Kleiner','1980-09-22','F'),
	(15,'Joannes','O\'Glessane','1961-01-30','F'),
	(16,'Lauritz','Trehearne','1966-04-21','M'),
	(5612,'John','Bob','1970-03-14','M'),
	(3456,'Andy','Smith','1988-01-11','M');




LOCK TABLES `contact` WRITE;

INSERT INTO `contact` VALUES 
	(1,1,'179-686-0200','','341 42','Klatovy','5 Westerfield Circle'),
	(2,2,'785-593-0070','rbertie2@theglobeandmail.com','8324','Cipolletti','76 Kings Point'),
	(3,3,'201-310-7461','amarzelle3@economist.com','3350','Tigre','99 Bonner Trail'),
	(4,4,'546-866-4404','gslayny4@amazon.co.jp','6311','Guatrache','07331 Eggendart Way'),
	(6,6,'145-464-8209','fborres6@telegraph.co.uk','','Tugu','215 Graceland Pass'),
	(8,8,'741-406-4848','apickaver8@bravesites.com','','Kolomyya','21 Gina Junction'),
	(9,9,'861-551-0981','hroll9@mac.com','','Maxiao','4422 Ludington Place'),
	(10,10,'417-396-2552','jcrawfortha@nih.gov','','BÄ«r Nabala','09790 Brickson Park Avenue'),
	(11,11,'720-609-1195','','','Horki','1206 Northfield Hill'),
	(12,12,'102-543-5316','mposthillc@instagram.com','87-220','Radzyn Chelminski','254 Coleman Road'),
	(13,13,'752-102-6391','adwellyd@icq.com','','Fuyong','22110 Sloan Way'),
	(14,14,'443-275-4796','lcomolettie@senate.gov','','Ampelokipoi','5524 Bluejay Center'),
	(15,15,'983-405-7525','dmcloneyf@yolasite.com','','Liebu','3161 Eastwood Lane'),
	(16,16,'331-663-3904','mcapperg@pen.io','','Watubura','2201 Sherman Avenue'),
	(17,5612,'983-405-7525','johnBob@gmail.com','','Kiev','31 Semirenko'),
	(18,3456,'331-663-3904','smithAndy@yahoo.io','','Dublin','38 Croagh Patrick Road');




LOCK TABLES `staffrecords` WRITE;

INSERT INTO `staffrecords` VALUES 
	(19,1,3,1,'2002-01-20',NULL),
	(20,1,4,7,'2015-07-20',NULL),
	(21,2,3,5,'2010-10-20',NULL),
	(22,2,4,16,'2001-03-20',NULL),
	(23,2,4,20,'2003-12-20',NULL),
	(24,2,6,10,'2001-03-20',NULL),
	(25,1,6,3,'2005-09-20',NULL),
	(26,3,3,8,'2014-10-20','2003-07-20'),
	(27,3,3,2,'2001-07-20',NULL),
	(28,3,4,11,'2013-11-20',NULL),
	(29,11,11,22,'2013-11-20',NULL),
	(30,11,11,23,'2013-11-20',NULL);




LOCK TABLES `medicalhistory` WRITE;

INSERT INTO `medicalhistory` VALUES 
	(12,1,5,6,'2003-01-20','Orthopedic Conditions'),
	(13,1,5,5,'2013-03-20','Orthopedic Conditions'),
	(14,2,5,3,'2017-02-20','Orthopedic Conditions'),
	(15,3,1,7,'2014-02-20','Cardiovascular Disease'),
	(16,3,1,8,'2015-03-20','Cardiovascular Disease'),
	(17,4,1,1,'2016-04-20','Cardiovascular Diseases'),
	(18,9,2,10,'2020-12-20','Diabetes'),
	(19,9,2,9,'2023-12-20','Infectious Diseases'),
	(20,6,2,10,'2012-01-20','Infectious Diseases'),
	(21,6,2,9,'2014-01-20','Cardiovascular Diseases'),
	(22,7,2,9,'2017-01-20','Diabetes');


LOCK TABLES `appointments` WRITE;

INSERT INTO `appointments` VALUES 
	(1,10,7,1,'2023-11-23 11:00:00'),
	(2,11,7,9,'2023-11-23 12:00:00'),
	(3,12,7,9,'2023-11-12 13:00:00'),
	(4,14,16,5,'2023-11-23 11:00:00'),
	(5,15,20,5,'2023-11-23 11:00:00'),
	(6,16,16,5,'2023-11-23 12:00:00'),
	(7,1,20,5,'2023-11-23 12:00:00'),
	(8,2,16,5,'2023-11-23 13:00:00'),
	(9,3,20,5,'2023-11-23 13:00:00'),
	(10,4,7,9,'2023-11-23 14:00:00'),
    (11,2,21,5,'2023-11-24 13:00:00'),
	(12,3,21,5,'2023-11-24 14:00:00'),
	(13,4,21,9,'2023-11-24 15:00:00');
    

LOCK TABLES `hospitalisations` WRITE;

INSERT INTO `hospitalisations` VALUES 
	(12,1,2,'Orthopedic Conditions'),
	(14,2,2,'Orthopedic Conditions'),
	(15,3,1,'Cardiovascular Disease'),
	(17,4,1,'Cardiovascular Diseases'),
	(18,9,3,'Diabetes'),
	(20,6,3,'Infectious Diseases'),
	(22,7,3,'Diabetes');


LOCK TABLES `employeeDayoffs` WRITE;

INSERT INTO `employeeDayoffs` VALUES 
	(1,7,'2023-01-07'),
	(2,7,'2023-01-28'),
	(3,7,'2023-01-29'),
	(4,20,'2023-01-19'),
	(5,20,'2023-01-20'),
	(6,20,'2023-01-25'),
    (7,20,'2023-02-27'),
    (8,16,'2023-02-11'),
    (9,16,'2023-03-13'),
	(10,21,'2023-07-07');
    
UNLOCK TABLES;