USE ventas_jugos;

select * from jugos_ventas.tabla_de_productos;


select CODIGO_DEL_PRODUCTO AS CODIGO, NOMBRE_DEL_PRODUCTO AS DESCRIPCION,
SABOR, TAMANO, ENVASE, PRECIO_DE_LISTA AS PRECIO_LISTA
FROM jugos_ventas.tabla_de_productos
where CODIGO_DEL_PRODUCTO not in(SELECT CODIGO FROM tb_producto);

INSERT INTO tb_producto
 select CODIGO_DEL_PRODUCTO, NOMBRE_DEL_PRODUCTO AS DESCRIPCION,
SABOR, TAMANO, ENVASE, PRECIO_DE_LISTA AS PRECIO_LISTA
FROM jugos_ventas.tabla_de_productos
where CODIGO_DEL_PRODUCTO not in(SELECT CODIGO FROM tb_producto);



select * from tb_producto;