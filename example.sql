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




SQL*Plus: Release 11.2.0.4.0 Production on Sat Aug 17 11:51:06 2019

Copyright (c) 1982, 2013, Oracle.  All rights reserved.

Enter user-name: osqln01/osqln01@int670a.sit.kmutt.ac.th:1521/db00

Connected to:
Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
C                              TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE
JOBS                           TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE
select                         TABLE

19 rows selected.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> create table gg
  2  (gg1 number(5),
  3  gg2 number(6));

Table created.

SQL> desc gg
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GG1                                                NUMBER(5)
 GG2                                                NUMBER(6)

SQL> select * from gg;

no rows selected

SQL> create table h as select * from employees;

Table created.

SQL> desc h
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select * from h;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        100 Steven               King
SKING                     515.123.4567         17-JUN-87 AD_PRES         24000
                                     90

        101 Neena                Kochhar
NKOCHHAR                  515.123.4568         21-SEP-89 AD_VP           17000
                      100            90

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        102 Lex                  De Haan
LDEHAAN                   515.123.4569         13-JAN-93 AD_VP           17000
                      100            90

        103 Alexander            Hunold
AHUNOLD                   590.423.4567         03-JAN-90 IT_PROG          9000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      102            60

        104 Bruce                Ernst
BERNST                    590.423.4568         21-MAY-91 IT_PROG          6000
                      103            60

        107 Diana                Lorentz

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
DLORENTZ                  590.423.5567         07-FEB-99 IT_PROG          4200
                      103            60

        124 Kevin                Mourgos
KMOURGOS                  650.123.5234         16-NOV-99 ST_MAN           5800
                      100            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        141 Trenna               Rajs
TRAJS                     650.121.8009         17-OCT-95 ST_CLERK         3500
                      124            50

        142 Curtis               Davies
CDAVIES                   650.121.2994         29-JAN-97 ST_CLERK         3100
                      124            50

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        143 Randall              Matos
RMATOS                    650.121.2874         15-MAR-98 ST_CLERK         2600
                      124            50

        144 Peter                Vargas
PVARGAS                   650.121.2004         09-JUL-98 ST_CLERK         2500

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      124            50

        149 Eleni                Zlotkey
EZLOTKEY                  011.44.1344.429018   29-JAN-00 SA_MAN          10500
            .2        100            80

        174 Ellen                Abel

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
EABEL                     011.44.1644.429267   11-MAY-96 SA_REP          11000
            .3        149            80

        176 Jonathon             Taylor
JTAYLOR                   011.44.1644.429265   24-MAR-98 SA_REP           8600
            .2        149            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
        178 Kimberely            Grant
KGRANT                    011.44.1644.429263   24-MAY-99 SA_REP           7000
           .15        149

        200 Jennifer             Whalen
JWHALEN                   515.123.4444         17-SEP-87 AD_ASST          4400
                      101            10

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------

        201 Michael              Hartstein
MHARTSTE                  515.123.5555         17-FEB-96 MK_MAN          13000
                      100            20

        202 Pat                  Fay
PFAY                      603.123.6666         17-AUG-97 MK_REP           6000

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                      201            20

        205 Shelley              Higgins
SHIGGINS                  515.123.8080         07-JUN-94 AC_MGR          12000
                      101           110

        206 William              Gietz

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
WGIETZ                    515.123.8181         07-JUN-94 AC_ACCOUNT       8300
                      205           110


20 rows selected.

SQL> desc h
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> create table l (emp_id, name, sal)
  2  as select employee_id, first_name, salary from employees;

Table created.

SQL> desc l;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                             NUMBER(6)
 NAME                                               VARCHAR2(20)
 SAL                                                NUMBER(8,2)

SQL> select * from l
  2  ;

    EMP_ID NAME                        SAL
