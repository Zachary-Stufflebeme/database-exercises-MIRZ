select * from employees 
where (hire_date between '1989-12-31' and '2000-01-01') 
and (birth_date like '%12-25')
order by hire_date
limit 5;
#Alselm Capello, Utz Mandell, Bouchung Schreiter, Baocai Kushner, Petter Stroustrup

select * from employees 
where (hire_date between '1989-12-31' and '2000-01-01') 
and (birth_date like '%12-25')
order by hire_date 
limit 5 offset 50;
#Christophe Baca, Moie Birsak, Chikako Ibel, Shounak Jansen, Zhigen Boissier