USE master
Go 
CREATE database Classroom;

Create table  Teacher(
Teacher_ID Int Primary key not null,
FirstName varchar(100),
LastName varchar(100),
Title varchar(10),
Email_Adress VARCHAR(100),
Phone_Number Int 
)

select *from Teacher

Create table  School_Admin(
Staff_ID Int Primary key not null,
FirstName varchar(100),
LastName varchar(100),
Title varchar(10),
Email_Adress VARCHAR(100),
Contact_no Int 
)

Create table Failed(
FirstName varchar(100),
LastName varchar(100),
Math int,
Physics int,
Biology int,
Chemistry int,
Average int,
Learner_ID int
)

Create table Passed(
FirstName varchar(100),
LastName varchar(100),
Math int,
Physics int,
Biology int,
Chemistry int,
Average int,
Learner_ID int
)



Create table Learner(
FirstName varchar(100),
LastName varchar(100),
Learner_ID int,
Age int
)

Select * from  Learner
Select * from Grade
Select * from Teacher



Create table Grade(
FirstName varchar(100),
LastName varchar(100),
Math int,
Physics int,
Biology int,
Chemistry int,
LearnerID  int
)

Create procedure sp_removeL3
@learnerId int
AS
Delete from child 
from Grade as child
Inner join Learner as parent on child.LearnerID = parent.Learner_ID
where LearnerID = @learnerId
Delete from parent
from Learner as parent
where Learner_ID = @learnerId

Execute sp_removeL3 1980

select *from Teacher

Create Procedure sp_InsTeacher
@TeacherID Int,
@firstname varchar(100),
@lastname varchar(100),
@title varchar(10),
@email varchar(100),
@phone Int 
As
Insert Into Teacher (Teacher_ID, FirstName, LastName, Title, Email_Adress, Phone_Number)
Values(@TeacherID, @firstname,@lastname, @title, @email, @phone)

execute sp_InsTeacher 24, 'ha','hah', 'Mr.', '2@gmail.com',0812069676

Create Procedure sp_InsRemoveL4
@Teacher_ID Int
AS
Delete from Teacher
from Teacher as teacher
where Teacher_ID = @Teacher_ID;

Execute sp_InsRemoveL4 24;


Select * from Learner;

Alter table Learner
add Gender varchar(20)

Alter table Teacher add Password varchar(100)

Create procedure sp_comboTeacher
@teacher Int
As
Declare @teacherID Int,
@password varchar(100)
Declare loginT Cursor
For select Teacher_ID, Password from Teacher where Teacher_ID = @teacher
open loginT
Fetch next from loginT into @teacherID, @password
Select @teacherID as Teacher_ID,
@password as Password
close loginT
Deallocate loginT

execute sp_comboTeacher 26

Create procedure sp_comboAdmin
@admin Int
As
Declare @admin_id Int,
@password varchar(100)
Declare loginA Cursor
For select Staff_ID, Password from Admin where Staff_ID = @admin
open loginA
Fetch next from loginA into @admin_id, @password
Select @admin_id as Teacher_ID,
@password as Password
close loginA
Deallocate loginT
--transaction in a stored procedure that updates learners

Alter table Learner
add Attandance varchar(20)

select * from Learner

Create Procedure sp_Attendance
@learner int,
@attend varchar(100)
as 
begin try
Update Learner 
set Attandance = @attend where Learner_ID = @learner
end try
Begin catch
Select ERROR_NUMBER() As Error_Number
End catch

execute sp_Attendance 12, 'present'

Select *from Learner

--///////////////////////////////////////////////////////////////////////////////////////////////////--


Alter Procedure sp_searchLearn
@Learn Int 
As
Declare
@firstname varchar(100),
@lastname varchar(100),
@gender varchar(10),
@age Int
Declare look Cursor
For Select FirstName, LastName, Gender, Age from Learner where Learner_ID = @Learn 
Open look
Fetch first from look into @firstname, @lastname, @gender, @age
Select @firstname as FirstName, 
@lastname as LastName,
@gender as Gender,
@age as Age from Learner
Close look
deallocate look

Execute sp_searchLearn 12



Alter Procedure sp_searchTeacher
@teachID Int 
As
Declare @teacherID int,
@firstname varchar(100),
@lastname varchar(100),
@title varchar(10),
@email varchar(100),
@phone Int
Declare searchT Cursor
For Select Teacher_ID,FirstName, LastName, Title, Email_Adress, Phone_no from Teacher 
where Teacher_ID = @teachID
Open searchT 
Fetch next from searchT into @teacherID, @firstname, @lastname, @title, @email, @phone
Select @firstname as FirstName, 
@lastname as LastName,
@title as Title,
@email as Email_Adress,
@phone as Phone_no from Teacher
Close searchT
deallocate searchT

Execute sp_searchTeacher 1



--transaction in a stored procedure that updates learners
Alter Procedure sp_UpdateLearner
@learnId Int,
@firstname varchar(100),
@lastname varCHAR(100),
@age int
As
begin Transaction
update Learner 
set FirstName = @firstname, LastName = @lastname, Age = @age
where Learner_ID = @learnId
commit;

execute sp_UpdateLearner 12, 'sims', 'doom2', 12









