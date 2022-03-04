SELECT * FROM customer
--SELECT COUNT(*) FROM payment
--WHERE amount IN (0.99,1.98,1.99)
WHERE first_name NOT IN ('John','Jake','Julie')
--ORDER BY amount DESC
LIMIT 5;