---------- -------------------- ----------
       100 Steven                    24000
       101 Neena                     17000
       102 Lex                       17000
       103 Alexander                  9000
       104 Bruce                      6000
       107 Diana                      4200
       124 Kevin                      5800
       141 Trenna                     3500
       142 Curtis                     3100
       143 Randall                    2600
       144 Peter                      2500

    EMP_ID NAME                        SAL
---------- -------------------- ----------
       149 Eleni                     10500
       174 Ellen                     11000
       176 Jonathon                   8600
       178 Kimberely                  7000
       200 Jennifer                   4400
       201 Michael                   13000
       202 Pat                        6000
       205 Shelley                   12000
       206 William                    8300

20 rows selected.

SQL> alter table l read only;

Table altered.

SQL> insert into l values (555, 'ABC', 2000);
insert into l values (555, 'ABC', 2000)
            *
ERROR at line 1:
ORA-12081: update operation not allowed on table "OSQLN01"."L"


SQL> alter table l read write;

Table altered.

SQL> insert into l values (555, 'ABC', 2000);

1 row created.

SQL> alter table l add (l1 number(5));

Table altered.

SQL> desc l
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                             NUMBER(6)
 NAME                                               VARCHAR2(20)
 SAL                                                NUMBER(8,2)
 L1                                                 NUMBER(5)

SQL> select * from l;'
  2
SQL> select * from l;

    EMP_ID NAME                        SAL         L1
---------- -------------------- ---------- ----------
       100 Steven                    24000
       101 Neena                     17000
       102 Lex                       17000
       103 Alexander                  9000
       104 Bruce                      6000
       107 Diana                      4200
       124 Kevin                      5800
       141 Trenna                     3500
       142 Curtis                     3100
       143 Randall                    2600
       144 Peter                      2500

    EMP_ID NAME                        SAL         L1
---------- -------------------- ---------- ----------
       149 Eleni                     10500
       174 Ellen                     11000
       176 Jonathon                   8600
       178 Kimberely                  7000
       200 Jennifer                   4400
       201 Michael                   13000
       202 Pat                        6000
       205 Shelley                   12000
       206 William                    8300
       555 ABC                        2000

21 rows selected.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select first_name from b;

FIRST_NAME
--------------------
Steven
Neena
Lex
Alexander
Bruce
Diana
Kevin
Trenna
Curtis
Randall
Peter

FIRST_NAME
--------------------
Eleni
Ellen
Jonathon
Kimberely
Jennifer
Michael
Pat
Shelley
William

20 rows selected.

SQL> alter table b modify (first_name varchar2(12));

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(12)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> alter table b modify (first_name varchar2(8));
alter table b modify (first_name varchar2(8))
                      *
ERROR at line 1:
ORA-01441: cannot decrease column length because some value is too big


SQL> alter table b modify (first_name char(20));

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> alter table b modify (first_name char(12));
alter table b modify (first_name char(12))
                      *
ERROR at line 1:
ORA-01441: cannot decrease column length because some value is too big


SQL> alter table b modify (manager_id char(12));
alter table b modify (manager_id char(12))
                      *
ERROR at line 1:
ORA-01439: column to be modified must be empty to change datatype


SQL> alter table b modify (salary default 5000);

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> insert into b (last_name, email, hire_date, job_id, salary)
  2  values ('A', 'B', sysdate, default);
values ('A', 'B', sysdate, default)
*
ERROR at line 2:
ORA-00947: not enough values


SQL> insert into b (last_name, email, hire_date, job_id, salary)
  2  values ('A', 'B', sysdate, 'MK_MAN', default);

1 row created.

SQL> select * from b where salary = 5000;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
EMAIL                     PHONE_NUMBER         HIRE_DATE JOB_ID         SALARY
------------------------- -------------------- --------- ---------- ----------
COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
-------------- ---------- -------------
                                 A
B                                              17-AUG-19 MK_MAN           5000



SQL> alter table b drop column salary;

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> alter table b drop (job_id, phone_number);

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 HIRE_DATE                                 NOT NULL DATE
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> alter table b column email rename to mail;
alter table b column email rename to mail
              *
