use ventas_jugos;

create table Tb_venta(
NUMERO VARCHAR(5) NOT NULL,
FECHA DATE NULL,
DNI VARCHAR (11) NOT NULL,
MATRICULA VARCHAR (5) NOT NULL,
IMPUESTO FLOAT NULL,
PRIMARY KEY (NUMERO)
);

ALTER TABLE Tb_venta ADD constraint FK_CLIENTE
foreign key (dni) references tb_clientes(dni);

ALTER TABLE Tb_venta ADD constraint FK_VENDEDOR
foreign key (MATRICULA) references tb_VENDEDOR(MATRICULA);