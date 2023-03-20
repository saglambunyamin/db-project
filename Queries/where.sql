select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME='David';

select FIRST_NAME, LAST_NAME, PHONE_NUMBER
from EMPLOYEES
where FIRST_NAME ='David'and LAST_NAME='Lee';

select *
from EMPLOYEES
where SALARY > 7000;

select EMAIL
from EMPLOYEES
where SALARY < 4000;

select *
from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID = 'SA_REP';

select  FIRST_NAME, LAST_NAME, SALARY
from  EMPLOYEES
where SALARY between 5000 and 10000;

select *
from EMPLOYEES
where EMPLOYEE_ID in (135, 176, 154, 129);

select CITY
from LOCATIONS
where COUNTRY_ID in ('IT', 'US', 'UK');
