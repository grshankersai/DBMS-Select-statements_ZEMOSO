-- Select Statements::
-- sol-1
select custno , custname , phone , city from CUSTOMER;

-- sol-2
select custno , custname , phone , city from CUSTOMER where state='CO';

-- sol-3
select * from EVENTREQUEST where ESTCOST>4000 order by DATEHELD;

-- sol-4
select EVENTNO,DATEHELD,ESTAUDIENCE from EVENTREQUEST where (STATUS = 'Approved' and ESTAUDIENCE > 9000) OR (STATUS = 'Pending' and ESTAUDIENCE > 7000);

-- sol-5
select EVENTREQUEST.EVENTNO,EVENTREQUEST.DATEHELD, CUSTOMER.custno , CUSTOMER.custname 
from CUSTOMER INNER JOIN EVENTREQUEST ON CUSTOMER.custno = EVENTREQUEST.custno 
where CUSTOMER.city = 'Boulder' and DATEHELD Between '2018-12-01' and '2018-12-31';

-- sol-6
select AVG(NUMBERFLD) as NUMBERFLD , PLANNO from EVENTPLANLINE where LOCNO = 'L100' group by PLANNO;

-- sol - 7::
select AVG(NUMBERFLD) as NUMBERFLD , PLANNO , COUNT(*) as totcount from EVENTPLANLINE where LOCNO = 'L100' group by PLANNO having totcount>1;