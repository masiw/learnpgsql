/* First script: Create a data base, create a table,
 * populate table with data and select data.
 *
 * Execute with:
 * psql -p5433 -U postgres -f ./sayHello.sql
 */


-- create a database
CREATE DATABASE greetings;

-- connect to database
\c greetings

-- create table
CREATE TABLE common_greetings (
	id integer PRIMARY KEY,
	greeting varchar(100)
);

-- create sequence to populate primary key
CREATE SEQUENCE greeting_sequence
	start 1 
	increment 1;

-- populate table
INSERT INTO common_greetings VALUES (
	nextval('greeting_sequence'),	-- id primary key
	'Hello'				-- greeting
);

-- select data
SELECT greeting from common_greetings;

