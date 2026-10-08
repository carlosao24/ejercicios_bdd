CREATE TABLE estudiantes(
	id_estudiante INT NOT NULL,
	nombres varchar(50) NOT NULL,
	apellidos varchar(50) NOT NULL,
	edad INT,
	curso varchar(50) NOT NULL,
	fecha_registro varchar(10) NOT NULL,

	CONSTRAINT id_estudiante_pk PRIMARY KEY(id_estudiante)
)

INSERT INTO estudiantes VALUES (101, 'Carlos', 'López', 26, 'Matemáticas', '2026-03-01');
INSERT INTO estudiantes VALUES (102, 'María', 'Gómez', 22, 'Base de Datos', '2026-03-02');
INSERT INTO estudiantes VALUES (103, 'José', 'Pérez', 25, 'Programación', '2026-03-05');
INSERT INTO estudiantes VALUES (104, 'Ana', 'Torres', 21, 'Matemáticas', '2026-03-10');
INSERT INTO estudiantes VALUES (105, 'Luis', 'Sánchez', 28, 'Base de Datos', '2026-03-12');
INSERT INTO estudiantes VALUES (106, 'Carlos', 'López', 26, 'Programación', '2026-03-15');
INSERT INTO estudiantes VALUES (107, 'Sofía', 'Ramírez', 23, 'Física', '2026-03-18');
INSERT INTO estudiantes VALUES (108, 'Mateo', 'Benítez', 24, 'Matemáticas', '2026-03-20');
INSERT INTO estudiantes VALUES (109, 'María', 'Gómez', 22, 'Programación', '2026-03-22');
INSERT INTO estudiantes VALUES (110, 'Lucía', 'Flores', 20, 'Química', '2026-03-25');
INSERT INTO estudiantes VALUES (111, 'David', 'Morales', 27, 'Base de Datos', '2026-03-28');
INSERT INTO estudiantes VALUES (112, 'Elena', 'Castillo', 22, 'Física', '2026-04-02');
INSERT INTO estudiantes VALUES (113, 'José', 'Pérez', 25, 'Matemáticas', '2026-04-05');
INSERT INTO estudiantes VALUES (114, 'Valeria', 'Rojas', 26, 'Química', '2026-04-08');
INSERT INTO estudiantes VALUES (115, 'Gabriel', 'Ortiz', 29, 'Programación', '2026-04-10');
INSERT INTO estudiantes VALUES (116, 'Sofía', 'Ramírez', 23, 'Base de Datos', '2026-04-12');
INSERT INTO estudiantes VALUES (117, 'Daniel', 'Silva', 24, 'Física', '2026-04-15');
INSERT INTO estudiantes VALUES (118, 'Camila', 'Navarro', 21, 'Química', '2026-04-18');
INSERT INTO estudiantes VALUES (119, 'Lucía', 'Flores', 20, 'Matemáticas', '2026-04-20');
INSERT INTO estudiantes VALUES (120, 'Andrés', 'Mendoza', 30, 'Programación', '2026-04-22');

--MOSTRAR TODA LA TABLA
SELECT * FROM estudiantes;

--MOSTRAR NOMBRES Y CURSO
SELECT nombres, curso FROM estudiantes;

--MOSTRAR MAYORES DE 18 
SELECT * FROM estudiantes WHERE edad > 18;

--MOSTRAR MAYORES DE 25
SELECT * FROM estudiantes WHERE edad > 25;

--MOSTRAR EDADES ENTRE 18 Y 25
SELECT * FROM estudiantes WHERE edad > 18 AND edad < 25;

--MOSTRAR ESTUDIANTES DE BASE DE DATOS
SELECT * FROM estudiantes WHERE curso = 'Base de Datos';

--MOSTRAR ESTUDIANTES REGISTRADOS DESPUES DE 2026-03-01
SELECT * FROM estudiantes WHERE fecha_registro > '2026-03-01';

--REGISTROS ENTRE 2026-01-01 y 2026-04-30
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-04-30';

--UPDATE
UPDATE estudiantes SET nombres = 'Ariel' WHERE id_estudiante = '106';
UPDATE estudiantes SET curso = 'IA' WHERE id_estudiante = '108';
UPDATE estudiantes SET edad = 19 WHERE id_estudiante = '118';
UPDATE estudiantes SET fecha_registro = '2026-05-12' WHERE nombres = 'Sofía' AND apellidos = 'Ramírez' ;
UPDATE estudiantes SET nombres = 'Joselyn' , edad = 24 WHERE id_estudiante = '102';

