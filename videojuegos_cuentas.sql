use videojuegos
SET SQL_SAFE_UPDATES = 0;

#Aqui se va a manipular la tabla con los valores en base a algunas preferencias que damos por supuestas

select * from ventas

#La columna Other_Sales no contiene informacion en niguna de las filas
#Por lo tanto esta columna sera descartada

alter table ventas
drop column Other_Sales;

#Comprobamos si la columna fue eliminada

select * from ventas

#Supongamos que los valores iguales a 0 de las columnas referias a las ventas en los diferentes continentes siginifican que no se tiene informacion al respecto de esas ventas
#Y supongamos que se quiere hacer un balance de las ventas entre las diferentes regiones
#Por lo que vamos a eliminar aquellas columnas que por lo menos contengan el valor 0 en algunos de sus casilleros

select *  from ventas where NA_Sales = 0 or EU_Sales = 0 or JP_Sales = 0

delete from ventas
where NA_Sales = 0 or EU_Sales = 0 or JP_Sales = 0

select * from ventas

#Ahora que eliminamos aquellas filas de cuyas ventas no tenemos registros,
#veamos con cuantos videojuegos nos quedaron

select count(*) from ventas

#Nos indica que nos quedaron 63 juegos que contienen todas las ventas de las diferentes regiones

select * from ventas

#Veamos ahora la sumatoria de todas las ventas por region
#Recordar que las ventas estan representan valores de millones

select sum(NA_Sales) from ventas

select sum(EU_Sales) from ventas

select sum(JP_Sales) from ventas

#Ahora sumamos las ventas globales

select sum(Global_Sales) from ventas




