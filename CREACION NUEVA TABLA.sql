CREATE TABLE `tb_producto2` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO_LISTA` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
);


SELECT * FROM tb_producto2;

INSERT INTO tb_producto2
SELECT * FROM tb_producto;

update tb_producto2 set precio_lista = precio_lista * 1.15;


delete from tb_producto2;