--ELIMINAR 
DELETE FROM estudiantes WHERE id_estudiante = '111';
DELETE FROM estudiantes WHERE curso = 'Química';
DELETE FROM estudiantes WHERE edad = 23;
DELETE FROM estudiantes WHERE apellidos = 'Flores' AND curso = 'Matemáticas';
DELETE FROM estudiantes WHERE fecha_registro BETWEEN '2026-03-01' AND '2026-04-01';

--MODIFICACION DE LA TABLA 
ALTER TABLE estudiantes
ADD COLUMN correo varchar(100);

--ACTUALIZAR INSERT
INSERT INTO estudiantes VALUES (101, 'Carlos', 'López', 26, 'Matemáticas', '2026-03-01', 'carlos.lopez@email.com');
INSERT INTO estudiantes VALUES (102, 'María', 'Gómez', 22, 'Base de Datos', '2026-03-02', 'maria.gomez@email.com');
INSERT INTO estudiantes VALUES (103, 'José', 'Pérez', 25, 'Programación', '2026-03-05', 'jose.perez@email.com');
INSERT INTO estudiantes VALUES (104, 'Ana', 'Torres', 21, 'Matemáticas', '2026-03-10', 'ana.torres@email.com');
INSERT INTO estudiantes VALUES (105, 'Luis', 'Sánchez', 28, 'Base de Datos', '2026-03-12', 'luis.sanchez@email.com');
INSERT INTO estudiantes VALUES (106, 'Carlos', 'López', 26, 'Programación', '2026-03-15', 'carlos.l.prog@email.com');
INSERT INTO estudiantes VALUES (107, 'Sofía', 'Ramírez', 23, 'Física', '2026-03-18', 'sofia.ramirez@email.com');
INSERT INTO estudiantes VALUES (108, 'Mateo', 'Benítez', 24, 'Matemáticas', '2026-03-20', 'mateo.benitez@email.com');
INSERT INTO estudiantes VALUES (109, 'María', 'Gómez', 22, 'Programación', '2026-03-22', 'maria.g.prog@email.com');
INSERT INTO estudiantes VALUES (110, 'Lucía', 'Flores', 20, 'Química', '2026-03-25', 'lucia.flores@email.com');
INSERT INTO estudiantes VALUES (111, 'David', 'Morales', 27, 'Base de Datos', '2026-03-28', 'david.morales@email.com');
INSERT INTO estudiantes VALUES (114, 'Valeria', 'Rojas', 26, 'Química', '2026-04-08', 'valeria.rojas@email.com');
INSERT INTO estudiantes VALUES (116, 'Sofía', 'Ramírez', 23, 'Base de Datos', '2026-04-12', 'sofia.r.db@email.com');
INSERT INTO estudiantes VALUES (118, 'Camila', 'Navarro', 21, 'Química', '2026-04-18', 'camila.navarro@email.com');
INSERT INTO estudiantes VALUES (119, 'Lucía', 'Flores', 20, 'Matemáticas', '2026-04-20', 'lucia.f.mat@email.com');

--UPDATE DEL CORREO
UPDATE estudiantes SET correo = 'elena.castillo@email.com' WHERE id_estudiante = 112;
UPDATE estudiantes SET correo = 'jose.p.mat@email.com' WHERE id_estudiante = 113;
UPDATE estudiantes SET correo = 'gabriel.ortiz@email.com' WHERE id_estudiante = 115;
UPDATE estudiantes SET correo = 'daniel.silva@email.com' WHERE id_estudiante = 117;
UPDATE estudiantes SET correo = 'andres.mendoza@email.com' WHERE id_estudiante = 120;

--NUEVOS SELECT CON CORREO
SELECT id_estudiante, nombres, correo FROM estudiantes;
SELECT * FROM estudiantes WHERE correo = 'ana.torres@email.com';

--CONSULTA DE FECHAS
SELECT * FROM estudiantes WHERE fecha_registro > '2026-02-01';
SELECT * FROM estudiantes WHERE fecha_registro < '2026-05-01';
SELECT * FROM estudiantes WHERE fecha_registro BETWEEN '2026-01-01' AND '2026-03-30';
SELECT * FROM estudiantes WHERE fecha_registro = '2026-03-15';
SELECT * FROM estudiantes WHERE curso = 'Programación' AND fecha_registro > '2026-01-01';