USE hospital;

SELECT employee.firstName, employee.lastName, staffrecords.hireDate
FROM employee
JOIN staffrecords ON employee.idemployee = staffrecords.idEmployee
WHERE DATEDIFF(NOW(), staffrecords.hireDate) > 3 * 365;



