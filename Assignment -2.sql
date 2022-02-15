

select CustNo,CustFirstName , CustLastName , CustBal from customer;

-- sol-2
select CustNo,CustFirstName , CustLastName , CustBal from customer where CustState='CO' ;

-- sol-3
select * from product where ProdPrice>50 order by ProdMfg , ProdName;

-- sol-4
select CustNo,CustFirstName , CustLastName ,CustCity from customer where (CustCity='Denver' and custBal>150) or (CustCity='Seattle' and CustBal>300); 

-- sol-5

select * from OrderTbl ;
select * from customer ;

select OrderTbl.OrdNo , OrderTbl.OrdDate , customer.CustNo , customer.CustFirstName 
from OrderTbl inner join customer on OrderTbl.CustNo = customer.CustNo
where ordDate between '2017-01-01' and '2017-01-31' and CustState='CO';

-- sol-6
SELECT CustCity, AVG(CustBal) AS AvgBal
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity;
  
  -- sol 7
  SELECT CustCity, AVG(CustBal) AS AvgBal, COUNT(*) AS NumCustomers
  FROM Customer
  WHERE CustState = 'WA'
  GROUP BY CustCity
  HAVING COUNT(*) > 1;

