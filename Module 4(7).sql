use smit;

#1
select datediff( Hire_Date, res_date) from exp;	

#2
select date_format(Hire_Date,'%m/%d/%Y') Hdate ,
date_format(res_date,'%b %d %Y')Rdate ,ifnull(res_date,'1900-12-01') from exp;

#3
select  timestampDIFF(YEAR,Hire_Date,curdate()) experiance from exp;

#4
select adddate(quarter, datediff(quarter, -1, getdate()), -1);

#5
select concat(year(getdate()),IF(datepart(quarter,getdate())-1=0,4,
datepart(quarter,getdate())-1));
#6
#Fetch the financial year's 15th week's dates (Format: Mon DD YYYY)
#7
#Find out the date that corresponds to the last Saturday of January, 2015 using with clause.

#8
select datediff("2017-06-15","2017-06-25");

#9
select timediff("13:10:10","23:50:15");