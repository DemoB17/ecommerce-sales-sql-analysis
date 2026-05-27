# E-Commerce Sales & Customer Behavior Analysis

## 📌 Project Overview
This project focuses on extracting, cleaning, and analyzing raw e-commerce transaction data to uncover key business drivers. Using PostgreSQL, I normalized messy data formats (handling currency symbols, punctuation, and white spaces) to calculate total revenue, isolate top product lines, evaluate marketing channel efficiency, and analyze customer purchasing patterns.

## 🛠️ Tech Stack & Skills
- **Database Engine:** PostgreSQL (pgAdmin 4)
- **SQL Concepts:** Data Normalization (ALTER, UPDATE, TRIM, REPLACE), Aggregations (SUM, COUNT), Date Functions (TO_CHAR), Data Grouping, and Sorting.
- **Domain Knowledge:** E-commerce metrics, Revenue analysis, Marketing ROI, Customer Lifetime Value (LTV).

## 🧹 Data Cleaning & Normalization
The raw dataset contained formatting issues that blocked mathematical calculations, specifically text-formatted currency symbols (`$`), commas (`,`), and trailing whitespaces. I applied the following normalization script to convert these columns into a clean `NUMERIC` data type:

```sql
ALTER TABLE sales_data 
ALTER COLUMN unit_price TYPE NUMERIC(10,2) 
USING TRIM(REPLACE(REPLACE(unit_price, '$', ''), ',', ''))::NUMERIC(10,2);

ALTER TABLE sales_data 
ALTER COLUMN total_price TYPE NUMERIC(10,2) 
USING TRIM(REPLACE(REPLACE(total_price, '$', ''), ',', ''))::NUMERIC(10,2);
