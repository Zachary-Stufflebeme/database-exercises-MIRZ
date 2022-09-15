                                              #1
use employees;
select first_name, last_name, dept_no, from_date as start_date, to_date as end_date, to_date > now() as is_current_employee
from employees
join dept_emp using(emp_no)
join departments using(dept_no);
                                              #2
 select first_name, last_name, left(last_name, 1)  as first_letter_of_last,
 case
	when left(last_name,1) <= 'H' then 'A-H'
    when substr(last_name, 1, 1) <= 'Q' then 'I-Q'
    when left(last_name, 1) > 'Z' then 'R-Z'
end as alpha_group
from employees;

											#3
                                            SELECT
    count(case when birth_date between '1950-01-01' and '1959-12-31' then birth_date else null end) as '50s',
    count(case when birth_date between '1960-01-01' and '1969-12-31' then birth_date else null end) as '60s'
FROM employees;

										#4
 SELECT
    CASE
        WHEN d.dept_name IN ('Research', 'Development') THEN 'R&D'
        WHEN d.dept_name IN ('Sales', 'Marketing') THEN 'Sales & Marketing'
        WHEN d.dept_name IN ('Production', 'Quality Management') THEN 'Prod & QM'
        WHEN d.dept_name IN ('Finance', 'Human Resources') THEN 'Finanace & HR'
        ELSE d.dept_name
    END AS dept_group, salary
FROM departments d
JOIN dept_emp de USING (dept_no)
JOIN salaries s USING (emp_no)
WHERE s.to_date > NOW() AND de.to_date > NOW()
;