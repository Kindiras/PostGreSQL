SELECT * FROM customer
--WHERE first_name ILIKE 'j%' AND last_name ILIKE 'j%'
--ORDER BY amount DESC
WHERE first_name LIKE '_%er%' AND last_name NOT LIKE '%B'
ORDER BY last_name DESC
LIMIT 5;
