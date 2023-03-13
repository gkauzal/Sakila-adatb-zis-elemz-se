use sakila;
-- 1. feladat
select first_name, last_name from actor;

-- 2/a feladat
select concat(upper(first_name),' ', upper(last_name)) as `Actor name` from actor;

-- 2/b feladat
select actor_id, first_name, last_name from actor where first_name = "Joe";

-- 2/c feladat
select concat(upper(first_name),' ', upper(last_name)) as `Actor name` from actor where last_name like "%gen%";

-- 2/d feladat
select concat(upper(first_name),' ', upper(last_name)) as `Actor name` from actor where last_name like "%li%" ORDER BY last_name, first_name;

-- 3. feladat
select count(distinct last_name) from actor;


-- 4. feladat
select last_name
from actor
group by last_name
having count(last_name) > 1;

-- 5. feladat
select country_id, country from country where country in ("China", "Afghanistan", "Israel");

-- 6. feladat
select avg(length) as `Avg_film_length` from film;

-- 7. feladat
select first_name, last_name, address from staff 
join address using(address_id);

-- 8. feladat
select first_name, last_name, amount as `payment amount` from payment
join customer using(customer_id)
LIMIT 10;

-- 9. feladat
select title, first_name, last_name from film_actor
join actor using(actor_id)
join film using (film_id)
order by title
limit 20;

