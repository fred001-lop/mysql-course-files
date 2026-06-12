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


INSERT INTO tb_producto (CODIGO,DESCRIPCION,SABOR,TAMANO,ENVASE,PRECIO_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);
         
         
SELECT * FROM tb_producto WHERE DESCRIPCION = 'Sabor Alpino';




/*borramos con delete tiene que llevar una condicion*/

delete from tb_producto where codigo = '1001000';
delete from tb_producto where TAMANO = '1 Litro';


select codigo_del_producto from jugos_ventas.tabla_de_productos;
select codigo from tb_producto where codigo not in (select CODIGO_DEL_PRODUCTO from jugos_ventas.tabla_de_productos);


delete from tb_producto WHERE 
codigo not in (select CODIGO_DEL_PRODUCTO from jugos_ventas.tabla_de_productos);



