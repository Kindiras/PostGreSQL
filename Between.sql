SELECT * FROM payment
--WHERE amount NOT BETWEEN 8 AND 9
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15'
ORDER BY payment_date DESC
LIMIT 5;