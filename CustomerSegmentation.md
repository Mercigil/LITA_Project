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

[Conclusion](recommedations/conclusions)

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

---
### Data Visualizations 





 
---
### Recommedations/Conclusions
