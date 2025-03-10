with gross_sales as
	(SELECT 
           c.channel, 
           round(sum(s.sold_quantity*g.gross_price)/1000000,2) as gross_sales_mln
from fact_sales_monthly s 
join dim_customer c 
on s.customer_code=c.customer_code 
join fact_gross_price g 
on s.product_code=g.product_code
where s.fiscal_year=2021
group by c.channel)
select *, 
      round(gross_sales_mln*100/sum(gross_sales_mln) over(), 2) as percentage
      from gross_sales
      order by gross_sales_mln desc;