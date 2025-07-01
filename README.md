# Data-Analysis-Capstone-Case-Study-2-Kultra-Mega-Stores-Inventory.

## Analysis of Kultra Mega Stores Inventory as a Business Intelligence Analyst

The following steps were employed to anaylis the two scenarios.

Step 1: Open SSMS and connect to the SQL server.

Step 2: Create a new database.

Step 3: Refresh to get the new database created added to the list of database.

Step 4: Right click on the database created and select "Task", then go to import "flat file".

Step 5: Select the kultra excel file where it was saved or stored and then modify the varaible name and charatcers to suit the analysis.

Step 6: Click finish to have the data loaded into the SSMS interface.

Step 7: Then analysis began for the two scenarios.


### The SQL file that shows the analysis is added to this read.me file.

#### The answer to each question is as follows:
### Case Scenario I

##### Q1. Which product category had the highest sales?

Ans: Technology

###### Q2: What are the Top 3 and Bottom 3 regions in terms of sales?

Ans 2a: The top 3 region in terms of sales are:

i. Nunavut

ii. Northwest Territories

iii. Yukon

##### Q2b The bottom 3 region in terms of sales are:
i. West

ii. Ontario

iii. Prarie

##### Q3: What were the total sales of appliances in Ontario?

    Product_Sub_Category			      Total Sales

1.	Pens & Art Supplies				      34,858.00

2.	Office Machines					        306,497.31

3.	Copiers and Fax					        127,683.14

4.	Bookcases						            103,999.47

5.	Scissors, Rulers and Trimmers	  21,334.81

6.	Chairs & Chairmats				      438,172.13

7.	Storage & Organization			    236,636.89

8.	Telephones and Communication	  395,085.1595

9.	Envelopes						            32,721.09

10.	Labels							            9,088.61

11.	Office Furnishings				      161,005.97

12.	Computer Peripherals			      196,898.12

13.	Rubber Bands					          3,540.98

14.	Appliances						          202,346.84

15.	Paper							              99,936.15

16.	Binders and Binder Accessories	286,967.88

17.	Tables						            	406,439.93

##### Q4: Advise the management of KMS on what to do to increase the revenue from the bottom 10 customers
Ans: It was observed from the analysis that the bottom 10 customers hardly made sales in the year conisdered, some made sales once, and others just twice. In order for the management of KMS to increase the revenue from the bottom 10 customers, the management need to encourage these customers by giving more discount that will encourage more sales and in return more income to the company. They also need to look at the  acceptance rate of their product by the customer at these regions, thereby gaining insight on what to do such as rebranding, advertisement, e.t.c.

##### Q5: KMS incurred the most shipping cost using which shipping method?
Ans: Delivery Truck

### Case Scenario II
#### Q6. Who are the most valuable customers, and what products or services do they typically purchase?

Ans: The top 10 valuable customers with the product/services they purchased are:
  
  Names				        Product_Sub_Category

1. Emily Phan		    	Office Machines

2. Raymond Book		  	Copiers and Fax

3. Dennis Kane		  	Copiers and Fax

4. Jasper Cacioppo		Office Machines

5. Grant Carroll		  Binders and Binder Accessories

6. Clytie Kelty			  Copiers and Fax

7. Craig Carreira		  Office Machines

8. Roy Skaria			    Bookcases

9. Roy Phan				    Office Machines

10. Lisa DeCherney		Tables




##### Q7: Which small business customer had the highest sales?
Ans: Dennis Kane with Prodduct category (Technology) and Product_Sub_Category (Copiers and Fax)

##### Q8: Which Corporate Customer placed the most number of orders in 2009 – 2012?
Ans: Sonia Cooley

##### Q9: Which consumer customer was the most profi table one?
Ans: Emily Phan

##### Q10: Which customer returned items, and what segment do they belong to?
Ans: From the data supplied by KMS limilited, it wasn't recorded that customers returned products.

##### Q11: If the delivery truck is the most economical but the slowest shipping method and Express Air is the fastest but the most expensive one, do you think the company appropriately spent shipping costs based on the Order Priority? Explain your answer.
Ans: Based on the analysis above and the fact that delivery truck is most economical but slowest, it shows that the company didn't spent her shipping cost appropriately becasue the total shipping cost for the High and medium piority shipping of 22665.42 + 20513.93 which is  equals to 43,179.35 doesn't correlate with the amount spend for shipping through Express Air which is the fastest which totalled 7,850.91. This equally means that the company gave more priority to shipping through truck which is slowest and which supposed to be economical,
but acccording to the analysis, it wasn't economical.
