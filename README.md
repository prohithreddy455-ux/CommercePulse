# CommercePulse — The Hidden Revenue Leak Detector

## Project Overview
CommercePulse is an SQL-based e-commerce analytics project that analyzes revenue, customer activity, discounts, and potential revenue risks.

## Business Problem
E-commerce businesses need to understand how discounts, cancelled orders, returned orders, and declining customer activity affect business performance.

CommercePulse uses SQL queries to identify patterns that deserve further investigation.

## Technology Stack
- Microsoft SQL Server
- SQL
- SQL Server Management Studio (SSMS)
- Git and GitHub

## Database Design
The project contains four related tables:
- Customers
- Products
- Orders
- Order Items

## SQL Analysis
1. Revenue analysis after discounts
2. Customer activity and possible drop-off analysis
3. Order-level discount analysis
4. Revenue-risk flag detection

## Execution Results
The revenue analysis query returned:

- Completed orders: 9
- Units sold: 14
- Total revenue after discounts: 1007.00

The analysis scripts executed successfully against the sample database.

## Business Value
CommercePulse demonstrates how SQL can transform transactional data into useful business insights, helping analysts investigate discount patterns and customer purchasing behavior.

## Project Limitations
This project uses sample data. Revenue-risk flags indicate patterns for investigation and do not prove that actual revenue was lost.

## Project Status
Core database creation, sample-data insertion, and SQL analysis scripts have been executed successfully.

## How to Run

1. Install Microsoft SQL Server and SQL Server Management Studio (SSMS).
2. Create or select the "CommercePulse" database.
3. Run "01_create_tables.sql".
4. Run "02_insert_sample_data.sql".
5. Run "06_add_data_quality_constraints.sql".
6. Run "03_revenue_analysis.sql".
7. Run "04_customer_analysis.sql".
8. Run "05_revenue_leak_detection.sql".

Run the scripts in this order. The first two scripts create the tables and insert sample data. Script 06 adds data-quality constraints to protect against invalid quantities, negative prices, and discounts outside the 0–100% range. The analysis scripts then report sales, customer activity, and discount-risk patterns.

Note: Run the constraints script only once on a database where those constraints have not already been created.
