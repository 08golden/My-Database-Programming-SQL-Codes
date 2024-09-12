USE Programmers
GO 
DECLARE @BusinessEntityID INT
DECLARE @Salary DECIMAL(10,2)

DECLARE salary_cursor CURSOR FOR
SELECT BusinessEntityID, Salary
FROM Person_Person

OPEN salary_cursor 

FETCH NEXT FROM salary_cursor INTO @BusinessEntityID, @Salary

WHILE @@FETCH_STATUS = 0
BEGIN
  
  UPDATE Person_Person
  SET Salary = @Salary * 1.10
  WHERE BusinessEntityID = @BusinessEntityID

  FETCH NEXT FROM salary_cursor INTO @BusinessEntityID, @Salary
  END

   select * from Person_Person;