#usando like


select * from tabla_de_productos where sabor like '%manzana';
select * from tabla_de_productos where sabor like '%manzana' and 
envase = 'Botella Pet';