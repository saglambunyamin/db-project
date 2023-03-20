/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

create table ScrumTeam (
    Emp_ID INTEGER PRIMARY KEY,
    FirstName varchar(30) not null ,
    LastName varchar(30),
    JobTitle varchar(20)
);

select * from ScrumTeam;

/*
INSERT INTO tableName (column1, column2,...)
VALUES (value1, value2 ... );
*/

insert into ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
values (1, 'Severus', 'Snape', 'Tester');

insert into ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
values (2, 'Micheal', 'Scofield', 'Developer');

insert into ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
values (3, 'Tom', 'Shelby', 'PO');

insert into ScrumTeam (Emp_ID, FirstName, LastName, JobTitle)
values (4, 'Cristian', 'Bale', 'Developer');

select * from ScrumTeam;

--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/

update ScrumTeam
set JobTitle = 'ScrumMaster'
where Emp_ID = 3;

select * from ScrumTeam;

--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

delete ScrumTeam
where Emp_ID = 1;

select * from ScrumTeam;

commit ;