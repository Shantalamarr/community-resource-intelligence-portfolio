-- Lab2
-- Creates a new database for Apex Retail 
CREATE DATABASE apex_retail;
-- Confirms apex_retail was created
SHOW DATABASES;
-- Makes the database active
USE apex_retail;
-- Shows the databases that are currently active
SELECT DATABASE();

-- Lab 3

-- Confirms apex_retail is the active database before creating anything
USE apex_retail;
CREATE TABLE products (
-- Creates the products table with six columns and a primary key on
ProductID INT PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(50),
UnitPrice DECIMAL(10,2),
StockQuantity INT,
DateAdded DATE
);
-- Lists every table inside apex_retail to confirm products was created
SHOW TABLES;
-- Shows the column names, data types, and key info for the products table
DESCRIBE products;

-- lab 4
USE apex_retail;
CREATE TABLE orders (
Order_ID INT PRIMARY KEY,
Customer_ID VARCHAR(20),
Order_Date DATE,
City VARCHAR(50),
State VARCHAR(10),
Region VARCHAR(20),
Category VARCHAR(50),
Sub_Category VARCHAR(50),
Quantity INT,
Unit_Price DECIMAL(10,2),
Discount_Pct INT,
Total_Sales DECIMAL(10,2),
Payment_Mode VARCHAR(20),
Returned VARCHAR(3)
);

INSERT INTO orders (Order_ID, Customer_ID, Order_Date, City, State,
Region, Category, Sub_Category, Quantity, Unit_Price, Discount_Pct,
Total_Sales, Payment_Mode, Returned)
VALUES (1001, 'CUST103', '2025-02-10', 'Phoenix', 'TX', 'East',
'Clothing', 'Jeans', 8, 472.00, 5, 3587.20, 'Cash', 'No');

select * from orders;

INSERT INTO orders (Order_ID, Customer_ID, Order_Date, City, State,
Region, Category, Sub_Category, Quantity, Unit_Price, Discount_Pct,
Total_Sales, Payment_Mode, Returned)
VALUES
(1002, 'CUST117', '2025-10-17', 'Chicago', 'CA', 'West',
'Electronics', 'Phone', 8, 425.00, 10, 3060.00, 'Online', 'Yes'),
(1003, 'CUST121', '2025-01-15', 'Houston', 'NY', 'West', 'Grocery',
'Snacks', 1, 561.00, 10, 504.90, 'Card', 'No'),
(1004, 'CUST145', '2025-06-15', 'Chicago', 'NY', 'West', 'Grocery',
'Snacks', 7, 774.00, 15, 4605.30, 'Card', 'Yes'),
(1005, 'CUST132', '2025-03-12', 'Phoenix', 'AZ', 'West',
'Electronics', 'Tablet', 1, 600.00, 10, 540.00, 'UPI', 'Yes');

