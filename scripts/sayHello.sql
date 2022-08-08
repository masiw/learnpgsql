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
	id SERIAL NOT NULL PRIMARY KEY,
	greeting VARCHAR(100)
);

-- populate table
INSERT INTO common_greetings(greeting) VALUES (
	'Hello'				-- greeting
);

-- select data
SELECT greeting from common_greetings;

