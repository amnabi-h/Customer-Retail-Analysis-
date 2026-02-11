CREATE DATABASE IF NOT EXISTS retail_week1_db;
USE retail_week1_db;
CREATE TABLE IF NOT EXISTS week1_cleaned_retail_sales (
    `Transaction ID` INT,
    `Order ID` VARCHAR(50),
    Amount INT,
    Profit INT,
    Quantity INT,
    Category VARCHAR(50),
    `Sub-Category` VARCHAR(50),
    PaymentMode VARCHAR(30),
    `Order Date` VARCHAR(20),   -- Date stored as string (DD/MM/YYYY or DD-MM-YYYY)
    CustomerName VARCHAR(100),
    State VARCHAR(50),
    City VARCHAR(50)
);
DESC week1_cleaned_retail_sales;
-- Total records
SELECT COUNT(*) AS total_rows
FROM week1_cleaned_retail_sales;

-- Sample data
SELECT *
FROM week1_cleaned_retail_sales
LIMIT 5;
SELECT SUM(Amount) AS total_sales
FROM week1_cleaned_retail_sales;
SELECT SUM(Profit) AS total_profit
FROM week1_cleaned_retail_sales;
SELECT ROUND(AVG(Amount), 2) AS avg_order_value
FROM week1_cleaned_retail_sales;
SELECT COUNT(DISTINCT `Transaction ID`) AS total_transactions
FROM week1_cleaned_retail_sales;
SELECT
    `Order ID`,
    SUM(Quantity) AS total_quantity
FROM week1_cleaned_retail_sales
GROUP BY `Order ID`
ORDER BY total_quantity DESC;
SELECT
    Category,
    SUM(Amount) AS category_sales
FROM week1_cleaned_retail_sales
GROUP BY Category
ORDER BY category_sales DESC;
SELECT
    `Sub-Category`,
    SUM(Amount) AS sub_category_sales
FROM week1_cleaned_retail_sales
GROUP BY `Sub-Category`
ORDER BY sub_category_sales DESC;
SELECT
    PaymentMode,
    COUNT(*) AS total_transactions
FROM week1_cleaned_retail_sales
GROUP BY PaymentMode
ORDER BY total_transactions DESC;
SELECT
    State,
    SUM(Amount) AS state_sales
FROM week1_cleaned_retail_sales
GROUP BY State
ORDER BY state_sales DESC;
SELECT
    City,
    SUM(Amount) AS city_sales
FROM week1_cleaned_retail_sales
GROUP BY City
ORDER BY city_sales DESC;
SELECT
    RIGHT(`Order Date`, 7) AS month_year,
    SUM(Amount) AS monthly_sales
FROM week1_cleaned_retail_sales
GROUP BY month_year
ORDER BY month_year;
-- Loss-making transactions
SELECT *
FROM week1_cleaned_retail_sales
WHERE Profit < 0;
-- Highest profit order
SELECT *
FROM week1_cleaned_retail_sales
ORDER BY Profit DESC
LIMIT 1;
CREATE OR REPLACE VIEW rfm_base AS
SELECT
    CustomerName AS customer_id,
    MAX(`Order Date`) AS last_order_date,
    COUNT(DISTINCT `Order ID`) AS frequency,
    SUM(Amount) AS monetary
FROM week1_cleaned_retail_sales
GROUP BY CustomerName;
SELECT *
FROM rfm_base
LIMIT 10;
