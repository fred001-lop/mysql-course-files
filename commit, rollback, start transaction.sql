INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`VACACIONES`)
VALUES
('256',
'Fernando Ruiz',
'Oblatos',
'0.1',
'2015-06-14',
0);


select * from tb_vendedor;
START transaction;

INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`VACACIONES`)
VALUES
('257',
'Fernando Rojas',
'Oblatos',
'0.1',
'2015-06-14',
0);


INSERT INTO `ventas_jugos`.`tb_vendedor`
(`MATRICULA`,
`NOMBRE`,
`BARRIO`,
`COMISION`,
`FECHA_ADMISION`,
`VACACIONES`)
VALUES
('258',
'David Rojas',
'Del Valle',
'0.15',
'2015-06-14',
0);


UPDATE tb_vendedor set comision = comision * 1.05;
rollback;

commit;


