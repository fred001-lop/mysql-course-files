CREATE TABLE tb_default(
ID INT auto_increment,
DESCRIPCION VARCHAR (50) NOT NULL,
DIRECCION VARCHAR (100) NULL,
CIUDAD VARCHAR (50) DEFAULT 'Monterrey',
FECHA_CREACION TIMESTAMP default current_timestamp(),
primary key(ID)
);


INSERT INTO tb_default(descripcion, direccion, ciudad, fecha_creacion)
values('Cliente X', 'Calle Sol, 525', 'Cancun', '2021-01-01');

select * from tb_default;

INSERT INTO tb_default(descripcion)
values('Cliente Y');
