CREATE DATABASE AB104

USE AB104

CREATE TABLE Students (
    ID INT PRIMARY KEY IDENTITY,
    Name VARCHAR(25) NOT NULL,
    Surname VARCHAR(25) DEFAULT 'XXX',
    Age INT CHECK (Age >= 16),
    AvgPoint DECIMAL(5, 2) CHECK (AvgPoint >= 0 AND AvgPoint <= 100)
)

INSERT INTO Students (Name, Surname ,Age, AvgPoint)
VALUES ('John', 'Wick', 18, 85.5)

INSERT INTO Students (Name, Surname , Age, AvgPoint)
VALUES ('Ryan', 'Gosling', 20, 92.0)

INSERT INTO Students (Name, Surname , Age, AvgPoint)
VALUES ('Bob', 'King', 19, 78.5)

INSERT INTO Students (Name, Surname , Age, AvgPoint)
VALUES ('Patrick', 'Bateman', 17, 95.5)

INSERT INTO Students (Name, Age, AvgPoint)
VALUES ('Tyler', 16, 40.0)

INSERT INTO Students (Name, Surname , Age, AvgPoint)
VALUES ('Mike', 'OHearn ' , 54, 40.0)

SELECT * FROM Students
WHERE AvgPoint > 51

SELECT * FROM Students
WHERE AvgPoint > 51 AND AvgPoint < 90

SELECT * FROM Students
WHERE Name LIKE 'P%k'

SELECT * FROM Students
WHERE Surname LIKE 'G%g'

SELECT * FROM Students
WHERE AvgPoint < 51 AND Age > 20

SELECT * FROM Students 