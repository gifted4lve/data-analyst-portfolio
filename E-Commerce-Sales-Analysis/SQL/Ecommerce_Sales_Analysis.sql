create database
ecommerce_analysis;

use ecommerce_analysis;
select* from ecommerce_sales_data_2024_2025;
select count(distinct 'Order ID') as Total_Order from Ecommerce_sales_Data_2024_2025;
select min('Order ID') as First_Order,
max('Oredr ID') as Last_Oreder from ecommerce_sales_data_2024_2025;

select sum(Sales) Total_Sales, sum(Profit) as Total_Profit
from ecommerce_sales_data_2024_2025;

select count(*) as Raw_Rows, 
count(distinct concat_ws('|', 'ORDER ID', 'ORDER DATE', 'CUSTOMER NAME', 'REGION', 'ÇITY', 'CATEGORY', 
'SUB-CATEGORY', 'PRODUCT NAME', 'QUANTITY', 'UNIT PRICE', 'DISCOUNT', 'SALES', 'PROFIT', 'PAYMENT MODE' ))
AS UNIQUE_ROWS FROM ecommerce_sales_data_2024_2025;  

select count(*) as Raw_Rows, 
count(*) - count(concat_ws('|', 'ORDER ID', 'ORDER DATE', 'CUSTOMER NAME', 'REGION', 'ÇITY', 'CATEGORY', 
'SUB-CATEGORY', 'PRODUCT NAME', 'QUANTITY', 'UNIT PRICE', 'DISCOUNT', 'SALES', 'PROFIT', 'PAYMENT MODE' ))
AS Duplicate_Rows FROM ecommerce_sales_data_2024_2025;

select sum(Sales) Total_Sales, sum(Profit) as Total_Profit
from ecommerce_sales_data_2024_2025;

select count(*) as Raw_Rows, count(distinct 'Order ID' ) AS Unique_Orders
from ecommerce_sales_data_2024_2025;

describe ecommerce_sales_data_2024_2025;
select count(*) as Raw_Rows, count(distinct `Order ID`) AS Unique_Orders, count(*) - count(distinct `Order ID`) AS Extra_Rows 
from ecommerce_sales_data_2024_2025;

select `Order ID`, count(*) as Number_of_Rows from ecommerce_sales_data_2024_2025
group by `Order ID`
having count(*) > 1
Order by Number_of_Rows desc;

select count(*) as Raw_Rows, 
count(distinct concat_ws(`|`, `ORDER ID`, `ORDER DATE`, `CUSTOMER NAME`, `REGION`, `ÇITY`, `CATEGORY`, 
`SUB-CATEGORY`, `PRODUCT NAME`, `QUANTITY`, `UNIT PRICE`, `DISCOUNT`, `SALES`, `PROFIT`, `PAYMENT MODE` ))
AS UNIQUE_ROWS FROM ecommerce_sales_data_2024_2025;  

select count(*) as Raw_Rows, 
count(*) - count(concat_ws('|', 'ORDER ID', 'ORDER DATE', 'CUSTOMER NAME', 'REGION', 'ÇITY', 'CATEGORY', 
'SUB-CATEGORY', 'PRODUCT NAME', 'QUANTITY', 'UNIT PRICE', 'DISCOUNT', 'SALES', 'PROFIT', 'PAYMENT MODE' ))
AS Duplicate_Rows FROM ecommerce_sales_data_2024_2025;

select * from ecommerce_sales_data_2024_2025
where `Order ID` = 10001;

create table
ecommerce_sales_clean as select distinct * from ecommerce_sales_data_2024_2025;
select count(*) as Clean_Rows from ecommerce_sales_clean;
select sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit from ecommerce_sales_clean;

select count(*) as Clean_Rows from ecommerce_sales_clean;

select sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit from ecommerce_sales_clean;

select count(*) as Total_Rows, count(distinct `Order ID`) as Unique_Oredrs
from ecommerce_sales_clean;

select sum(Sales) as Total_Sales,
sum(Profit) as Total_Profit from ecommerce_sales_clean;

SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
    YEAR(`Order Date`) AS Sales_Year,
    MONTH(`Order Date`) AS Sales_Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY
    YEAR(`Order Date`),
    MONTH(`Order Date`)
ORDER BY
    Sales_Year,
    Sales_Month;
    SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    `Customer Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY `Product Name`
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT
    `Payment Mode`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM ecommerce_sales_clean
GROUP BY `Payment Mode`
ORDER BY Total_Sales DESC;



