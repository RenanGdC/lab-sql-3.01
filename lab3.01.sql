Use sakila;

-- 1 Drop column picture from staff.

select * from staff;

ALTER TABLE staff
DROP COLUMN picture;

select * from staff;
-- 2 A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.
select * from customer;

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id, active, username, password, last_update) 
VALUES
(3,'Tammy','Sanders','79','tammy.sanders@sakilastaff.com',2,1,'Tammy', '0','2022-01-23');


select * from staff;
-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select * from rental;

select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from film
where title = 'Academy Dinosaur';

INSERT INTO rental (rental_id, rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES (16050,'2022-01-20',1,1,'2022-01-23',1,'2022-01-23')
