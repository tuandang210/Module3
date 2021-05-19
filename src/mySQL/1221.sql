use quanlybanhang;

ALTER TABLE customer
    MODIFY COLUMN cAge tinyint;

INSERT INTO customer value (1, 'Minh Quan', 10),
    (2, 'Ngoc Oanh', 20),
    (3, 'Hong Hà', 50);

ALTER TABLE order1
    MODIFY COLUMN oTotalPrice int;

INSERT INTO order1 value (1, 1, '2006/3/21', NULL),
    (2, 2, '2006/3/23', NULL),
    (3, 1, '2006/3/16', NULL);

ALTER TABLE product
    MODIFY COLUMN pPrince int;

INSERT INTO product value (1, 'May giat', 3),
    (2, 'Tu lanh', 5),
    (3, 'Dieu hoa', 7),
    (4, 'Quat', 1),
    (5, 'Bep dien', 2);

ALTER TABLE orderdetail
    MODIFY COLUMN odQTY int;

INSERT INTO orderdetail value (1, 1, 3),
    (1, 3, 7),
    (1, 4, 2),
    (2, 1, 1),
    (3, 1, 8),
    (2, 5, 4),
    (2, 3, 3);

SELECT oID, oDate, oTotalPrice
FROM order1;

SELECT c.cid,o.oDate, c.cName, p.pName
FROM customer c join order1 o on c.cId = o.cId join orderdetail o2 on o.oID = o2.oId join product p on o2.pId = p.pId;

SELECT *
FROM customer
WHERE (cId != 1 && customer.cId!=2);


UPDATE order1 SET oTotalPrice = 60
WHERE oID =1;

UPDATE order1 SET oTotalPrice = 32
WHERE oID =2;

UPDATE order1 SET oTotalPrice = 24
WHERE oID =3;

SELECT oID, oDate, oTotalPrice
FROM order1
