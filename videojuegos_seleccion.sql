use videojuegos

select * from ventas

#Quiero saber cuantas ventas obtuvo en EE.UU la empresa Nintendo durante la decada los 90

select sum(NA_Sales) from ventas where Publisher = "Nintendo" and Year between 1990 and 1999

#Nos devuelve que en EE.UU tuvo unas ventas de 12.32 millones de dolares en la decada de los 90
#Veamos para el resto de las regiones para Nintendo

select sum(EU_Sales) from ventas where Publisher = "Nintendo" and Year between 1990 and 1999

select sum(JP_Sales) from ventas where Publisher = "Nintendo" and Year between 1990 and 1999

#Agreguemos tambien las ventas globales

select sum(Global_Sales) from ventas where Publisher = "Nintendo" and Year between 1990 and 1999

#Observamos que Nintendo tuvo un total de 33 millones de ventas en todo el mundo durante los 90

#Supongamos que queremos ver las ventas globales de videjuegos en los noventa pero de todas las companias

select sum(Global_Sales) from ventas where Year >= 1990 and Year <= 1999

select sum(EU_Sales) from ventas where Publisher = "Electronic Arts"

