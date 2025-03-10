with total_sales as
   (SELECT 
           p.division, 
           p.product_code,
           p.product, 
           sum(s.sold_quantity) as total_sold_quantity 
from dim_product p 
join fact_sales_monthly s 
on p.product_code=s.product_code
where fiscal_year=2021
group by product_code),
rankorder as
(select *, 
dense_rank() over(partition by division order by total_sold_quantity desc) as rank_order
from total_sales)
select * from rankorder
where rank_order <=3;
