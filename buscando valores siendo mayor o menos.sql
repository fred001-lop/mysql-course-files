#filtrando de mayor a menor

select * from tbcliente where edad > 27; 
select * from tbcliente where edad <= 27;
select * from tbcliente where edad <> 26;

select * from tbcliente where NOMBRE > 'Erica Carvajo';
select * from tbcliente where NOMBRE <= 'Erica Carvajo';

select * from tbproducto;

SELECT * FROM tbproducto where PRECIO_LISTA > 28.51;
SELECT * FROM tbproducto where PRECIO_LISTA < 28.51;

select * from tbproducto where PRECIO_LISTA between 28.49 and 28.52;