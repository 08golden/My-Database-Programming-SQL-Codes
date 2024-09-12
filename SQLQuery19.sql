use Programmers

insert into Person_Person
  values(30,'james','andrew', 430.00, '2023-04-09');

  Declare @CurrentID INT =1;
  Declare @MaximumID INT =5;


  WHILE @CurrentID <= 5
  BEGIN
 
  UPDATE Person_Person
  SET Salary = Salary * 1.10
  WHERE BusinessEntityID = @CurrentID;
  SET @CurrentID = @CurrentID + 1;
  END;

  select * from Person_Person

