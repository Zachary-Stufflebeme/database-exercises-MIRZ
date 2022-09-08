use employees;
select * from employees where first_name in ('Irena', 'Vidya', 'Maya');
# 709 rows returned

select * from employees where first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya';
# 709 rows returned

select * from employees where (gender = 'M') and (first_name = 'Irena' or first_name = 'Vidya' or first_name = 'Maya');
#441 rows returned

select * from employees where last_name like 'E%';
#7330 rows returned

select * from employees where last_name like 'E%' or last_name like '%e';
select * from employees where last_name like '%e' and last_name not like 'E%';
# 30723 have last name starting or ending with e
# 23393 have last name ending with e but not starting with e

select * from employees where last_name like 'E%' and last_name like '%e'; 
# 899 people have last names starting and ending with e
 select * from employees where last_name like '%e';
 #24292 people have last names ending with e
 
 select * from employees where hire_date between '1989-12-31' and '2000-01-01';
 #135,296 people were hired in the 90's
 
 select * from employees where birth_date like '%12-25';
 #842 employees born on Christmas
 
 select * from employees where (hire_date between '1989-12-31' and '2000-01-01') and (birth_date like '%12-25');
#362 employees hired in 90's w christmas birthdays

select * from employees where locate('q', last_name) > 0;
#1873 have last name containing q

select * from employees where (locate('q', last_name) > 0) and (locate('qu', last_name) = 0)
#547 have last name with q but not qu