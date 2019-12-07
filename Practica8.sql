use practica1

SELECT * FROM Tutor

CREATE TABLE Registro(
    id INT PRIMARY KEY,
	Registro varchar(50),
    fecha varchar(50)
);

select * from Registro
delete  from Registro
select * from Alumnos

CREATE TRIGGER Trigger_Registro_INSERT ON Alumnos
for INSERT
AS
BEGIN
INSERT INTO Registro VALUES((SELECT COUNT(*) FROM Registro) + 1,'Se agregó el ID' + STR((SELECT id_alumnos FROM inserted)),GETDATE());
END

insert into Alumnos values (13,'Paulo', 'Flores', 'Stark')

CREATE TRIGGER trigger_2 ON Alumnos
for delete 
AS
BEGIN
INSERT INTO Registro VALUES((SELECT COUNT(*) FROM Registro) + 1,'Se elimino el ID' + STR((SELECT id_alumnos FROM deleted)),GETDATE());
END

DELETE FROM Alumnos
WHERE id_alumnos = '13'
	
CREATE PROCEDURE V_1
AS
SELECT * FROM horario
EXEC V_1

CREATE PROCEDURE V_2
AS
SELECT * FROM Resultados
EXEC V_2

CREATE PROCEDURE V_3
AS
SELECT * FROM ClaseAsignada
EXEC V_3

CREATE PROCEDURE V_4
AS
SELECT * FROM Alumnos_Aprobados
EXEC V_4

CREATE PROCEDURE V_5
AS
SELECT * FROM Alumnos_Reprobados
EXEC V_5

CREATE PROCEDURE V_6
AS
SELECT * FROM AsignacionBecarios
EXEC V_6

CREATE PROCEDURE V_7
AS
SELECT * FROM Tutor
EXEC V_7

CREATE PROCEDURE V_8
AS
SELECT * FROM Empleados_con_Bono
EXEC V_8