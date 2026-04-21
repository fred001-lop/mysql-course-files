#JOIN

SELECT * FROM tabla_de_vendedores;
SELECT * FROM facturas;


#inner join

select * from tabla_de_vendedores A
inner join
facturas B
ON A.MATRICULA = B.MATRICULA;


select A.NOMBRE, B.MATRICULA, count(*) from tabla_de_vendedores A
inner join
facturas B
ON A.MATRICULA = B.MATRICULA
group by A.NOMBRE, B.MATRICULA;


SELECT A.NOMBRE, B.MATRICULA, COUNT(*)
FROM tabla_de_vendedores A, facturas B
WHERE A.MATRICULA = B.MATRICULA 
GROUP BY A.NOMBRE, B.MATRICULA;