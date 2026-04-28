
#creando base de datos

create database ventas_jugos;

create schema if not exists ventas_jugos2;

#eliminando database 
drop database ventas_jugos2;

create schema if not exists ventas_jugos2 default charset utf32;
