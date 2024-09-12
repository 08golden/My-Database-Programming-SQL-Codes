USE Programmers
GO 


CREATE table DPGemployees1(
[BusinessEntityID] INT,
[LastName] NVARCHAR(50) NOT NULL,
[FirstName] NVARCHAR(50) NOT NULL,
[Salary] DECIMAL(10, 2),
[ModifiedDate] DATETIME NOT NULL DEFAULT GETDATE(),
PRIMARY KEY (BusinessEntityID, LastName));



INSERT INTO DPGemployees1(BusinessEntityID,LastName, FirstName, Salary)
             values(1,'Uusiku', 'Herman',2300.00 ),
			       (2,'Golden', 'Nyasha', 3400.00  ),
				   (3,'Muhapili', 'Marceline', 3800.00),
				   (4,'Orio', 'Goaseb', 7890.00 ),
				   (5,'Moses', 'Samson', 3450.00);

select * from DPGemployees1;


select * from DPGemployees1 
where BusinessEntityID = 1 AND LastName = 'Uusiku';


UPDATE DPGemployees1 SET Salary = 60000.00 where BusinessEntityID = 2 AND LastName = 'Golden'; 


DELETE FROM DPGemployees1 WHERE BusinessEntityID = 3 AND LastName = 'Muhapili'; 