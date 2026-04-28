SELECT current_timestamp() AS RESULTADO;
SELECT concat("La fecha y la hora de hoy son: ", current_timestamp()) as resultado;

select concat("La fecha y el horario son: ", 
date_format(current_timestamp(), "%W, /%d/%m/%Y,  a las %T")) AS RESULTADO;


#el char lo convierte a un string
select convert(23.45, char)as resultado;



select substring(convert(23.45, char),3,1) as resultado;

