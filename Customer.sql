use LITA_CapstoneProject

select * from LITA_Project_CustomerData

---Total number of customers from each region---
select Region, count(CustomerID) as TotalNo_of_Customer
from LITA_Project_CustomerData
group by region 
order by count(CustomerID) desc

---Most popular subscription type by the number of customers---
select SubscriptionType, count(CustomerID) as TotalNo_of_Customer
from LITA_Project_CustomerData
group by SubscriptionType
order by count(CustomerID) desc

---Customers who canceled their subscription within 6 months---
select CustomerID, count(CustomerID) as No_of_Individual_Subscription
from LITA_Project_CustomerData
group by CustomerID

select distinct CustomerID, SubscriptionDuration
from LITA_Project_CustomerData

select CustomerID,sum(SubscriptionDuration) as TotalSubscriptionDuration
from LITA_Project_CustomerData
group by CustomerID

select distinct CustomerId as CustomerswhoCanceledwithin_6months
from LITA_Project_CustomerData
where canceled=1 and 180 >
(select sum(SubscriptionDuration)/count(CustomerID)
from LITA_Project_CustomerData)

---Average subscription duration for all customers---
select AVG(SubscriptionDuration) as Average_Subscription_Duration
from LITA_Project_CustomerData

select CustomerID,
AVG(SubscriptionDuration) as Average_Subscription_Duration
from LITA_Project_CustomerData
group by CustomerID

---Customers with subscriptions longer than 12 months---
select CustomerID, count(CustomerID) as No_of_Individual_Subscription
from LITA_Project_CustomerData
group by CustomerID

select distinct CustomerID, SubscriptionDuration
from LITA_Project_CustomerData

select CustomerID,sum(SubscriptionDuration) as TotalSubscriptionDuration
from LITA_Project_CustomerData
group by CustomerID

select distinct CustomerId as CustomerswithoveraYearSubscription
from LITA_Project_CustomerData
where 354 <
(select sum(SubscriptionDuration)/count(CustomerID)
from LITA_Project_CustomerData)

---Total revenue by subscription type---
select SubscriptionType, sum(Revenue) as TotalRevenue
from LITA_Project_CustomerData
group by SubscriptionType
order by sum(Revenue) desc

---Top 3 regions by subscription cancellations---
select Region,		
		count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by Region 
order by count(Canceled) desc

---Total number of active and canceled subscriptions---
select  count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0

select  count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1

select  SubscriptionType, count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by SubscriptionType

select  SubscriptionType, count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0
group by SubscriptionType

select  Region, count(Canceled) as Canceled_Subscription
from LITA_Project_CustomerData
where Canceled=1
group by Region

select  Region, count(Canceled) as Active_Subscription
from LITA_Project_CustomerData
where Canceled=0
group by Region
order by count(Canceled) desc