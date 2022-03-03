-- DISTINCT is used to select the unique column if duplicate values in a column are there
-- DISTINCT operates on  a column.
--Syntx:
--SELECT DISTINCT (column) FROM table
SELECT DISTINCT (rental_rate) FROM film;
--DISTINCT -> it helps to figure out how many distinct rental rates we have. 