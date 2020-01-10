DROP DATABASE IF EXISTS libreria_cf;

CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autores(
    id INT NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    seudonimo VARCHAR(50) UNIQUE,
    genero CHAR(1) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL
);