# Python ETL – RetailDB Project

This folder contains the Python scripts used to **automate the ETL process** for the RetailDB analytics project.

---

##  Files

- **`Automation.py`**  
  - Main ETL scripAt that:
    1. Reads CSV files (`customers.csv`, `products.csv`, `transactions.csv`)
    2. Cleans and normalizes data (types, dates, decimals)
    3. Inserts or updates records into MySQL tables
    4. Ensures end-to-end automation with minimal manual work

- **`requirements.txt`**  
  - Lists all Python dependencies needed to run the ETL script
