#Cuales clientes han realizado compras validas y quienes han realizado compras invalidas

select * from facturas;
select * from items_facturas;


select f.dni, f.fecha_venta, Ifa.cantidad from facturas f
inner join items_facturas IFa on f.numero = ifa.numero;

#VAMOS AGREGAR BUSQUEDA POR MES Y ANO
select f.dni, date_format(f.fecha_venta, "%m - %Y") as MES_Año,  Ifa.cantidad from facturas f
inner join items_facturas IFa on f.numero = ifa.numero;

#CANTIDAD DE VENTAS POR MES PARA CADA CLIENTE

select f.dni, date_format(f.fecha_venta, "%m - %Y") as MES_Año, sum(IFa.CANTIDAD) as CANTIDAD_VENDIDA from facturas f
inner join items_facturas IFa on f.numero = ifa.numero
group by 
f.dni, date_format(f.fecha_venta, "%m - %Y");

#LIMITE de ventas por cliente (limite de venta de clientes en DECILITROS)

select * from tabla_de_clientes TC;

select dni, nombre, volumen_de_compra FROM tabla_de_clientes TC;


select f.dni,TC.nombre, date_format(f.fecha_venta, "%m - %Y") as MES_Año, sum(IFa.CANTIDAD) as CANTIDAD_VENDIDA, MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA
from facturas f
inner join items_facturas IFa
on f.numero = ifa.numero
INNER JOIN
tabla_de_clientes TC
on tc.dni = f.dni
group by 
f.dni,tc.NOMBRE, date_format(f.fecha_venta, "%m - %Y");


#subconsulta ver diferencia entre cantidad vendida y cantidad maxima para verificar si la venta es valida
SELECT a.dni, a.nombre, a.MES_Año, cantidad_vendida - cantidad_maxima as DIFERENCIA
from (select f.dni,TC.nombre, date_format(f.fecha_venta, "%m - %Y") as MES_Año, sum(IFa.CANTIDAD) as CANTIDAD_VENDIDA, MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA
from facturas f
inner join items_facturas IFa
on f.numero = ifa.numero
INNER JOIN
tabla_de_clientes TC
on tc.dni = f.dni
group by 
f.dni,tc.NOMBRE, date_format(f.fecha_venta, "%m - %Y")) A;


SELECT a.dni, a.nombre, a.MES_Año, cantidad_vendida - cantidad_maxima as DIFERENCIA,
CASE
	when (a.cantidad_vendida - a.cantidad_maxima) <= 0 THEN 'VENTA VALIDA'
	ELSE 'VENTA INVALIDA'
END AS STATUS_VENTA
from (select f.dni,TC.nombre, date_format(f.fecha_venta, "%m - %Y") as MES_Año, sum(IFa.CANTIDAD) as CANTIDAD_VENDIDA, MAX(VOLUMEN_DE_COMPRA)/10 AS CANTIDAD_MAXIMA
from facturas f
inner join items_facturas IFa
on f.numero = ifa.numero
INNER JOIN
tabla_de_clientes TC
on tc.dni = f.dni
group by 
f.dni,tc.NOMBRE, date_format(f.fecha_venta, "%m - %Y")) A;

