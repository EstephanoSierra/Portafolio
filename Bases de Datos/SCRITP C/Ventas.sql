DROP DATABASE IF EXISTS VENTAS;
CREATE DATABASE VENTAS;
USE VENTAS;

CREATE TABLE CLIENTE(
id_cliente int auto_increment PRIMARY KEY,
nombre varchar(100),
apellido1 varchar(100),
apellido2 varchar(100),
ciudad varchar(100)

);

CREATE TABLE COMERCIAL(
id_comercial int auto_increment PRIMARY KEY,
nombre varchar(100),
apellido1 varchar(100),
apellido2 varchar(100),
comision float
);

CREATE TABLE PEDIDO(
id_pedido int auto_increment PRIMARY KEY,
total double,
fecha date,
id_cliente int,
id_comercial int,
FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente),
FOREIGN KEY (id_comercial) REFERENCES COMERCIAL(id_comercial) 
);

INSERT INTO CLIENTE
VALUES
(NULL, "Estephano", "Hernandez", "Garcìa", "Coban"),
(NULL, "Nicolas", "Soto", "Samayoa", "Carcha"),
(NULL, "Juan", "Yaxcal", "Dubon", "Chamelco"),
(NULL, "Manuel", "Pelaez", "Tox", "Coban"),
(NULL, "Franchesca", "Hooper", "Garcia", "Ciudad de Guatemala");

SELECT nombre
FROM CLIENTE
WHERE ciudad IN("Coban", "Carcha");

INSERT INTO COMERCIAL
VALUES
(NULL, "Maria", "Martinez", "Perez", 500),
(NULL, "Kevin", "Bautista", "Hun", 1500),
(NULL, "Julian", "Hun", "Prado", 2550),
(NULL, "Jimena", "Pacay", "Bosarreyes", 875),
(NULL, "Alejandro", "Garcia", "Granillo", 987);

SELECT nombre, apellido1
FROM COMERCIAL
WHERE comision > 1000;

INSERT INTO PEDIDO
VALUES
(NULL, 680, "2022-07-25", 1, 2),
(NUll, 750, "2022-08-20", 5, 1),
(NULL, 540, "2022-05-17", 3, 5),
(NULL, 900, "2022-08-24", 4, 3),
(NULL, 1500, "2022-04-16", 2, 4);


SELECT total, fecha, id_comercial
FROM pedido
WHERE id_cliente = 1;