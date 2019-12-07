use practica1

CREATE VIEW horario
as select id_alumnos, nombre, id_grupo, nombre_materia
from Alumnos, Grupo, Materia
where id_alumnos = '1669625' and id_grupo = '1' and nombre_materia = 'Algebra'

SELECT * FROM horario


CREATE VIEW Resultados
as select id_alumnos, nombre, apellido_paterno, apellido_materno, promedio
from Alumnos, Calificacion
where id_alumnos = id_calificacion

SELECT * FROM Resultados

Create view Empleados_con_Bono
as select id_empleado, nombre
from Empleado
where fecha_ingreso between '01/01/2012' and '31/12/2015'

SELECT * FROM Empleados_con_Bono

Create view Alumnos_Aprobados
as select id_alumnos, apellido_paterno, apellido_materno, nombre, promedio
from Alumnos, Calificacion
where promedio > 70 and id_alumnos = id_calificacion 

SELECT * FROM Alumnos_Aprobados
	
Create view Alumnos_Reprobados
as select id_alumnos, apellido_paterno, apellido_materno, nombre, promedio
from Alumnos, Calificacion
where promedio < 70 and id_alumnos = id_calificacion 
 
SELECT * FROM Alumnos_Reprobados

Create view ClaseAsignada
as select apellido_paterno, apellido_materno, nombre, nombre_materia,id_grupo, nombre_carrera
from Maestro, Materia, Carrera, Grupo
where id_maestro = '2' and id_materia= '1' and id_carrera = '1' and id_grupo = '5'

SELECT * FROM ClaseAsignada

create view AsignacionBecarios
as select apellido_paterno, apellido_materno, nombre, nombre_departamento
from Becarios, Departamento
where id_becario = '2' and id_departamento = '5'

SELECT * FROM AsignacionBecarios

create view Tutor
as select nombre_completo, id_grupo
from Maestro, Grupo
where id_maestro = '4' and id_grupo = '5'

SELECT * FROM Tutor

DROP VIEW aniversario_ingreso_empleados