INSERT INTO orders (Order_ID, Customer_ID, Order_Date, City, State,
Region, Category, Sub_Category, Quantity, Unit_Price, Discount_Pct,
Total_Sales, Payment_Mode, Returned)
VALUES
(1006, 'CUST118', '2025-09-25', 'Los Angeles', 'IL', 'Midwest',
'Clothing', 'Shirt', 1, 894.00, 15, 759.90, 'UPI', 'No'),
(1007, 'CUST139', '2025-05-25', 'Los Angeles', 'CA', 'West',
'Furniture', 'Desk', 7, 1163.00, 15, 6919.85, 'Cash', 'No'),
(1008, 'CUST143', '2025-08-31', 'Houston', 'IL', 'East',
'Electronics', 'Laptop', 3, 157.00, 15, 400.35, 'Online', 'No'),
(1009, 'CUST127', '2025-09-10', 'Houston', 'NY', 'South', 'Grocery',
'Dairy', 2, 522.00, 20, 835.20, 'Cash', 'No'),
(1010, 'CUST118', '2025-06-11', 'Phoenix', 'AZ', 'South',
'Electronics', 'Tablet', 1, 568.00, 15, 482.80, 'Card', 'No'),
(1011, 'CUST108', '2025-09-29', 'Houston', 'NY', 'Midwest',
'Furniture', 'Chair', 4, 797.00, 5, 3028.60, 'UPI', 'Yes'),
(1012, 'CUST111', '2025-06-04', 'Houston', 'NY', 'Midwest', 'Grocery',
'Snacks', 8, 592.00, 5, 4499.20, 'UPI', 'Yes'),
(1013, 'CUST112', '2025-03-19', 'New York', 'IL', 'South', 'Grocery',
'Snacks', 4, 479.00, 5, 1820.20, 'Online', 'Yes'),
(1014, 'CUST124', '2025-11-26', 'Los Angeles', 'CA', 'South',
'Grocery', 'Dairy', 1, 478.00, 20, 382.40, 'Online', 'Yes'),
(1015, 'CUST136', '2025-05-23', 'Houston', 'CA', 'East', 'Furniture',
'Desk', 2, 946.00, 20, 1513.60, 'Online', 'Yes'),
(1016, 'CUST149', '2025-10-13', 'Phoenix', 'CA', 'South',
'Electronics', 'Laptop', 5, 398.00, 20, 1592.00, 'UPI', 'No'),
(1017, 'CUST109', '2025-04-07', 'Los Angeles', 'NY', 'Midwest',
'Electronics', 'Laptop', 7, 765.00, 15, 4551.75, 'UPI', 'No'),
(1018, 'CUST132', '2025-11-25', 'Chicago', 'NY', 'West', 'Clothing',
'Jeans', 7, 320.00, 10, 2016.00, 'Online', 'No'),
(1019, 'CUST102', '2025-02-26', 'Houston', 'CA', 'Midwest',
'Clothing', 'Jacket', 4, 1199.00, 0, 4796.00, 'Card', 'Yes'),
(1020, 'CUST149', '2025-11-15', 'Phoenix', 'TX', 'West', 'Clothing',
'Jacket', 2, 225.00, 0, 450.00, 'UPI', 'Yes'),
(1021, 'CUST130', '2025-10-19', 'New York', 'AZ', 'Midwest',
'Electronics', 'Laptop', 6, 475.00, 20, 2280.00, 'Online', 'No'),
(1022, 'CUST106', '2025-06-29', 'Houston', 'IL', 'East', 'Furniture',
'Sofa', 2, 1081.00, 10, 1945.80, 'Card', 'No'),
(1023, 'CUST130', '2025-07-24', 'Chicago', 'TX', 'West', 'Furniture',
'Desk', 1, 584.00, 10, 525.60, 'UPI', 'No'),
(1024, 'CUST139', '2025-06-06', 'Houston', 'NY', 'South',
'Electronics', 'Phone', 4, 293.00, 5, 1113.40, 'Card', 'No'),
(1025, 'CUST150', '2025-09-20', 'Los Angeles', 'NY', 'West',
'Electronics', 'Phone', 3, 134.00, 15, 341.70, 'Cash', 'Yes'),
(1026, 'CUST134', '2025-09-05', 'Houston', 'TX', 'Midwest',
'Furniture', 'Chair', 3, 833.00, 15, 2124.15, 'Card', 'Yes'),
(1027, 'CUST150', '2025-02-03', 'Houston', 'IL', 'East',
'Electronics', 'Phone', 3, 1094.00, 5, 3117.90, 'Card', 'No'),
(1028, 'CUST136', '2025-05-19', 'Houston', 'AZ', 'South', 'Clothing',
'Shirt', 3, 1041.00, 10, 2810.70, 'Online', 'No'),
(1029, 'CUST143', '2025-02-17', 'New York', 'IL', 'West', 'Grocery',
'Snacks', 3, 242.00, 0, 726.00, 'UPI', 'No'),
(1030, 'CUST110', '2025-01-24', 'Houston', 'IL', 'West', 'Clothing',
'Jeans', 8, 240.00, 20, 1536.00, 'Online', 'No'),
(1031, 'CUST133', '2025-05-13', 'New York', 'TX', 'South', 'Clothing',
'Jeans', 1, 897.00, 0, 897.00, 'Card', 'Yes'),
(1032, 'CUST106', '2025-02-04', 'Los Angeles', 'IL', 'East',
'Grocery', 'Beverage', 1, 569.00, 0, 569.00, 'Online', 'No'),
(1033, 'CUST125', '2025-01-10', 'New York', 'TX', 'West',
'Electronics', 'Phone', 5, 682.00, 10, 3069.00, 'Cash', 'Yes'),
(1034, 'CUST143', '2025-01-01', 'Phoenix', 'NY', 'South', 'Grocery',
'Dairy', 2, 474.00, 0, 948.00, 'Online', 'Yes'),
(1035, 'CUST150', '2025-12-13', 'Phoenix', 'CA', 'Midwest',
'Clothing', 'Jeans', 4, 838.00, 10, 3016.80, 'Card', 'Yes'),
(1036, 'CUST124', '2025-12-29', 'Chicago', 'TX', 'South', 'Furniture',
'Sofa', 2, 299.00, 15, 508.30, 'Cash', 'No'),
(1037, 'CUST138', '2025-06-23', 'Chicago', 'AZ', 'West', 'Clothing',
'Jacket', 5, 1081.00, 10, 4864.50, 'Online', 'Yes'),
(1038, 'CUST128', '2025-09-25', 'Phoenix', 'NY', 'South', 'Clothing',
'Shirt', 8, 208.00, 10, 1497.60, 'UPI', 'No'),
(1039, 'CUST117', '2025-05-09', 'Phoenix', 'NY', 'Midwest',
'Furniture', 'Sofa', 4, 280.00, 0, 1120.00, 'Card', 'Yes'),
(1040, 'CUST134', '2025-11-28', 'Los Angeles', 'NY', 'South',
'Grocery', 'Beverage', 4, 411.00, 5, 1561.80, 'Cash', 'No'),
(1041, 'CUST139', '2025-10-03', 'Phoenix', 'IL', 'West',
'Electronics', 'Tablet', 8, 716.00, 0, 5728.00, 'UPI', 'No'),
(1042, 'CUST107', '2025-05-26', 'Houston', 'IL', 'South', 'Furniture',
'Chair', 7, 501.00, 20, 2805.60, 'UPI', 'No'),
(1043, 'CUST119', '2025-04-23', 'Los Angeles', 'NY', 'East',
'Electronics', 'Phone', 7, 691.00, 20, 3869.60, 'UPI', 'No'),
(1044, 'CUST114', '2025-09-01', 'Los Angeles', 'AZ', 'West',
'Clothing', 'Jacket', 6, 940.00, 5, 5358.00, 'Card', 'Yes'),
(1045, 'CUST132', '2025-09-13', 'Chicago', 'AZ', 'Midwest',
'Electronics', 'Phone', 1, 25.00, 10, 22.50, 'Cash', 'No'),
(1046, 'CUST107', '2025-08-02', 'New York', 'AZ', 'West', 'Furniture',
'Chair', 8, 1067.00, 20, 6828.80, 'Card', 'No'),
(1047, 'CUST107', '2025-01-07', 'Phoenix', 'NY', 'East', 'Clothing',
'Jacket', 8, 117.00, 5, 889.20, 'Online', 'No'),
(1048, 'CUST148', '2025-04-05', 'New York', 'NY', 'West', 'Grocery',
'Snacks', 6, 911.00, 10, 4919.40, 'Online', 'No'),
(1049, 'CUST127', '2025-01-08', 'Chicago', 'IL', 'West', 'Furniture',
'Desk', 7, 265.00, 0, 1855.00, 'Card', 'Yes'),
(1050, 'CUST135', '2025-03-07', 'Phoenix', 'NY', 'West',
'Electronics', 'Laptop', 8, 392.00, 5, 2979.20, 'Online', 'No');

