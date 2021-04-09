select unique emp.department_id from employees emp
where emp.salary > 3000 and emp.department_id in (10, 20, 30) 
or emp.department_id is null
ORDER by last_name;

(select department_id from departments) intersect (select unique emp.department_id from employees emp);

select department_id, avg(salary), sum(salary)/count(*), max(first_name) from employees 
where salary > 5800
group by department_id having avg(salary)> 5000;

select e.*, d.department_name from departments d
join employees e on d.department_id = e.department_id;   

select em.last_name, de.department_name, lo.* from locations lo
join departments de on lo.location_id = de.location_id
join employees em on de.department_id = em.department_id
where commission_pct is not null and commission_pct != 0;

select * from employees emp, departments dep;

select * from employees emp cross join departments dep; 
select * from employees emp inner join departments dep on emp.department_id = dep.department_id;

select * from employees emp left join departments dep on emp.department_id = dep.department_id; 
select * from employees emp right join departments dep on emp.department_id = dep.department_id;
select * from employees emp full join departments dep on emp.department_id = dep.department_id;

select * from employees emp1 left join employees emp2 on emp2.employee_id = emp1.employee_id
where emp1.employee_id is null;

select trunc(emp.HIRE_DATE, 'YEAR'), count(*) from employees emp group by trunc (emp.HIRE_DATE, 'YEAR')
order by count(*);


select emp.manager_id, count(*), sum(salary) from employees emp 
group by emp.manager_id having count(*)>5 and sum(salary)>50000
order by emp.manager_id;

select *
from employees emp, departments dep, location lo
where emp.department_id = department_id and lo.location_id = dep.location_id;

select em.first_name,jo.job_title, em.department_id, de.department_name  from locations lo 
join departments de on lo.location_id = de.location_id and lo.city = 'Toronto'
join employees em on em.department_id = de.department_id
join jobs jo on jo.job_id = em.job_id;

select emp.* from employees da 
join employees emp on da.last_name = 'Davies' and da.hire_date < emp.hire_date;






