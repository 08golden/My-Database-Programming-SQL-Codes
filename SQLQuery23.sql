USE [Programmers];
 GO 
  
  CREATE PROCEDURE sp_insertvalues
 
  @BusinessEntityID INT,
  @FirstName NVARCHAR(50) ,
  @LastName NVARCHAR(50),
  @Salary DECIMAL(10,2)
  AS 
  BEGIN
    BEGIN TRY
	--INSERT SQL STATEMENT
	INSERT INTO Person_Person(BusinessEntityID,FirstName, LastName, Salary)
	              VALUES(@BusinessEntityID,@FirstName,@LastName, @Salary)
	PRINT'A NEW Person inserted successfully!!!.';
	END TRY
	BEGIN CATCH
	PRINT 'Error Message: ' + ERROR_MESSAGE();
	END CATCH;
	END;

select * from Person_Person;


EXECUTE sp_insertvalues  34, 'luke', 'Abel',3400.00;


EXECUTE sp_insertvalues   43,'sssssssssssssssssssschcbcxncbgfvgfuybfygdfshegygdtydfgdfgdfgfffffffffthjdjjjdasghdfddgfdvdvnvvvvhjghhjhfdfhhhffhjdjhdfhbhchcccbcbcdjkdfjfhffbnvcbvcbncbnvbdbdbsdggfgdgdhsshshshsshshsbvvvvvdvdddfdfddgdfdffgdfgsdfdgsdfdgsdfddgdfd','faith',3400.00;

