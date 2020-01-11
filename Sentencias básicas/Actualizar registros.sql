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

/* Actualizar registros */
UPDATE
    libro
SET
    descripcion = 'Nueva descripción'
WHERE
    id = 1;