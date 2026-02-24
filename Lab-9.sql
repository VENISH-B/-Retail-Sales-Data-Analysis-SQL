Create Database Retail;

Use retail;

Select * From customers;
Select * From orders;
Select * From sales_data;
-- First 10 Rows
Select * From sales_data limit 10;
-- Count Total Rows
Select count(*) as Total_Count From sales_data;
-- Get Date Range
Select min(OrderDate) as Firstorder, 
max(OrderDate) as Lastorder From sales_data;
-- Completed Status
Select * From sales_data Where Status ="Completed" limit 20;
-- Payment Status
Select Productid,Productname From sales_data Where PaymentMethod ="Upi";
-- Unit Price above 50
Select Productid,Productname,UnitPrice From sales_data Where UnitPrice >50 Order BY UnitPrice;
Select Productid,Productname,UnitPrice From sales_data Where UnitPrice <50;
-- Sum of UnitPrice
Select sum(UnitPrice) as Total From sales_data;
-- Avg of UnitPrice
Select avg(UnitPrice) as Average From sales_data;
-- Group By Status
Select status , count(*) as Total From sales_data group by status;
-- Group By Category
Select Category, count(*) as Total From sales_data group by Category;
-- TOP 5 Product in Total Price
Select ProductName,sum(Total) as Top_Sales From Sales_data Group by ProductName 
order by Top_Sales Desc limit 5;
-- Monthly Sales
SELECT DATE_FORMAT(OrderDate, '%Y-%m') AS month, SUM(Total) AS total_sales
FROM sales_data GROUP BY month ORDER BY month;
-- Top 10 Customer By Spending
Select CustomerID, CustomerName, sum(Total) as Total_Spending, count(*) Orders
From sales_data Group by CustomerID, CustomerName order by Total_Spending Desc limit 10;
-- Concat Function
Select CustomerID, concat(CustomerName,"-",PaymentMethod) as Customer_Payment From sales_data;
-- SUBSTRING()
SELECT productname,substring(productname,1,4) AS shortname_product FROM sales_data;
-- Length()
SELECT Productname,length(productname) as p_length from sales_data;
-- replace()
SELECT  Category,replace(Category,"Home Appliances","Product") as category from sales_data;
-- Lower() & Upper()
Select lower(customername) as Lowercase ,upper(customername) as Uppercase from sales_data;