use smit;
#1
select  min(SALARY)min , max(SALARY)max , avg(SALARY)avg from employees;

#2
select DEPARTMENT_ID,Salary from departments;-- select sum(Salary) from departments;

-- alter table departments add column Num_of_emp int,add column Commission int;

#3
select DEPARTMENT_ID,Num_of_emp from departments;

#4
Select SUM(salary), DEPARTMENT_ID from departments;

#5
select First_Name,LAST_NAME from employees where COMMISSION_PCT < '2000' ;

#6
select First_Name, LAST_NAME, DEPARTMENT_ID, COMMISSION_PCT, 
case
	when COMMISSION_PCT < 2000 then 'NO Commission'
	else ''
end from employees;

#7
Select First_Name, Salary, 
case
	when COMMISSION_PCT >= 2000 then COMMISSION_PCT*2
	when COMMISSION_PCT < 2000 then 'NO Commission'
	else ''
end as Newcomm  from employees;

#8
select LAST_NAME,First_Name  from employees where LAST_NAME like('Shah');

#9
select sum(salary) from employees where JOB_ID='ST_MGR';

#10
select First_Name,numofemployees,DEPARTMENT_ID from employees where JOB_ID='ST_MGR';

#11
select concat_ws(', ', First_Name,LAST_NAME, SALARY, DEPARTMENT_ID) as NAME from employees where JOB_ID='ST_MGR' 
and LAST_NAME like('_a%') ;

#12//
select concat(avg(SALARY),DEPARTMENT_ID) from employees ;

#13
select max(Salary),DEPARTMENT_ID from departments;

#14//
select COMMISSION_PCT,
case 
	when COMMISSION_PCT > 2000 then SALARY*10
	else '1'
end from employees;



