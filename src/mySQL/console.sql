create database QuanLyDiemThi;

use QuanLyDiemThi;

create table HocSinh
(
    mahocsinh varchar(50) primary key,
    tenhs     varchar(50),
    ngaysinh  varchar(50),
    lop       varchar(50),
    gt        varchar(50)
);

create table monhoc
(
    mamonhoc  varchar(20) primary key,
    tenmonhoc varchar(50)
);

create table bangdiem
(
    MaHs        varchar(20),
    Mamonhoc    varchar(20),
    DiemThi     int,
    ngayKiemTra datetime,
    primary key (MaHs, Mamonhoc),
    foreign key (MaHs) references hocsinh (mahocsinh),
    foreign key (Mamonhoc) references monhoc (mamonhoc)
);

CREATE TABLE GiaoVien(
    MaGV  VARCHAR(20) PRIMARY KEY,
    TenGV VARCHAR(20),
    SDT   VARCHAR(10)
);

alter table monhoc add maGV varchar(20);
alter table monhoc add constraint fk_MaGv foreign key (maGV) references giaovien(MaGV);