USE hospital;

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
    


