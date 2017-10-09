SELECT * FROM products;

ALTER TABLE products  
ADD FULLTEXT(productDescription,productLine);

ALTER TABLE products 
ADD FULLTEXT(productline);

SELECT productName, productline
FROM products
WHERE MATCH(productline) AGAINST('Classic');

SELECT productName, productline
FROM products
WHERE MATCH(productline) AGAINST('Classic,Vintage');

SELECT productName, productline
FROM products
WHERE MATCH(productline) 
AGAINST('Classic,Vintage' IN NATURAL LANGUAGE MODE);

ALTER TABLE products 
ADD FULLTEXT(productName);

SELECT productName, productline
FROM products
WHERE MATCH(productName) AGAINST('1932,Ford');



SELECT first_name, last_name, address
from customers
INNER JOIN address USING (address_id);




ejercio

SELECT * 
  FROM address a1
WHERE postal_code IN (SELECT postal_code
	  FROM address AS a2
	  WHERE a2.postal_code like "%11%");
				  
CREATE INDEX address_index ON address(postal_code);


#2
select *
from actor
WHERE first_name IN ('LISA')	;

select *
from actor
WHERE last_name IN ('MONROE');

#3
SELECT *
FROM film
WHERE description LIKE '%Astounding%';

ALTER TABLE film_text 
ADD FULLTEXT(description);

SELECT *
FROM film_text
WHERE MATCH(description) AGAINST('Astounding');