#having


select ESTADO, sum(limite_de_credito)as limite_Total
from tabla_de_clientes group by estado;

#dara errror
select ESTADO, sum(limite_de_credito)as limite_Total
from tabla_de_clientes WHERE limite_Total > 300000
group by estado;

select ESTADO, sum(limite_de_credito)as limite_Total
from tabla_de_clientes 
group by estado
having limite_Total > 300000;


select envase, max(precio_de_lista) as Precio_Maximo,
Min(precio_de_lista) as Precio_Minimo
from tabla_de_productos 
group by envase;

select envase, max(precio_de_lista) as Precio_Maximo,
Min(precio_de_lista) as Precio_Minimo
from tabla_de_productos 
group by envase
having sum(PRECIO_DE_LISTA) > 80;


select envase, max(precio_de_lista) as Precio_Maximo,
Min(precio_de_lista) as Precio_Minimo,
sum(PRECIO_DE_LISTA) as suma_Precio
from tabla_de_productos 
group by envase
having sum(PRECIO_DE_LISTA) > 80;


select envase, max(precio_de_lista) as Precio_Maximo,
Min(precio_de_lista) as Precio_Minimo,
sum(PRECIO_DE_LISTA) as suma_Precio
from tabla_de_productos 
group by envase
having sum(PRECIO_DE_LISTA) >= 80 
and max(PRECIO_DE_LISTA) >= 5;
