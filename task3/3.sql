USE hospital;

UPDATE contact
SET phoneNum = "235-972-9624", postalCode = "1720"
WHERE idPatient = 3456;

SELECT phoneNum, postalCode FROM contact
WHERE idPatient = 3456;
    

