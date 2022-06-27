-- which categories of movies released in 2018? Fetch with nos of movies

-- SELECT category.name,category.category_id,film.release_year, count(category.category_id) AS number_of_films from category  LEFT JOIN film_category on film_category.film_id=category.category_id right join film
-- on film.film_id = film_category.film_id WHERE film.release_year = 2018;

-- UPDATE the address of actor id 36 to 677 jazz street
-- UPDATE address INNER JOIN actor on actor.address_id = address.address_id  SET address="677 jaszz street" WHERE actor_id = 36; 

-- Add new actors id(105,95) in film Arsenic indepensence(id:41)
-- INSERT INTO film_actor(actor_id,film_id)VALUES(105,95),(85,41) ON duplicate key UPDATE film_id=VALUES(film_id),actor_id=VALUES(actor_id);

-- get the name of film actors who belong to India
-- SELECT distinct film.title from film INNER JOIN film_actor ON film_actor.film_id = film.film_id INNER JOIN actor on actor.actor_id = film_actor.actor_id  INNER JOIN address on address.address_id = actor.actor_id INNER JOIN city on  city.city_id = address.city_id  INNER JOIN country on country.country_id = city.country_id WHERE country.country = "india";

-- How many actors are from US
-- SELECT count(actor_id) FROM actor 
--  INNER JOIN address on address.address_id = actor.actor_id INNER JOIN city on  city.city_id = address.city_id INNER JOIN country on country.country_id = city.country_id WHERE country.country = "united states";

-- Get all the languages in which films are released between 2001 and 2010
-- SELECT  language.name, film.release_year FROM language LEFT JOIN film on film.language_id = language.language_id WHERE film.release_year BETWEEN 2001 AND  2010 GROUP BY language.language_id;

-- The film Alone trip(id:17) was releases in mandrin,UPDATE the info
-- UPDATE film SET title="mandrin" WHERE film_id = 17;
-- UPDATE film SET language_id=(SELECT language.language_id from language WHERE language.name="english")WHERE film.film_id = 17;

-- Fetch cast details of films released in 2005 and 2015 with pg rating
-- SELECT actor.first_name,film.release_year,film.rating from actor INNER JOIN film_actor on film_actor.actor_id = actor.actor_id INNER JOIN film on film.film_id = film_actor.actor_id WHERE film.release_year = 2005 and 2015 and film.rating="pg" ;

-- In which year most films were released
--  SELECT film.title,film.release_year, COUNT(release_year) AS number_of_films FROM film GROUP BY(film.release_year)ORDER BY COUNT(film.release_year)DESC LIMIT 1;

-- Get the details of the film with maximum length released in 2014
-- SELECT title,description,release_year,language.name from film  LEFT JOIN language on language.language_id = film.language_id WHERE film.release_year = 2014 AND film.length = (SELECT max(length)from film);

-- Get all the sci-fi movies with nc-17 ratings in which they r screened in
-- SELECT title,category.name,language.name from film LEFT JOIN language on language.language_id = film.language_id RIGHT JOIN film_category on film_category.film_id = film.film_id LEFT JOIN category on category.category_id = film_category.category_id  WHERE category.name = "sci-fi" AND film.rating="NC-17";

-- The actor fred costner(id:16)shifted to new address
-- INSERT INTO city(city,country_id)VALUES("Florence",(select country_id from country WHERE country="italy"));
-- update address inner join actor on actor.address_id = address.address_id set address.address = "055, Pizza Michelangelo",
-- address.district ="Rifredi",address.city_id=(select city_id from city WHERE city.city = "Florence"),address.postal_code="50215"
-- WHERE actor.actor_id = 16;

-- Insert new film data
-- INSERT INTO film(title,description,release_year,language_id,rental_duration,rental_rate,length,rating,special_features)VALUES("no time to die","globe-trotting spy james bond finds himself hot on the mysterious villian",2020, (select language.language_id from language WHERE name = "english"),6,3.99,100,"pg-13","trailers,deleted scenes" );

-- Assign categories for new movie
-- INSERT INTO film_category(category_id,film_id)VALUES((select category_id from category WHERE category.name = "Action"), (select film_id from film WHERE film.title="no time to die"));

-- Assign the cast details to the movie no time to die--dint work
-- INSERT INTO film_actor(actor_id,film_id)VALUES((select actor_id from actor WHERE actor.first_name="penlope" and actor.last_name="guiness"),
--  (select film_id from film WHERE film.title="no time to die"));

