create database ABC_Company
use ABC_Company
Go
Create table Employee
(
[EmpID] INT NOT NULL primary key,
[FirstName] varchar(25),
[LastName] varchar(25),
[Department] varchar(20),
[Salary] INT,
[EmploymentDate] datetime
)
INSERT INTO Employee (EmpID, FirstName, LastName, Department, Salary, EmploymentDate)
VALUES(2001, 'Tangi', 'Shilongo', 'Finance', 20000, '2007-01-01 00:00:00'),
      (2002,'Aiden', 'Beukes', 'Admin',15000, '2022-05-15 00:00:00'),
	  (2003, 'Freddy', 'Shitalen', 'Finance', 3000, '2015-06-11 00:00:00'),
	  (2004, 'Arya', 'Horn', 'General Services', 5000, '2022-11-11 00:00:00'),
	  (2005, 'Tangeni', 'Sam', 'Admin', 40000, '2020-03-01 00:00:00');
	   

select *from  Employee
      where LastName like '%n';

select *from Employee ORDER BY LastName ASC;

select *from Employee
      where Department IN ('Finance', 'General Services');

select *from Employee
     where (FirstName like 'A%')
	 AND (Department = 'Finance');

select EmpID,FirstName from Employee
      where Salary between 10000 AND 30000;

update Employee
set FirstName = 'Tangi-Tate'
where FirstName ='Tangi';

delete from Employee
where EmpID = 2005; 




	    


