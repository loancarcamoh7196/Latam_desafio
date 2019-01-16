-- Lorena Carcamo Herrera

--1
CREATE DATABASE call_list;
\c call_list ;

--2
CREATE TABLE users (
	id serial,
	first_name VARCHAR(50),
	email VARCHAR(50),
	PRIMARY KEY(id)
);

-- 3
INSERT INTO users(first_name, email) VALUES ('Carlos','carlos@carlos.cl');

-- 4
INSERT INTO users(first_name, email) VALUES ('Laura','laura@laura.cl');

-- 5
CREATE TABLE calls (
	id SERIAL,
	phone VARCHAR(15),
	date DATE,
	user_id INTEGER,
	PRIMARY KEY(id),
	length INTEGER,
	CONSTRAINT users_calls_fk FOREIGN KEY(user_id) REFERENCES users(id)
);

-- 6
ALTER TABLE users ADD COLUMN last_name VARCHAR(30);

-- 7
UPDATE users SET last_name = 'Yañez' WHERE first_name = 'Carlos';

-- 8
UPDATE users SET last_name = 'San Martin' WHERE first_name = 'Laura';

-- 9
INSERT INTO calls (phone, date, user_id, length)
VALUES
('77777777', NOW(),2 ,1600 ),
('75565677', NOW(),2 ,59 ),
('77995222', NOW(),2 ,596 ),
('225983312', NOW(),2 ,9520 ),
('455556656', NOW(),2 ,55 ),
('77777777', NOW(),2 ,1 ),
('55955656', NOW(),2 ,458 )
;

-- 10
INSERT INTO calls (phone, date, user_id, length)
VALUES
('868686877', NOW(),1 ,585 ),
('779955222', NOW(),1 ,98636 ),
('225983312', NOW(),1 ,5 ),
('455556656', NOW(),1 ,963 )
;

--11
INSERT INTO users (first_name, last_name, email)
VALUES ('Lorena', 'Carcamo','prueba@prueba.cl');

-- 12
SELECT users.first_name || ' ' || users.last_name AS nombre_completo,
count(calls.*) AS cantidad_llamadas
FROM users INNER JOIN calls ON (users.id = calls.user_id)
GROUP BY nombre_completo;

-- ó

SELECT users.first_name || ' ' || users.last_name AS nombre_completo,
count(calls.*)
FROM users FULL OUTER JOIN calls ON (users.id = calls.user_id)
GROUP BY nombre_completo;

-- 13
SELECT users.first_name || ' ' || users.last_name AS nombre_completo,
count(calls.*) AS cantidad_llamadas
FROM users FULL OUTER JOIN calls ON (users.id = calls.user_id)
GROUP BY nombre_completo
ORDER BY cantidad_llamadas DESC
LIMIT 1;


--14
SELECT 	users.first_name || ' ' || users.last_name AS nombre_completo,
				calls.phone,
				calls.date,
				calls.length
FROM users FULL OUTER JOIN calls ON (users.id = calls.user_id)
WHERE users.first_name LIKE 'Carlos'
ORDER BY date DESC
;


--15
SELECT 	users.first_name || ' ' || users.last_name AS nombre_completo,
				calls.phone,
				calls.date,
				calls.length
FROM users INNER JOIN calls ON (users.id = calls.user_id)
ORDER BY calls.length DESC
LIMIT 1
;

--16
SELECT 		users.first_name || ' ' || users.last_name AS nombre_completo,
					SUM(calls.length) AS duracion_llamadas
FROM users FULL OUTER JOIN calls ON (users.id = calls.user_id)
GROUP BY nombre_completo
;

--17
SELECT 	users.first_name || ' ' || users.last_name AS nombre_completo,
				count(calls.*) AS cantidad_llamadas
FROM users FULL OUTER JOIN  calls ON (users.id = calls.user_id)
GROUP BY nombre_completo
HAVING count(calls.*) < 5
;
