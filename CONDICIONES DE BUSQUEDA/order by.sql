

#order by

select * from tabla_de_productos;

select * from tabla_de_productos order by PRECIO_DE_LISTA;
select * from tabla_de_productos order by PRECIO_DE_LISTA desc;

select * from tabla_de_productos order by NOMBRE_DEL_PRODUCTO;
select * from tabla_de_productos order by NOMBRE_DEL_PRODUCTO desc;
select * from tabla_de_productos order by envase asc, nombre_del_producto desc;