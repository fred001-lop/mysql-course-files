#UTILIZANDO DISTINCT

SELECT envase, tamano from tabla_de_productos;


SELECT distinct envase, tamano from tabla_de_productos;

select distinct  envase, tamano, sabor from tabla_de_productos
where sabor = 'Naranja';