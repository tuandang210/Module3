CREATE DATABASE BAITAPTHEMQUANLYSINHVIEN;

Use BAITAPTHEMQUANLYSINHVIEN;

CREATE TABLE Subject
(
    SubjectId   int PRIMARY KEY AUTO_INCREMENT,
    SubjectName varchar(50)
);

CREATE TABLE Classes
(
    ClassId   int PRIMARY KEY AUTO_INCREMENT,
    ClassName varchar(50)
);

CREATE TABLE Students
(
    StudentId   int PRIMARY KEY AUTO_INCREMENT,
    StudentName varchar(50),
    Age         int,
    Email       varchar(50)
);

CREATE TABLE Mark
(
    Mark      int,
    SubjectId int,
    StudentId int,
    FOREIGN KEY (SubjectId) REFERENCES Subject (SubjectId),
    FOREIGN KEY (StudentId) REFERENCES Students (StudentId)
);

CREATE TABLE ClassStudent
(
    StudentId int,
    ClassId   int,
    FOREIGN KEY (StudentId) REFERENCES Students (StudentId),
    FOREIGN KEY (ClassId) REFERENCES Classes (ClassId)
);

INSERT INTO Students (StudentName, Age, Email) value ('Nguyen Quang An', 18, 'an@yahoo.com');
INSERT INTO Students (StudentName, Age, Email) value ('Nguyen Cong Vinh', 20, 'vinh@yahoo.com');
INSERT INTO Students (StudentName, Age, Email) value ('Nguyen Van Quyen', 19, 'quyen@yahoo.com');
INSERT INTO Students (StudentName, Age, Email) value ('Pham Thanh Binh', 25, 'binh@yahoo.com');
INSERT INTO Students (StudentName, Age, Email) value ('Nguyen Van Tai Em', 30, 'taiem@yahoo.com');

INSERT INTO Classes (ClassName) VALUE ('C0706L'), ('C0708G');

INSERT INTO ClassStudent (StudentId, ClassId) value (1, 1), (2, 1), (3, 2), (4, 2), (5, 2);

INSERT INTO Subject (SubjectName) value ('SQL'),('Java'),('C'),('Visual Basic');

INSERT INTO Mark (SubjectId, StudentId, Mark) value (1, 1, 8), (2, 1, 4), (1, 1, 9),
    (1, 3, 7), (1, 4, 3), (2, 5, 5), (3, 3, 8), (3, 5, 1), (2, 4, 3);

-- câu 1
SELECT *
FROM Students
Order By StudentName;

-- câu 2
SELECT *
FROM Subject;

-- câu 3
SELECT *
FROM Students
WHERE Email like '%@yahoo.com';

-- câu 4
SELECT *
FROM Students
WHERE StudentName like 'Nguyen%';

-- câu 5
SELECT *
FROM Students
         join classstudent c on Students.StudentId = c.StudentId
         join Classes C2 on C2.ClassId = c.ClassId
WHERE ClassName = 'C0706L';

-- câu 6
SELECT M.StudentId, StudentName, M.Mark, S.SubjectName
FROM Students
         join Mark M on Students.StudentId = M.StudentId
         join Subject S on S.SubjectId = M.SubjectId
GROUP BY StudentName, M.StudentId, M.Mark, S.SubjectName
ORDER BY Mark DESC;

-- câu 7
SELECT *
FROM Students
WHERE StudentId NOT IN (SELECT StudentId FROM Mark);

-- câu 8
SELECT *
FROM Subject
WHERE SubjectId NOT IN (SELECT SubjectId FROM Mark);

-- câu 9
SELECT M.StudentId, StudentName, AVG(Mark)
FROM Students
         join Mark M on Students.StudentId = M.StudentId
GROUP BY StudentName, M.StudentId;

-- câu 10
SELECT SubjectId, COUNT(SubjectId)
FROM Mark
GROUP BY Mark.SubjectId
ORDER BY COUNT(SubjectId) DESC;

SELECT *
FROM Subject
WHERE SubjectId = 1;

-- câu 11
SELECT SubjectId, MAX(Mark)
FROM Mark;

SELECT *
FROM Subject
WHERE SubjectId = 1;

-- câu 12
SELECT s.SubjectId, s.SubjectName, COUNT(Mark)
FROM Mark
         join subject s on Mark.SubjectId = s.SubjectId
WHERE Mark < 5
GROUP BY s.SubjectName
ORDER BY COUNT(Mark) DESC;

SELECT *
FROM Subject
WHERE SubjectId = 2;

-- câu 13
ALTER TABLE Students
ADD CHECK ( Age>15 AND Age<50);

-- câu 14
# ALTER TABLE ClassStudent DROP FOREIGN KEY classstudent_ibfk_1;
# ALTER TABLE ClassStudent DROP FOREIGN KEY classstudent_ibfk_2;
# ALTER TABLE Mark DROP FOREIGN KEY mark_ibfk_1;
# ALTER TABLE Mark DROP FOREIGN KEY mark_ibfk_2;

-- câu 15
DELETE FROM Students
WHERE StudentId = 1;

-- câu 16
ALTER TABLE Students
ADD COLUMN Status bit DEFAULT 1;

-- câu 17
UPDATE Students SET Status = 0 WHERE Status =1;
