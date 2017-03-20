
#SELECT title, name
#FROM film, `language`
#WHERE film.language_id = `language`.language_id

#SELECT DISTINCT country, city
#FROM address, city, country
#WHERE address.city_id = city.city_id
#AND city.country_id = country.country_id;

#SELECT title, special_features, rental_rate, name
#	FROM film, film_category, category
#WHERE film.film_id = film_category.film_id
#	AND film_category.category_id = category.category_id
#ORDER BY rental_rate DESC;

#SELECT title, special_features, rental_rate, name
#	FROM film, film_category, category
#WHERE film.film_id = film_category.film_id
#	AND film_category.category_id = category.category_id
#ORDER BY rental_rate DESC, special_features ASC;


#SELECT * 
#	FROM film 
#WHERE special_features LIKE '%Trailers%';


#SELECT * FROM address
#WHERE address LIKE '%\_%';


SELECT title, description, rental_rate * 15 AS "In pesos" 
	FROM film ORDER BY rental_rate DESC;
 


