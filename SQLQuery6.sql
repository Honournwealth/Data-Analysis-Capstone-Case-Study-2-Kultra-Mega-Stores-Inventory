SELECT TOP (1000) [Row_ID]
      ,[Order_ID]
      ,[Order_Date]
      ,[Order_Priority]
      ,[Order_Quantity]
      ,[Sales]
      ,[Discount]
      ,[Ship_Mode]
      ,[Profit]
      ,[Unit_Price]
      ,[Shipping_Cost]
      ,[Customer_Name]
      ,[Province]
      ,[Region]
      ,[Customer_Segment]
      ,[Product_Category]
      ,[Product_Sub_Category]
      ,[Product_Name]
      ,[Product_Container]
      ,[Product_Base_Margin]
      ,[Ship_Date]
  FROM [KMS_DB].[dbo].[KMS Sql Case Study]
  
  ------QQ1: Product category had the highest sales-----
  select product_category, sum([Sales]) as [Total Sales]
  from [dbo].[KMS Sql Case Study]
  group by Product_Category
  order by [Total Sales] desc
  -----ANSWER: Product category had the highest sales is  "TECHNOLOGY" as shown in the result below
 Product_Category			Total Sales
1. Technology				5984248.18
2. Furniture				5178590.54
3. Office Supplies			3752762.10
  

    -----QQ2: Top 3 and Bottom 3 regions in terms of sales------

  ---Q2A: Top 3 regions in terms of sales------
  select TOP 3 Region, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Region
order by [Total Sales] desc
--The bottom 3 region in terms of sales are:
1. West
2. Ontario
3. Prarie

---Q2B: Bottom 3 regions in terms of sales------
select TOP 3 Region, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Region
order by [Total Sales] asc

--The top 3 region in terms of sales are:
1. Nunavut
2. Northwest Territories
3. Yukon


--- Q3: Total Sales of Appliances in Ontario---
select Product_Sub_Category, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
where Region = 'Ontario'
group by Product_Sub_Category

	Product_Sub_Category			Total Sales
1.	Pens & Art Supplies				34,858.00
2.	Office Machines					306,497.31
3.	Copiers and Fax					127,683.14
4.	Bookcases						103,999.47
5.	Scissors, Rulers and Trimmers	21,334.81
6.	Chairs & Chairmats				438,172.13
7.	Storage & Organization			236,636.89
8.	Telephones and Communication	395,085.1595
9.	Envelopes						32,721.09
10.	Labels							9,088.61
11.	Office Furnishings				161,005.97
12.	Computer Peripherals			196,898.12
13.	Rubber Bands					3,540.98
14.	Appliances						202,346.84
15.	Paper							99,936.15
16.	Binders and Binder Accessories	286,967.88
17.	Tables							406,439.93


--- Q4: ------
select TOP 10 Customer_Name,Shipping_Cost,Sales,Discount,Unit_Price, sum([Order_Quantity]) as [Order Quantity]
	from [dbo].[KMS Sql Case Study]
group by Customer_Name,Shipping_Cost,Sales,Discount,Unit_Price
order by [Order Quantity] asc
-------------------------------------
select TOP 10 Customer_Name, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Name
order by [Total Sales] asc

