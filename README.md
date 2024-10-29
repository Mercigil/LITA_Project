# LITA Capstone Project

### Project Title: Sales Performance Analysis for a Retail Store
[Project Overview](#project-overview) 

[Data Source](#data-source) 

[Tools Used](#tools-used) 

[Data Cleaning and Preparartions](#data-cleaning-and-preparartions)

[Data Analysis](#data-analysis) 

[Data Visualizations](#data-visualizations) 

---
### Project Overview
I am working on my LITA Project where I will analysis Sales Performance  for a Retail Store.I explored sales data to uncover key insights such as top-selling products, regional performance, and monthly sales trends. I produced an interactive Power BI dashboard that highlights these findings.

### Data Source
The Data was given by LITA team (Incubator Hub) on the learning platform (Canvas for Infrastructure) as an excel file.

### Tools Used
- Microsoft Excel [Download Here](https://www.microsoft.com)
  1. For Data Cleaning
  2. For Analysis
- SQL for Query Data [Download Here](https://www.microsoft.com)
- Power BI for Data Visualizations [Download Here](https://www.microsoft.com)
- GitHub for Portfolio Building

### Data Cleaning and Preparartions
The following was done to prepare our data for Analysis and Query
- Downloading of data from LITA LMS (Canvas)
- Opening of Data in Excel to Clean Dataset;
  1. Freezing Header Row
  2. Formatting Data as Table
  3. Checking for Blank Cells or Rows (None was found)
  4. Checking that each Row had the right Datatype
  5. Checking for Duplicate Rows
     - Downloaded Dataset had 50001 Rows including Header Rows
     - 40079 Duplicate Rows found and Removed
     - Cleaned Dataset left with 9921 Rows including Header Rows
  6. Added a Calcuated Column (Revenue) as Quantity Sold * Unitprice
- Copy data and opened in a New Workbook and saved it as a "csv" file
- Open Cleaned dataset csv file using Power BI to extract add new column to dataset from OrderDate Column:
  1. Added Column Year
  2. Added Column Month Name
  3. Added Column Quarter

### Exploratory Data Analysis
EDA involues exploring dataset to answer some question such as;
- What are the Top-Selling Products?
- What are the Regional Performance?
- Are there Monthly sales trends?

### Data Analysis
#### Data Analysis usning MS-Excel
- Total Sales from Products
  |Product|Total Sales|
  |-------|-----------|
  |Hat|15,929|
  |Shoes|14,402|
  |Shirt|12,388|
  |Gloves|12,369|
  |Socks|7,921|
  |Jacket|5,452|
  |Grand Total|68,461|
  
  Based on Total Sales: Hat,Shoes and Shirt are the Top Selling Products
  
- Total Revenue from Product
  |Product|Total Revenue|
  |-------|-------------|
  |Shoes|613,380|
  |Shirt|485,600|
  |Hat|316,195|
  |Gloves|296,900|
  |Jacket|208,230|
  |Socks|180,785|
  |Grand Total|2,101,090|
  
  Based on Total Revenue: Shoes,Shirt and Hat are the Top Selling Products

- Total Sales by Region	
  |Region|Total Sales|Total Revenue|
  |------|-----------|-------------|
  |South|24,298|927,820|
  |East|20,361|485,925|
  |North|12,402|387,000|
  |West|11,400|300,345|
  |Grand Total|68,461|2,101,090|

   Based on Total Sales and Revenue: South Region has the Highest Sales and Highest Revenue
  
-Monthly Trend of Sales and Revenue 
|Years|Months|Total Sales|Sum of Revenue|
|-----|------|-----------|--------------|
|2023-|	|38,681|1,105,330|
| 	|Jan|	2,480|	49,600|
||	Feb|	4,950|	247,500|
||	Mar|	3,493|	52,395|
||	Apr|	1,485|	7,425|
||	May|	994|	59,640|
||	Jun|	3,976|	99,400|
||	Jul|	5,940|	237,600|
||	Aug|	1,992|	29,880|
||	Sep|	3,472|	34,720|
||	Oct|	4,464|	133,920|
||	Nov|	2,970|	103,950|
||	Dec|	2,465|	49,300|
|2024	||	29,780|	995,760|
||	Jan|	3,968|	198,400|
||	Feb|	4,980|	298,800|
||	Mar|	5,478|	54,780|
||	Apr|	1,972|	39,440|
||	May|	1,488|	44,640|
||	Jun|	5,928|	148,200|
||	Jul|	2,480|	37,200|
||	Aug|	3,486|	174,300|
|Grand Total||	68,461|	2,101,090|

Based on Monthly Trend of Sales and Revenue: 
1. Sales tend to be high in a month, then higher the next month and drop in the third month, as seen with (January,February and March),2023(June,July and August) and (September,October andd November)
2. Revenue tend to be low(regular) at other months and high at some months(2023(February,July,October,November) and (2024(January,February,June and August))
			
- Product that attract Sales in each Region
     
|Region|Product|Total Sales|Sum of Revenue|
|------|-------|-----------|--------------|
|East	|      |20,361|485,925|
||	Hat|	8,971|107,175|
||	Jacket|	2,970|103,950|
||	Shirt|	5,940|237,600|
||	Shoes|	2,480|37,200|
|North	|	12,402|387,000|
||	Hat|	3,472|34,720|
||	Jacket|	2,482|104,280|
||	Shirt|	6,448|248,000|
|South	|	24,298|927,820|
||	Gloves|	9,904|247,600|
||	Shoes|	9,930|546,300|
||	Socks|	4,464|133,920|
|West	|	11,400|300,345|
||	Gloves|	2,465|49,300|
||	Hat|	3,486|174,300|
||	Shoes|	1,992|29,880|
||	Socks|	3,457|46,865|
|Grand Total||	68,461|2,101,090|


```SQL
SElECT * FROM table1
WHERE CONDITION = TRUE
```
### Data Visualizations 
