SELECT * FROM film
--- SELECT COUNT(*) FROM film --it will count the rows of below conditions
--WHERE first_name = 'Jared';
WHERE rental_rate > 4 AND replacement_cost >= 9.99
AND rating = 'R' OR rating = 'PG-13' OR replacement_cost != 11.99;
