USE hospital;

SELECT employee.firstName, employee.lastName, position.name AS position, staffrecords.hireDate
FROM employee
INNER JOIN staffrecords ON employee.idemployee = staffrecords.idEmployee
INNER JOIN position ON staffrecords.idPosition = position.idPosition
WHERE staffrecords.idDepartment NOT IN (11) AND staffrecords.idPosition IN (3)
ORDER BY staffrecords.hireDate;

