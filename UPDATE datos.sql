use jugos;


UPDATE tbproductos SET precio = 28.51
where producto = '695594';


-- desactivar modo seguro
SET SQL_SAFE_UPDATES = 0;


select * from tbproductos;


UPDATE tbproductos SET sabor = 'Lima Limon'
where producto = '1041119';