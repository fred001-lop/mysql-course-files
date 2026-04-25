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

#LIMITE de ventas por cliente

select * from tabla_de_clientes TC;

