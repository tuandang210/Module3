use quanlysinhvien;

SELECT * FROM student;

SELECT * FROM student WHERE Status = true;

SELECT * FROM subject WHERE Credit < 10;

SELECT s.StudentId, s.StudentName, c.ClassName
FROM student s join class c on s.ClassId = c.ClassId
WHERE c.ClassName ='A1';

SELECT S.StudentId, S.StudentName, Sub.SubName, M.Mark
FROM Student S join Mark M on S.StudentId = M.StudentId join Subject Sub on M.SubId = Sub.SubId
WHERE Sub.SubName = 'CF';