ERROR at line 1:
ORA-00933: SQL command not properly ended


SQL> alter table b modify email rename to mail;
alter table b modify email rename to mail
                           *
ERROR at line 1:
ORA-00902: invalid datatype


SQL> alter table b rename email to mail;
alter table b rename email to mail
                     *
ERROR at line 1:
ORA-14155: missing PARTITION or SUBPARTITION keyword


SQL> alter table b rename column email to mail;

Table altered.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 MAIL                                      NOT NULL VARCHAR2(25)
 HIRE_DATE                                 NOT NULL DATE
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
C                              TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE
GG                             TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE
select                         TABLE

22 rows selected.

SQL> drop table select;
drop table select
           *
ERROR at line 1:
ORA-00903: invalid table name


SQL> drop table "select";

Table dropped.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
BIN$/j9RIzZyR2yd1UbMSnxRmA==$0 TABLE
C                              TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
GG                             TABLE
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE

22 rows selected.

SQL> select * from recyclebin;

OBJECT_NAME                    ORIGINAL_NAME                    OPERATION
------------------------------ -------------------------------- ---------
TYPE                      TS_NAME                        CREATETIME
------------------------- ------------------------------ -------------------
DROPTIME               DROPSCN PARTITION_NAME                   CAN CAN
------------------- ---------- -------------------------------- --- ---
   RELATED BASE_OBJECT PURGE_OBJECT      SPACE
---------- ----------- ------------ ----------
BIN$/j9RIzZyR2yd1UbMSnxRmA==$0 select                           DROP
TABLE                     USERS                          2019-08-10:12:27:42
2019-08-17:13:04:05    3533258                                  YES YES
     76306       76306        76306          8


SQL> flashback table "select" to berfore drop;
flashback table "select" to berfore drop
                            *
ERROR at line 1:
ORA-00905: missing keyword


SQL> flashback table "select" to before drop;

Flashback complete.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
C                              TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE
GG                             TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE
select                         TABLE

22 rows selected.

SQL> drop table "select" purge;

Table dropped.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
C                              TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE
GG                             TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE

21 rows selected.

SQL> select * from recyclebin;

no rows selected

SQL> drop table c;

Table dropped.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
BIN$9/gHUMIdTl+g0Z2Q2vbG7w==$0 TABLE
COUNTRIES                      TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE
GG                             TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE

21 rows selected.

SQL> create table c as select * from departments;

Table created.

SQL> flashback table c to before drop;
flashback table c to before drop
*
ERROR at line 1:
ORA-38312: original name is used by an existing object


SQL> flashback table c to before drop rename to c_old;

Flashback complete.

SQL> select * from tab;

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
A                              TABLE
B                              TABLE
C                              TABLE
COUNTRIES                      TABLE
C_OLD                          TABLE
D                              TABLE
DEPARTMENTS                    TABLE
E                              TABLE
EMPLOYEES                      TABLE
EMP_DETAILS_VIEW               VIEW
F                              TABLE

TNAME                          TABTYPE  CLUSTERID
------------------------------ ------- ----------
GG                             TABLE
H                              TABLE
JOBS                           TABLE
JOB_GRADES                     TABLE
JOB_HISTORY                    TABLE
L                              TABLE
LOCATIONS                      TABLE
REGIONS                        TABLE
REVIEW                         TABLE
TEST1                          TABLE
TEST2                          TABLE

22 rows selected.

