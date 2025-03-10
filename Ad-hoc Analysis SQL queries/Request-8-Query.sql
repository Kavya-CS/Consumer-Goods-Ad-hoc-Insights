with Quarters as
(select *,
       case 
            when month(date) in (9,10,11) then "Q1"
            when month(date) in (12,1,2) then "Q2"
            when month(date) in (3,4,5) then "Q3"
            else "Q4"
     end as Quarters
     from fact_sales_monthly
     where fiscal_year=2020)
select 
      q.quarters, 
      sum(s.sold_quantity) as total_sold_quantity
from quarters q 
join fact_sales_monthly s 
using(date, product_code, customer_code)
group by q.quarters
order by total_sold_quantity desc;
     
	
