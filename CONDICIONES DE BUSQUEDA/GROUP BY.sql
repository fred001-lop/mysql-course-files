#GROUP BY

select ESTADO, sum(limite_de_credito)as limite_Total
from tabla_de_clientes group by estado;

select envase, precio_de_lista from tabla_de_productos;

select envase, max(precio_de_lista) AS precio_maximo from tabla_de_productos group by envase; 

select envase, count(*) from tabla_de_productos group by envase; 


select barrio, sum(limite_de_credito) as limite
from tabla_de_clientes where ciudad = 'Ciudad de Mexico'
group by barrio;

select ciudad, barrio, sum(limite_de_credito) as limite
from tabla_de_clientes where ciudad = 'Ciudad de Mexico'
group by barrio;

select ciudad, barrio, sum(limite_de_credito) as limite
from tabla_de_clientes where ciudad = 'Guadalajara'
group by barrio;

USE jugos_ventas;

select ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) as limite
from tabla_de_clientes GROUP BY ESTADO, BARRIO;


SELECT ESTADO, BARRIO, MAX(LIMITE_DE_CREDITO) AS LIMITE,
EDAD FROM tabla_de_clientes
WHERE EDAD >= 20
group by ESTADO, BARRIO, EDAD
ORDER BY EDAD;



