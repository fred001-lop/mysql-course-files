USE JUGOS_VENTAS;

select * from tabla_de_productos;

select nombre_del_producto, precio_de_lista,
case
	when PRECIO_DE_LISTA >= 12 then "Costoso"
    when PRECIO_DE_LISTA >= 5  AND PRECIO_DE_LISTA < 12 then "Asequible"
    else "Barato"
end as PRECIO
from tabla_de_productos;

select ENVASE, SABOR,
case
	when PRECIO_DE_LISTA >= 12 then "Costoso"
    when PRECIO_DE_LISTA >= 5  AND PRECIO_DE_LISTA < 12 then "Asequible"
    else "Barato"
end as PRECIO, MIN(PRECIO_DE_LISTA) AS PRECIO_MINIMO
from tabla_de_productos
WHERE TAMANO = '700 ml' 
group by ENVASE, SABOR,
case
	when PRECIO_DE_LISTA >= 12 then "Costoso"
    when PRECIO_DE_LISTA >= 5  AND PRECIO_DE_LISTA < 12 then "Asequible"
    else "Barato"
end
order by ENVASE;






