use employees;
#2
select concat(first_name, ' ',  last_name) as full_name
from employees
where last_name like 'e%e';

#3
select upper(concat(first_name, ' ', last_name))
from employees
where last_name like 'e%e';

#4
select datediff(curdate(), hire_date) as days_working,
concat(first_name, ' ',  last_name) as full_name
from employees
where (hire_date between '1989-12-31' and '2000-01-01') 
and (birth_date like '%12-25');

#5
select salary, emp_no 
from salaries
where to_date = '9999-01-01'
order by salary;
#smallest - 38,623
select salary, emp_no 
from salaries
where to_date = '9999-01-01'
order by salary desc;
#largest - 158,220

#6
select concat(lower(substr(first_name, 1, 1)) ,lower(substr(last_name, 1,4)),'_',substr(birth_date,6,2),substr(birth_date,3,2)) as username
from employees;


