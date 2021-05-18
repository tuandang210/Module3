create database QuanLyBanHang;

use QuanLyBanHang;

create table Customer
(
    cId   int         NOT NULL PRIMARY KEY,
    cName varchar(50) NOT NULL,
    cAge  varchar(50)
);

create table Order1
(
    oID         int         NOT NULL PRIMARY KEY,
    cId         int         NOT NULL,
    oDate       datetime    NOT NULL,
    oTotalPrice varchar(50) NOT NULL,
    FOREIGN KEY (cId) references Customer (cId)
);

create table Product
(
    pId     int         NOT NULL PRIMARY KEY,
    pName   varchar(50) NOT NULL,
    pPrince varchar(50) NOT NULL
);

create table OrderDetail
(
    oId   int NOT NULL,
    pId   int NOT NULL,
    PRIMARY KEY (oId, pId),
    FOREIGN KEY (oId) references Order1 (oID),
    FOREIGN KEY (pId) references Product (pId),
    odQTY varchar(50)
);