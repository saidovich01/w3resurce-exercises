select CONCAT_WS(' ', first_name, last_name) as 'Full Name', salary from employees
where salary < 6000

select first_name, last_name, department_id, salary from employees
where salary > 8000

select first_name, last_name, department_id from employees
where last_name = 'McEwen'

select * from employees
where department_id is NULL

select * from departments
where department_name = 'Marketing'

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', hire_date, salary, department_id from employees
where first_name not like '%m%'
order by department_id asc

select * from employees 
where (salary between 8000 and 12000) and hire_date > '1987-06-05' and department_id not in (40, 120, 70)

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', salary from employees
where commision_pct is null

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', concat(phone_number,  ' - ',  CONCAT_WS(' ', first_name, last_name)) as 'Contact Details', salary from employees
where salary between 9000 and 17000

select first_name, last_name, salary from employees
where first_name like '%m'

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', salary from employees
where salary not between 7000 and 15000 
order by 'Full Name'

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', job_id, hire_date from employees
where hire_date between '2007-11-05' and '2009-06-05'

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', department_id from employees
where department_id in (70, 90)

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', salary, manager_id from employees
where manager_id is not null

select * from employees
where hire_date < '2002-06-21'

select first_name, last_name, email, salary, manager_id from employees
where manager_id in (120, 103, 145)

select * from employees
where first_name like '%[D,S,N]%'
order by salary desc

select CONCAT_WS(' ', first_name, last_name) as 'Full Name', hire_date commission_pct, concat(email, '-', phone_number) as 'Contact Details', salary from employees
where salary > 11000 or phone_number like '______3%'
order by first_name desc

select first_name, last_name, department_id from employees
where first_name like '__s%'

select employee_id, first_name, job_id, department_id from employees
where department_id not in (50, 30, 80)

select employee_id, first_name, job_id, department_id from employees
where department_id in (30, 40, 90)

select employee_id from job_history
group by employee_id
having count(*) >= 2

select job_id, count(*) as count, sum(salary) as sum, max(salary) - min(salary) as salary_difference from employees
group by job_id

select job_id from job_history
group by job_id
having count(*) >= 2

select country_id, count(*) from locations
group by country_id

select manager_id, count(*) from employees
group by manager_id

select * from jobs
order by job_title desc

select first_name, last_name, hire_date from employees
where job_id in ('SA_REP', 'SA_MAN')

select department_id, avg(salary) as AVG from employees
group by department_id

select department_id from employees
group by department_id
having count(*) >= 4

select department_id from employees
group by department_id
having count(*) >= 10

select job_id, avg(salary) from employees
where salary <=8000
group by job_id

select job_title, (max_salary - min_salary) as Difference from jobs
where max_salary between 12000 and 18000

select first_name, last_name from employees
where first_name like 'D%' or last_name like 'D%'

select * from jobs
where min_salary > 9000

select * from employees
where hire_date > '1987-09-07'





