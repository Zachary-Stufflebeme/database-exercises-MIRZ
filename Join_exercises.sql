use join_example_db;
select * from users;
select * from roles;

select * from users
join roles on users.role_id = roles.id;

select * from users
left join roles on users.role_id = roles.id;

select * from users
right join roles on users.role_id = roles.id;

select roles.name,count(*)
from roles
join users on roles.id = users.role_id
group by roles.name;

#employees database

use employees;

                                                         # 2
select concat(first_name, ' ', last_name) as full_name, dept_name 
from dept_manager
join departments using(dept_no)
join employees using(emp_no);

                                                         # 3
select concat(first_name, ' ', last_name) as full_name, dept_name
from dept_manager
join departments using(dept_no)
join employees using(emp_no)
where employees.gender = 'F';

                                                         # 4
 
select count(*), title, dept_no
from titles
join dept_emp using(emp_no)
join salaries using(emp_no)
where dept_no  = 'd009' and titles.to_date = '9999-01-01' and salaries.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01'
group by title;
													 # 5
                                                     
select dept_name , concat(first_name, ' ', last_name) as full_name, salary
from dept_manager
join salaries using(emp_no)
join departments using(dept_no)
join employees using(emp_no)
where salaries.to_date = '9999-01-01' and dept_manager.to_date = '9999-01-01';

													  #6
                                                      
select count(*), dept_name
from employees
join dept_emp using(emp_no)
join departments using(dept_no)
where dept_emp.to_date = '9999-01-01'
group by dept_name;
                                                       #7
  select salary, dept_name
  from salaries
  join dept_emp using(emp_no)
  join departments using(dept_no)
  where MAX(avg(salary))
  group by dept_name;
  
                                                       
                                                       
                                                       
                                                      #8
select first_name, last_name, salary
 from salaries
 join dept_emp using(emp_no)
 join departments using(dept_no)
 join titles using(emp_no)
 join employees using(emp_no)
 where salaries.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01' and titles.to_date = '9999-01-01' and dept_name = 'Marketing'
 group by first_name, last_name, salary
 order by salary desc
 limit 1;
                                                      
											       #9
                                                   
 select max(salary), dept_name, concat(first_name, ' ', last_name) as full_name 
 from salaries
 join dept_emp using(emp_no)
 join departments using(dept_no)
 join titles using(emp_no)
 join employees using(emp_no)
 where salaries.to_date = '9999-01-01' and dept_emp.to_date = '9999-01-01' and titles.to_date = '9999-01-01' and title = 'Manager'
 group by dept_name, full_name, salary
 order by salary desc
 limit 1;
 
                                              #10
Select dept_name, round(avg(salary),0) as average_salary
from departments
join dept_emp using(dept_no)
join salaries using(emp_no)
group by dept_name
order by average_salary desc


