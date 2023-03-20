--adding new column
alter table SCRUMTEAM
add Salary INTEGER;

select * from SCRUMTEAM;

-- update the existing employees' SALARY
UPDATE SCRUMTEAM
set SALARY = 100000
where EMP_ID = 1;

UPDATE SCRUMTEAM
set SALARY = 120000
where EMP_ID = 2;

UPDATE SCRUMTEAM
set SALARY = 135000
where EMP_ID = 3;

UPDATE SCRUMTEAM
set SALARY = 125000
where EMP_ID = 4;

-- Rename Column
alter table SCRUMTEAM
rename column salary to Annual_Salary;

-- Delete / Drop Column
alter table SCRUMTEAM
drop column Annual_Salary;

-- Rename Table
alter table SCRUMTEAM rename to AgileTeam;

select * from AGILETEAM;

commit ;

--truncate, if we want to delete all data from the table, but still keep the table structure, we use truncate
TRUNCATE TABLE agileteam;

--If we want to delete the table and data together
DROP TABLE agileteam;