use practica1

create table Alumnos(
id_alumnos int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40)
)

create table Maestro(
id_maestro int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40) 
)

create table Empleado(
id_empleado int not null,
nombre varchar (40),
apellido_paterno varchar (40), 
apellido_materno varchar (40), 
fecha_ingreso date 
)

create table Facultad(
id_facultad int not null,
nombre_facultad varchar (40) 
)

create table Departamento(
id_departamento int not null,
nombre_departamento varchar (40) 
)

create table Materia(
id_materia int not null,
nombre_materia varchar (40) 
)

create table Calificacion(
id_calificacion int not null,
parcial_1 int,
parcial_2 int
)

create table Grupo(
id_grupo int not null,
)

create table Becarios(
id_becario int not null,
nombre varchar (40),
apellido_paterno varchar (40),
apellido_materno varchar (40),
)

create table Carrera(
id_carrera int not null,
nombre_carrera varchar (40)
)

insert into Maestro (id_maestro, nombre, apellido_paterno, apellido_materno)
values ('1', 'Israel', 'Flores', 'Barrios')
select * from Maestro

insert into Empleado(id_empleado, nombre, apellido_paterno, apellido_materno, fecha_ingreso)
values ('1', 'Daniel', 'Sanchez', 'Lopez','07/10/2014')
select * from Empleado

insert into Becarios(id_becario, nombre, apellido_paterno, apellido_materno)
values ('1', 'Abril', 'Otero', 'Medina')
select * from Becarios

insert into Calificacion(id_calificacion, parcial_1, parcial_2)
values ('1', 75, 90)
select * from Calificacion