-- Lab 5
-- Confirms apex_retail is the active database
USE apex_retail;
-- Shows every column and every row in the orders table
SELECT * FROM orders;
-- Shows only the order ID, customer, city, and total sales columns
SELECT Order_ID, Customer_ID, City, Total_Sales FROM orders;
-- Shows the customer, city, and sales columns with cleaner, renamed headers
SELECT Customer_ID AS Customer, City AS Location, Total_Sales AS Revenue FROM orders;

select Sub_category As SC from orders;

-- Lab 6
-- Confirms apex_retail is the active database
USE apex_retail;
-- Shows only orders shipped to the West region
SELECT Order_ID, City, Region FROM orders WHERE Region = 'West';
-- Shows orders with total sales above $3,000
SELECT Order_ID, Total_Sales FROM orders WHERE Total_Sales > 3000;
-- Shows orders with 2 or fewer units
SELECT Order_ID, Quantity FROM orders WHERE Quantity <2;
-- Shows every order that is not in the Grocery category
SELECT Order_ID, Category FROM orders WHERE Category != 'Grocery';

SELECT Order_ID, Category, Region, Total_sales FROM orders WHERE Category = 'Grocery';

-- Lab 7
-- Confirms apex_retail is the active database
USE apex_retail;
-- Shows West region Electronics orders using AND
SELECT Order_ID, Region, Category FROM orders WHERE Region = 'West' AND Category = 'Electronics';
-- Shows every Electronics or Furniture order using OR
SELECT Order_ID, Category FROM orders WHERE Category = 'Electronics' OR Category = 'Furniture';
-- Shows every order that is not Grocery using NOT
SELECT Order_ID, Category FROM orders WHERE NOT Category = 'Grocery';
-- Shows Clothing orders that are either big sales or returns, combining AND/OR with parentheses
SELECT Order_ID, Category, Total_Sales, Returned FROM orders WHERE Category = 'Clothing' AND (Total_Sales > 3000 OR Returned = 'Yes');

