select 
       d.customer_code, 
       c.customer, 
       round((d.pre_invoice_discount_pct),2)*100 as average_discount_percentage 
from fact_pre_invoice_deductions d 
join dim_customer c 
on d.customer_code=c.customer_code
where d.fiscal_year=2021 and c.market="India"
group by d.customer_code 
order by average_discount_percentage desc 
limit 5;
