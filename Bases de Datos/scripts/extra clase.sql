drop database edificio;
create database edificio;
use edificio;

create table departamento (
codigo_departamento int primary key not null,
nombre varchar(100) not null,
presupuesto double not null
);

create table empleado(
codigo int primary key not null,
nit varchar(9)not null,
nombre varchar(100) not null,
apellido1 varchar(100) not null,
apellido2 varchar(100) not null,
codigo_departamento int not null,
foreign key (codigo_departamento) references departamento(codigo_departamento)
);

INSERT INTO departamento VALUES(1,"coronado",10000),
							   (2,"coronado",20000),
                               (3,"plazaLS",100),
                               (4,"plazaLS",10000),
                               (5,"solito",4093);
INSERT INTO empleado VALUES(10,"123456-78","Pablo","Orozco","Gonsalez",1),
						   (11,"987642-88","juan","Sierra","Belteton",1),
                           (22,"132465-77","Kevin","Orozco","Pop",3),
                           (33,"123456-08","Julian","Prado","Escobar",4),
                           (44,"135523-63","Jose","Bautista","Perez",5);


select apellido1 from empleado;
select distinct apellido1 from empleado;
select * from empleado;
select nombre, apellido1, apellido2 from empleado;
select codigo_departamento from empleado;
select distinct codigo_departamento from empleado;
SELECT nombre, apellido1, apellido2 FROM empleado;
select concat_ws('     ',upper(nombre), upper(apellido1), upper(apellido2)) from empleado;
/*concat sirve para concatenar y concat_ws sirve para concatenar con espacios*/
/*upper sirve para hacer mayusculas y lower para minusculas*/
select concat_ws('    ', lower(nombre),lower(apellido1),lower(apellido2)) from empleado;
select nombre, apellido1,apellido2,nit from empleado where (codigo_departamento = 3);
select nombre, apellido1,apellido2,nit from empleado where (codigo_departamento = 2 or codigo_departamento = 4 or codigo_departamento = 5);