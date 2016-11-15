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

