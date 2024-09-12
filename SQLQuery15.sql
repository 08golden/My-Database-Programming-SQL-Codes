USE Programmers
GO


CREATE TRIGGER tr_UpdatePersonModifiedDateInsert
ON Person_Person
AFTER INSERT 
AS 
BEGIN 
      UPDATE p
	  SET ModifiedDate = GETDATE()
	  FROM 
	      Person_Person p
		  JOIN
		  INSERTED i ON p.BusinessEntityID = i.BusinessEntityID;
		  END;


		 SELECT  * FROM Person_Person;

		 DELETE  FROM Person_Person 
		 WHERE BusinessEntityID = 11;