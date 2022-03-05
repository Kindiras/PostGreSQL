SELECT DATE(payment_date), SUM(amount) as TotalAmount FROM payment
GROUP BY DATE(payment_date)
ORDER BY TotalAmount DESC;
