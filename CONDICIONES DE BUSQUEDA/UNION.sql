use jugos_ventas;


SELECT distinct BARRIO from tabla_de_clientes;
select distinct barrio from tabla_de_vendedores;

SELECT distinct BARRIO from tabla_de_clientes
UNION
select distinct barrio from tabla_de_vendedores;

SELECT distinct BARRIO from tabla_de_clientes
UNION ALL
select distinct barrio from tabla_de_vendedores;

SELECT distinct BARRIO, NOMBRE, 'Cliente' as Tipo from tabla_de_clientes
UNION 
select distinct barrio, NOMBRE, 'Vendedor' as Tipo from tabla_de_vendedores;

SELECT distinct BARRIO, NOMBRE, 'Cliente' as TIPO_Cliente, DNI from tabla_de_clientes
UNION 
select distinct barrio, NOMBRE, 'Vendedor' as Tipo_Vendedor, MATRICULA from tabla_de_vendedores;



#full join

SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.ciudad, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE, VACACIONES
from tabla_de_clientes
left join
tabla_de_vendedores
on tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO
UNION
SELECT tabla_de_clientes.NOMBRE, tabla_de_clientes.CIUDAD, tabla_de_clientes.BARRIO, tabla_de_vendedores.NOMBRE, vacaciones
from tabla_de_clientes
right join
tabla_de_vendedores
on tabla_de_clientes.BARRIO = tabla_de_vendedores.BARRIO;