select * from orders where city = "Phoenix" AND category = "clothing";

-- Lab 8
-- Confirms apex_retail is the active database
USE apex_retail;
-- Sets two orders' Region to NULL to simulate missing data entry
UPDATE orders SET Region = NULL WHERE Order_ID IN (1003, 1010);
Select * from orders;
-- Finds every order shipped to a city starting with P using LIKE
SELECT Order_ID, City FROM orders WHERE City LIKE 'P%';
-- Finds orders totaling between $1,000 and $3,000 using BETWEEN
SELECT Order_ID, Total_Sales FROM orders WHERE Total_Sales BETWEEN 1000 AND 3000;
-- Finds every East or Midwest order using IN
SELECT Order_ID, Region FROM orders WHERE Region IN ('East', 'Midwest');
-- Finds orders with a missing region using IS NULL
SELECT Order_ID, City, Region FROM orders WHERE Region IS NULL;
-- Finds orders that do have a region using IS NOT NULL
SELECT Order_ID, City, Region FROM orders WHERE Region IS NOT NULL;


select Customer_ID, City, Category,Region FROM orders WHERE Region LIKE "M%";

Select Order_ID, Quantity FROM orders WHERE Quantity BETWEEN 1 and 5;

Select Order_ID, Sub_category FROM orders WHERE Sub_category IN ("Snacks", "Shirt");

