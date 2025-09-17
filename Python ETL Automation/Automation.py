import pandas as pd
from sqlalchemy import create_engine, DECIMAL

# SQL Connection

engine = create_engine('mysql+pymysql://root:NuzRish%401819@localhost/retaildb')

# 1. Customers Table

customers_df = pd.read_csv("C:\\temp\\Customers.csv")
customers_df.to_sql(
    "customers",
    con=engine,
    if_exists="replace",
    index=False
)
print(" Customers table synced!")

# 2. Products Table

products_df = pd.read_csv("C:\\temp\\Products.csv")

# Round numeric columns in Products

for col in ["Price", "Cost"]:
    products_df[col] = products_df[col].round(2)

products_df.to_sql(
    "products",
    con=engine,
    if_exists="replace",
    index=False,
    dtype={
        "Price": DECIMAL(10,2),
        "Cost": DECIMAL(10,2)
    }
)
print(" Products table synced with DECIMAL fields!")

# 3. Transactions Table

transactions_df = pd.read_csv("C:\\temp\\Transactions.csv")

# Round numeric columns in Transactions

for col in ["Revenue", "Cost", "Profit"]:
    transactions_df[col] = transactions_df[col].round(2)

transactions_df.to_sql(
    "transactions",
    con=engine,
    if_exists="replace",
    index=False,
    dtype={
        "Revenue": DECIMAL(10,2),
        "Cost": DECIMAL(10,2),
        "Profit": DECIMAL(10,2)
    }
)
print(" Transactions table synced with DECIMAL fields!")

# Final message

print(" All tables synced to SQL, numeric precision ensured, ready for Python ETL & BI dashboards!")
