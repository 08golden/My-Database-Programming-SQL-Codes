Create database FIC
Use FIC

Create table students 
(
[stdID] INT NOT NULL primary key,
[Lastname] varchar(35),
[Firstname] varchar(35),
[Department] varchar(35),
[Age] INT,
[Course] varchar(35)
)
 INSERT INTO students(stdID,Lastname,Firstname,Department,Age,Course)
 Values(125,'Uusiku','Herman', 'Software Engineering',25,'Database Fun'),
       (126, 'Brown','Jack','Software Engineering',26, 'Database Fun')


