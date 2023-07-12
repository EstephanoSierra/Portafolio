/*TAREA CORTA 3*/
/*CREAR DOS ENTIDADES PRODUCTOS PEDIDOS*/

DROP DATABASE IF EXISTS control_pedidos;
CREATE DATABASE control_pedidos;
USE control_pedidos;

CREATE TABLE productos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  precio double not null
);

create table cliente(
id int auto_increment primary key,
nombre varchar(100) not null
);

CREATE TABLE pedidos(
  id INT AUTO_INCREMENT PRIMARY KEY,
  vendedor VARCHAR(100) NOT NULL,
  direccion_envio VARCHAR(100) NOT NULL,
  id_prod int,
  id_cliente int,
  FOREIGN KEY (id_prod) REFERENCES productos(id),
  foreign key (id_cliente) references cliente(id)
);

INSERT INTO productos VALUES(1, 'leche',3.5),
							(2, 'carne',48.3),
							(3, 'pastillas',13.3),
							(4, 'pasteles',100),
							(5, 'frijol',12.25);

INSERT INTO cliente VALUES (1, 'Estephano'),
						   (2, 'Javi'),
						   (3, 'Roberto'),
						   (4, 'JoseJ'),
						   (5, 'Kevin');

INSERT INTO pedidos VALUES (1, 'Daniel', 'coban',1,2),
						   (2, 'Juan', 'carcha',2,1),
						   (3, 'Diego','chamelco',4,3),
						   (4, 'Marta','coban',5,4),
						   (5, 'Antonio','tactic',3,5);
 
/*LISTAR TODOS LOS PEDIDOS, MOSTRANDO EL PRECIO Y LA DESCRIPCION DE PRODUCTO*/

/*select pedidos.*, precio, nombre from productos inner join pedidos on productos.id = pedidos.id_prod;*/
/*(/>.<)/*/

select pedidos.*, cliente.nombre, productos.precio 
from pedidos 
inner join cliente 
inner join productos 
on cliente.id = id_cliente 
and id_prod = productos.id 
 where productos.precio >= 15;







