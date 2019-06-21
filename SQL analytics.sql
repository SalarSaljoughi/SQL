-- USE sakila ; 

-- Q1a.
-- SELECT first_name , last_name 
-- FROM actor;

-- Q1b.
-- SELECT  UPPER(CONCAT(first_name, ' ', last_name )) AS 'Actor Name'
-- FROM actor;

-- Q2a.
-- SELECT actor_id , first_name , last_name 
-- FROM actor
-- WHERE first_name ='Joe';

-- Q2b.
-- SELECT actor_id , first_name , last_name 
-- FROM actor
-- WHERE last_name ='%GEN%';

-- Q2c.
-- SELECT last_name , first_name
-- FROM actor
-- WHERE last_name ='%LI%'
-- ORDER BY last_name , first_name;

-- Q2d.
-- SELECT country_id , country 
-- FROM country
-- WHERE country IN ('Afghanistan', 'Bangladesh', 'China');

-- Q3a.
-- ALTER TABLE actor
-- ADD description BLOB;

-- Q3b
-- ALTER TABLE actor
-- DROP COLUMN description;


-- Q4a.
-- SELECT last_name , COUNT(last_name) AS 'count'
-- FROM actor
-- GROUP BY last_name;

-- Q4b.
-- SELECT last_name , COUNT(last_name) AS 'qty'
-- FROM actor
-- WHERE 'qty' >= 2
-- GROUP BY last_name;


-- Q4c.
-- UPDATE actor
-- SET first_name = 'HARPO', last_name = 'WILLIAMS'
-- WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';


-- Q4d.
-- UPDATE actor
-- SET first_name = 'GROUCHO', last_name = 'WILLIAMS'
-- WHERE first_name = 'HARPO' AND last_name = 'WILLIAMS';


-- Q5a.
-- SHOW CREATE TABLE address;

-- Q6a.
-- SELECT s.first_name , s.last_name , a.address
-- FROM staff s
-- JOIN address a ON s.address_id = a.address_id;

-- Q6b.
-- SELECT staff_id , SUM(amount) 
-- FROM payment p 
-- WHERE p.payment_date BETWEEN '2005-08-01' AND '2005-08-31'
-- GROUP BY staff_id;

-- Q6c.
-- SELECT f.title , COUNT(a.actor_id)
-- FROM film f
-- INNER JOIN film_actor a ON a.film_id = f.film_id
-- GROUP BY f.title;

-- Q6d.
-- SELECT COUNT(i.inventory_id)
-- FROM inventory i
-- INNER JOIN film f ON f.film_id = i.film_id
-- WHERE f.title = 'Hunchback Impossible'

-- Q6e
-- SELECT c.first_name , c.last_name , SUM(p.amount) AS 'Total Amount Paid'
-- FROM payment p
-- JOIN customer c ON c.customer_id = p.customer_id
-- GROUP BY c.customer_id
-- ORDER BY c.last_name ASC;


-- Q7a.
-- SELECT f.title , l.name
-- FROM film f
-- JOIN language l ON l.language_id = f.language_id
-- WHERE f.title LIKE 'K%' OR 'Q%' AND l.language_id = 'ENGLISH';

-- Q7b.
-- SELECT a.first_name , a.last_name , ff.title AS Titile
-- FROM actor a
-- JOIN film_actor f ON f.actor_id = a.actor_id
-- JOIN film ff ON ff.film_id = f.film_id
-- WHERE title = 'Alone Trip'

-- Q7c.
-- SELECT c.first_name , c.last_name , c.email , o.country
-- FROM customer c
-- JOIN address a ON a.address_id = c.address_id
-- JOIN city cc ON cc.city_id = a.city_id
-- JOIN country o ON o.country_id = cc.country_id
-- WHERE country = 'canada'

-- Q7d.
-- SELECT f.title , rating
-- FROM film f
-- WHERE f.rating = 'G';

-- Q7e.
-- SELECT f.film_id ,f.title , COUNT(r.rental_date) , f.rental_rate 
-- FROM film f
-- JOIN inventory i ON i.film_id = f.film_id
-- JOIN rental r ON r.inventory_id = i.inventory_id
-- GROUP BY f.rental_rate
-- ORDER BY r.rental_date DESC

-- Q7f.
-- SELECT s.store_id , SUM(p.amount)
-- FROM store s
-- JOIN customer c ON c.store_id = s.store_id
-- JOIN payment p ON p.customer_id = c.customer_id
-- GROUP BY s.store_id;


-- Q7g.
-- SELECT s.store_id , c.city , o.country
-- FROM store s
-- JOIN address a ON a.address_id = s.address_id
-- JOIN city c ON c.city_id = a.city_id
-- JOIN country o ON o.country_id = c.country_id

-- Q7h
-- SELECT g.name , SUM(p.amount) AS total
-- FROM category g
-- JOIN film_category f ON f.category_id = g.category_id
-- JOIN inventory i ON i.film_id = f.film_id
-- JOIN rental r ON r.inventory_id = i.inventory_id
-- JOIN payment p ON p.rental_id = r.rental_id
-- GROUP BY g.name
-- ORDER BY total DESC
-- LIMIT 5;

-- Q8a.
-- CREATE VIEW `top_five_geners` AS SELECT g.name , SUM(p.amount) AS total
-- FROM category g
-- JOIN film_category f ON f.category_id = g.category_id
-- JOIN inventory i ON i.film_id = f.film_id
-- JOIN rental r ON r.inventory_id = i.inventory_id
-- JOIN payment p ON p.rental_id = r.rental_id
-- GROUP BY g.name
-- ORDER BY total DESC
-- LIMIT 5;

-- Q8b.
-- SELECT * FROM top_five_geners;

-- Q8c.
-- DROP VIEW `top_five_geners`;




