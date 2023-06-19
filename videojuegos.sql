create database videojuegos;
use videojuegos;

select * from ventas
select Name, Genre from ventas 

select Name, Publisher from ventas where Publisher = "Capcom"
select Name, Publisher from ventas where Publisher = "Nintendo"
select Name, Publisher from ventas where Publisher = "Sony Computer Entertainment"

select Name, Year from ventas where Year = 1998
select Name, Year from ventas where Year = 1999
select Name, Year from ventas where Year = 2002 and Publisher = "Capcom"
select Name, Year from ventas where Year = 2009 and Publisher = "Sony Computer Entertainment"

select Name, Genre, Year from ventas where Genre = "Adventure"
select Name, Genre, Year from ventas where Genre = "Action" and Year >= 2000 and Year < 2010
select Name, Genre, Year from ventas where Genre = "Action" and Year >=1990 and Year < 2000

select distinct Genre from ventas
select distinct Publisher from ventas
select distinct Platform from ventas
select distinct Year from ventas

select * from ventas where Genre = "Adventure" and Year = "2000"

select * from ventas where Year = 2000 and (Genre = "Sports" or Genre = "Strategy")

select * from ventas order by Year





