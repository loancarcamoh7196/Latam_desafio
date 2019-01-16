-- Lorena Carcamo Herrera

-- PARTE 1

--1
CREATE DATABASE movies;

--2
\c movies;
--3
CREATE TABLE movie (
  id SERIAL,
  name VARCHAR(500)
);

--4
INSERT INTO movie (name) VALUES ('El Rey León');

--5
INSERT INTO movie (name) VALUES ('Terminator II');

--6
ALTER TABLE movie ADD COLUMN anno VARCHAR(4);

--7
ALTER TABLE movie ADD COLUMN genero VARCHAR(30);

--8
UPDATE movie SET anno = '1984';

--9
UPDATE movie SET genero = 'Drama';

--10
DELETE movie WHERE name = 'Terminator II';

--11
CREATE USER usuario_prueba WITH PASSWORD '1234' ;

--12
CREATE ROLE role_read_only;
GRANT SELECT ON movie TO  role_read_only ;

-- Permisos de lectura para todas las tablas
-- REVISAR

--13
CTRL + D
psql -U usuario_prueba



---- PARTE 2


-- 1
INSERT INTO movie (name, anno, genero)
VALUES ('pelicula 1','2010','Drama'),
('pelicula 2','2011','Drama'),
('pelicula 3','2012','Drama'),
('pelicula 4','2013','Drama'),
('pelicula 5','2014','Drama');


-- 2
SELECT *
FROM movie
ORDER BY name ASC
LIMIT 3;

-- 3
SELECT *
FROM movie
ORDER BY anno DESC
LIMIT 3;

--4
SELECT COUNT(*)
FROM movie;

-- 5
SELECT anno, COUNT(anno)
FROM movie
GROUP BY anno
;

-- 6
ALTER TABLE movie ADD COLUMN category VARCHAR(30);

-- 7
UPDATE movie SET category = 'Familiar' WHERE id =1;
UPDATE movie SET category = 'Adultos' WHERE id =2;
UPDATE movie SET category = 'Niños' WHERE id =3;
UPDATE movie SET category = 'Familiar' WHERE id =4;
UPDATE movie SET category = 'Sin repeticiones' WHERE id =5;

-- 8
SELECT DISTINCT (category)
FROM movie
;