-- Lab 9
-- Shows orders from smallest to largest sale using ORDER BY ASC
SELECT Order_ID, Total_Sales FROM orders ORDER BY Total_Sales ASC;
-- Shows orders from largest to smallest sale using ORDER BY DESC
SELECT Order_ID, Total_Sales FROM orders ORDER BY Total_Sales DESC;
-- Shows every order sorted by region, including how NULL regions sort
SELECT Order_ID, Region FROM orders ORDER BY Region ASC;
SELECT Order_ID, Region FROM orders ORDER BY Region DESC;
-- Shows just the 5 highest-value orders using ORDER BY plus LIMIT
SELECT Order_ID, City, Total_Sales FROM orders ORDER BY Total_Sales DESC LIMIT 5;

-- Lab 10


select * from orders;
-- Counts every row in the orders table
SELECT COUNT(*) FROM orders;
-- Counts only rows where Region is not NULL
SELECT COUNT(Region) FROM orders;

SELECT COUNT(Category) FROM orders;
-- Adds up total revenue across all orders
SELECT SUM(Total_Sales) FROM orders;
-- Calculates the average unit price across all orders
SELECT AVG(Unit_Price) FROM orders;

select sum(quantity) from orders;

SELECT COUNT(Payment_Mode) FROM orders;

SELECT COUNT(Payment_Mode) FROM orders where payment_mode = "cash";
SELECT COUNT(Payment_Mode) FROM orders where payment_mode = "online";
SELECT COUNT(Payment_Mode) FROM orders where payment_mode = "UPI";
SELECT COUNT(Payment_Mode) FROM orders where payment_mode = "Card";
-- Finds the smallest and largest order totals
SELECT MIN(Total_Sales), MAX(Total_Sales) FROM orders;

-- Lab 11

-- Counts how many orders fall into each category
SELECT Category, COUNT(*) AS NumOrders FROM orders GROUP BY Category;
-- Shows count and average sale for each category together
SELECT Category, COUNT(*) AS NumOrders, AVG(Total_Sales) AS AvgSale FROM orders GROUP BY Category; 
-- Breaks each category down further by region
SELECT Category, Region, COUNT(*) AS NumOrders FROM orders GROUP BY Category, Region ORDER BY Category, Region;

-- Lab 12
-- Shows categories with more than 11 orders using HAVING
SELECT Category, COUNT(*) AS NumOrders FROM orders GROUP BY Category HAVING COUNT(*) > 11
-- Shows categories with an average sale above $2,400 using HAVING
SELECT Category, AVG(Total_Sales) AS AvgSale FROM orders GROUP BY Category HAVING AVG(Total_Sales) > 2400;
-- Filters rows with WHERE first, then filters the resulting groups with
HAVING
SELECT Category, COUNT(*) AS NumOrders
FROM orders
WHERE Returned = 'No'
GROUP BY Category
HAVING COUNT(*) > 6;

-- Lab 13
-- Confirms the Customers table imported successfully and shows all records
select * from customer;
alter table customer
rename to cust;

-- Lab 14

select * from cust;
-- Joins orders to customers to show each order with the customer's real name
SELECT o.Order_ID, c.Customer_Name, o.Total_Sales
FROM orders o
INNER JOIN cust c
ON o.Customer_ID = c.Customer_ID;
-- Shows only orders placed by Corporate-segment customers
SELECT o.Order_ID, c.Customer_Name, c.Customer_Segment, o.Total_Sales
FROM orders o
INNER JOIN cust c ON o.Customer_ID = c.Customer_ID
WHERE c.Customer_Segment = 'Corporate';
-- Counts how many distinct customers actually appear in the join
SELECT COUNT(DISTINCT c.Customer_ID) FROM orders o
INNER JOIN customers c ON o.Customer_ID = c.Customer_ID;
-- Shows order count and average sale per customer segment
SELECT c.Customer_Segment, COUNT(*) AS NumOrders, AVG(o.Total_Sales) AS
AvgSale
FROM orders o
INNER JOIN customers c ON o.Customer_ID = c.Customer_ID
GROUP BY c.Customer_Segment;

-- Lab 15

