use ventas_jugos;


select * from tb_producto;

select * from tb_vendedor;
update tb_producto set precio_lista= 5 where codigo= '1000889'; 

update tb_producto set descripcion='Sabor de la montaña', tamano ='1 Litro',
envase='Botella PET' where codigo = '1000889'; 

select * from tb_clientes;


UPDATE tb_clientes set volumen_compra = volumen_compra/10;