SQL> desc user_constraints
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                              VARCHAR2(30)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(30)
 CONSTRAINT_TYPE                                    VARCHAR2(1)
 TABLE_NAME                                NOT NULL VARCHAR2(30)
 SEARCH_CONDITION                                   LONG
 R_OWNER                                            VARCHAR2(30)
 R_CONSTRAINT_NAME                                  VARCHAR2(30)
 DELETE_RULE                                        VARCHAR2(9)
 STATUS                                             VARCHAR2(8)
 DEFERRABLE                                         VARCHAR2(14)
 DEFERRED                                           VARCHAR2(9)
 VALIDATED                                          VARCHAR2(13)
 GENERATED                                          VARCHAR2(14)
 BAD                                                VARCHAR2(3)
 RELY                                               VARCHAR2(4)
 LAST_CHANGE                                        DATE
 INDEX_OWNER                                        VARCHAR2(30)
 INDEX_NAME                                         VARCHAR2(30)
 INVALID                                            VARCHAR2(7)
 VIEW_RELATED                                       VARCHAR2(14)

SQL> desc user_cons_columns
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 OWNER                                     NOT NULL VARCHAR2(30)
 CONSTRAINT_NAME                           NOT NULL VARCHAR2(30)
 TABLE_NAME                                NOT NULL VARCHAR2(30)
 COLUMN_NAME                                        VARCHAR2(4000)
 POSITION                                           NUMBER

SQL> desc l
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMP_ID                                             NUMBER(6)
 NAME                                               VARCHAR2(20)
 SAL                                                NUMBER(8,2)
 L1                                                 NUMBER(5)

