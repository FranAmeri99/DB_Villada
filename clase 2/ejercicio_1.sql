DROP TABLE IF EXISTS film;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS film_actor;
DROP CASCADE IF EXISTS film_actor; 

CREATE TABLE film (
	film_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR (36),
	description TEXT,
	release_year INT
);


CREATE TABLE actor (
	actor_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	firs_name VARCHAR (36),
	last_name VARCHAR (36)
);

CREATE TABLE film_actor (
	film_id INT NOT NULL,
	actor_id INT NOT NULL

);


ALTER TABLE film
	ADD COLUMN last_update YEAR;
	
ALTER TABLE actor
	ADD COLUMN last_update YEAR;
	
ALTER TABLE film_actor
	ADD FOREIGN KEY (actor_id)
	REFERENCES actor (actor_id);
	
	
ALTER TABLE film_actor
	ADD	FOREIGN KEY (film_id)
	REFERENCES film (film_id);
	
INSERT INTO film (title, desciption, release_year)
	VALUES ('avatar', 'aaaaaa', 147)