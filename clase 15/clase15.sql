

CREATE OR REPLACE VIEW list_of_customer AS
SELECT customer_id, CONCAT_WS(" ", first_name, last_name) AS 'complete name', address, postal_code, phone, city, country, store_id,
CASE active
	WHEN "1" THEN "active"
else "inactive"
end as 'Status'
FROM customer
INNER JOIN address USING(address_id)
INNER JOIN city USING(city_id)
INNER JOIN country USING(country_id)
INNER JOIN store USING(store_id);

SELECT * from list_of_customer;


#2


SELECT film_id, title, description, name, amount, film.'length', rating, GROUP_CONCAT(first_name, last_name)
FROM film
INNER JOIN film_category USING(film_id)
INNER JOIN category USING(category_id)
INNER JOIN inventory USING(film_id)
INNER JOIN rental USING(inventory_id)
INNER JOIN payment USING(rental_id)
INNER JOIN film_actor USING(film_id)
INNER JOIN actor USING(actor_id)