SQL> desc h
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         VARCHAR2(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 EMAIL                                     NOT NULL VARCHAR2(25)
 PHONE_NUMBER                                       VARCHAR2(20)
 HIRE_DATE                                 NOT NULL DATE
 JOB_ID                                    NOT NULL VARCHAR2(10)
 SALARY                                             NUMBER(8,2)
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> desc gg
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GG1                                                NUMBER(5)
 GG2                                                NUMBER(6)

SQL> select * from gg
  2  ;

no rows selected

SQL> alter table gg( gg1 constraint gg_gg1_pk primary key);
alter table gg( gg1 constraint gg_gg1_pk primary key)
              *
ERROR at line 1:
ORA-01735: invalid ALTER TABLE option


SQL> alter table gg add ( gg1 constraint gg_gg1_pk primary key);
alter table gg add ( gg1 constraint gg_gg1_pk primary key)
                     *
ERROR at line 1:
ORA-02263: need to specify the datatype for this column


SQL> alter table gg add ( gg1 number (5) constraint gg_gg1_pk primary key);
alter table gg add ( gg1 number (5) constraint gg_gg1_pk primary key)
                     *
ERROR at line 1:
ORA-01430: column being added already exists in table


SQL> alter table gg modify ( gg1 number (5) constraint gg_gg1_pk primary key);

Table altered.

SQL> desc gg
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GG1                                       NOT NULL NUMBER(5)
 GG2                                                NUMBER(6)

SQL> select constraint_name, column_name from uyser_cons_columns
  2  where table_name = 'GG';
select constraint_name, column_name from uyser_cons_columns
                                         *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select constraint_name, column_name from user_cons_columns
  2  where table_name = 'GG';

CONSTRAINT_NAME
------------------------------
COLUMN_NAME
--------------------------------------------------------------------------------
GG_GG1_PK
GG1


SQL> insert into gg values (1, 2);

1 row created.

SQL> select * from gg;

       GG1        GG2
---------- ----------
         1          2

SQL> insert into gg values (1, 3);
insert into gg values (1, 3)
*
ERROR at line 1:
ORA-00001: unique constraint (OSQLN01.GG_GG1_PK) violated


SQL> insert into gg values (1111111, 3);
insert into gg values (1111111, 3)
                       *
ERROR at line 1:
ORA-01438: value larger than specified precision allowed for this column


SQL> insert into gg values ('A', 3);
insert into gg values ('A', 3)
                       *
ERROR at line 1:
ORA-01722: invalid number


SQL> insert into gg(gg2) values (3);
insert into gg(gg2) values (3)
*
ERROR at line 1:
ORA-01400: cannot insert NULL into ("OSQLN01"."GG"."GG1")


SQL> insert into gg(gg1) values (3);

1 row created.

SQL> select * from gg;

       GG1        GG2
---------- ----------
         1          2
         3

SQL> desc gg
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GG1                                       NOT NULL NUMBER(5)
 GG2                                                NUMBER(6)

SQL> select* from gg;

       GG1        GG2
---------- ----------
         1          2
         3

SQL> truncate table gg;

Table truncated.

SQL> select* from gg;

no rows selected

SQL> desc gg
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 GG1                                       NOT NULL NUMBER(5)
 GG2                                                NUMBER(6)

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 MAIL                                      NOT NULL VARCHAR2(25)
 HIRE_DATE                                 NOT NULL DATE
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select * from b;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        100 Steven               King
SKING                     17-JUN-87                                      90

        101 Neena                Kochhar
NKOCHHAR                  21-SEP-89                       100            90

        102 Lex                  De Haan
LDEHAAN                   13-JAN-93                       100            90


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        103 Alexander            Hunold
AHUNOLD                   03-JAN-90                       102            60

        104 Bruce                Ernst
BERNST                    21-MAY-91                       103            60

        107 Diana                Lorentz
DLORENTZ                  07-FEB-99                       103            60


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        124 Kevin                Mourgos
KMOURGOS                  16-NOV-99                       100            50

        141 Trenna               Rajs
TRAJS                     17-OCT-95                       124            50

        142 Curtis               Davies
CDAVIES                   29-JAN-97                       124            50


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        143 Randall              Matos
RMATOS                    15-MAR-98                       124            50

        144 Peter                Vargas
PVARGAS                   09-JUL-98                       124            50

        149 Eleni                Zlotkey
EZLOTKEY                  29-JAN-00             .2        100            80


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        174 Ellen                Abel
EABEL                     11-MAY-96             .3        149            80

        176 Jonathon             Taylor
JTAYLOR                   24-MAR-98             .2        149            80

        178 Kimberely            Grant
KGRANT                    24-MAY-99            .15        149


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        200 Jennifer             Whalen
JWHALEN                   17-SEP-87                       101            10

        201 Michael              Hartstein
MHARTSTE                  17-FEB-96                       100            20

        202 Pat                  Fay
PFAY                      17-AUG-97                       201            20


EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
MAIL                      HIRE_DATE COMMISSION_PCT MANAGER_ID DEPARTMENT_ID
------------------------- --------- -------------- ---------- -------------
        205 Shelley              Higgins
SHIGGINS                  07-JUN-94                       101           110

        206 William              Gietz
WGIETZ                    07-JUN-94                       205           110

                                 A
B                         17-AUG-19


21 rows selected.

SQL> delete b;

21 rows deleted.

SQL> desc b
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 EMPLOYEE_ID                                        NUMBER(6)
 FIRST_NAME                                         CHAR(20)
 LAST_NAME                                 NOT NULL VARCHAR2(25)
 MAIL                                      NOT NULL VARCHAR2(25)
 HIRE_DATE                                 NOT NULL DATE
 COMMISSION_PCT                                     NUMBER(2,2)
 MANAGER_ID                                         NUMBER(6)
 DEPARTMENT_ID                                      NUMBER(4)

SQL> select * from b;

no rows selected

SQL>
SQL> show user
USER is "OSQLN01"
SQL> select * from hr.departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           10 Administration                        200        1700
           20 Marketing                             201        1800
           30 Purchasing                            114        1700
           40 Human Resources                       203        2400
           50 Shipping                              121        1500
           60 IT                                    103        1400
           70 Public Relations                      204        2700
           80 Sales                                 145        2500
           90 Executive                             100        1700
          100 Finance                               108        1700
          110 Accounting                            205        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          120 Treasury
       1700
          130 Corporate Tax
       1700
          140 Control And Credit
       1700
          150 Shareholder Services
       1700
          160 Benefits
       1700
          170 Manufacturing
       1700
          180 Construction
       1700
          190 Contracting
       1700
          200 Operations
       1700
          210 IT Support
       1700
          220 NOC
       1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          230 IT Helpdesk
       1700
          240 Government Sales
       1700
          250 Retail Sales
       1700
          260 Recruiting
       1700
          270 Payroll
       1700

27 rows selected.

SQL> select * from user_tab_privs_recd;

OWNER                          TABLE_NAME
------------------------------ ------------------------------
GRANTOR                        PRIVILEGE
                GRA HIE
------------------------------ ---------------------------------------- --- ---
HR                             DEPARTMENTS
HR                             UPDATE
                NO  NO

HR                             DEPARTMENTS
HR                             SELECT
                NO  NO


SQL> select * from hr.departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           10 Administration                        200        1700
           20 Marketing                             201        1800
           30 Purchasing                            114        1700
           40 Human Resources                       203        2400
           50 Shipping                              121        1500
           60 IT                                    103        1400
           70 Public Relations                      204        2700
           80 Sales                                 145        2500
           90 Executive                             100        1700
          100 Finance                               108        1700
          110 Accounting                            205        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          120 Treasury                                         1700
          130 Corporate Tax                                    1700
          140 Control And Credit                               1700
          150 Shareholder Services                             1700
          160 Benefits                                         1700
          170 Manufacturing                                    1700
          180 Construction                                     1700
          190 Contracting                                      1700
          200 Operations                                       1700
          210 IT Support                                       1700
          220 NOC                                              1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          230 IT Helpdesk                                      1700
          240 Government Sales                                 1700
          250 Retail Sales                                     1700
          260 Recruiting                                       1700
          270 Payroll                                          1700

27 rows selected.

SQL> update hr.departments
  2  set department_name = 'AAA'
  3  where department_id = 270;

1 row updated.

SQL> select * from hr.departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           10 Administration                        200        1700
           20 Marketing                             201        1800
           30 Purchasing                            114        1700
           40 Human Resources                       203        2400
           50 Shipping                              121        1500
           60 IT                                    103        1400
           70 Public Relations                      204        2700
           80 Sales                                 145        2500
           90 Executive                             100        1700
          100 Finance                               108        1700
          110 Accounting                            205        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          120 Treasury                                         1700
          130 Corporate Tax                                    1700
          140 Control And Credit                               1700
          150 Shareholder Services                             1700
          160 Benefits                                         1700
          170 Manufacturing                                    1700
          180 Construction                                     1700
          190 Contracting                                      1700
          200 Operations                                       1700
          210 IT Support                                       1700
          220 NOC                                              1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          230 IT Helpdesk                                      1700
          240 Government Sales                                 1700
          250 Retail Sales                                     1700
          260 Recruiting                                       1700
          270 AAA                                              1700

27 rows selected.

SQL> select * from hr.departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           10 Administration                        200        1700
           20 Marketing                             201        1800
           30 Purchasing                            114        1700
           40 Human Resources                       203        2400
           50 Shipping                              121        1500
           60 IT                                    103        1400
           70 Public Relations                      204        2700
           80 Sales                                 145        2500
           90 Executive                             100        1700
          100 Finance                               108        1700
          110 Accounting                            205        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          120 Treasury                                         1700
          130 Corporate Tax                                    1700
          140 Control And Credit                               1700
          150 Shareholder Services                             1700
          160 Benefits                                         1700
          170 Manufacturing                                    1700
          180 Construction                                     1700
          190 Contracting                                      1700
          200 Operations                                       1700
          210 IT Support                                       1700
          220 NOC                                              1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          230 IT Helpdesk                                      1700
          240 Government Sales                                 1700
          250 Retail Sales                                     1700
          260 Recruiting                                       1700
          270 AAA                                              1700

27 rows selected.

SQL> grant select on departments to hr;

Grant succeeded.

SQL> select * from hr.departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           10 Administration                        200        1700
           20 Marketing                             201        1800
           30 Purchasing                            114        1700
           40 Human Resources                       203        2400
           50 Shipping                              121        1500
           60 IT                                    103        1400
           70 Public Relations                      204        2700
           80 Sales                                 145        2500
           90 Executive                             100        1700
          100 Finance                               108        1700
          110 Accounting                            205        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          120 Treasury                                         1700
          130 Corporate Tax                                    1700
          140 Control And Credit                               1700
          150 Shareholder Services                             1700
          160 Benefits                                         1700
          170 Manufacturing                                    1700
          180 Construction                                     1700
          190 Contracting                                      1700
          200 Operations                                       1700
          210 IT Support                                       1700
          220 NOC                                              1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          230 IT Helpdesk                                      1700
          240 Government Sales                                 1700
          250 Retail Sales                                     1700
          260 Recruiting                                       1700
          270 AAA                                              1700

27 rows selected.

SQL> show user
USER is "OSQLN01"
SQL> insert into departments values (556, 'a', 100, 1700);

1 row created.

SQL> insert into departments values (557, 'a', 100, 1700);

1 row created.

SQL> insert into departments values (587, 'a', 100, 1700);

1 row created.

SQL> UPDATE departments set department_name = 'ABC' where department_id = 557;

1 row updated.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700
          110 Accounting                            205        1700
          190 Contracting                                      1700

11 rows selected.

SQL> delete from depspeprprprp where departemnt_id = 587;
delete from depspeprprprp where departemnt_id = 587
            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700
          110 Accounting                            205        1700
          190 Contracting                                      1700

11 rows selected.

SQL> commit;

Commit complete.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700
          110 Accounting                            205        1700
          190 Contracting                                      1700

11 rows selected.

SQL> insert into departments values (777, 'ABCD', 100, 1700);

1 row created.

SQL> savepoint a;

Savepoint created.

SQL> insert into departments values (888, 'ABCD', 100, 1700);

1 row created.

SQL> savepoint b;

Savepoint created.

SQL> insert into departments values (889, 'ABCD', 100, 1700);

1 row created.

SQL> insert into departments values (890, 'ABCD', 100, 1700);

1 row created.

SQL> insert into departments values (891, 'ABCD', 100, 1700);

1 row created.

SQL> savepoint c;

Savepoint created.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
          777 ABCD                                  100        1700
          888 ABCD                                  100        1700
          889 ABCD                                  100        1700
          890 ABCD                                  100        1700
          891 ABCD                                  100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700
          110 Accounting                            205        1700
          190 Contracting                                      1700

16 rows selected.

SQL> rollback to c;

Rollback complete.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
          777 ABCD                                  100        1700
          888 ABCD                                  100        1700
          889 ABCD                                  100        1700
          890 ABCD                                  100        1700
          891 ABCD                                  100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700
          110 Accounting                            205        1700
          190 Contracting                                      1700

16 rows selected.

SQL> rollback to b;

Rollback complete.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
          777 ABCD                                  100        1700
          888 ABCD                                  100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          110 Accounting                            205        1700
          190 Contracting                                      1700

13 rows selected.

SQL> rollback to c;
rollback to c
*
ERROR at line 1:
ORA-01086: savepoint 'C' never established in this session or is invalid


SQL> savepoint c;

Savepoint created.

SQL> savepoint a;

Savepoint created.

SQL> rollback to a;

Rollback complete.

SQL> select * from departments;

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          556 a                                     100        1700
          557 ABC                                   100        1700
          587 a                                     100        1700
          777 ABCD                                  100        1700
          888 ABCD                                  100        1700
           10 Administration                        200        1700
           20 Marketing                             201        1800
           50 Shipping                              124        1500
           60 IT                                    103        1400
           80 Sales                                 149        2500
           90 Executive                             100        1700

DEPARTMENT_ID DEPARTMENT_NAME                MANAGER_ID LOCATION_ID
------------- ------------------------------ ---------- -----------
          110 Accounting                            205        1700
          190 Contracting                                      1700

13 rows selected.

SQL>

