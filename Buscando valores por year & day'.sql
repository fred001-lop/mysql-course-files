#filtro con fechas

select * from tbcliente where FECHA_NACIMIENTO = "1995-01-13";
select * from tbcliente where FECHA_NACIMIENTO < "1995-01-13";
select * from tbcliente where FECHA_NACIMIENTO >= "1995-01-13";

select * from tbcliente where year(FECHA_NACIMIENTO) >= 1995;
select * from tbcliente where day(FECHA_NACIMIENTO) = 20;