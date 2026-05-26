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

