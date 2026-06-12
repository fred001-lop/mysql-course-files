use ventas_jugos;


CREATE TABLE tb_facturacion(
FECHA DATE NULL,
VENTA_TOTAL FLOAT
);
CREATE TABLE `tb_items_facturas1` (
  `NUMERO` varchar(5) NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `CANTIDAD` int DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`NUMERO`,`CODIGO`),
  KEY `FK_PRODUCTO1` (`CODIGO`),
  CONSTRAINT `FK_FACTURA1` FOREIGN KEY (`NUMERO`) REFERENCES `tb_factura` (`NUMERO`),
  CONSTRAINT `FK_PRODUCTO1` FOREIGN KEY (`CODIGO`) REFERENCES `tb_producto` (`CODIGO`)
);


select * from tb_items_facturas1;
select * from tb_factura1;

select * from tb_clientes;
select * from tb_vendedor;
select *from tb_producto;

insert into tb_factura1
values('0100', '2021-01-01', '1471156710', '235', 0.10);

INSERT INTO tb_factura VALUES
('0100', '2026-06-11', '1471156710', '235', 0.16);
INSERT INTO tb_items_facturas1 VALUES
('0100', '1002767', 100, 25),
('0100', '1004327', 200, 25),
('0100', '1013793', 300, 25);

select A.FECHA, sum(B.CANTIDAD * B.PRECIO) AS VENTA_TOTAL
FROM tb_factura1 A
INNER JOIN
tb_items_facturas1 B
ON A.NUMERO = B.NUMERO;
