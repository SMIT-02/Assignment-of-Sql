use smit;

#1
select LAST_NAME,HIRE_DATE from employees where JOB_ID='S_Sales';

#2
select EMPLOYEE_ID,LAST_NAME from employees where SALARY>(select avg(SALARY) from employees)
order by SALARY ; 

#3
select EMPLOYEE_ID,LAST_NAME from employees where
DEPARTMENT_ID=(select DEPARTMENT_ID from employees where LAST_NAME like('%u%'));

#4
select LAST_NAME,DEPARTMENT_ID,JOB_ID from employees where Job_location ='ATLANTA';

#5
select LAST_NAME,SALARY from employees
where MANAGER_ID=(select MANAGER_ID from employees where LAST_NAME="Austin");

#6
select JOB_ID,LAST_NAME,DEPARTMENT_ID from employees where JOB_ID="AD_VP";

#7
select EMPLOYEE_ID,LAST_NAME,SALARY 
from employees
where LAST_NAME like("%u%") and SALARY > (select avg(SALARY) from employees);

#8
select First_Name,LAST_NAME from employees where JOB_ID="S_Sales";

#9
select EMPLOYEE_ID,Raise,SALARY from employees ;

#10
select LAST_NAME,SALARY from employees where SALARY=(select max(SALARY) from employees);

#11
select First_Name,SALARY,COMMISSION_PCT,
case
	when COMMISSION_PCT is null then 'O'
    else''
end as comm from employees;

#12
select  First_Name,LAST_NAME,SALARY from employees where JOB_ID='PU_MGR' order by salary desc;