SELECT
    o.Order_ID,
    c.Customer_Name,
    c.Customer_Segment,
    o.Category,
    o.Total_Sales
FROM orders o
INNER JOIN customers c
ON o.Customer_ID = c.Customer_ID;
-- Keeps every customer using LEFT JOIN, with NULLs where there's no order
SELECT c.Customer_ID, c.Customer_Name, o.Order_ID, o.Total_Sales
FROM customers c LEFT JOIN orders o ON c.Customer_ID = o.Customer_ID;
-- Finds customers who have never placed an order (an anti-join)
SELECT c.Customer_ID, c.Customer_Name
FROM customers c
LEFT JOIN orders o ON c.Customer_ID = o.Customer_ID
WHERE o.Order_ID IS NULL;
-- Keeps every order using RIGHT JOIN, confirming none are missing a customer
SELECT c.Customer_Name, o.Order_ID, o.Total_Sales
FROM customers c
RIGHT JOIN orders o ON c.Customer_ID = o.Customer_ID;
-- Simulates a FULL OUTER JOIN by combining LEFT JOIN and RIGHT JOIN with UNION
SELECT c.Customer_ID, c.Customer_Name, o.Order_ID, o.Total_Sales
FROM customers c
LEFT JOIN orders o ON c.Customer_ID = o.Customer_ID
UNION
SELECT c.Customer_ID, c.Customer_Name, o.Order_ID, o.Total_Sales
FROM customers c
RIGHT JOIN orders o ON c.Customer_ID = o.Customer_ID;

-- Lab 16
-- Combines City and State into one Location string using CONCAT
SELECT Order_ID, CONCAT(City, ', ', State) AS Location FROM orders;
-- Shows Category in uppercase and Payment_Mode in lowercase
SELECT Order_ID, UPPER(Category) AS CategoryUpper, LOWER(Payment_Mode) AS PaymentLower FROM orders;
-- Pulls the year and month out of each order date
SELECT Order_ID, Order_Date, YEAR(Order_Date) AS OrderYear, MONTH(Order_Date) AS OrderMonth FROM orders;
-- Counts how many orders happened in each calendar month
SELECT MONTH(Order_Date) AS OrderMonth, COUNT(*) AS NumOrders FROM orders GROUP BY MONTH(Order_Date) ORDER BY OrderMonth;
-- Shows the 5 earliest orders and how many days until year-end
SELECT Order_ID, Order_Date, DATEDIFF('2025-12-31', Order_Date) AS DaysUntilYearEnd FROM orders ORDER BY Order_Date LIMIT 5;

-- Lab 17

-- Labels each order as High, Medium, or Low Value based on Total_Sales
SELECT Order_ID, Total_Sales,
CASE
WHEN Total_Sales >= 5000 THEN 'High Value'
WHEN Total_Sales >= 2000 THEN 'Medium Value'
ELSE 'Low Value'
END AS SaleTier
FROM orders;
-- Labels each order's discount level using multiple WHEN conditions
SELECT Order_ID, Discount_Pct,
CASE
WHEN Discount_Pct = 0 THEN 'No Discount'
WHEN Discount_Pct <= 10 THEN 'Low Discount'
ELSE 'High Discount'
END AS DiscountTier
FROM orders;
-- Sorts orders into a custom category order using CASE inside ORDER BY
SELECT Order_ID, Category, Total_Sales
FROM orders
ORDER BY
CASE Category
WHEN 'Electronics' THEN 1
WHEN 'Furniture' THEN 2
WHEN 'Clothing' THEN 3
WHEN 'Grocery' THEN 4
ELSE 5
END,
Total_Sales DESC;


