drop database productos1;
create database productos1;
use productos1;

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
