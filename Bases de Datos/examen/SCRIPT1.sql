drop database tienda;
create database tienda;
use tienda;

create table venta(
id_venta int primary key not null,
cantidad int not null,
comision float not null
);

create table producto(
id_producto int primary key not null,
descripcion varchar(100) not null,
precio float not null,
categoria varchar(50) not null,
id_venta int not null,
foreign key (id_venta) references venta(id_venta)
);

create table cliente(
id_cliente varchar(50) primary key not null,
nombre varchar(50) not null,
direccion varchar(50) not null,
telefono varchar(12) not null,
ciudad varchar(50) not null,
id_producto int not null,
foreign key (id_producto) references producto(id_producto)
);