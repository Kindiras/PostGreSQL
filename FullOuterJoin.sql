SELECT * FROM customer
--SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
--for additional filter with WHERE statment
--WHERE customer.customer_id IS null OR
--payment.customer_id IS null