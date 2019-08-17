set echo on
show pagesize
show linesize
set linesize 140
set pagesize 50
desc departments
desc employees
select last_name from employees;
select last_name||' learned SQL at SIT' from employees;
select last_name||' learned SQL at SIT' from employees;
select last_name || ' ' || 'learned SQL at SIT' from employees;
select 20+5 from employees;
select last_name || ' ' || 'learned SQL at SIT' from employees;
desc dual
select * from dual;
select job_id, department_id from employees;
select distinct job_id, department_id from employees;
select distinct job_id, department_id from employees;

select last_name from employees where manager_id is null;
select * from employees where first_name like '%_ab_c%_';
select JOB_ID from employees where JOB_ID like '%_';
select JOB_ID from employees where JOB_ID like '___';
select JOB_ID from employees where JOB_ID like '__\_%';
select JOB_ID from employees where JOB_ID like '__\_%' escape '\';
select JOB_ID from employees where JOB_ID like '__\_%' escape '\';
select JOB_ID from employees where JOB_ID like '__\____' escape '\';
select JOB_ID from employees where JOB_ID like '__\_%' escape '\';
select JOB_ID from employees where JOB_ID like '__|_%' escape '|';
select JOB_ID from employees where JOB_ID like '__"_%' escape '"';
select JOB_ID from employees where JOB_ID like '__\_%' escape '\';
select last_name from employees where last_name like '_o%';

select first_name, last_name, job_id, salary
from employees
where job_id like '%_T\_%' escape '\'
and salary between 1000 and 15000
and department_id in (10, 20, 50)
or last_name like '%A%';

select first_name, last_name, job_id, salary
from employees
where job_id like '%_T\_%' escape '\' 
and salary between 10000 and 15000
and department_id in (10, 20, 50)
or last_name like '%A%'

select last_name, job_id, department_id, hire_date
from employees
order by hire_date;

select last_name, salary*12+50 "New Salary", job_id
from employees
order by 2 desc, 2

select &&col1, salary, &col2
from employees
order by &col1, &&col2 desc

define
undefine col1
define

select &&col1, salary, &col2
from employees
order by &col1, &&col2 desc

select &&col1, salary, &&col2
from employees
order by &col1, &col2 desc

select last_name, upper(last_name)
from employees
where manager_id is null;

select sysdate from employees;

select last_name
from employees
where last_name like upper('%r%')

select last_name
from employees
where upper(last_name) like upper('%r%')

--Week#4
select table_name from user_tables;
select * from user_tables;
select * from dict;
select table_name from user_tables;
select TABLESPACE_NAME from user_tables;

create table b
(b1 varchar2(10),
b2 char(10))

select to_char(sysdate, 'YYYY-Month-DD HH24:MI:SS pm') from dual;
select employee_id, to_char(hire_date, 'YYYY-Month-DD HH:MI:SS am') from employees;
select employee_id, to_char(hire_date, 'YYYY-Month-DD HH24:MI:SS') from employees;
select employee_id, to_char(hire_date, 'YYYY-Month-DD HH:MI:SS am') from employees;
select employee_id, to_char(hire_date, 'fmYYYY-Month-DD HH:MI:SS am') from employees;
select employee_id, to_char(hire_date, 'fmYYYY-Month-fmDD HH:MI:SS am') from employees;
select employee_id, to_char(hire_date, 'fmYYYY-Month-fmDD HH:MI:SS am') hire_date from employees;
select employee_id, hire_date from employees;
select employee_id, to_char(hire_date, 'fmYYYY-Month-fmDD HH:MI:SS am') hire_date from employees;
desc employees

create table c
(c1 timestamp,
c2 date);

insert into c values(sysdate, sysdate);

select * from c;

create table d (d1 timestamp(9));
insert into d values(sysdate);
select * from d;

create table test2
(no number, t2 interval day(3) to second);
insert into test2 values(1, interval '172' day(3));
insert into test2 values(2, interval '172 5' day(3) to hour);
insert into test2 values(3, interval '172 5:10' day(3) to minute);
insert into test2 values(4, interval '172 5:10:10' day(3) to second);
select * from test2
insert into test2 values(5, interval '172' second);
select * from test2;
insert into test2 values(6, interval '24' hour);
select * from test2;


create table e
(e1 number not null,
e2 varchar2(10) primary key,
e3 varchar2(10))

insert into e values(1, 1, 10);

desc user_constraints


select constraint_name, constraint_type, search_condition
from user_constraints
where table_name = 'E';
