--Join the film to the film_actor table.
select * from film;
select * from film_actor;
select F.film_id,
		F.title,
		F.description,
		F.release_year,
		F.language_id,
		F.rental_duration,
		F.rental_rate,
		F.length,
		F.replacement_cost,
		F.rating,
		F.last_update,
		F.special_features,
		F.fulltext,
		FA.actor_id,
		FA.film_id,
		FA.last_update
from film F
full outer join film_actor FA on FA.film_id = F.film_id
--Join the actor table to the film_actor table.
select * from actor;
select * from film_actor;
select a.actor_id,
		a.first_name,
		a.last_name,
		a.last_update,
		FA.actor_id,
		FA.film_id,
		FA.last_update
from actor a
full outer join film_actor FA on FA.actor_id = a.actor_id
--Try to join the actor, film_actor, and film table together (3 joins!)
select * from actor;
select * from film_actor;
select * from film;
select a.actor_id,
		a.first_name,
		a.last_name,
		a.last_update,
		FA.actor_id,
		FA.film_id,
		FA.last_update,
		F.film_id,
		F.title,
		F.description,
		F.release_year,
		F.language_id,
		F.rental_duration,
		F.rental_rate,
		F.length,
		F.replacement_cost,
		F.rating,
		F.last_update,
		F.special_features,
		F.fulltext
from actor a 
full outer join film_actor FA on FA.actor_id = a.actor_id
full outer join film F on F.last_update = a.last_update