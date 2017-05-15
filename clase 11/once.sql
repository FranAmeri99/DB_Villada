SELECT *
	FROM film
		INNER JOIN `language`
			ON film.language_id = language.language_id;

SELECT *
FROM film
INNER JOIN film_category
	ON film.film_id = film_category.film_id AND film.title="A"
INNER JOIN category
	ON film_category.category_id = category.category_id;
	
SELECT *
FROM film, film_category, category
WHERE film.film_id = film_category.film_id 
AND film_category.category_id = category.category_id;


SELECT *
	FROM film
		INNER JOIN film_category
			USING (film_id) 
		INNER JOIN category
			USING (category_id);
	
SELECT *
	FROM film
		NATURAL JOIN `language`;

SELECT *
	FROM film
		INNER JOIN `language`
		USING (language_id);
		
		
		
SELECT * 
	FROM actor a1
		NATURAL JOIN actor a2;
		
		
		
INSERT INTO inventory
(film_id, store_id, last_update)
VALUES (1, 1, '2017-04-24 15:28:30.0000');


SELECT title, rental.*
FROM film
INNER JOIN inventory USING (film_id)
left outer JOIN rental USING (inventory_id)
where store_id = 1
and film_id = 1;