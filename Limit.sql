SELECT * FROM payment
WHERE amount!=0.0 AND amount <7
ORDER BY payment_date DESC
LIMIT 10;
