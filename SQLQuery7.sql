CREATE database ABCcompany223090506
 USE ABCcompany223090506
 GO
 CREATE TABLE Employees (
 EmpID INT NOT NULL PRIMARY KEY,
 FirstName VARCHAR(25),
 LastName VARCHAR(25),
 Department CHAR(20),
 Salary INT,
 EmploymentDate DATETIME );

 INSERT INTO Employees (EmpID, FirstName, LastName, Department, Salary, EmploymentDate)
 VALUES (2001, 'Tangi', 'Shilongo', 'Finance', 20000,'2007-01-01 00:00:00'),
 (2002, 'Aiden', 'Beukes', 'Admin', 15000, '2022-05-15 00:00:00'),
 (2003, 'Freddy', 'Shitalen', 'Finance', 3000, '2015-06-11 00:00:00'),
 (2004, 'Ayra', 'Horn', 'General Services', 5000, '2022-11-11 00:00:00'),
 (2005, 'Tangeni', 'Sam', 'Admin', 40000, '2020-03-01 00:00:00');

 select *from Employees
 ORDER BY	LastName ASC;
     
select *from Employees
where Department IN('Finance', 'General Services');

select *from Employees
where (FirstName LIKE 'A%') AND  (Department ='Finance');

select  EmpID, FirstName from Employees
where Salary between 10000 AND 30000;

UPDATE Employees
SET FirstName ='Tangi-Tate'
where FirstName ='Tangi';

select *from Employees 

DELETE Employees
where EmpID = 2005;

 select *from Employees