use practica1

select  id_maestro, nombre from Maestro
select id_alumnos, nombre, apellido_paterno, apellido_materno from Alumnos
select nombre, apellido_paterno, id_empleado from Empleado where fecha_ingreso = '2015-07-16'
select nombre from Alumnos where id_alumnos='3'
select id_empleado from Empleado where nombre = 'Israel'


SELECT id_alumnos , nombre, parcial_1, parcial_2 FROM Alumnos
INNER JOIN Calificacion
on  id_calificacion= id_alumnos

SELECT id_maestro, nombre, nombre_facultad FROM Maestro
INNER JOIN Facultad
on  id_facultad = id_maestro

Select id_empleado, nombre, nombre_departamento from Empleado
inner join Departamento
on id_empleado= id_departamento

Select nombre, parcial_1, parcial_2, nombre_materia from Alumnos
inner join  Calificacion
on id_calificacion=id_alumnos
inner join Materia
on id_materia = id_alumnos

Select id_alumnos, nombre, nombre_carrera from Alumnos
inner join Carrera
on id_carrera = id_alumnos

Select id_grupo, nombre_materia from Grupo
inner join Materia
on id_grupo = id_materia

Select nombre_facultad, nombre_carrera from Facultad
inner join  Carrera
on id_facultad = '1'

select nombre_departamento, nombre from Departamento
inner join Becarios
on id_becario = id_departamento

select nombre, nombre_materia from Maestro
inner join Materia
on id_maestro = '5' and nombre_materia = 'Algebra'

SELECT * into Alumnos_respaldo_2019
FROM Alumnos