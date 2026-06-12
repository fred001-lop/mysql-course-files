CREATE TABLE tb_identificacion (
ID INT auto_increment NOT NULL,
DESCRIPCION VARCHAR (50),
primary key (ID)
);

SELECT * FROM tb_identificacion;

insert into tb_identificacion (DESCRIPCION) 
values('Cliente A');
insert into tb_identificacion (DESCRIPCION) 
values('Cliente B');
insert into tb_identificacion (DESCRIPCION) 
values('Cliente C');
insert into tb_identificacion (DESCRIPCION) 
values('Cliente D');
insert into tb_identificacion (DESCRIPCION) 
values('Cliente E');


delete from tb_identificacion where id=6;

insert into tb_identificacion (DESCRIPCION) 
values('Cliente H');

insert into tb_identificacion (ID, DESCRIPCION) 
values(100,'Cliente E');


#AUNQUE EL VALOR INGRESADO SEA NULL EL VALOR SIEMPRE SE AUTOINCREMENTARA

insert into tb_identificacion (ID, DESCRIPCION) 
values(NULL,'Cliente E');
