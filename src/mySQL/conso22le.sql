use quanlysinhvien;

insert into class value (1, 'A1', '2008-12-20', 1);
insert into class value (2, 'A2', '2008-12-22', 1);
insert into class value (3, 'B3', current_date, 0);

INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Hung', 'Ha Noi', '0912113113', 1, 1);
INSERT INTO Student (StudentName, Address, Status, ClassId)
VALUES ('Hoa', 'Hai Phong', 1, 1);
INSERT INTO Student (StudentName, Address, Phone, Status, ClassId)
VALUES ('Manh', 'HCM', '0123123123', 0, 2);

INSERT INTO subject (SubName, Credit, Status)
value ('CF',5,1),
    ('C',6,1),
    ('HDI',5,1),
    ('RDBMS',10,1);

INSERT INTO Mark (SubId, StudentId, Mark, ExamTime)
VALUES (1, 1, 8, 1),
       (1, 2, 10, 2),
       (2, 1, 12, 1);