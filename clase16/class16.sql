   
#1
   
INSERT INTO `employees`(`employeeNumber`,`lastName`,`firstName`,`extension`,`email`,`officeCode`,`reportsTo`,`jobTitle`) VALUES 
(1056,'Patterson','Mary','x4611',NULL,'1',1002,'VP Sales');

#2

UPDATE employees set employeeNumber = employeeNumber - 20;

UPDATE employees set employeeNumber = employeeNumber + 20;

#3

ALTER TABLE employees
ADD age TINYINT UNSIGNED DEFAULT 69;

ALTER TABLE employees
   ADD CONSTRAINT age CHECK(age >= 16 AND age <= 70);
   
