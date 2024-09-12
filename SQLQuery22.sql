USE Programmers;

GO
BEGIN try
INSERT INTO Person_Person (BusinessEntityID, FirstName, LastName,Salary)
          VALUES(5,'Golden', 'Mandy',107.00);
END try
BEGIN catch
PRINT'The primary key number entered at BusinessEntityID already exists. Try another one!'
END catch


BEGIN try
INSERT INTO Person_Person (BusinessEntityID, FirstName, LastName,Salary)
          VALUES(32,null, 'Mandy',107.00);
END try
BEGIN catch
PRINT'Cannot insert the NULL column!'
END catch

SELECT * from Person_Person;

UPDATE Person_Person
set Salary = 60000.00
WHERE BusinessEntityID = 91;
