USE hospital;

SELECT
t2.firstName, t2.lastName, t2.birthday, t2.gender, 
t3.phoneNum, t3.email, t3.postalCode, t3.city, t3.address
FROM hospitalisations AS t1
INNER JOIN patient AS t2 ON t1.idPatient = t2.idPatient
LEFT JOIN contact AS t3 ON t1.idPatient = t3.idPatient
WHERE t1.disease = 'Diabetes';


