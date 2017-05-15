SELECT MIN (amount)
FROM customer, payment				  
WHERE customer.customer_id = payment.payment_id
AND customer.last_name LIKE 'R%';


SELECT COUNT(*)
FROM inventory
WHERE store_id=1;

SELECT COUNT(DISTINCT film_id)
FROM inventory
WHERE store_id=1;


SELECT AVG(LENGTH)
FROM film, inventory
WHERE film.film_id = inventory.inventory_id
AND inventory.store_id =1
;

SELECT AVG (LENGTH)
FROM film
WHERE film_id IN (SELECT film_id
					FROM inventory
					WHERE store_id = 1);


SELECT str.av
FROM (SELECT AVG (LENGTH) av
			FROM film
			WHERE film_id IN (SELECT film_id
								FROM inventory	
								WHERE store_id = 1)) AS str1;
SELECT other_store.av
FROM (SELECT AVG (LENGTH) av
			FROM film
			WHERE film_id NOT IN (SELECT film_id
								FROM inventory	
								WHERE store_id = 1)) AS other_store;
								
								
							
								
SELECT str1.av - other.stores.av
FROM (
SELECT AVG (LENGHT) av 
  FROM film
 WHERE film_id IN (SELECT film_id
			FROM inventory
		   WHERE store_id = 1)) AS str1,				
(SELECT AVG (LENGTH) av 
FROM film
WHERE film_id NOT IN (SELECT film_id
						FROM inventory
						WHEN store_id = 1)) AS other_store; 
								
								
SELECT DISTINCT (
SELECT AVG(LENGTH) av 
  FROM film
  WHERE film_id IN (SELECT film_id
  					FROM inventory
  					WHERE store_id = 1))-
(SELECT AVG(LENGTH) av
FROM film
WHERE film_id NOT IN (SELECT film_id
FROM inventory
WHERE store_id = 1 )) AS diff_avg
FROM  film;





SELECT rating, AVG(LENGTH)
FROM film
GROUP BY rating;

		
								
								
								
								
								
								
								
								
		
