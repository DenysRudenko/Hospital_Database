USE hospital;

-- 1st
SELECT * FROM department;  

-- 2nd
SELECT * FROM contact
WHERE idPatient = 3456;  

-- 3rd
UPDATE contact
SET phoneNum = "235-972-9624", postalCode = "1720"
WHERE idPatient = 3456;

SELECT phoneNum, postalCode FROM contact
WHERE idPatient = 3456;

-- 4rd
INSERT INTO appointments VALUES
	(14, 14, 7, 9, '2023-11-23 15:00:00');
    
SELECT * FROM appointments
WHERE idAppointmets = 11;

-- 5th
SELECT
t2.firstName, t2.lastName, t2.birthday, t2.gender, 
t3.phoneNum, t3.email, t3.postalCode, t3.city, t3.address
FROM hospitalisations AS t1
INNER JOIN patient AS t2 ON t1.idPatient = t2.idPatient
LEFT JOIN contact AS t3 ON t1.idPatient = t3.idPatient
WHERE t1.disease = 'Diabetes';

-- 6th
SELECT t2.firstName, t2.lastName FROM appointments AS t1
INNER JOIN patient AS t2 ON t1.idPatient = t2.idPatient
WHERE idEmployee = 21;

-- 7th
UPDATE hospitalisations
SET idDepartment = 4
WHERE idDepartment = 2;

-- 8th
SELECT employee.firstName, employee.lastName, position.name AS position, staffrecords.hireDate
FROM employee
INNER JOIN staffrecords ON employee.idemployee = staffrecords.idEmployee
INNER JOIN position ON staffrecords.idPosition = position.idPosition
WHERE staffrecords.idDepartment NOT IN (11) AND staffrecords.idPosition IN (3)
ORDER BY staffrecords.hireDate;

-- 9th
SELECT COUNT(*) FROM appointments
WHERE idTreatment = 1;

-- 10th
INSERT INTO `department` VALUES 
	(100,'Test Department',NULL);

INSERT INTO `employee` VALUES 
	(100,'testName','testLastName','2000-01-01','333-333-3333','F','');

INSERT INTO `position` VALUES 
	(100,'Test position');

INSERT INTO `treatment` VALUES
	(100,'Test treatment');

INSERT INTO `patient` VALUES 
	(100,'Test Name','Test Last Name','2000-01-01','M');

INSERT INTO `contact` VALUES 
	(100,100,'333-333-3333','test@yahoo.io','','test city','test address road');

INSERT INTO `staffrecords` VALUES 
	(100,100,100,100,'2023-01-01',NULL);

INSERT INTO `medicalhistory` VALUES 
	(100,100,100,100,'2020-01-01','Test disaese');

INSERT INTO `appointments` VALUES 
	(100,100,100,100,'2023-01-01 15:00:00');
    
INSERT INTO `hospitalisations` VALUES 
	(100,100,100,'Test Disiase');

INSERT INTO `employeedayoffs` VALUES 
	(100,100,'2023-09-09');
    
-- 11th
DELETE FROM employeedayoffs
WHERE idEmployeeDayoffs = 100;

DELETE FROM hospitalisations
WHERE idHospitalisations = 100;

DELETE FROM appointments
WHERE idAppointmets = 100;

DELETE FROM staffrecords
WHERE idstaffRecords = 100;

DELETE FROM medicalhistory
WHERE idMedicalHistory = 100;

DELETE FROM contact
WHERE idContact = 100;

DELETE FROM department
WHERE idDepartment = 100;

DELETE FROM employee
WHERE idemployee = 100;

DELETE FROM patient
WHERE idpatient = 100;

DELETE FROM position
WHERE idposition = 100;

DELETE FROM treatment
WHERE idtreatment = 100;

-- 12th
SELECT t1.idEmployee, t2.firstName, t2.lastName, COUNT(*) AS cnt_dayOff
FROM employeedayoffs AS t1 
INNER JOIN employee AS t2 ON t1.idEmployee = t2.idemployee
GROUP BY t1.idEmployee, t2.firstName, t2.lastName
ORDER BY cnt_dayOff DESC;

-- 13th
UPDATE staffrecords
SET idPosition = 12
WHERE idPosition = 11;

-- 14th
UPDATE department
SET phoneNum = '01-7654321'
WHERE idDepartment = 4;

-- 15th
INSERT INTO `position` VALUES 
	(13,'CEO');
    
INSERT INTO `employee` VALUES 
	(24,'Michael','Dean','1995-11-13','311-423-3323','M','');
    
INSERT INTO `staffrecords` VALUES 
	(31,11,13,24,'2023-12-01',NULL);
    
-- 16th
SELECT employee.firstName, employee.lastName, staffrecords.hireDate
FROM employee
JOIN staffrecords ON employee.idemployee = staffrecords.idEmployee
WHERE DATEDIFF(NOW(), staffrecords.hireDate) > 3 * 365;

-- 17th
SELECT 
t1.firstName, t1.lastName,
t4.name AS treatmentName,
t2.disease,
t3.dateTime AS appointment,
t5.firstName AS doctorName, t5.lastName AS doctorSurname
FROM patient AS t1
INNER JOIN medicalhistory AS t2 ON t1.idpatient = t2.idPatient
INNER JOIN appointments AS t3 ON t1.idpatient = t3.idPatient
INNER JOIN treatment AS t4 ON t2.idTreatment = t4.idtreatment
INNER JOIN employee AS t5 ON t3.idEmployee = t5.idemployee;

-- 18th
SELECT COUNT(*) 
FROM patient
INNER JOIN contact ON patient.idpatient = contact.idPatient
WHERE contact.address LIKE '%road%';

-- 19th
CREATE VIEW patientAppointments AS

SELECT 
t1.firstName, t1.lastName,
t4.name AS treatmentName,
t2.disease,
t3.dateTime AS appointment,
t5.firstName AS doctorName, t5.lastName AS doctorSurname
FROM patient AS t1
INNER JOIN medicalhistory AS t2 ON t1.idpatient = t2.idPatient
INNER JOIN appointments AS t3 ON t1.idpatient = t3.idPatient
INNER JOIN treatment AS t4 ON t2.idTreatment = t4.idtreatment
INNER JOIN employee AS t5 ON t3.idEmployee = t5.idemployee;

-- 20th
TRUNCATE TABLE appointments;
    