-- Lab 18
-- Finds every order priced above the company-wide average using a subquery in WHERE
SELECT Order_ID, Total_Sales
FROM orders
WHERE Total_Sales > (SELECT AVG(Total_Sales) FROM orders);
-- Adds the company-wide average as a comparison column using a subquery in SELECT
SELECT Order_ID, Total_Sales,
(SELECT AVG(Total_Sales) FROM orders) AS OverallAvg
FROM orders
LIMIT 5;
-- Finds customers who have placed at least one order using a subquery with IN
SELECT Customer_ID, Customer_Name
FROM customers
WHERE Customer_ID IN (SELECT Customer_ID FROM orders);

-- Lab 19

CREATE DATABASE Apex_Project;
Use Apex_Project;

CREATE TABLE Inventory (
    Product_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Category VARCHAR(50),
    Supplier_ID VARCHAR(20),
    Units_In_Stock INT,
    Unit_Cost DECIMAL(10,2),
    Reorder_Level INT
);

INSERT INTO Inventory
VALUES
(101,'Laptop','Electronics','SUP001',45,800,20),
(102,'Office Chair','Furniture','SUP002',15,120,25),
(103,'Printer','Office Supplies','SUP003',30,200,15),
(104,'Microwave','Appliances','SUP004',12,150,18),
(105,'Tablet','Electronics','SUP005',50,350,20),
(106,'Desk','Furniture','SUP006',22,180,10),
(107,'Monitor','Electronics','SUP007',18,250,15),
(108,'Air Fryer','Appliances','SUP008',10,100,12),
(109,'Keyboard','Electronics','SUP009',65,40,30),
(110,'Whiteboard','Office Supplies','SUP010',20,75,12);

SELECT *
FROM Inventory;
SELECT COUNT(*) AS Inventory_Rows
FROM Inventory;

SELECT *
FROM Suppliers;
SELECT COUNT(*) AS Supplier_Rows
FROM Suppliers;

SELECT
    i.Product_ID,
    i.Product_Name,
    i.Supplier_ID,
    s.Supplier_Name,
    s.State,
    s.Supplier_Rating
FROM Inventory i
INNER JOIN Suppliers s
    ON i.Supplier_ID = s.Supplier_ID;
    
SELECT COUNT(*) AS Total_Products
FROM Inventory;
    
DESCRIBE Suppliers;

SELECT
    SUM(Units_In_Stock * Unit_Cost) AS Inventory_Value
FROM Inventory;

SELECT
    Category,
    SUM(Units_In_Stock) AS Total_Stock
FROM Inventory
GROUP BY Category
ORDER BY Total_Stock DESC
LIMIT 1;

SELECT
    Product_Name,
    Units_In_Stock,
    Reorder_Level
FROM Inventory
WHERE Units_In_Stock < Reorder_Level;

SELECT
    Supplier_ID,
    COUNT(*) AS Product_Count
FROM Inventory
GROUP BY Supplier_ID
ORDER BY Product_Count DESC;

SELECT
    s.Supplier_ID,
    s.Supplier_Name,
    COUNT(*) AS Product_Count
FROM Inventory i
INNER JOIN Suppliers s
    ON i.Supplier_ID = s.Supplier_ID
GROUP BY
    s.Supplier_ID,
    s.Supplier_Name
ORDER BY Product_Count DESC;

SELECT
    Supplier_Name,
    Supplier_Rating
FROM Suppliers
ORDER BY Supplier_Rating DESC
LIMIT 1;

SELECT
    Supplier_Name,
    Supplier_Rating
FROM Suppliers
WHERE Supplier_Rating = (
    SELECT MAX(Supplier_Rating)
    FROM Suppliers
);

SELECT
    State,
    COUNT(*) AS Supplier_Count
FROM Suppliers
GROUP BY State
ORDER BY Supplier_Count DESC
LIMIT 1;

SELECT
    s.Category,
    SUM(i.Units_In_Stock * i.Unit_Cost) AS Inventory_Value
FROM Inventory i
INNER JOIN Suppliers s
    ON i.Supplier_ID = s.Supplier_ID
GROUP BY s.Category
ORDER BY Inventory_Value DESC
LIMIT 1;















