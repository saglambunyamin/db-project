-- how to find employees information of who is making highest salary in the company
select *
from EMPLOYEES
where SALARY = (select max(salary) from employees) ;

-- find the second max salary
select max(SALARY)
from EMPLOYEES
where SALARY < (select max(salary) from employees) ;

-- employee information of who is making second highest salary
select *
from EMPLOYEES
where SALARY = (select max(salary) from employees where SALARY < (select max(salary) from employees)) ;

select *
from EMPLOYEES
where ROWNUM <= 10;

-- get the first 10 people then order them high to low based on salary
select *
from EMPLOYEES
where ROWNUM <= 10
order by SALARY desc;

-- order all employees based on salary high to low then display only first 10 result
select *
from (select * from EMPLOYEES  order by SALARY desc)
where ROWNUM <= 10;

-- order all employees based on salary low to high then display only first 10 result
select *
from (select * from EMPLOYEES  order by SALARY)
where ROWNUM < 11;