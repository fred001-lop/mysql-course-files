#UTILZANDO AND, OR, AND NOT, IN


select * from tabla_de_productos;



select * from tabla_de_productos where sabor = 'mango' and tamano = '470 ml';
select * from tabla_de_productos where sabor = 'mango' or tamano = '470 ml';
select * from tabla_de_productos where not (sabor = 'mango') or tamano = '470 ml';
select * from tabla_de_productos where not (sabor = 'mango' and tamano = '470 ml');
select * from tabla_de_productos where sabor = 'mango' and not ( tamano = '470 ml');

select * from tabla_de_productos where sabor in ('MANGO', 'UVA');

select * from tabla_de_productos where sabor = 'mango'or sabor = 'uva';
select * from tabla_de_clientes where ciudad in ('ciudad de mexico', 'guadalajara');

select * from tabla_de_clientes where ciudad in ('ciudad de mexico', 'guadalajara')
and edad > 30;

select * from tabla_de_clientes where ciudad in ('ciudad de mexico', 'guadalajara')
and (edad between 20 and 25);
