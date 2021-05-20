Use quanlysinhvien;

SELECT * FROM subject
WHERE Credit =  (SELECT MAX(Credit) FROM subject);

SELECT* FROM subject join mark m on subject.SubId = m.SubId
WHERE m.Mark = (SELECT Max(Mark) FROM mark);

SELECT *, AVG(mark) FROM student Left join mark m on student.StudentId = m.StudentId
GROUP BY m.StudentId
ORDER BY AVG(mark) DESC;