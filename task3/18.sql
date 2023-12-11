USE hospital;

SELECT COUNT(*) 
FROM patient
INNER JOIN contact ON patient.idpatient = contact.idPatient
WHERE contact.address LIKE '%road%';


