use smit ;

#1
select First_Name,LAST_NAME,EMPLOYEE_ID from employees where DEPARTMENT='Sales' and Bonus='2000';

#2
select Address from employess where state='CA' ;

#3
select Productname ,Sales_OrderId from sales;

#4
select subcategories from sales where price <='15$';

#5
#(A)
select EMPLOYEE_ID,First_Name,MANAGER_ID from employees;
#B
select EMPLOYEE_ID,First_Name from employees where MANAGER_ID is null; 

#6
#(A)
select Productname,vendors where subcategories='15';
#(B)
select Productname from sales where vendor > 1;

#7
select customerID from sales where Storename is null;

#9
select productNUM,Details,Sale from product where year='2001';

#10
select Productname,Sale from product where year>=2001 and year<=2003;


