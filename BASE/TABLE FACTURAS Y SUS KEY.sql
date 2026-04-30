use ventas_jugos;


create table tb_items_facturas(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10)NOT NULL,
CANTIDAD INT ,
PRECIO FLOAT,
primary key (NUMERO, CODIGO)
);

ALTER TABLE tb_items_facturas add constraint FK_FACTURA
FOREIGN KEY (NUMERO) references tb_factura (numero);

ALTER TABLE tb_items_facturas add constraint FK_PRODUCTO
FOREIGN KEY (codigo) references tb_producto (codigo);