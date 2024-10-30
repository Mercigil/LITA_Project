# LITA Capstone Project

### Project Title: Customer Segmentation for a Subscription Service
#### By Tamakloe Vivian Anuoluwa
#### October, 2024

---
[Project Overview](#project-overview) 

[Data Source](#data-source) 

[Tools Used](#tools-used) 

[Data Cleaning](#data-cleaning-and-preparartions)

[Data Analysis using MS-Excel](#data-analysis-using-ms-excel)
  
[Data Analysis using SQL](#data-analysis-using-sql)

[Data Visualizations](#data-visualizations) 

[Conclusion](#conclusions)

[Challenge](#Challenge)

[Attached Files](#attached-files)

---
### Project Overview 
I am working on my LITA Project where I will analysis customer data for a subscription service to identify segments and trends. 

---
### Data Source
The Data was given by LITA team (Incubator Hub) on the learning platform (Canvas for Infrastructure) as an excel file.

---
### Tools Used
- Microsoft Excel [Download Here](https://www.microsoft.com)
  1. For Data Cleaning
  2. For Analysis
- SQL Server Management Studio for Querying and Analyzing Data [Download Here](https://www.microsoft.com)
- Power BI for Data Visualizations [Download Here](https://www.microsoft.com)
- GitHub for Portfolio Building

---
### Data Cleaning and Preparartions
The following was done to prepare our data for Analysis and Query
- Downloading of data from LITA LMS (Canvas) so as to be used in Ms-Excel for data cleaning and Data Analysis 
- Opening of Data in Excel to Clean Dataset;
  1. Freezing Header Row
  2. Formatting Data as Table
  3. Checking for Blank Cells or Rows (None was found)
  4. Checking that each Row had the right Datatype
  5. Checking for Duplicate Rows
     - Downloaded Dataset had 75001 Rows including Header Rows
     - 41213 Duplicate Rows found and Removed
     - Cleaned Dataset left with 33787 Rows including Header Rows
  6. Added a Calcuated Column (SubscriptionDuration) as SubscriptionEnd - SubscriptionStart
- Copy data and opened in a New Workbook and saved it as a "csv" file so as to be imported into SQL Server Mangement Studio  and Power BI for Data Analysis and Data visualizations
- While importing Sales dataset into SQL Server Mangement Studio, "tinyint" and "smallint" data types were changed to "int" and Revenue column dataype was changed from "tinyint" to "real'

---
### Exploratory Data Analysis
EDA involues exploring dataset to answer some question such as;
- What are the Customer Behavior?
- What are the Track Subscription Types?
- What are the key trends in cancellations and renewals?

---
### Data Analysis using MS-Excel
Using Microsoft Excel pivot table, the following summarization of the Customer data was obtained

- Customers and Revenue by Subcription Type		

|Subscription Type|No Customer|Total Revenue|
|-----------------|-------------------|--------------|
|Basic|	16,921	|33,776,735|
|Premium	|8,446|	16,899,064|
|Standard	|8,420	|16,864,376|
|Grand Total	|33,787	|67,540,175|
		
- Customers and Revenue by Region		

|Region|No of Customer|Total Revenue|
|------|--------------|-------------|
|East	|8,488	|16,958,763|
|South	|8,446	|16,899,064|
|West	|8,420	|16,864,376|
|North	|8,433	|16,817,972|
|Grand Total	|33,787	|67,540,175|

- No of Customer by Subcription Type in Regions 		

|SubscriptionType|Region|No of Customer|
|----------------|------|--------------|
|Basic	|	|16,921|
||	East	|8,488|
||	North	|8,433|
|Premium|	|8,446|
||	South	|8,446|
|Standard|	|8,420|
||	West	|8,420|
|Grand Total|	|33,787|

- No of Canceled Subscription	by Year	

|Canceled|	2022	|2023	|Grand Total|
|--------|--------|-----|-----------|
|FALSE|	11,864	|6,748	|18,612|
|TRUE|	8,411	|6,764	|15,175|
|Grand Total|	20,275	|13,512	|33,787|

- No of Customer that Canceled their Subscription			
	
|Subscription Type|FALSE|TRUE|Grand Total|
|-----------------|-----|----|-----------|
|Basic|11,854|	5,067|	16,921|
|Premium|3,382|	5,064|	8,446|
|Standard|3,376|5,044|	8,420|
|Grand Total|18,612|15,175|33,787|

- Revenue from  Subscription Type by  Cancelation			
	
|Subscription Type|	FALSE	|TRUE	|Grand Total|
|-----------------|-------|-----|-----------|
|Basic	|23,683,493	|10,093,242|	33,776,735|
|Premium|	6,772,264	|10,126,800	|16,899,064|
|Standard|	6,752,970|	10,111,406	|16,864,376|
|Grand Total|	37,208,727	|30,331,448|	67,540,175|
			
- Total Revenue from Region by Cancelation			

|Region|FALSE	|TRUE	|Grand Total|
|------|------|-----|-----------|
|East|	16,958,763||		16,958,763|
|North|	6,724,730	|10,093,242	|16,817,972|
|South|	6,772,264	|10,126,800	|16,899,064|
|West|6,752,970	|10,111,406|	16,864,376|
|Grand Total|	37,208,727|	30,331,448	|67,540,175|
			
- Total Revenue from Year by Cancelation			
	
|Canceled	|2022	|2023|	Grand Total|
|---------------|-------|----|-------------|
|FALSE|23,720,255|13,488,472|	37,208,727|
|TRUE	|16,818,183|13,513,265	|30,331,448|
|Grand Total|40,538,438|27,001,737|	67,540,175|

- Total Revenue from Subscription Types in Regions by Cancelation Status				
	
|SubscriptionType|Region|FALSE|TRUE|	Grand Total|
|----------------|------|-----|----|---------------|
|Basic	||	23,683,493|10,093,242|	33,776,735|
|	|East|	16,958,763||		16,958,763|
|	|North|	6,724,730|	10,093,242|16,817,972|
|Premium|	|6,772,264|	10,126,800|16,899,064|
|	|South	|6,772,264|	10,126,800|16,899,064|
|Standard|	|6,752,970|	10,111,406|16,864,376|
|	|West	|6,752,970|	10,111,406|16,864,376|
|Grand Total|	|37,208,727|	30,331,448|67,540,175|

- Total Revenue from Subscription Types in  Region by year/canceled Status					
	
|SubscriptionType|Region|Years|FALSE|TRUE|Grand Total|
|----------------|------|-----|-----|----|-----------|
|Basic|		|	|23,683,493	|10,093,242	|33,776,735|
|	|East	|	|16,958,763	||	16,958,763|
|	|	|2022	|10,242,555	||	10,242,555|
|	|	|2023	|6,716,208	||	6,716,208|
|	|North	|	|6,724,730	|10,093,242|	16,817,972|
|	|	|2022	|6,724,730	|3,365,221|	10,089,951|
|	|	|2023	||6,728,021	|6,728,021|
|Premium|	|	|6,772,264	|10,126,800|	16,899,064|
|	|South	|	|6,772,264	|10,126,800|	16,899,064|
|	|	|2022	|10,126,800	||10,126,800|
|	|	|2023	||6,772,264	|6,772,264|
|Standard|	|	|6,752,970	|10,111,406|	16,864,376|
|	|West	|	|6,752,970	|10,111,406|	16,864,376|
|	|	|2022	|6,752,970	|3,326,162|	10,079,132|
|	|	|2023	||6,785,244	|6,785,244|
|Grand Total|	|	|37,208,727	|30,331,448|	67,540,175|

---
### Data Analysis using SQL
Using Sql Server Management Studio 2022, the following queries were applied to our Sales data 

- Using already created Database
```SQL
use LITA_CapstoneProject
```
- Viewing the dataset after importing it into SQL Servet Management Studio
```SQL
select *
from LITA_Project_CustomerData
```
- Total number of customers from each region
```SQL
select Region,
	count(CustomerID) as TotalNo_of_Customer
from LITA_Project_CustomerData
group by region 
order by count(CustomerID) desc
```
|Region|TotalNo_of_Customer|
|------|-------------------|
|East	|8488|
|South	|8446|
|North	|8433|
|West	|8420|

- Most popular subscription type by the number of customers
```SQL
select SubscriptionType,
	count(CustomerID) as TotalNo_of_Customer
from LITA_Project_CustomerData
group by SubscriptionType
order by count(CustomerID) desc
```
|SubscriptionType|TotalNo_of_Customer|
|----------------|-------------------|
|Basic	|16921|
|Premium |8446|
|Standard |8420|

- Customers who canceled their subscription within 6 months
```SQL
select CustomerID, count(CustomerID) as No_of_Individual_Subscription
from LITA_Project_CustomerData
group by CustomerID
```
|CustomerID |No_of_Individual_Subscription|
|-----------|-----------------------------|
|215	|1686|
|209	|1685|
|201|	1693|
|212|	1700|
|218|	1699|
|213|	1692|
|207|	1714|
|216|	1687|
|210|	1692|
|204|	1662|
|211|	1718|
|219|	1680|
|205|	1673|
|202|	1693|
|208|	1676|
|217|	1690|
|203|	1690|
|214|	1683|
|220|	1695|
|206|	1679|

```SQL
select distinct CustomerID, SubscriptionDuration
from LITA_Project_CustomerData
```
|CustomerID|SubscriptionDuration|
|----------|--------------------|
|203|	365|
|212|	365|
|210|	365|
|220|	366|
|205|	365|
|218|	366|
|209|	365|
|217|	366|
|207|	365|
|215|	366|
|219|	366|
|206|	365|
|204|	365|
|214|	366|
|211|	365|
|216|	366|
|201|	365|
|213|	365|
|208|	365|

```SQL
select distinct CustomerId as CustomerswhoCanceledwithin_6months
from LITA_Project_CustomerData
where canceled=1 and 180 >
(select sum(SubscriptionDuration)/count(CustomerID)
from LITA_Project_CustomerData)
```
This Query returned no records as all Subscription Duration are 365 or 366

- Average subscription duration for all customers
```SQL
select AVG(SubscriptionDuration) as Average_Subscription_Duration
from LITA_Project_CustomerData
```
|Average_Subscription_Duration|
|-----------------------------|
|365|

- Customers with subscriptions longer than 12 months
```SQL
select distinct CustomerId as CustomerswithoveraYearSubscription
from LITA_Project_CustomerData
where 354 <
(select sum(SubscriptionDuration)/count(CustomerID)
from LITA_Project_CustomerData)
```
|CustomerswithoveraYearSubscription|
|----------------------------------|
|201|
|202|
|203|
|204|
|205|
|206|
|207|
|208|
|209|
|210|
|211|
|212|
|213|
|214|
|215|
|216|
|217|
|218|
|219|
|220|

- Total revenue by Subscription Type
```SQL
select SubscriptionType,
	sum(Revenue) as TotalRevenue
from LITA_Project_CustomerData
group by SubscriptionType
order by sum(Revenue) desc
```
|SubscriptionType|TotalRevenue|
|----------------|------------|
|Basic|	33776735|
|Premium|16899064|
|Standard|16864376|

- Top 3 regions by subscription cancellations
```SQL
select Region,		
	count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by Region 
order by count(Canceled) desc
```
|Region|Canceled_Subscription|
|------|---------------------|
|North|	5067|
|South	|5064|
|West	|5044|

- Total number of active and canceled subscriptions
```SQL
select  count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0
```
|Active_Subscription|
|-------------------|
|18612|

```SQL
select  count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
```
|Canceled_Subscription|
|---------------------|
|15175|

```SQL
select  SubscriptionType, count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by SubscriptionType
```
|SubscriptionType|Canceled_Subscription|
|----------------|---------------------|
|Basic	|5067|
|Premium|5064|
|Standard|5044|

```SQL
select  SubscriptionType, count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0
group by SubscriptionType
```
|SubscriptionType|Active_Subscription|
|----------------|-------------------|
|Basic	|11854|
|Premium|3382|
|Standard|3376|

```SQL
select  Region, count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by Region
```
|Region|Canceled_Subscription|
|------|---------------------|
|North	|5067|
|South	|5064|
|West	|5044|

```SQL
select  Region, count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0
group by Region
order by count(Canceled) desc
```
|Region|Active_Subscription|
|------|-------------------|
|East	|8488|
|South	|3382|
|West	|3376|
|North	|3366|

---
### Data Visualizations 

![Customer Dashboard_1](https://github.com/user-attachments/assets/f44547c1-8263-4016-b86a-a0d8cc6c20f5)

![Customer Dashboard_2](https://github.com/user-attachments/assets/7d7fcaf9-c292-4bd6-a7c4-aaa2b33b6b84)

![Customer Dashboard_3](https://github.com/user-attachments/assets/304f8090-072e-4609-b472-ce58eb44be0c)

![Customer Dashboard_4](https://github.com/user-attachments/assets/f2122498-fc6b-4fa7-a3fd-57672ecb295a)

![Customer Dashboard_5](https://github.com/user-attachments/assets/df07c39a-ea92-4dd2-bb1c-7c08bdafac45)

![Customer Dashboard_6](https://github.com/user-attachments/assets/08285507-e37b-44fe-8804-c9ea8bee203e)

![Customer Dashboard_7](https://github.com/user-attachments/assets/5ee6e9ba-e26b-4db6-a3fd-22b65765f187)

---
### Conclusion

---
### Challenge

---
### Attached Files



 
---
### Recommedations/Conclusions
