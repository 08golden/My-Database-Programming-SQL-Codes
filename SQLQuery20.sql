USE Programmers
GO 
DECLARE @FirstName VARCHAR(50)
DECLARE @LastName VARCHAR(50)
DECLARE name_cursor CURSOR FOR
SELECT FirstName, LastName
FROM Person_Person

OPEN name_cursor 

FETCH NEXT FROM name_cursor INTO @FirstName, @LastName

WHILE @@FETCH_STATUS = 0
BEGIN 
PRINT  @FirstName + '' + @LastName 

 
  FETCH NEXT FROM name_cursor INTO @FirstName, @LastName
  END

 