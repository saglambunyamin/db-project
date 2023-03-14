--find the highest 14th salary
select min(SALARY)
from (select * from EMPLOYEES order by SALARY desc )
where ROWNUM < 15;

--list salary high to low without duplicate values
select *
from EMPLOYEES
where SALARY = (select min(SALARY) from (select * from EMPLOYEES order by SALARY desc ) where ROWNUM < 15);

--find employee info who is making 14th highest salary (without duplicates)
select *
from employees
where salary = (select min(salary) from (select distinct salary from employees order by salary desc) where rownum <15 );