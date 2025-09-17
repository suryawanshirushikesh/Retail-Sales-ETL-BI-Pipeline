# Retail Sales End-to-End Analytics Pipeline 

Welcome to the **Retail Sales Analytics Project** — a fully automated, end-to-end data pipeline showcasing **Excel, SQL, Python ETL, and Power BI dashboards**.  
This repo demonstrates how raw CSV data is transformed into actionable business insights using modern data engineering and BI practices.

---

##  Project Overview

**Pipeline Flow:**  

Raw CSV Data → Python ETL → MySQL Database → SQL Views → Power BI Dashboard


1. **CSV files** – Raw data for customers, products, and transactions  
2. **Python ETL** – Automates ingestion, cleaning, and loading into MySQL tables  
3. **MySQL Database** – Single source of truth with tables and reporting views  
4. **Power BI Dashboard** – Interactive KPIs, charts, and slicers for insights

---

##  Folder Structure

Retail Sales_Project/
├─ SQL_Scripts/
│ ├─ schemaa.sql
│ ├─ views.sql 
│ └─ README.md
├─ Python_ETL/
│ ├─ Automation.py
│ ├─ requirements.txt
│ └─ README.md
├─ PowerBI_Dashboard/
│ ├─ RetailDB_Dashboard.pbix
│ └─ Dashboard Screenshot
│ └─ README.md
└─ README.md <-- this file


---

##  Key Features

### **Python ETL**
- Fully automated ingestion from CSV → MySQL  
- Data cleaning & normalization (dates, decimals, IDs)  
- Minimal manual effort for updates  

### **SQL**
- Tables: `customers`, `products`, `transactions`  
- Views: `transactions_view`, `vw_customer_revenue`, `vw_daily_revenue`, `vw_product_performance`, `vw_segment_revenue`  
- Aggregated KPIs for dashboards  

### **Power BI Dashboard**
- Interactive visuals and KPIs: Total Revenue, Total Profit, Profit Margin %, AOV, Transaction & Customer counts  
- Slicers: Month-Year, Region, Customer Segment, Product Category  
- Reflects **real-time updates** from SQL views  

---

##  Main Dashboard Screenshot

![RetailDB Dashboard](Power%20BI%20Dashboard/Dashboardd.png)


> Quick glance at core KPIs, trends, and insights from the RetailDB pipeline

---

##  Tech Stack

- **Python:** pandas, SQLAlchemy, MySQL connector  
- **Database:** MySQL 8  
- **BI Tool:** Power BI  
- **Version Control:** Git + GitHub  

---

##  Notes

- SQL dump contains table structures; views are included in `views.sql`  
- No real customer data included 
- ETL script can handle new CSV uploads automatically  




