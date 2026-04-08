use jugos;

select * from tbcliente;

select DNI from tbcliente;

select nombre as nombre_completo, sexo  as genero, edad as años, direccion1 as domicilio from tbcliente;

select nombre, sexo, edad, direccion1 from tbcliente limit 6;