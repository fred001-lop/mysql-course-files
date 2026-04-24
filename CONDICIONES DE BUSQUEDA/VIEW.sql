select envase, max(precio_de_lista) as PRECIO_MAXIMO from tabla_de_productos
group by envase;

select x.envase, x.precio_maximo from
vw_envases_grandes x 
where precio_maximo >= 10;

select a.nombre_del_producto, a.envase, a.precio_de_lista, b.precio_maximo 
from tabla_de_productos a
inner join
vw_envases_grandes b
on a.envase = b.envase;

select a.nombre_del_producto, a.envase, a.precio_de_lista, ((a.precio_de_lista / b.precio_maximo)-1)*100 as PORCENTAJE_DE_VARIACION 
from tabla_de_productos a
inner join
vw_envases_grandes b
on a.envase = b.envase;