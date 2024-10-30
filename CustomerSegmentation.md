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
Using Microsoft Excel pivot table, the following summarization of the Consumer data was obtained




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
from LITA_ProjectSaleData
```

---
### Data Visualizations 





 
---
### Recommedations/Conclusions
