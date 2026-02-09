CREATE DATABASE retail_project_v2;
USE retail_project_v2;
CREATE TABLE fact_sales_v2 (
  transaction_id INT PRIMARY KEY,
  order_date DATE,
  customer_name VARCHAR(100),
  product_name VARCHAR(100),
  quantity INT,
  sales DECIMAL(10,2),
  city VARCHAR(50),
  state VARCHAR(50)
);
SELECT COUNT(*) FROM fact_sales_v2;
SELECT MIN(order_date), MAX(order_date)
FROM fact_sales_v2;
CREATE TABLE dim_customer_v2 AS
SELECT DISTINCT
  customer_name,
  city,
  state
FROM fact_sales_v2;
SELECT COUNT(*) FROM dim_customer_v2;
SELECT COUNT(DISTINCT customer_name)
FROM fact_sales_v2;
CREATE TABLE dim_product_v2 AS
SELECT DISTINCT
  product_name
FROM fact_sales_v2;
SELECT COUNT(*) FROM dim_product_v2;
-- No NULL dates
SELECT COUNT(*) 
FROM fact_sales_v2
WHERE order_date IS NULL;
-- Sales sanity
SELECT SUM(sales) FROM fact_sales_v2;
-- Sample data
SELECT * FROM fact_sales_v2 LIMIT 10;
