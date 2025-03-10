select 
      monthname(s.date) as month, 
      s.fiscal_year, 
      concat(round(sum(s.sold_quantity*g.gross_price)/1000000,2), "M") as Gross_Sales_Amount
 from fact_sales_monthly s 
 join fact_gross_price g 
 on s.product_code=g.product_code and s.fiscal_year=g.fiscal_year
 join dim_customer c 
 on s.customer_code=c.customer_code
 where customer="Atliq Exclusive"
 group by month, fiscal_year
 order by fiscal_year;
