use employees;
select distinct title from titles;
# There are 7 unique titles

Select last_name 
from employees
where last_name like 'e%e'
group by last_name;

select concat(first_name,' ', last_name) as full_name
from employees
where last_name like 'e%e'
group by full_name;

select last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;
#Chleq, Lindqvist, Qiwen

select count(last_name) as instances_of_name, last_name
from employees
where last_name like '%q%' and last_name not like '%qu%'
group by last_name;

select count(*) as instances_of_name, first_name, gender 
from employees
where first_name in ('Irena','Vidya','Maya')
group by first_name, gender;

select count(*) as instances_of_username, concat(lower(substr(first_name, 1, 1)) ,lower(substr(last_name, 1,4)),'_',substr(birth_date,6,2),substr(birth_date,3,2)) as username
from employees
group by username;
# There are duplicate usernames
#BONUS:

select count(*) as instances_of_username, concat(lower(substr(first_name, 1, 1)) ,lower(substr(last_name, 1,4)),'_',substr(birth_date,6,2),substr(birth_date,3,2)) as username
from employees
group by username
having count(username) > 1
;
# 13,251 dupicated usernames







