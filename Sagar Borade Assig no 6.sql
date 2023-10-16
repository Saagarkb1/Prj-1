use cdac1;
show tables;
select * from employees;
select * from job;
select count(distinct job_id) from employees;
select sum(salary) from employees;
select avg(salary),count(*) from employees where department_id=40;
select department_id,sum(salary) from employees group by department_id;
select job_id,sum(salary),avg(salary),max(salary),min(salary) from employees where department_id=60 group by job_id;
select department_id,avg(salary),count(*) from employees group by department_id having count(*)>10;
select first_name,last_name,salary from employees where salary>(select salary from employees where last_name='null');
select first_name, last_name from employees where (employee_id in(select manager_id from employees));
select * from employees where salary=all(select avg (salary) from employees group by department_id);
select first_name, last_name,salary from employees where department_id in (select department_id from departments where department_name like '%IT%')and salary>(select avg(salary)from employees);
select first_name, last_name, job_id,salary from employees where salary=all(select salary from employees where job_id='SH_CLERK')order by salary;