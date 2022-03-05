SELECT customer_id,staff_id, SUM(amount) AS tAmount FROM payment
WHERE customer_id !=599
GROUP BY staff_id, customer_id
ORDER BY customer_id DESC;
