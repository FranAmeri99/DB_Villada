#1
SELECT first_name , last_name
FROM actor a1
WHERE EXISTS (SELECT *
	 		  FROM actor a2
	 		  WHERE a2.last_name = a1.last_name
) ORDER BY last_name;


#2
SELECT first_name , last_name
FROM actor
WHERE NOT EXISTS (SELECT *
	 	     	  FROM film_actor, film
	 		      WHERE  film_actor.actor_id = actor.actor_id
) ORDER BY last_name;

#3
SELECT first_name
FROM customer c1
WHERE NOT EXISTS (SELECT * 
				  FROM rental r1, customer c2
				  WHERE c2.customer_id = r1.customer_id 
				  AND c1.customer_id <>c2.customer_id );

#4
SELECT first_name
FROM customer c1
WHERE EXISTS (SELECT * 
				  FROM rental r1, customer c2
				  WHERE c2.customer_id = r1.customer_id 
				  AND c1.customer_id <>c2.customer_id )
				  ORDER BY first_name;
				  
#5

SELECT first_name, last_name, title
FROM actor, film_actor, film
WHERE actor.actor_id = film_actor.actor_id
AND film_actor.film_id = film.film_id
AND title IN 'BETRAYED REAR' OR title IN 'CATCH AMISTAD';

				  
#6
				  
				  
				  
#5






