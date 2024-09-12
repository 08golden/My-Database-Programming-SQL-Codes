USE Programmers
GO 

SELECT * FROM Person_Person;

BEGIN TRANSACTION;  


DELETE FROM Person_Person WHERE BusinessEntityID =1;

  SAVE TRANSACTION Savepoint4; 


   DELETE FROM Person_Person WHERE BusinessEntityID =2;
    
    SAVE TRANSACTION Savepoint5;   

	ROLLBACK TRANSACTION Savepoint4;

   COMMIT;