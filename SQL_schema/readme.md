# SQL Scripts – RetailDB Project

This folder contains all SQL code required to recreate the **RetailDB** used for the end-to-end analytics pipeline.

---

##  Files

- **`retaildb_dump.sql`**  
  - Full MySQL dump including:
    - Database creation
    - Tables (`customers`, `products`, `transactions`)
  - Can be imported directly into MySQL to recreate the full schema.
  - No production data included; sample CSVs are used to populate data.

- **`views.sql`** 
  - Contains clean `CREATE VIEW` statements with proper aggregation queries used in the dashboards:
    - `transactions_view` – Transaction-level details with Month-Year labels
    - `vw_customer_revenue` – Aggregated revenue and profit per customer
    - `vw_daily_revenue` – Daily total revenue and profit
    - `vw_product_performance` – Total quantity sold and profit per product
    - `vw_segment_revenue` – Total revenue and profit per customer segment

---

##  Tables

1. **customers**
   - `CustomerID`, `Name`, `SignupDate`, `Region`, `CustomerSegment`

2. **products**
   - `ProductID`, `ProductName`, `Category`, `Price`, `Cost`, `Stock`

3. **transactions**
   - `TransactionID`, `CustomerID`, `ProductID`, `Quantity`, `TransactionDate`, `PaymentMethod`, `Revenue`, `Price`, `Cost`, `Profit`

---

##  Usage

1. Open MySQL Workbench or any MySQL client.  
2. Run `schemaa.sql` to create the database and tables.  
3. Run `views.sql` (if available) to create all reporting views.  
4. Use sample CSVs and ETL scripts to populate data for dashboards and testing.

---

 **Note:**  
This SQL folder forms the **single source of truth** for the RetailDB analytics project. It is intended to showcase database structure and reporting logic without including production data.

