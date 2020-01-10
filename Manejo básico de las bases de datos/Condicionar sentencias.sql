DROP DATABASE IF EXISTS "Escuela";

CREATE DATABASE "Escuela";

CREATE TABLE "Alumno"
(
    id INT(12),
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    direccion VARCHAR(100)
);