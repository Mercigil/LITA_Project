---Creating a New Database for the Project---
create database LITA_CapstoneProject

---Viewing Data after Importing---
select * from LITA_ProjectSaleData

---Total Sales for each Product Category---
select Product,   
sum(Quantity)as TotalSales
from LITA_ProjectSaleData
group by Product
order by sum(Quantity) desc

---Number of Sales Transactions in Each Region---
select Region, 
count(OrderID) as No_of_SaleTransaction
from LITA_ProjectSaleData
group by Region
order by count(OrderID) desc

---Highest-selling product by sales value---
select distinct top 5 Product,
					Quantity as MaxSingleQuantity
from LITA_ProjectSaleData
order by Quantity desc

select Product,   
sum(Quantity)as TotalSales
from LITA_ProjectSaleData
group by Product
order by sum(Quantity) desc

---Total Revenue Per Product---
select sum(Revenue) as TotalRevenue from LITA_ProjectSaleData

select Product, 
sum(Revenue) as TotalRevenue,
sum(Revenue)/21010.9 as TotalRevenue_in_Percentage
from LITA_ProjectSaleData
group by Product
order by sum(Revenue) desc

---Monthly Sales Totals for the Current Year---
Select Month_Name, sum(Quantity) as Monthly_Sale_Total_for_Current_Year
from LITA_ProjectSaleData
where Year=2024
Group by Month_Name

---Top 5 Customers by Total Purchase Amount---
select top 5 sum(Revenue) as Total_Purchase_Amount, Customer_Id
from LITA_ProjectSaleData
group by Customer_Id 
order by sum(Revenue) desc

---Percentage of Total Sales Contributed by Each Region---
select sum(Quantity) as TotalSales from LITA_ProjectSaleData

select Region,
sum(Quantity)as TotalSales,
sum(Quantity)/684.61 as TotalSale_in_Percentage
from LITA_ProjectSaleData
group by Region

---Identifying products with no sales in the last quarter---
select distinct product as All_Product ---viewing all products
from LITA_ProjectSaleData

select distinct product as Product_with_Sales_in_Last_Quarter_of_2023---product with sale in the last quater---
from LITA_ProjectSaleData
where Quarter = 4 and year = 2023 
 
 SELECT distinct product as Product_with_NO_Sales_in_Last_Quarter_of_2023
 FROM LITA_ProjectSaleData
WHERE product NOT IN 
(select distinct product ---product with sales in the last quater---
from LITA_ProjectSaleData
where Quarter = 4 and year = 2023 )