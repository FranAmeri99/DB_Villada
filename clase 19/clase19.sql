----Clase 18_2
CALL GetOfficeByCountry('USA');
CALL GetOfficeByCountry('France');


CALL CountOrderByStatus('Shipped',@total);
SELECT @total;

CALL CountOrderByStatus('in process',@total);
SELECT @total AS  total_in_process;

SET @counter = 1;
CALL set_counter(@counter,1);


----Clase 18_3
CALL get_order_by_cust(141,@shipped,@canceled,@resolved,@disputed);
SELECT @shipped,@canceled,@resolved,@disputed;

SET @customerNo = 112;

SELECT country into @country
FROM customers
WHERE customernumber = @customerNo;

CALL GetCustomerShipping(@customerNo,@shipping);

SELECT @customerNo AS Customer,
       @country    AS Country,
       @shipping   AS Shipping;

----Clase 18_4
SET @email_list = "";
CALL build_email_list(@email_list);
SELECT @email_list;



----Clase 18_5 (Sakila DATABASE)


-- 1


SELECT COUNT(DISTINCT film_id)
FROM inventory
WHERE store_id=2;


SELECT COUNT(*)
FROM inventory
INNER JOIN store USING(store_id)
INNER JOIN film USING(film_id)
WHERE film_id=29
AND store_id=2;



CREATE FUNCTION cont_peli(p_pelis INT,p_store INT) RETURNS INT(2)
BEGIN
    DECLARE var INT(2);
	SELECT COUNT(*) 
	FROM inventory
	INNER JOIN store USING(store_id)
	INNER JOIN film USING(film_id)
	WHERE film_id=p_pelis
	AND store_id = p_store;
    RETURN (var);
END

SELECT cont_peli(29,1);


-- 2

CREATE PROCEDURE build_name_list (IN p_country VARCHAR(10), OUT name_list VARCHAR(4000))
BEGIN
	DECLARE v_finished INTEGER DEFAULT 0;
	DECLARE v_name VARCHAR(100) DEFAULT "";
	DECLARE v_second VARCHAR(100) DEFAULT "";
	
    DEClARE name_cursor CURSOR FOR 
    SELECT first_name, last_name
    FROM customer
    INNER JOIN address USING(address_id)
    INNER JOIN city USING(city_id)
    INNER JOIN country USING(country_id)
    WHERE country=p_country;

    DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET v_finished = 1;

    OPEN name_cursor;

    get_name: LOOP

        FETCH name_cursor INTO v_name,v_second;

        IF v_finished = 1 THEN 
            LEAVE get_name;
        END IF;
        SET name_list = CONCAT(v_name," ",v_second," ; ",name_list);

    END LOOP get_name;

    CLOSE name_cursor;

END

SET @name_list ="";
CALL build_name_list('Argentina',@name_list);
SELECT @name_list;



-- 3 No encontr la function inventory_in_stock *and the procedure *film_in_stock no tengo la wiki bajada y ni tampoco tiempo XD


