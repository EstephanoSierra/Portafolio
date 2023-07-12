drop database productos1;

create database productos1;
/* Y comenzar a usarla:*/
use productos1;
/*Para crear la tabla haríamos:*/

create table proveedor (
  codigo_prov int Primary key NOT NULL,
  telefono varchar(11) NOT NULL
);


create table productos (
  codigo int Primary key auto_increment NOT NULL,
  nombre varchar(30) NOT NULL,
  precio decimal(6,2) NOT NULL,
  fechaalta date,
  foreign key (codigo) references proveedor(codigo_prov)
);


/*Para introducir varios datos de ejemplo:*/
insert into proveedor
values ('1','1342-1234'),
('2','1234-1234'),
('3','1234-1324');



insert into productos 
values ('1','Afilador', 2.50, '2007-11-02'),
('2','Silla mod. ZAZ', 20, '2007-11-03'),
('3','Silla mod. XAX', 25, '2007-11-03');

/*DISEÑAR UNA CONSULTA QUE MUESTRE LOS CODIGOS Y LOS NOMBRES DE LOS PRODUCTOS*/

SELECT codigo, nombre FROM productos
WHERE precio = 20; 
