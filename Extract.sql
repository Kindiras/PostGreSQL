--SELECT EXTRACT(YEAR FROM payment_date) AS year FROM payment
--SELECT EXTRACT(MONTH FROM payment_date) AS month FROM payment
SELECT EXTRACT(QUARTER FROM payment_date) AS pay_month FROM payment