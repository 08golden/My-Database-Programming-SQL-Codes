USE Programmers
GO
SELECT * FROM Person_Person

--Start a new transaction
BEGIN TRANSACTION;

--Insert a new record
INSERT INTO Person_Person (BusinessEntityID, FirstName, LastName, Salary , ModifiedDate)
VALUES (23, 'Nyasha', 'Golden', 6000000.00,'2023-08-27' );

--Create a savapepoint
SAVE TRANSACTION Savepoint3;
  
  --Insert another record
  INSERT INTO Person_Person (BusinessEntityID, FirstName, LastName, Salary, ModifiedDate)
  VALUES (24, 'Casey', 'Daniel', 5200.00,'2023-08-21');
  SAVE TRANSACTION Savepoint2;

  --Lets try to undo the previous insert but keep the insert of Nyasha
  ROLLBACK TRANSACTION Savepoint3;
   COMMIT;