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


insert into venta values(1,5,15.2),
						(2,10,23.3),
                        (3,4,6.8),
                        (4,5,10),
                        (5,29,69);
                        
insert into producto values(11,'leche',25,'lacteos',1),
						   (12,'jabon',10,'limpieza',2),
                           (13,'jamon',20,'carnes',3),
                           (14,'queso',25,'lacteos',4),
                           (15,'playera',50,'moda',5);
                           
insert into cliente values('AB568','estephano','calle 13 zona2','1432-1244','coban',11),
						  ('CD432','garcia','calle 2 zona3','carcha','1344-1235',12),
                          ('DA236','halga','calle 15 zona 2','chamelco','1344-6532',13),
                          ('GJ283','kevin','calle 2 zona 10','coban','2378-2631',14),
                          ('AD','jose','calle 6 zona 1','carcha','3189.5724',15);
                          
                          
                          
/*Mostrar en pantalla todos los datos de los clientes*/
select * from clientes;

/*Imprimir el nombre del producto con precio mayor*/
select descripcion,max(precio) from producto ;

/*Imprimir en pantalla el id de la venta con menor cantidad de producto vendida*/
select id_producto,min(id_venta) from producto;

/*Muestre en pantalla los datos del cliente con id AB568*/
select nombre,direccion,telefono,ciudad from cliente where id_cliente = 'AB568';

/*Muestre el precio promedio de los productos*/
select avg(precio) from producto;

