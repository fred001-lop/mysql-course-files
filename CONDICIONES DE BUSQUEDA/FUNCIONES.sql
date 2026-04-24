
#QUITAR ESPACIOS A LA IZQUIERDA
SELECT ltrim("   MYSQL ES FAcil:" );
#QUITAR LOS ESPACIOS A LA DERECHA
select rtrim("Mysql es facil    ");
#Quitar los espacios de ambos lados
select trim("   MYSQL ES FACIL   ");

#PARA CONCATENAR 

select concat("MYSQL es facil, " "No lo crees?");

#funcion para ponerlo en mayuscula

select upper("mysql es una base de datos interesante");

#para poner todo en miniscula

select lower("MSQL ES UNA BASE DE DATOS INTERESANTE");

#funcion para inciar de una parte dependiento de cada letra en el string luego colocar la cantidad de letras que se quieran mostrar
SELECT substring("Mysql es una base de datos interesante",  14, 4);  


#funcion para concatenar
select concat(NOMBRE, " " , DNI) FROM tabla_de_clientes;