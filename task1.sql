create table customers(
	id int primary key,
	first_name varchar(50),
	last_name varchar(50) not null,
	email varchar(50) not null unique check (email like '%@gmail.com'),
	total_spend decimal check(total_spend > 0) ,
	status varchar(30) default 'active',
	registration_date date default current_date
)

insert into customers(id,first_name,last_name,email,total_spend,status,registration_date) values
(1, 'Ali', 'Mammadov', 'ali.mammadov@gmail.com', 1250.50, 'active', '2024-01-15'),
(2, 'Aysel', 'Aliyeva', 'aysel.aliyeva@gmail.com', 890.00, 'active', '2023-06-20'),
(3, 'Murad', 'Hasanov', 'murad.hasanov@gmail.com', 450.75, 'inactive', '2022-11-10'),
(4, 'Nigar', 'Huseynova', 'nigar.huseynova@gmail.com', 2300.00, 'active', '2025-03-12'),
(5, 'Orkhan', 'Karimov', 'orkhan.karimov@gmail.com', 175.25, 'blocked', '2023-09-05'),
(6, 'Leyla', 'Ismayilova', 'leyla.ismayilova@gmail.com', 3200.80, 'active', '2024-07-18'),
(7, 'Rashad', 'Quliyev', 'rashad.quliyev@gmail.com', 780.40, 'inactive', '2022-04-25'),
(8, 'Gunel', 'Abbasova', 'gunel.abbasova@gmail.com', 150.00, 'active', '2025-01-30'),
(9, 'Elvin', 'Rustamov', 'elvin.rustamov@gmail.com', 4200.90, 'active', '2023-12-11'),
(10, 'Sabina', 'Ahmadova', 'sabina.ahmadova@gmail.com', 560.30, 'blocked', '2024-05-09')

select round(total_spend) from customers
select ceil(total_spend) from customers
select floor(total_spend) from customers

select first_name,last_name,total_spend,round(total_spend * 0.02,2) as cashbox from customers
select mod(total_spend,100) from customers
select first_name,last_name,total_spend - 1000 as loyalty_points from customers
select first_name,last_name,total_spend,power(total_spend, 2) as spend_square, sqrt(total_spend) as spend_sqrt from customers
select upper(first_name) from customers
select lower(first_name) from customers
select length(first_name) from customers
select trim(first_name) from customers
