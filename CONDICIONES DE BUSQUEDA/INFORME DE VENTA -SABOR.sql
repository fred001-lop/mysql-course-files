#INFORME DE VENTAS POR SABOR

SELECT p.sabor, sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by P.SABOR, YEAR (F.fecha_venta)
order by sum(IFa.cantidad) desc;


#cantidad total por el año
SELECT sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by YEAR (F.fecha_venta);


SELECT sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by YEAR (F.fecha_venta);



SELECT * FROM(
SELECT p.sabor, sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by P.SABOR, YEAR (F.fecha_venta)
order by sum(IFa.cantidad) desc) ventas_sabor
INNER JOIN(
SELECT sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by YEAR (F.fecha_venta))venta_TOTAL
ON VENTA_TOTAL.año = ventas_sabor.año;







SELECT ventas_sabor.sabor, ventas_sabor.año, ventas_sabor.cantidad_total, round((ventas_sabor.cantidad_total/venta_total.cantidad_total)* 100,2) as PORCENTAJE FROM(
SELECT p.sabor, sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by P.SABOR, YEAR (F.fecha_venta)
order by sum(IFa.cantidad) desc) ventas_sabor
INNER JOIN(
SELECT sum(IFa.cantidad) AS CANTIDAD_TOTAL, year(fecha_venta) as AÑO FROM 
tabla_de_productos p
inner join 
items_facturas IFa
ON p.CODIGO_DEL_PRODUCTO = IFa.CODIGO_DEL_PRODUCTO
inner join
facturas f
on f.numero = IFa.numero
WHERE year(FECHA_VENTA)=2016
group by YEAR (F.fecha_venta))venta_TOTAL
ON VENTA_TOTAL.año = ventas_sabor.año
ORDER BY ventas_sabor.cantidad_total desc;

