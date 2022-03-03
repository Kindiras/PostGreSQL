-- Used to count how many rows in a column.
SELECT COUNT(*) FROM film; --use column name within parenthesis
SELECT COUNT(DISTINCT(rental_rate)) FROM film;