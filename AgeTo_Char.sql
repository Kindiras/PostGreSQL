--SELECT AGE(payment_date) AS age FROM payment
SELECT TO_CHAR(payment_date,'MONTH-YYYY') AS age FROM payment