--Write a select statement to return all columns and rows from the customer table.
select * from customer
--Write a query to select first name, last name, and email from the customer table.
SELECT first_name "First Name",  last_name "Last Name", email "email"
	FROM customer;
--Write a query to return all rows and columns from the film table.
select film_id, 
		title, 
		description, 
		release_year, 
		language_id, 
		rental_duration,
		rental_rate,
		length,
		replacement_cost,
		rating,
		last_update,
		special_features,
		fulltext
	from film
--Write a query to return unique rows from the release_year column in the film table.
SELECT DISTINCT release_year
FROM film;
--Write a query to return unique rows from the rental_rate column in the film table.
SELECT DISTINCT rental_rate
FROM film;
--A customer left us some feedback about our store.  Write a query to find her email address – for Nancy Thomas.
select * from customer;
SELECT DISTINCT email
    FROM customer;
--We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their phone number?

--Write a query from the customer table, where store id is 1 and address id is greater than 150
select * from customer
	WHERE store_id = '1' AND address_id > 150
--Write a query from the payment table where the amount is either 4.99 or 1.99.
select * from payment;
select * from payment
	where amount = 1.99 or amount = 4.99
--Write a query to return a list of transitions from the payment table where the amount is greater than 5.
select * from payment;
select * from payment
	where amount > 5