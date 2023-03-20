--how can we rename the column that we displayed
select FIRST_NAME as "Given name", LAST_NAME as "Last name"
from EMPLOYEES;

-- text functions, string manipulations
-- in Java --> first_name + "" + last_name
-- in SQL --> we use || for concat
select FIRST_NAME||' '||LAST_NAME as "Full Name"
from EMPLOYEES;

-- add @gmail.com and name new column to full email
select EMAIL||'@gmail.com' as "Full email"
from EMPLOYEES;

-- make all lower case
select lower(EMAIL||'@gmail.com') as "Full email"
from EMPLOYEES;

-- make all upper case
select upper(EMAIL||'@gmail.com') as "Full email"
from EMPLOYEES;

-- length value
select FIRST_NAME, length(FIRST_NAME) as "length name"
from EMPLOYEES
order by "length name" desc ;

-- substr (column_name, begIndex, NumberOfChar)
select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "Initials"
from EMPLOYEES;

select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "Initials",
       FIRST_NAME||' '||LAST_NAME as "Full Name",
       lower(EMAIL||'@gmail.com') as "Full email"
from EMPLOYEES;

-- VIEW
CREATE view Emaillist as select substr(FIRST_NAME,0,1) || '.' || substr(LAST_NAME,0,1) as "Initials",
       FIRST_NAME||' '||LAST_NAME as "Full Name",
       lower(EMAIL||'@gmail.com') as "Full email"
from EMPLOYEES;

select "Full Name"
from Emaillist;

-- to remove the view
drop view Emaillist;