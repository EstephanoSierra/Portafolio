
/*TC1 - JOINS
Laura Sofia Reiche Gonzalez
•
09:05
100 puntos
Fecha límite: 23:59

TC1.txt
Texto

¿Cómo funciona INNER JOIN, LEFT JOIN, RIGHT JOIN y FULL JOIN?
https://programacionymas.com/blog/como-funciona-inner-left-right-full-join
Comentarios de la clase
Tu trabajo
Asignada
Comentarios privados
Detalles de la tarea*/
DROP DATABASE IF EXISTS ventas;
CREATE DATABASE ventas;
USE ventas;


CREATE TABLE departamento (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL
);

CREATE TABLE empleado (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido1 VARCHAR(100) NOT NULL,
  apellido2 VARCHAR(100),
  id_depto int,
    FOREIGN KEY (id_depto) REFERENCES departamento (id)
);

/*JOINS --> INNER JOIN, LEFT JOIN, RIGHT JOIN*/

INSERT INTO departamento VALUES(1, 'Contabilidad'),
							   (2, 'Gerencia'),
							   (3, 'Personal Servicio'),
							   (4, 'Administración'),
							   (5, 'Auxiliatura');


INSERT INTO empleado VALUES(1, 'Daniel', 'Sáez', 'Vega', 1),
						   (2, 'Juan', 'Gómez', 'López', 1),
						   (3, 'Diego','Flores', 'Salas', 2),
						   (4, 'Marta','Herrera', 'Gil', 3),
						   (5, 'Antonio','Carretero', 'Ortega', 4);


/*EJEMPLO CLAUSULA INNER JOIN*/
/*Listar el nombre de los empleados y conocer el nombre del departamento
al que pertenecen: */

/*muestra el nombre del departamento y empleados que tengan el mismo id*/
select empleado.nombre,departamento.nombre from empleado inner join departamento on departamento.id = empleado.id_depto;
/*muestra el numero de departamento que y nombre de departamento que sean iguales a 1*/
select empleado.id_depto,departamento.nombre from empleado right join departamento on departamento.id = empleado.id_depto where id_depto = 1;
/*muestra el nombre departamento que sean igual a contabilidad y gerencia y empleados*/
select departamento.nombre,empleado.nombre from empleado left join departamento on departamento.id = empleado.id_depto where departamento.nombre in("Contabilidad","Gerencia");




