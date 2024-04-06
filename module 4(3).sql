use smit ;

#1
select substr(LAST_NAME,2,3) from employees;

#2
select concat_ws('"',LAST_NAME,FIRST_NAME), date_format(HIRE_DATE,'%M') mon from employees;

#3
select LAST_NAME ,
case
	when SALARY/10 > 10000 then SALARY +'10%'
    else SALARY + '11.5%' + '1500'
end as new from employees ;  

#4
select ucase(DEPARTMENT_ID),ucase(SALARY),ucase(ManagerName)from employees;  

#5
select initcap(LAST_NAME) "Name", length(LAST_NAME) "Length of Name"
from employees
where LAST_NAME like 'J%' or LAST_NAME like 'A%' or LAST_NAME like 'M%'
order by LAST_NAME;

#6
select SALARY,LAST_NAME,lpad(SALARY,15,'$') from employees;

#7
 select LAST_NAME from employees where LAST_NAME= reverse(LAST_NAME);

#8
select initcap(First_Name) from employees;

#9
select Address from locations where street_address like'__%';

#11
select First_Name,LAST_NAME,JOB_ID from employees;

#12
SELECT First_Name, LAST_NAME,Department_Id 
FROM employees  
JOIN Department
ON employees.Department_Id = Department.Department_id
AND Department.last_name = 'Trenna';

#13
select First_Name from employees where least(SALARY)  ; 

#14
select First_Name,LAST_NAME from employees where SALARY ^ least(SALARY);