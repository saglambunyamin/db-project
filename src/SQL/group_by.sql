-- get me avg salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'IT_PROG' ;

select distinct JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;

select distinct JOB_ID, count (*)
from EMPLOYEES
group by JOB_ID;

-- get me JOB_ID where their avg salary is more than 5000
select JOB_ID, avg(SALARY), count (*), sum(SALARY)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) > 5000;
