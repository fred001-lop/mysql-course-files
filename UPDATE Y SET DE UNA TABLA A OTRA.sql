select * from tb_vendedor;
select * from jugos_ventas.tabla_de_vendedores;

select * from tb_vendedor A 
inner join 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA, 3,3);

UPDATE tb_vendedor A
inner join 
jugos_ventas.tabla_de_vendedores B
ON A.MATRICULA = substring(B.MATRICULA, 3,3)
SET A.VACACIONES = B.VACACIONES;