select TOP 10 Customer_Name, count([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Name
order by [Total Sales] asc

---It was observed from the analysis that the bottom 10 customers hardly made sales in the year conisdered, some made sales once, and others
just twice. In order for the management of KMS TO increase the revenue from the bottom 10 customers, the management need to encourage these
customers by giving more discount that will encourage more sales and in return more income to the company. They also need to look at the 
acceptance rate of their product by the customer at these regions, thereby gaining insight on what to do such as rebranding, advertisement,
e.t.c.


---Q5: Shipping Methods and Cost ----
select Ship_Mode, sum([Shipping_Cost]) as [Total Shipping Cost]
	from [dbo].[KMS Sql Case Study]
group by Ship_Mode
order by [Total Shipping Cost] asc
---KMS incurred the highest cost shipping cost by using "Delivery Truck"---

Ship_Mode	Total Shipping Cost
1. Express Air	7850.91
2. Regular Air	48008.19
Delivery Truck	51971.94

----Q6: Most Valuable Customers and Products or Services they typically purchase----
select top 10 Customer_Segment,Product_Sub_Category,Customer_Name, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Segment,Product_Sub_Category,Customer_Name
order by [Total Sales] desc
---The top 10 valuable customers with the product/services they purchased are:
	[Names]				Product_Sub_Category
1. Emily Phan			Office Machines
2. Raymond Book			Copiers and Fax
3. Dennis Kane			Copiers and Fax
4. Jasper Cacioppo		Office Machines
5. Grant Carroll		Binders and Binder Accessories
6. Clytie Kelty			Copiers and Fax
7. Craig Carreira		Office Machines
8. Roy Skaria			Bookcases
9. Roy Phan				Office Machines
10. Lisa DeCherney		Tables


---Q7: Small Business Customer that had the highest sales---
select TOP 1 * 
from [dbo].[KMS Sql Case Study]
where Customer_Segment = 'small business'
order by [Sales] desc
--The small business customer with the highest sale is Dennis Kane with Prodduct category (Technology) and Product_Sub_Category (Copiers and Fax)
Row_ID	Order_ID	Order_Date	Order_Priority	Order_Quantity	Sales		Discount	Ship_Mode	Profit		Unit_Price	Shipping_Cost	Customer_Name	Province	Region	Customer_Segment	Product_Category	Product_sub_Category	Product_Name							Product_Container	Product_Base_Margin	Ship_Date
2026	14435		2012-12-01	Not Specified	9.				33367.85	0.01		Regular Air	3992.52		3499.99		24.4900000000	Dennis Kane		Quebec		Quebec	Small Business		Technology			Copiers and Fax			Canon imageCLASS 2200 Advanced Copier	Large Box			0.370000004768372	2012-12-04

-----Q8: Corporate Customer that placed the most number of orders in 2009 – 2012----
select TOP 1 * 
from [dbo].[KMS Sql Case Study]
where Customer_Segment = 'corporate'
order by [Order_Quantity] desc
---The Corporate Customer that placed the most number of orders in 2009 – 2012 is "Sonia Cooley"
Row_ID	Order_ID	Order_Date	Order_Priority	Order_Quantity	Sales		Discount	Ship_Mode		Profit		Unit_Price	Shipping_Cost	Customer_Name	Province	Region	Customer_Segment	Product_Category	Product_sub_Category	Product_Name				Product_Container	Product_Base_Margin	Ship_Date
65		384			2012-03-02	Low				50.00			7666.04		0.020		Delivery Truck	-1820.84	146.05		80.20			Sonia Cooley	Alberta		West	Corporate			Furniture			Tables					BPI Conference Tables		Jumbo Box			0.709999978542328	2012-03-09

----Q9: Most Profitable Customer----
select TOP 1 * 
from [dbo].[KMS Sql Case Study]
where Customer_Segment = 'consumer'
order by [Profit] desc
---The most profitable customer is "Emily Phan"---
Row_ID	Order_ID	Order_Date	Order_Priority	Order_Quantity	Sales		Discount	Ship_Mode		Profit		Unit_Price	Shipping_Cost	Customer_Name	Province		Region		Customer_Segment	Product_Category	Product_sub_Category	Product_Name										Product_Container	Product_Base_Margin	Ship_Date
4190	29766		2009-03-21	Medium			13.00			89061.05	0.00		Regular Air		27220.69	6783.02		24.4900000000	Emily Phan		New Brunswick	Atlantic	Consumer			Technology			OfficeMachines			Polycom ViewStation™ ISDN Videoconferencing Unit	Large Box			0.389999985694885	2009-03-22

--------Q10: Customers that returned items and the customer segment----
select *from (
	select [Order_ID],Customer_Segment,Product_Sub_Category,Customer_Name 
	from [dbo].[KMS Sql Case Study]) as Customer
join (
select [Order_ID], [Status]
	from [KMS_DB].[dbo].[Order_Status]) as Returned
on Customer.[Order_ID] = Returned.[Order_ID]
order by [customer_Name] asc

---- There are 872 customers that returned items.---
---The top 10 customers that returned the product in ascending order and their segment are---
Customer_Segment		Customer_Name	
1. Corporate			Aaron Bergman
2. Corporate			Aaron Bergman
3. Corporate			Aaron Bergman
4. Home Office			Aaron Hawkins
5. Home Office			Aaron Hawkins
6. Home Office			Aaron Hawkins
7. Home Office			Aaron Hawkins
8. Small Business		Adam Bellavance
9. Small Business		Adrian Barton
10. Small Business		Adrian Barton


---Q11: Shipping Mode and Cost -------

select Ship_mode, sum([Sales]) as [Total Sales]
 from [dbo].[KMS Sql Case Study]
 group by Ship_mode
 order by [Total Sales] desc

 select Ship_mode, sum([Profit]) as [Total Profit]
 from [dbo].[KMS Sql Case Study]
 group by Ship_mode
 order by [Total Profit] desc

  select Ship_mode, count([Sales]) as [Number of Sales]
  from [dbo].[KMS Sql Case Study]
  group by Ship_mode
  order by [Number of Sales] desc

  ---The following was result obtained based on the ship mode:
  Ship_Mode			NumofSales		SumofSales			Profit
  Regular Air		6,270			7,506,303			1,104,692
  Delivery Truck	1,146			6,224,878			269,644
  Express Air		983				1,184,418			147,430

Select top 5 Order_Priority,Ship_Mode,Count(Order_ID) As [Order_Count] 
From [dbo].[KMS Sql Case Study] 
Group by Order_Priority,Ship_Mode 
Order by [Order_Count] Desc

---The top five orders in order of piority is as follows:
Order_Priority			Ship Mode			Order_Count
1. High					Regular Air				1,308
2. Low					Regular Air				1,280
3. Not Specified		Regular Air				1,277
4. Medium				Regular Air				1,225
5. Critical				Regular Air				1,180

----------ORDER_PRIORITY AND SHIP MODE----------
select top 5 Order_Priority,Ship_Mode,ROUND(SUM(Sales - Profit),2) AS EstimatedShippingCost,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode 
Order by [EstimatedShippingCost] asc
------The 10 Lowest Estimated Shipping Cost based on Order_Priority is as follows:
Order_Priority		Ship_Mode			EstimatedShippingCost
1. Low				Express Air			191,312.13
2. Not Specified	Express Air			194,393.97
3. Critical			Express Air			198,005.40
4. High				Express Air			206,125.18
5. Medium			Express Air			247,151.91

----Estimated Profit based on Order_Priority and Ship_Mode
select top 5 Order_Priority,Ship_Mode,ROUND(SUM(Profit),2) AS EstimatedProfit,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode 
Order by [EstimatedProfit] desc

----The top 5 EstimatedShippingCostbyProfit----
Order_Priority		Ship_Mode		EstimatedProfit
1. High				Regular Air		288,321.40
2. Low				Regular Air		261,530.26
3. Medium			Regular Air		228,402.26
4. Critical			Regular Air		165,445.77
5. Not Specified	Regular Air		160,993.11
ASN: Base on the order of priority, even though delivery truck is most economical, and express air is the fastest
---and most expensive, the shipping costs based on the Order Priority was appropriately spent by the company. This is due to the 
---fact that based on the order of priority, regular air has both the highest number of order and the profit even though the
--- it has high estimated shipping cost which was a known fact that both regular and express mode of shipping items cost more than
---the delivery trcuk. 





--AVERAGE SHIPPING COST BASED ON ORDER_PRIORITY--- 
Select top 5 Order_Priority,Ship_Mode,Cast(Round(Avg (Shipping_Cost),3) As Decimal (10,3)) As [Average Shipping Cost]
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode
Order by [Average Shipping Cost] asc
--The 5 lowest Average Shipping Cost cost based on Order_Priority and Ship Mode----
Order_Priority		Ship_Mode		Average Shipping Cost
1. High				Express Air		6.856
2. Critical			Regular Air		7.277
3. Not Specified	Regular Air		7.623
4. High				Regular Air		7.649
5. Medium			Regular Air		7.689
--------------------------------------------------------------------

select top 5 Order_Priority,Ship_Mode,ROUND(AVG(Sales - Profit),2) AS AverageShippingCost,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode 
Order by [AverageShippingCost] asc
-------The 5 Lowest Average Shipping Cost based on Order_Priority is as follows:
Order_Priority		Ship_Mode			Estimated Average ShippingCost
1. Critical			Regular Air				951.36
2. High				Express Air				972.29
3. Critical			Express Air				990.03
4. Not Specified	Regular Air				1002.29
5. High				Regular Air				1005.85


select top 10 Order_Priority,Ship_Mode,ROUND(SUM(Sales),2) AS EstimatedShippingCostbySales,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode  
Order by [EstimatedShippingCostbySales] desc

select top 5 Order_Priority,Ship_Mode,ROUND(SUM(Shipping_Cost),2) AS EstimatedShippingCostbyShipping_Cost,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode 
Order by [EstimatedShippingCostbyShipping_Cost] asc


select Order_Priority,Ship_Mode,product_category,ROUND(SUM(Sales - Shipping_Cost),2) AS EstimatedShippingCost,
AVG(DATEDIFF(day, [Order_Date], [Ship_Date])) AS AvgShipDays
From [KMS Sql Case Study] 
Group By Order_Priority,Ship_Mode,product_category 
Order by [EstimatedShippingCost] asc
