Create Database Programmers

USE Programmers
GO
CREATE TABLE Person_Person (
    BusinessEntityID INT PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2),           
    ModifiedDate DATETIME NOT NULL DEFAULT GETDATE() -- Defaulting to current date-time
);

USE Programmers
GO
INSERT INTO Person_Person (BusinessEntityID, FirstName, LastName, Salary, ModifiedDate) VALUES 
(1, 'Casey', 'Muluti', 55000.00, '2023-08-27'),
(2, 'Secilia', 'Smith', 58000.00, '2023-08-26'),
(3, 'Asteria', 'Johnson', 60000.00, '2023-08-25'),
(4, 'Mary', 'Jones', 62000.00, '2023-08-24'),
(5, 'Michael', 'Brown', 64000.00, '2023-08-23'),
(6, 'Patricia', 'Davis', 66000.00, '2023-08-22'),
(7, 'James', 'Miller', 68000.00, '2023-08-21'),
(8, 'Jennifer', 'Wilson', 70000.00, '2023-08-20'),
(9, 'William', 'Moore', 72000.00, '2023-08-19'),
(10, 'Linda', 'Taylor', 74000.00, '2023-08-18'),
(11, 'Richard', 'Anderson', 76000.00, '2023-08-17'),
(12, 'Susan', 'Thomas', 78000.00, '2023-08-16'),
(13, 'Joseph', 'Jackson', 80000.00, '2023-08-15'),
(14, 'Karen', 'White', 82000.00, '2023-08-14'),
(15, 'David', 'Harris', 84000.00, '2023-08-13'),
(16, 'Barbara', 'Martin', 86000.00, '2023-08-12'),
(17, 'Paul', 'Thompson', 88000.00, '2023-08-11'),
(18, 'Elizabeth', 'Garcia', 90000.00, '2023-08-10'),
(19, 'Andrew', 'Martinez', 92000.00, '2023-08-09'),
(20, 'Nancy', 'Robinson', 94000.00, '2023-08-08');



SELECT * FROM Person_Person;


USE Programmers
GO 

CREATE TRIGGER tr_UpdatePersonModifiedDate
ON Person_Person
AFTER UPDATE 
AS 
BEGIN 
      UPDATE p
	  SET ModifiedDate = GETDATE()
	  FROM 
	      Person_Person p
		  JOIN
		  INSERTED i ON p.BusinessEntityID = i.BusinessEntityID;
		  END;




		  USE Programmers
		  GO 

		  UPDATE Person_Person
		  SET LastName = 'Van Wyk'
		  WHERE BusinessEntityID = 13;


		  Use Programmers
          GO 
          Declare @CurrentID INT = 1;
          Declare @MaximumID INT = 5;
          WHILE @CurrentID <= @MaximumID
          begin 
          update Person_Person
          set Salary = Salary *1.10
         WHERE BusinessEntityID = @CurrentID;
         SET @CurrentID = @CurrentID +1;
         END;