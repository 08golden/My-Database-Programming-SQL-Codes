CREATE database Students
USE database Students

CREATE table Learners
(
[studentID] int NOT NULL primary key,
[studentName] varchar(10),
[studentSurname] varchar(10),
[course] varchar(10)
); 

INSERT INTO Learners(studentID,studentName,studentSurname,course)
            VALUES(123,'Mary', 'Johns','CS'),
			      (234, 'Joseph', 'Mark','EG'),
				  (454, 'James' ,'Luke', 'MCI');
SELECT *FROM Learners 

SELECT studentName from Learners;

SELECT *from Learners
WHERE  studentName LIKE 'J%';

SELECT *from Learners
WHERE studentID BETWEEN 200 AND 500;

UPDATE Learners
SET course ='ENG'
WHERE course ='CS';
  SELECT *from Learners
