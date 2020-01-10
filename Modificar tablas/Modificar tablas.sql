DROP DATABASE IF EXISTS libreria_cf;

CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autor(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(25) NOT NULL,
    apellido VARCHAR(25) NOT NULL,
    seudonimo VARCHAR(50) UNIQUE,
    genero ENUM('M', 'F'),
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL,
    fecha_de_creacion DATE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS libro(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(50) NOT NULL,
    descripcion VARCHAR(250),
    paginas INTEGER UNSIGNED,
    fecha_publicacion DATE NOT NULL fecha_creacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    autor_id INT UNSIGNED NOT NULL,
    FOREIGN KEY (autor_id) REFERENCES autor(id)
);

ALTER TABLE
    libro
ADD
    ventas INT UNSIGNED NOT NULL
ALTER TABLE
    libro
ADD
    stock INT UNSIGNED NOT NULL DEFAULT 10