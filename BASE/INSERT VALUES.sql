#INGRESO DE VALORES

use ventas_jugos;

insert into tb_producto(CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA)
VALUES('1040107', 'Light', 'Sandia', '350 ml', 'Lata', 4.56);


select * from tb_producto;


insert into tb_producto(CODIGO, DESCRIPCION, SABOR, TAMANO, ENVASE, PRECIO_LISTA)
VALUES('1040108', 'Light', 'Guanabana', '350 ml', 'Lata', 4.00);

insert into tb_producto
VALUES('1040109', 'Light', 'Asai', '350 ml', 'Lata', 5.60),
('1040110', 'Light', 'Manzana', '350 ml', 'Lata', 6.00),
('1040111', 'Light', 'Mango', '350 ml', 'Lata', 3.50) ;