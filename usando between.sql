#filtro compuestos

select * from tbproducto;

select * from tbproducto where PRECIO_LISTA between 28.49 and 28.52;
select * from tbproducto where ENVASE = 'lata'or ENVASE = 'Botella pet';

select * from tbproducto where (PRECIO_LISTA >= 15 and PRECIO_LISTA <= 25) or (ENVASE = 'lata' or ENVASE = 'Botella Pet');
