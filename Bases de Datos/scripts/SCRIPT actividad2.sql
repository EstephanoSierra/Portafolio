drop database Tienda;
create database Tienda;
use Tienda;

create table producto(
codigo_producto varchar(15) primary key not null,
nombre varchar(70) not null,
gama varchar(50) not null,
dimensiones varchar(25) not null,
proveedor varchar(50) not null,
descripcion text not null,
cantidad_en_stock smallint(6) not null,
precio_venta decimal(15,2) not null,
precio_proveedor decimal(15,2) not null,
foreign key (gama) references gama_producto(gama)
);

create table cliente(
codigo_cliente int(11) primary key not null,
nombre_cliente varchar(50) not null,
nombre_contacto varchar(30) not null,
apellido_contacto varchar(30) not null,
telefono varchar(15) not null,
fax varchar(15) not null,
linea_direccion1 varchar(50) not null,
linea_direccion2 varchar(50) not null,
ciudad varchar(50) not null,
region varchar(50) not null,
pais varchar(50) not null,
codigo_postal varchar(10) not null,
codigo_empleado_rep_ventas int(11) not null,
limite_creditos decimal(15,2) not null
);

create table pedido(
codigo_pedido int(11) primary key not null,
fecha_pedido date not null,
fecha_esperada date not null,
fecha_entrega date not null,
estado varchar(15) not null,
comentario text not null,
codigo_cliente int(11),
foreign key (codigo_cliente) references cliente(codigo_cliente)
);

create table detalle_pedido(
codigo_pedido int(11) not null,
codigo_producto varchar(15) not null,
cantidad int(11) not null,
precio_unidad decimal(15,2) not null,
numero_linea smallint(6),
foreign key (codigo_producto) references producto(codigo_producto), 
foreign key (codigo_pedido) references pedido(codigo_pedido)
);



create table gama_producto(
gama varchar(50) primary key not null,
descripcion_text text not null,
descripcion_html text not null,
imagen varchar(256) not null
);

create table oficina(
codigo_oficina varchar(10) not null,
ciudad varchar(30) not null,
pais varchar(50) not null,
region varchar(50) not null,
codigo_postal varchar(10) not null,
telefono varchar(20) not null,
linea_direccion1 varchar(50) not null,
linea_direccion2 varchar(50) not null,
foreign key (codigo_oficina) references empleado(codigo_oficina)
);

create table pago(
codigo_cliente int(11) not null,
forma_pago varchar(40) not null,
id_transaccion varchar(50) primary key not null,
fecha_pago date not null,
total decimal(15,2),
foreign key (codigo_cliente) references cliente(codigo_cliente)
);



create table empleado(
codigo_empleado int(11) primary key not null,
nombre varchar(50) not null,
apellid1 varchar(50) not null,
apellido2 varchar(50) not null,
extencion varchar(10) not null,
email varchar(100) not null,
codigo_oficina varchar(10) not null,
codigo_feje int(11) not null,
puesto varchar(50) not null,
foreign key (codigo_empleado) references cliente(codigo_empleado_rep_ventas),
foreign key (codigo_empleado) references empleado(codigo_jefe)
);


