-- PARTE 1 – CREAR BASE DE DATOS
CREATE DATABASE biblioteca_db;

-- PARTE 2 – CREAR TABLAS

CREATE TABLE libros(
    codigo VARCHAR(5) PRIMARY KEY,
    titulo VARCHAR(50) NOT NULL,
    pagina INT NOT NULL
);

CREATE TABLE autores(
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    pais VARCHAR(30) NOT NULL
);

-- PARTE 3 – TABLA DE ROMPIMIENTO 

CREATE TABLE libro_autor(
    la_libro_codigo_fk VARCHAR(5) NOT NULL,
    la_autor_id_fk INT NOT NULL,
    anio_publicacion INT NOT NULL,
    CONSTRAINT libro_fk FOREIGN KEY(la_libro_codigo_fk) REFERENCES libros(codigo),
    CONSTRAINT autor_fk FOREIGN KEY(la_autor_id_fk) REFERENCES autores(id),
    CONSTRAINT libro_autor_pk PRIMARY KEY(la_libro_codigo_fk, la_autor_id_fk)
);

-- PARTE 4 – INSERTAR DATOS

INSERT INTO libros(codigo, titulo, pagina)
VALUES
('L001', 'Cien años de soledad', 500),
('L002', 'El amor en los tiempos del cólera', 400),
('L003', 'La sombra del viento', 600),
('L004', 'El principito', 150);

INSERT INTO autores(id, nombre, pais)
VALUES
(1, 'Gabriel García Márquez', 'Colombia'),
(2, 'Carlos Ruiz Zafón', 'España'),
(3, 'Antoine de Saint-Exupéry', 'Francia');

INSERT INTO libro_autor(la_libro_codigo_fk, la_autor_id_fk, anio_publicacion)
VALUES
('L001', 1, 1967),  
('L002', 1, 1985),   
('L003', 2, 2001),   
('L004', 3, 1943),   
('L001', 2, 1967);  

