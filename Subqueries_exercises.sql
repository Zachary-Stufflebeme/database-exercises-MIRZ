use employees;

                                                                #1
select * 
from employees
join salaries using(emp_no)
where
(
hire_date = (select hire_date 
from employees
where emp_no = '101010')
)
and salaries.to_date > curdate()
;

															  #2
                                                              
 select distinct title
 from titles
 where 
 emp_no in 
 (
 select emp_no
 from employees
 where
 first_name = 'Aamod'
 )
 and titles.to_date > curdate()
 ;
 
														 #3 
select count(emp_no)
from employees
where
emp_no in
(
select emp_no
from dept_emp
where to_date < curdate()
)
;
# 85,108
                                                           #4
select first_name,last_name 
from employees
join dept_emp using(emp_no)
where
gender = 'F'
and
to_date > curdate()
and
emp_no in
(select emp_no
from dept_manager)
;
#Isamu Legleitner Shirish Ossenbruggen, Karsten Sigstam, Krassimir Wegerle, Rosine Cools, Leon DasSarma, Peterneia Onuegbe, Rutger Hofmeyr, Sanjoy Quadeer, Hilary Kambil, Tonny Butterworth, Marjo Giarratana, Xiaobin Spinelli 

                                                                #5
select first_name, last_name, salary
from salaries
join employees using(emp_no)
where
salary >
(
select Avg(salary)
from salaries
)
and to_date > curdate()
;
														      #6
select first_name, 	salary
from salaries
join employees using(emp_no)
where
salary <
(														
	select max(salary) +
    (
		select std(salary)
        from salaries
	)
	from salaries 
)
AND
salary >
(
	select max(salary) -
    (
		select std(salary)
        from salaries
	)
    from salaries
)

