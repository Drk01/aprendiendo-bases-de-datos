DROP DATABASE IF EXISTS libreria_cf;

CREATE DATABASE IF NOT EXISTS libreria_cf;

USE libreria_cf;

CREATE TABLE IF NOT EXISTS autor;

CREATE TABLE libro;

INSERT INTO
    autor (
        nombre,
        apellido,
        seudonimo,
        fecha_de_nacimiento,
        genero,
        pais_origen
    )
VALUES
    (
        'Howard',
        'Lovecraft',
        'H.P. Lovecraft',
        '1890-08-20',
        'terror',
        'USA'
    );

INSERT INTO
    libro (id, titulo, fecha_de_publicacion)
VALUES
    (1, 'el llamado de Cthulhu', '1928-02-01');

-- Obtener todos los datos de la tabla de libros.
SELECT
    *
FROM
    libro;

-- Obtener columnas específicas de la tabla.
SELECT
    (Id, nombre)
FROM
    libro;

-- Obtener todas las columnas que cumplan una condición.
SELECT
    *
FROM
    libro
WHERE
    id = 10;

/*Operadores lógicos (AND, OR, NOT).*/
-- AND.
SELECT
    *
FROM
    autor
WHERE
    id = 10
    AND name = 'Howard';

-- OR.
SELECT
    *
FROM
    autor
WHERE
    id = 10
    OR name = 'Howard';

-- NOT.
SELECT
    *
FROM
    autor
WHERE
    id = 1;