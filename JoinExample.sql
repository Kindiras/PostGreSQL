SELECT  title,first_name,last_name FROM actor
INNER JOIN film_actor
ON actor.actor_id = film_actor.actor_id
INNER JOIN film
ON film_actor.film_id = film.film_id
WHERE first_name = 'Penelope' AND
last_name = 'Guiness'
LIMIT 20