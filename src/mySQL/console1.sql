create database QuanLySinhVien;

use QuanLySinhVien;

create table Class(
  ClassId int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  ClassName varchar(60) NOT NULL ,
  StartDate datetime NOT NULL ,
  Status bit
);

create table Student(
  StudentId int NOT NULL AUTO_INCREMENT PRIMARY KEY ,
  StudentName varchar(30) NOT NULL ,
  Address varchar(50),
  Phone varchar(20),
  Status bit,
  ClassId int NOT NULL ,
  FOREIGN KEY (ClassId) references Class(ClassId)
);

create table Subject(
  SubId int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  SubName varchar(30) NOT NULL ,
  Credit TINYINT NOT NULL DEFAULT 1 CHECK ( Credit>=1 ),
  Status bit DEFAULT 1
);

create table Mark(
    MarkId int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    SubId int NOT NULL ,
    StudentId int NOT NULL ,
    Mark float DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTime tinyint DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) references Subject (SUBID),
    FOREIGN KEY (StudentId) references Student(StudentId)
);