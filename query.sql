--1) What is the desciption of the film "Tootsie Pilot"

SELECT description
FROM film
WHERE title = "Tootsie Pilot";

--2) Count the number of films that start with the letter "D"

SELECT COUNT(title)
FROM film
WHERE title LIKE "D%";

--3) What street does customer Duane Tubbs live on? Print his first name, last name, and street address

SELECT c.first_name, c.last_name, a.address
FROM customer c
JOIN address a
ON a.address_id = c.address_id
WHERE c.first_name = "Duane"
AND c.last_name = "Tubbs";

--4) How many times has Duane Tubbs rented?

SELECT c.first_name, c.last_name, COUNT(a.rental_id) as num_rentals
FROM customer c
JOIN rental a
ON a.customer_id = c.customer_id
WHERE c.first_name = "Duane"
AND c.last_name = "Tubbs";

--5) How much money did Duane Tubbs spend on rentals?

SELECT c.first_name, c.last_name, 
   SUM(p.amount) AS "total_payments"
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
WHERE c.first_name = "Duane"
AND c.last_name = "Tubbs"
GROUP BY last_name;

--) 34 France

SELECT country_id, country
FROM `country`
WHERE country = "France";

--6) How much in total did each person whose last name starts with "T" spend on rentals?

SELECT c.first_name, c.last_name, 
   SUM(p.amount) AS "total_payments"
FROM customer c
JOIN payment p ON p.customer_id = c.customer_id
WHERE c.last_name LIKE "T%"
GROUP BY last_name;

--7) Group all rentals by the first letter of every customer's last name. Calculate total payments, total number of rentals, and average pay per rental by last name letters. Sort descending on total payments.

SELECT
  LEFT(c.last_name, 1) AS "last_names",
  SUM(p.amount) AS "total_payments",
  COUNT(r.rental_id) AS "num_rentals",
  SUM(p.amount) / COUNT(p.rental_id) AS "avg_pay"
FROM
  customer c
JOIN
  payment p ON p.customer_id = c.customer_id
JOIN
  rental r ON r.rental_id = p.rental_id
GROUP BY
  LEFT(c.last_name, 1)
ORDER BY
  SUM(p.amount) DESC;

--8) List all the actors in the film "Sunset Racer"

SELECT
  actor.first_name,
  actor.last_name
FROM
  actor
JOIN
  film_actor ON film_actor.actor_id = actor.actor_id
JOIN
  film ON film.film_id = film_actor.film_id
WHERE
  film.title = "SUNSET RACER";

--9) Show total sales by store.

SELECT
  store.store_id,
  SUM(payment.amount) AS "total_sales"
FROM
  store
JOIN
  staff ON store.store_id = staff.store_id
JOIN
  payment ON staff.staff_id = payment.staff_id
GROUP BY
  store.store_id;