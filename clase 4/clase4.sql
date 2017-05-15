
#1
SELECT title, special_feactures
FROM film
WHERE rating = "PG-13";

#2
SELECT rental_duration
FROM film
ORDER BY 1;

#3
SELECT title, rental_rate, replacement_cost
	FROM film
	WHERE replacement_cost between 20.00 AND 24.00;
	
#4
SELECT f1.title, f1.name ,f1.rating
FROM film f1, film_list
WHERE special_features = "Behind the Scenes";

#5
SELECT f1.first_name, f1.last_name
FROM film, actor
WHERE  title= "ZOOLANDER FICTION";


#6
SELECT address, country, city
FROM address, city, country, store
WHERE store.address_id = 1;

#7
SELECT f1.title, f1.raiting, f2.title, f2.raiting 
FROM film f1, film f2
WHERE f1.raiting = f2.riting; 



	
	
	
	
	
	
	

