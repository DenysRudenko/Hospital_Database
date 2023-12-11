USE hospital;

SELECT t1.idEmployee, t2.firstName, t2.lastName, COUNT(*) AS cnt_dayOff
FROM employeedayoffs AS t1 
INNER JOIN employee AS t2 ON t1.idEmployee = t2.idemployee
GROUP BY t1.idEmployee, t2.firstName, t2.lastName
ORDER BY cnt_dayOff DESC;