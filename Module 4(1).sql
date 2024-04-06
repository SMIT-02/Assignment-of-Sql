use smit;
#1
select * from employees;
select * from dept;

#2
select First_Name,Hiredate from employees;

#3
select concat_ws(", ",First_Name,JOB_ID)as employeeandtittle from employees;

#4
select First_Name, HIRE_DATE, DEPARTMENT_ID,JOB_ID from employees where JOB_ID='PU_CLERK';

#5
select concat_ws(",  ",EMPLOYEE_ID, First_Name, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)as TheOutput from employees;

#6
select First_Name,SALARY from employees where SALARY>2000;

#7
select First_Name,HIRE_DATE as'First_name','Startdate' from employees;

#8
select First_Name,HIRE_DATE from employees;  

#9
select First_Name,SALARY from employees order by SALARY desc;

#10
select First_Name ,DEPARTMENT_ID from employees where COMMISSION_PCT is not null order by SALARY desc; 

#11
select LAST_NAME,JOB_ID from employees where MANAGER_ID is null;

#12
select LAST_NAME,JOB_ID,SALARY from employees where JOB_ID='HR_REP'or'ST_CLERK'
and SALARY  > 2500 or 3500 or 5000;