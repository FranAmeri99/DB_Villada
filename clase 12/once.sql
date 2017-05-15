#1
SELECT country, (SELECT COUNT(city) 
				FROM city  
				WHERE country.country_id = city.country_id) as total
FROM country, city
GROUP BY country.country_id;

#2
SELECT country, COUNT(*)
FROM country
JOIN city USING (country_id)
GROUP BY country
HAVING COUNT(*) >10;

#3

SELECT first_name, last_name, address_id, COUNT(*) AS total_films, SUM(amount) AS total_money
FROM customer
JOIN address 
	ON customer.address_id = address.address_id
JOIN rental
	ON customer.customer_id = rental.customer_id
JOIN payment 
	ON rental.rental_id = payment.customer_id
GROUP BY first_name, last_name, address_id
ORDER BY total_money;

#4
SELECT film_id, title
FROM film 
WHERE film_id NOT IN (SELECT film_id
					FROM inventory
					WHERE film.film_id = inventory.film_id);





SELECT title,inventory_id
  FROM film
       INNER JOIN inventory USING (film_id)       
       LEFT OUTER JOIN rental USING (inventory_id)
WHERE rental.rental_id IS null
;


SELECT first_name, last_name, customer.store_id, title, rental_date, rental_date,return_date
FROM customer 
JOIN rental USING (customer_id)
JOIN inventory USING (inventory_id)
JOIN film USING (film_id)
ORDER by customer.store_id, last_name;

