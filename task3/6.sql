USE hospital;

SELECT t2.firstName, t2.lastName FROM appointments AS t1
INNER JOIN patient AS t2 ON t1.idPatient = t2.idPatient
WHERE idEmployee = 21;


