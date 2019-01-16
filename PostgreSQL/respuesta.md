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


