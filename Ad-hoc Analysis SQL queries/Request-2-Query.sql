with products_2020 as
(select 
	    product_code, 
        count(distinct product_code) as unique_products_2020 
from 
        fact_sales_monthly
where  
        fiscal_year=2020),
products_2021 as
(select 
        product_code, 
        count(distinct product_code) as unique_products_2021 
from 
        fact_sales_monthly
where 
        fiscal_year=2021)
select 
        pr20.unique_products_2020, 
        pr21.unique_products_2021,
	   round((pr21.unique_products_2021-pr20.unique_products_2020)*100/pr20.unique_products_2020,2) as percentage_chg
from 
      products_2020 pr20 
join 
      products_2021 pr21 
on 
      pr20.product_code=pr21.product_code;
