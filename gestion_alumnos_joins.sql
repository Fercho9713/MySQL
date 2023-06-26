use gestion;

/* Voy a establecer las primary key y las foreing key para poder comenzar a operar con los comandos de Join*/
alter table alumnos
add primary key (IdAlumno);

alter table asignaturas 
add primary key (IdAsignatura);

alter table carreras
add primary key (IdCarrera);

alter table notas add constraint fk_alum foreign key (IdAsignatura) 
references asignaturas (IdAsignatura);

alter table notas add constraint fk_alums foreign key (IdAlumno) 
references alumnos (IdAlumno);

alter table asignaturaxcarrera add constraint fk_asig foreign key (IdAsignatura) 
references asignaturas (IdAsignatura);

alter table asignaturaxcarrera add constraint fk_asign foreign key (IdCarrera) 
references carreras (IdCarrera);

/* Voy a filtar todas aquellas asignaturas que fueron aprobadas con mas de 4*/

select notas.nota, asignaturas.nombre, carreras.nombre
from notas 
left join asignaturas on notas.IdAsignatura = asignaturas.IdAsignatura
left join asignaturaxcarrera on notas.IdAsignatura = asignaturaxcarrera.IdAsignatura
left join carreras on asignaturaxcarrera.IdCarrera = carreras.IdCarrera
where notas.nota >= 4 and carreras.nombre = "Abogacia";


/* Ahora veamos los alumnos que han reprobado materias, indistintamente de la carrera que estan cursando */
/* Y cuales fueron las materias que reprobaron */

select alumnos.Nombre, asignaturas.Nombre, notas.Nota 
from notas
left join alumnos on notas.IdAlumno = alumnos.IdAlumno
left join asignaturas on notas.IdAsignatura = asignaturas.IdAsignatura
where notas.nota < 4;

/* Veamos cuales son las materias mas concurridas dentro de la institucion*/

select Nombre, count(*) as total
from asignaturas
left join notas on asignaturas.IdAsignatura = notas.IdAsignatura
group by Nombre
order by total desc;

/* Observamos que las 3 materias mas concurridas son
Analisis Matematico I, Algebra I y Derecho Penal*/

/* Ahora veamos quienes fueron los alumnos mas sobresalientes, del mayor al menor, 
tomando como parametro el promedio de las dos notas registradas x alumno */

select alumnos.nombre , avg(notas.nota) as promedio
from notas
left join alumnos on notas.IdAlumno = alumnos.IdAlumno
group by Nombre
order by promedio desc;

/*Observamos que el alumno Franco Araujo es el alumno con el mejor promedio, con 7,50,
mientras que el alumno Oscar Aguirre posee el peor promedio del instituto, con un 2*/
