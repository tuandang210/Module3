use quanlysinhvien;

SELECT s.StudentId, s.StudentName, s.Address, s.Phone, s.Status, c.classname, c.startdate
FROM student s join class c on c.ClassId = s.ClassId
WHERE StudentName like 'H%';

SELECT c.ClassName,c.StartDate ,s.StudentName, s.Address, s.Phone, s.Status
FROM class c join student s on c.ClassId = s.ClassId
WHERE StartDate like '%-12-%';

SELECT * FROM subject WHERE Credit BETWEEN 3 AND 5;

UPDATE student SET ClassId = 2 WHERE StudentName='Hung';

SELECT s.StudentName, s2.SubName, m.Mark
FROM student s JOIN mark m on s.StudentId = m.StudentId join subject s2 on s2.SubId = m.SubId
GROUP BY Mark, StudentName
ORDER BY Mark DESC , StudentName;
