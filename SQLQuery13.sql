USE AdventureWoks2019
GO
Create procedure sp_SelectAllPersonContacts
As
select title, FirstName, LastName
from person.person