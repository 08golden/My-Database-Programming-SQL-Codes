CREATE DATABASE  Landmark
use Landmark
GO
CREATE TABLE Employee(
EmpID INT NOT NULL PRIMARY KEY,
FirstName VARCHAR(25),
LastName VARCHAR(25),
Department CHAR(20),
Salary INT,
EmploymentDate DATETIME);
 
INSERT INTO Employee
(EmpID, FirstName, LastName, Department, Salary, EmploymentDate)
VALUES(2001,'Tangi', 'Shilongo','Finance',20000,'2007-01-01 00:00:00'),
       (2002, 'Aiden', 'Beukes', 'Admin', 15000, '2022-05-15 00:00:00'),
	   (2003, 'Freddy', 'Shitalen','Finance', 3000, '2015-06-11 00:00:00'),
	   (2004, 'Arya', 'Horn', 'General Services',5000, '2022-11-11 00:00:00'),
	   (2005, 'Tangeni', 'Sam', 'Admin', 40000, '2022-03-01 00:00:00');

select *from Employee
where Salary between 20000 AND 30000;
