# LITA Capstone Project

### Project Title: Sales Performance Analysis for a Retail Store
[Project Overview](#project-overview) 

[Data Source](#data-source) 

[Tools Used](#tools-used) 

[Data Cleaning](#data-cleaning-and-preparartions)

[Data Analysis](#data-analysis) 

- [Data Analysis using MS-Excel](#data-analysis-using-ms-excel)
  
- [Data Analysis using SQL](#data-analysis-using-sql)

[Data Visualizations](#data-visualizations) 

[Conclusion](recommedations/conclusions)

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
- Downloading of data from LITA LMS (Canvas) so as to be used in Ms-Excel for data cleaning and Data Analysis 
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
- Copy data and opened in a New Workbook and saved it as a "csv" file so as to be imported into SQL Server Mangemnet Studio 2022(SQL) and Power BI for Data Analysis and Data visualizations
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
#### Data Analysis using MS-Excel
Using Microsoft Excel pivot table, the following summarization of the Sales data was obtained

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
  
- Monthly Trend of Sales and Revenue
  |Years|Months|Total Sales|Total Revenue|
  |-----|------|-----------|--------------|
  |2023|	|38,681|1,105,330|
  | 	|Jan|	2,480|	49,600|
  ||	Feb|	4,950|	247,500|
  ||	Mar|	3,493|	52,395|
  ||	Apr|	1,485|	7,425|
  ||	May|	994|	59,640|
  ||	Jun|	3,976|	99,400|
  ||	Jul|	5,940|	237,600
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
  |Grand Total||68,461|2,101,090|

Based on Monthly Trend of Sales and Revenue: 
1. Sales tend to be high in a month, then higher the next month and drop in the third month, as seen with (January,February and March),2023(June,July and August) and (September,October andd November)
2. Revenue tend to be low(regular) at other months and high at some months(2023(February,July,October,November) and (2024(January,February,June and August))
			
- Product that attract Sales in each Region
     
|Region|Product|Total Sales|Total Revenue|
|------|-------|-----------|--------------|
|East	|      |20,361|485,925|
||	Hat|	8,971|107,175|
||	Jacket|	2,970|103,950|
||	Shirt|	5,940|237,600|
||	Shoes|	2,480|37,200|
|North|	|12,402|387,000|
||	Hat|	3,472|34,720|
||	Jacket|	2,482|104,280|
||	Shirt|	6,448|248,000|
|South|	|24,298|927,820|
||	Gloves|	9,904|247,600|
||	Shoes|	9,930|546,300|
||	Socks|	4,464|133,920|
|West| |11,400|300,345|
||	Gloves|	2,465|49,300|
||	Hat|	3,486|174,300|
||	Shoes|	1,992|29,880|
||	Socks|	3,457|46,865|
|Grand Total||	68,461|2,101,090|
	
- Months Product Sell in each Year
     
|Product|Years|Months|Total Sales|Total Revenue|
|-------|-----|------|-----------|-------------|
|Gloves	|	|	|12,369	|296,900|
|	|2023	|	|6,441	|148,700|
|	|	|Jun	|3,976	|99,400|
|	|	|Dec	|2,465	|49,300|
|	|2024	|	|5,928	|148,200|
|	|	|Jun	|5,928	|148,200|
|Hat	|	|	|15,929	|316,195|
|	|2023	|	|6,965	|87,115|
|	|	|Mar	|3,493	|52,395|
|	|	|Sep	|3,472	|34,720|
|	|2024	|	|8,964	|229,080|
|	|	|Mar	|5,478	|54,780|
|	|	|Aug	|3,486	|174,300|
|Jacket	|	|	|5,452	|208,230|
|	|2023	|	|3,964	|163,590|
|	|	|May	|994	|59,640|
|	|	|Nov	|2,970	|103,950|
|	|2024	|	|1,488	|44,640|
|	|	|May	|1,488	|44,640|
|Shirt	|	|	|12,388	|485,600|
|	|2023	|	|8,420	|287,200|
|	|	|Jan	|2,480	|49,600|
|	|	|Jul	|5,940	|237,600|
|	|2024	|	|3,968	|198,400|
|	|	|Jan	|3,968	|198,400|
|Shoes	|	|	|14,402	|613,380|
|	|2023	|	|6,942	|277,380|
|	|	|Feb	|4,950	|247,500|
|	|	|Aug	|1,992	|29,880|
|	|2024	|	|7,460	|336,000|
|	|	|Feb	|4,980	|298,800|
|	|	|Jul	|2,480	|37,200|
|Socks	|	|	|7,921	|180,785|
|	|2023	|	|5,949	|141,345|
|	|	|Apr	|1,485	|7,425|
|	|	|Oct	|4,464	|133,920|
|	|2024	|	|1,972	|39,440|
|	|	|Apr	|1,972	|39,440|
|Grand Total|	|	|68,461	|2,101,090|

  Based on the table above, there exist a Monthly trend in each product based on the years, product turn in sales in certain months in both years
  
- Month Region makes Sales in each Year
     
|Region|Years|Months|Total Sales|Total Revenue|
|------|-----|------|-----------|-------------|
|East  |	|      |20,361	|485,925|
|	|2023	|	|12,403	|393,945|
|	|	|Mar|	3,493	|52,395|
|	|	|Jul|	5,940	|237,600|
|	|	|Nov|	2,970	|103,950|
|	|2024	|	|7,958	|91,980|
|	|	|Mar|	5,478	|54,780|
|	|	|Jul|	2,480	|37,200|
|North	|	|	|12,402	|387,000|
|	|2023	|	|6,946	|143,960|
|	|	|Jan|	2,480	|49,600|
|	|	|May|	994	|59,640|
|	|	|Sep|	3,472	|34,720|
|	|2024	|	|5,456	|243,040|
|	|	|Jan|	3,968	|198,400|
|	|	|May|	1,488	|44,640|
|South	|	|	|24,298	|927,820|
|	|2023	|	|13,390	|480,820|
|	|	|Feb|	4,950	|247,500|
|	|	|Jun|	3,976	|99,400|
|	|	|Oct|	4,464	|133,920|
|	|2024	|	|10,908	|447,000|
|	|	|Feb|	4,980	|298,800|
|	|	|Jun|	5,928	|148,200|
|West	|	|	|11,400	|300,345|
|	|2023	|	|5,942	|86,605|
|	|	|Apr|	1,485	|7,425|
|	|	|Aug|	1,992	|29,880|
|	|	|Dec|	2,465	|49,300|
|	|2024	|	|5,458	|213,740|
|	|	|Apr|	1,972	|39,440|
|	|	|Aug|	3,486	|174,300|
|Grand Total|	|	|68,461	|2,101,090|

Based on the table above, there exist a Monthly trend in each region based on the years, regions turn in sales in certain months in both years

- Months Product Sell in Regions by Year
   				
|Product|Region|Years|Months|Total Sales|Total Revenue|
|-------|------|-----|------|-----------|-------------|
|Gloves| |	|	|	12,369|	296,900|
||	South|	|	|	9,904|	247,600|
||	|	2023|	|	3,976|	99,400|
||	|	|	Jun|	3,976|	99,400|
||	|	2024|	|	5,928|	148,200|
||	|	|	Jun|	5,928|	148,200|
||	West|	|	|	2,465|	49,300|
||	|	2023|	|	2,465|	49,300|
||	|	|	Dec|	2,465|	49,300|
|Hat|	|	|	|	15,929|	316,195|
||	East|	|	|	8,971|	107,175|
||	|	2023|	|	3,493|	52,395|
||	|	|	Mar|	3,493|	52,395|
||	|	2024|	|	5,478|	54,780|
||	|	|	Mar|	5,478|	54,780|
||	North|	|	|	3,472|	34,720|
||	|	2023|	|	3,472|	34,720|
||	|	|	Sep|	3,472|	34,720|
||	West|	|	|	3,486|	174,300|
||	|	2024|	|	3,486|	174,300|
||	|	|	Aug|	3,486|	174,300|
|Jacket||	|	|	5,452|	208,230|
||	East|	|	|	2,970|	103,950|
||	|	2023|	|	2,970|	103,950|
||	|	|	Nov|	2,970|	103,950|
||	North|	|	|	2,482|	104,280|
||	|	2023|	|	994|	59,640|
||	|	|	May|	994|	59,640|
||	|	2024|	|	1,488|	44,640|
||	|	|	May|	1,488|	44,640|
|Shirt|	|	|	|	12,388|	485,600|
||	East|	|	|	5,940|	237,600|
||	|	2023|	|	5,940|	237,600|
||	|	|	Jul|	5,940|	237,600|
||	North|	|	|	6,448|	248,000|
||	|	2023|	|	2,480|	49,600|
||	|	|	Jan|	2,480|	49,600|
||	|	2024|	|	3,968|	198,400|
||	|	|	Jan|	3,968|	198,400|
|Shoes|	|	|	|	14,402|	613,380|
||	East|	|	|	2,480|	37,200|
||	|	2024|	|	2,480|	37,200|
||	|	|	Jul|	2,480|	37,200|
||	South|	|	|	9,930|	546,300|
||	|	2023|	|	4,950|	247,500|
||	|	|	Feb|	4,950|	247,500|
||	|	2024|	|	4,980|	298,800|
||	|	|	Feb|	4,980|	298,800|
||	West|	|	|	1,992|	29,880|
||	|	2023|	|	1,992|	29,880|
||	|	|	Aug|	1,992|	29,880|
|Socks|	|	|	|	7,921|	180,785|
||	South|	|	|	4,464|	133,920|
||	|	2023|	|	4,464|	133,920|
||	|	|	Oct|	4,464|	133,920|
||	West|	|	|	3,457|	46,865|
||	|	2023|	|	1,485|	7,425|
||	|	|	Apr|	1,485|	7,425|
||	|	2024|	|	1,972|	39,440|
||	|	|	Apr|	1,972|	39,440|
|Grand Total| |	|	|	68,461|	2,101,090|

#### Data Analysis using SQL
Using Sql Server Management Studio 2022, the following queries were applied to our Sales data 

```SQL
SElECT * FROM table1
WHERE CONDITION = TRUE
```
### Data Visualizations 


### Recommedations/Conclusions
