SELECT curdate();

select localtimestamp();

select year(current_timestamp());
select day(current_timestamp());
select monthname(current_timestamp);
select dayname(current_timestamp);
select datediff(current_timestamp(), "2026-01-01") as diferencia_de_dias;

select datediff(current_timestamp(), "2000-07-08") as diferencia_de_dias;

select current_timestamp()as dia_hoy, date_sub(current_timestamp(), interval 1 month) as resultado;



select distinct fecha_venta,
dayname(fecha_venta) as dia, monthname(fecha_venta) as mes, year(fecha_venta) as año
from facturas;