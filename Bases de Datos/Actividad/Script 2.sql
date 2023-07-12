
drop table if exists promedio;
create table promedio(
id int primary key not null IDENTITY(1,1),
estudiante varchar(50) not null
/*Aspecto1 int ,
Aspecto2 int ,
Aspecto3 int ,
Aspecto4 int ,
Aspecto5 int ,
nota int ,
sobre int */
);



drop table if exists alumno;
create table alumno(
id int primary key not null ,
calificacion_bimestre int ,
id_alumno int ,
foreign key(id_alumno) references promedio(id)
);


insert into promedio values(1,'Estephano'),
						   (2,'Javi'),
						   (3,'Kevin'),
						   (4,'Jose'),
						   (5,'Julian');

insert into alumno values  (1,25,1),
						   (2,25,2),
						   (3,25,3),
						   (4,25,4),
						   (5,25,5);

