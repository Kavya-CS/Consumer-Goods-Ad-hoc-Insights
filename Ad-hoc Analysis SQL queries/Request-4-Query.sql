with product_2020 as
(select 
        p.segment, 
        count(distinct p.product_code) as unique_products_2020 
from dim_product p 
join fact_sales_monthly s 
on p.product_code=s.product_code
where s.fiscal_year=2020
group by p.segment),
product_2021 as
(select 
        p.segment, 
        count(distinct p.product_code) as unique_products_2021 
from dim_product p 
join fact_sales_monthly s 
on p.product_code=s.product_code
where s.fiscal_year=2021
group by p.segment)
select 
       pr20.segment, 
       pr20.unique_products_2020, 
       pr21.unique_products_2021,
	   abs(pr21.unique_products_2021-pr20.unique_products_2020) as difference
from product_2020 pr20
join product_2021 pr21
on pr20.segment=pr21.segment
order by difference desc;
