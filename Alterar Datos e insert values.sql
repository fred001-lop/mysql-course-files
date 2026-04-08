use jugos;

ALTER TABLE tbclientes ADD primary key (DNI);

ALTER TABLE tbclientes ADD column(FECHA_NACIMIENTO DATE);

insert into tbclientes(
DNI,
NOMBRE,
DIRECCION1,
DIRECCION2,
BARRIO,
CIUDAD,
ESTADO,
CP,
EDAD,
SEXO,
LIMITE_CREDITO,
VOLUMEN_COMPRA,
PRIMERA_COMPRA,
FECHA_NACIMIENTO
)values( '9283760794', 'Fredy', 'Sta Úrsula Xitla
', '', 'Barrio del Niño Jesús', 'Ciudad de México', 'CDMX', '22002', '55','M', '1000000', '2000', 0, '1995-01-07');

SELECT * FROM tbclientes;