# Consumer-Goods-Ad-hoc-Insights
# 📊 Atliq Hardware Sales Analysis (SQL Project)

## 📌 Project Overview  
This project analyzes Atliq Hardware’s sales performance using SQL queries to uncover trends, optimize decision-making, and recommend strategic actions based on data from fiscal years 2020 and 2021.

## 📂 Dataset Details  
- **Time Period:** FY 2020 & 2021  
- **Data Sources:**  
  - `fact_sales_monthly` – Monthly sales data with quantity sold  
  - `dim_customer` – Customer details, including sales channels  
  - `fact_gross_price` – Product price details  
  - `dim_product` – Product information  

---

## 📊 Key Business Insights  

### **📅 Fiscal Year 2020**  
- **Market Presence:** Atliq Exclusive operates in **8 major markets** across the APAC region.  
- **Product Growth:** Unique products increased by **36.33%**, reflecting strong innovation.  
- **Segment Performance:**  
  - **Strong Segments:** Notebooks, Accessories, and Peripherals lead with an average of **110 products per segment**.  
  - **Weaker Segments:** Desktops, Storage, and Networking lag behind with **23 products per segment**.  
- **Quarterly Performance:**  
  - **Q1 (Sep–Nov)** had the **highest** total sales, contributing **34%** of FY 2020 sales.  
  - **Q3 (Mar–May)** recorded the **lowest** sales due to the pandemic.  
  - Sales improved in **Q4 (Jun–Aug)** as demand recovered.  
- **Peak vs. Low Sales Months:**  
  - **Highest:** November 2020 ($20.46M)  
  - **Lowest:** March 2020 ($0.38M)  
  - Sales rebounded in **September 2020** due to eased lockdowns and the festive season.  

### **📅 Fiscal Year 2021**  
- **Sales by Channel:**  
  - **Retailer** was the dominant channel (**73.22% of sales**).  
  - **Distributor** had the lowest share (**11.31%**).  
  - Expanding **Direct Sales** can reduce dependence on Retailers.  
- **Top 5 Customers with Highest Discounts:**  
  - **Flipkart** received the highest average discount (**31%**).  
  - **Amazon** had the lowest among the top 5 (**29%**).  
  - Revising discount policies can improve profit margins.  
- **Manufacturing Cost Insights:**  
  - **Most Expensive Product:** AQ HOME Allin1 Gen 2 ($240.54).  
  - **Lowest Cost Product:** AQ Master wired x1 Ms ($0.89).  
  - Cost optimization strategies can improve profitability.  
- **Top-Selling Products by Division:**  
  - **N&S Division:** AQ Pen Drive 2 IN 1 led with **701,373 units** sold.  
  - **P&A Division:** AQ Gamers Ms topped at **428,498 units**.  
  - **PC Division:** AQ Digit PC sold **17,434 units**, but the division underperformed.  
- **Product Variants Analysis:**  
  - Each division had a **product with multiple variants appearing twice in the top three**, indicating strong brand loyalty.  
  - **Expanding successful variants** and offering **bundled deals** could boost sales.  

---

## 🛠 SQL Queries & Analysis  
This project includes optimized SQL queries for:  
✔️ Analyzing sales trends by quarter and channel  
✔️ Identifying top-performing products in each division  
✔️ Calculating discount and pricing impact  
✔️ Evaluating manufacturing cost variations  