-- assign new category thriller for the movie angels life
-- INSERT INTO category(name)VALUES("thriller");
-- INSERT INTO film_category(film_id,category_id)VALUES((select film_id from film WHERE film.title="angels life"),
-- (select category_id from category WHERE category.name="thriller"));

-- which actor acted in most movies
-- select count(actor_id) from film_actor GROUP BY actor_id ORDER BY count(actor_id) DESC LIMIT 1;

-- the actor johnny lollobrigida was removed from the movie grail frakenstein. how to update the record?
-- delete from film_actor WHERE film_id =(select film_id from film WHERE film.title="grail frankenstein") and actor_id =(select actor_id from actor WHERE first_name="johnny" and last_name="lollobrigida");

-- harper dying is an animated movie with drama and comedy. Assign these categories  to the movie
-- INSERT INTO film_category (category_id,film_id)VALUES((SELECT film_id FROM film WHERE film.title="harper dying"),(SELECT category_id FROM category WHERE category.name="Drama")),
-- ((SELECT category_id FROM category WHERE category.name="Comedy"),
-- (SELECT film_id FROM film WHERE film.title="harper dying")) ON DUPLICATE KEY UPDATE film_id = VALUES(film_id),category_id=VALUES(category_id);

-- The entire cast for west lion is changed insert the new actors
-- DELETE FROM film_actor WHERE film_id=(SELECT film_id FROM film WHERE film.title="west lion");
-- INSERT INTO film_actor(actor_id,film_id)VALUES((SELECT actor_id FROM actor WHERE actor.first_name="Dan" AND actor.last_name="Torn"),(SELECT film_id FROM film WHERE film.title="west lion")),
-- ((SELECT actor_id FROM actor WHERE actor.first_name="Mae" AND actor.last_name="Hoffman"),(SELECT film_id FROM film WHERE film.title="west lion")),
-- ((SELECT actor_id FROM actor WHERE actor.first_name="Scarlett" AND actor.last_name="Damon"),(SELECT film_id FROM film WHERE film.title="west lion"));

-- the entire category of the movie west lion is wrong, the categories are classics,family,children
-- DELETE from film_category WHERE film_id=(SELECT film_id FROM film WHERE film.title="west lion");
-- INSERT INTO film_category(film_id,category_id)VALUES((SELECT film_id FROM film WHERE film.title="west lion"),
-- (SELECT category_id FROM category WHERE category.name="Classics")),
-- ((SELECT film_id FROM film WHERE film.title="west lion"),
-- (SELECT category_id FROM category WHERE category.name="Family")),
-- ((SELECT film_id FROM film WHERE film.title="west lion"),
-- (SELECT category_id FROM category WHERE category.name="Childern")),

-- How many actors acted in films released in 2017
-- SELECT COUNT(actor_id) FROM film_actor INNER JOIN film ON film.film_id = film_actor.film_id WHERE film.release_year=2017;

-- How many sci fi films released between 2007 and 2017
-- SELECT Count(*) FROM film_category INNER JOIN film ON film_category.film_id = film.film_id INNER JOIN category ON category.category_id = film_category.category_id WHERE film.release_year BETWEEN 2007 AND 2017 AND category.name="sci fi";

-- fetch the actors of the movie WESTWARD SEABISCUIT with the city they live in
-- SELECT actor.first_name,actor.last_name,film.title,city.city FROM film_actor  INNER JOIN actor ON actor.actor_id = film_actor.actor_id INNER JOIN address ON address.address_id = actor.address_id INNER JOIN city ON city.city_id = address.address_id INNER JOIN film ON film.film_id = film_actor.film_id WHERE film.title = "westward seabiscuit";

-- What is the total length of all the movies played in 2008
-- SELECT SUM(length) FROM film WHERE release_year=2018;

-- which film has the shortest length ? in which language and year it was released?
-- SELECT language.name,film.title,film.release_year,film.length FROM film LEFT JOIN language ON language.language_id = film.language_id WHERE film.length=(SELECT MIN(length)FROM film);

-- How many movies were released each year
-- SELECT COUNT(release_year) FROM film GROUP BY film.release_year;

-- how many languages of movies were released in each year
-- SELECT COUNT(film.language_id) FROM film  INNER JOIN language ON film.language_id= language.language_id GROUP BY film.language_id;

-- which actor did least movies
SELECT COUNT(actor_id) FROM film_actor GROUP BY actor_id ORDER BY actor_id,COUNT(actor_id)ASC LIMIT 1;
