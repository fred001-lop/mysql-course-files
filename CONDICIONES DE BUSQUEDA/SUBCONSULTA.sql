SELECT distinct BARRIO FROM tabla_de_vendedores;

select * from tabla_de_clientes
where barrio in ('Condesa','Del Valle','Contadero','Oblatos');

select * from tabla_de_clientes
where barrio in (SELECT distinct BARRIO FROM tabla_de_vendedores);

select envase, max(precio_de_lista) as PRECIO_MAXIMO from tabla_de_productos
group by envase;


select X.envase, x.precio_maximo from 
(select envase, max(precio_de_lista) as PRECIO_MAXIMO from tabla_de_productos
group by envase) X WHERE X.precio_maximo >= 10;