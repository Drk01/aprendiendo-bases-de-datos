/* ¿Qué tipo de entidades almacenar? Autores
    Nombre;
    Genero;
    Fecha de nacimiento;
    País de origen;
 */
CREATE TABLE Usuario(
  id INT,
  nombre VARCHAR(255),
  apellido VARCHAR(255),
  genero CHAR(1) -- 0 y 1,
  fecha_de_nacimiento DATE,
  pais_de_origen VARCHAR(30)
);