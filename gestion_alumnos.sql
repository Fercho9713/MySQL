create database gestion;
use gestion;

create table alumnos
(
IdAlumno int,
Nombre text
);

create table asignaturas
(
IdAsignatura int,
Nombre text
);

create table notas
(
IdAsignatura int,
IdAlumno int,
Fecha date,
Nota int
);

create table carreras
(
IdCarrera int
);

create table asignaturaxcarrera
(
IdAsignatura int,
IdCarrera int
);


insert into alumnos (IdAlumno, Nombre) values 
(00, "Mariano Perez"),
(01, "Carla Martinez"),
(02, "Oscar Aguirre"), 
(03, "Franco Araujo"),
(04, "Agustina Juarez"),
(05, "Juan Bautista Gutierrez"),
(06, "Fermin Rodriguez"),
(07, "Francisca Gomez"),
(08, "Sebastian Araoz"),
(09, "Natalia Hernandez")
;

select * from alumnos;

insert into asignaturas values
(100, "Analisis Matematico I"),
(101, "Literatura Argentina I"),
(102, "Biologia I"),
(103, "Bioquimica I"),
(104, "Quimica I"),
(105, "Fisica I"),
(106, "Algebra I"),
(107, "Historia Contemporanea"),
(108, "Historia Latinoamericana"),
(109, "Historia Argentina"),
(110, "Derecho Penal"),
(111, "Derecho Comercial"),
(112, "Derecho Civil"),
(113, "Derecho Internacional"),
(114, "Sociologia I"),
(115, "Economia I"),
(116, "Filosofia I"),
(117, "Semiologia I"),
(118, "Literatura Latinoamericana I"),
(119, "Literatura Contemporanea")
;

select * from asignaturas;

alter table notas
drop column Fecha;

insert into notas (IdAsignatura, IdAlumno, Nota) values 
(100, 9, 7),
(119, 0, 4),
(100, 2, 3),
(106, 1, 9),
(102, 8, 5),
(110, 4, 6),
(107, 3, 8),
(114, 5, 4),
(108, 7, 10),
(117, 6, 3),
(105, 1, 4),
(116, 3, 7),
(101, 6, 5),
(106, 9, 4), 
(110, 7, 2),
(104, 2, 1),
(100, 8, 7),
(118, 0, 10),
(117, 5, 8),
(114, 4, 5)
;

select * from notas;

alter table carreras
add column nombre text;

insert into carreras (IdCarrera, nombre) values
(1000, "Economia"),
(1001, "Letras"),
(1002, "Comunicacion Social"),
(1003, "Historia"),
(1004, "Abogacia"),
(1005, "Quimica"),
(1006, "Fisica"),
(1007, "Bioquimica")
;

select * from carreras;

insert into asignaturaxcarrera (IdAsignatura, IdCarrera) values
(100, 1000),
(100, 1005),
(100, 1006),
(100, 1007),
(101, 1001),
(102, 1007),
(103, 1005),
(103, 1007),
(104, 1005),
(104, 1007),
(105, 1005),
(105, 1006),
(105, 1007),
(106, 1000),
(106, 1005),
(106, 1006),
(106, 1007),
(107, 1003),
(107, 1004),
(108, 1003),
(108, 1004),
(109, 1003),
(109, 1004),
(110, 1004),
(111, 1004),
(112, 1004),
(113, 1004),
(114, 1004),
(114, 1002),
(115, 1000),
(116, 1003),
(117, 1002),
(117, 1001),
(118, 1001),
(119, 1001)
;

select * from asignaturaxcarrera

