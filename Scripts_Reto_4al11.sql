/* Punto 4*/
use sakila;
/*Actores y numero de actores*/
select * from actor;
select first_name, last_name from actor;
select COUNT(actor_id) FROM actor;

/*Peliculas y actores*/
select * from film;
select * from film_actor;

/* Punto 5*/

/*INNER JOINS*/
select
	f.title as 'Titulo pelicula',
    a.first_name as 'Nombre',
    a.last_name as 'Apellido'
from 
	film f inner join film_actor f_a on f.film_id = f_a.film_id
    inner join actor a on f_a.actor_id = a.actor_id

where 
	f.title = "ACADEMY DINOSAUR" or
    f.title like "BERETS AGENT"
;

/* Punto 6*/
select * from film;
select * from actor;
select * from film_category;
select * from category;
/*INNER JOINS*/
# punto 6
select
    a.first_name as 'Nombre',
    a.last_name as 'Apellido',
	f.title as 'Pelicula',
    c.name as 'Categoria'

from 
	actor a inner join film_actor f_a on a.actor_id = f_a.actor_id
    inner join film f on f_a.film_id = f.film_id
    inner join film_category f_c on f.film_id = f_c.film_id
    inner join category c on f_c.category_id = c.category_id
where 
	a.first_name = "KARL" and
    a.last_name = "BERRY"
;


# punto 7
select
	sum(f.replacement_cost) as "Costo total",
    count(f.replacement_cost) as Cantidad,
	sum(f.replacement_cost)/count(f.replacement_cost) as "Suma Promedio"
from 
	film f inner join film_category f_c on f.film_id = f_c.film_id
    inner join category c on f_c.category_id = c.category_id
    where c.name="Drama"
;


# punto 8
select
	i.store_id as 'Store',
	sum(p.amount) as 'Total ventas store',
	c.name as 'Categoria'
from 
	category c inner join film_category f_c on c.category_id = f_c.category_id
    inner join film f on f.film_id = f_c.film_id
    inner join inventory i on i.film_id = f.film_id
    inner join rental r on r.inventory_id = i.inventory_id
    inner join payment p on p.rental_id = r.rental_id
group by
	c.name 
;

#Ejercicio 9
select 
co.country as "Pais", count(co.country_id) as "Cantidad clientes Paises"
from
country co inner join city ci on co.country_id=ci.country_id
inner join address ad on ci.city_id= ad.city_id
inner join customer cu on ad.address_id=cu.address_id
group by co.country_id
;

# punto 10
drop temporary table if exists Peliculas_Alquiladas_P;
create temporary table Peliculas_Alquiladas_P (   
	select 
		concat(first_name, ' ', last_name) As "Nombre Cliente" , f.title as "Pelicula"
	from
		customer ct inner join rental r on ct.customer_id = r.customer_id
		inner join inventory i on r.inventory_id = i.inventory_id
		inner join film f on i.film_id = f.film_id
		order by first_name
);
select * from Peliculas_Alquiladas_P;

# punto 11

select
	concat(first_name, ' ', last_name) As "Nombre Cliente",
	datediff (r.return_date , r.rental_date) as Tiempo_Dias,
	f.title as Titulo
from
	customer c inner join rental r on c.customer_id = r.customer_id
    inner join inventory i on r.inventory_id = i.inventory_id
    inner join film f on i.film_id = f.film_id
order by first_name
;