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

 ----- QQ1: Product category had the highest sales is 
 "TECHNOLOGY"

  -----QQ2: Top 3 and Bottom 3 regions in terms of sales------

  ---Q2A: Top 3 regions in terms of sales------
select TOP 3 Region, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Region
order by [Total Sales] asc

--The top 3 region in terms of sales are:
1. Nunavut
2. Northwest Territories
3. Yukon

---Q2B: Bottom 3 regions in terms of sales------
select TOP 3 Region, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Region
order by [Total Sales] desc
--The bottom 3 region in terms of sales are:
1. West
2. Ontario
3. Prarie

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
--In order to increase the revenue from the bottom 10 customers, the management of KMS limited will be advised to  

select TOP 10 Customer_Name, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Name
order by [Total Sales] asc

select TOP 10 Customer_Name, count([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Name
order by [Total Sales] asc

It was observed from the analysis that the bottom 10 customers hardly made sales in the year conisdered, some made sales once, and others
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


----Q6: Most Valuable Customers and Products or Services they typically purchase----
select Customer_Segment,Product_Sub_Category,Customer_Name, sum([Sales]) as [Total Sales]
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


-----Q8: Corporate Customer that placed the most number of orders in 2009 – 2012----
select TOP 1 * 
from [dbo].[KMS Sql Case Study]
where Customer_Segment = 'corporate'
order by [Order_Quantity] desc
---The Corporate Customer that placed the most number of orders in 2009 – 2012 is "Sonia Cooley"

----Q9: Most Profitable Customer----
select TOP 1 * 
from [dbo].[KMS Sql Case Study]
where Customer_Segment = 'consumer'
order by [Profit] desc
---The most profitable customer is "Emily Phan"


----Q10: Customer that returned items, and the segment do they belong to----
select top 1 Customer_Segment,Product_Sub_Category,Customer_Name, sum([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Segment,Product_Sub_Category,Customer_Name
order by [Total Sales] asc

select top 1 Customer_Segment,Product_Sub_Category,Customer_Name, count([Sales]) as [Total Sales]
	from [dbo].[KMS Sql Case Study]
group by Customer_Segment,Product_Sub_Category,Customer_Name
order by [Total Sales] asc


---From the data supplied by KMS limilited, it wasn't recorded that customers returned products.

---Q11: Shipping Methods and Cost ----
select Ship_Mode, sum([Shipping_Cost]) as [Total Shipping Cost]
	from [dbo].[KMS Sql Case Study]
group by Ship_Mode
order by [Total Shipping Cost] asc
---KMS incurred the highest cost shipping cost by using "Delivery Truck"---
The shipping cost based on the shipping mode is as follows:
Express Air = 7,850.91
Regular Air = 48,008.19
Deilvery Truck = 51,971.94
Total cost of shipping = 107,831.04

----Shipping Cost based on order of priority
select Order_Priority, sum([Shipping_Cost]) as [Total Shipping Cost]
	from [dbo].[KMS Sql Case Study]
group by Order_Priority
order by [Total Shipping Cost] asc

Order of Priority	
Medium			20513.93
Not Specified	20592.15
Critical		21112.68
High			22665.42
Low				22946.86
Total:			107,831.04

--If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one,
--do you think the company appropriately spent shipping costs based on the Order Priority? Explain your answer.
--- Based on the analysis above and the fact that delivery truck is most economical but slowest, it shows that the company didn't spent her
--- shipping cost appropriately becasue the total shipping cost for the High and medium piority shipping of 22665.42 + 20513.93 which is 
--- equals to 43,179.35 doesn't correlate with the amount spend for shipping through Express Air which is the fastest which totalled 7,850.91.
--- This equally means that the company gave more priority to shipping through truck which is slowest and which supposed to be economical,
---but acccording to the analysis, it wasn't economical.