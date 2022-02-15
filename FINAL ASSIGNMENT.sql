show databases;
use shankerdb;
show tables;

-- sol-1
select * from customer;
select  distinct city,state,zip from customer;

-- sol-2
select * from employee;
select EMPNAME,Department,phone,email from employee where phone like '3-%';

-- sol-3
select * from resourcetbl;
 select * from resourcetbl where rate between 10 and 20 group by rate;
 
 -- sol-4
 select * from EventRequest;
 select EventNo,DATEAUTH , Status from EventRequest where (Status in ('Approved','Denied')) and DATEAUTH between '2018-07-01' and '2018-07-31';
 
 -- sol-5
 select * from location;
 select locno , locname from location inner join facility on location.facno = facility.facno where 
 facility.facname = 'Basketball arena';
 
 -- sol-6
 select planNo,count(*) as TOTLINENOS, SUM(NUMBERFLD) as SUMOFRESOURCES from EventPlanLine group by planNo;

