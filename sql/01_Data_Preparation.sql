/*==========================================================
Project: Grocery Sales Analysis
File: 01_Data_Preparation.sql
Author: Huynh Thi Huyen Trang

Description:
Prepare and validate the Grocery Sales dataset before
performing customer behavior analysis.

Tasks:
1. Validate dataset
2. Check missing values
3. Check duplicate records
4. Inspect table structure
5. Create foreign key constraints
6. Prepare sales data
==========================================================*/

------------------------------------------------------------
-- Section 1
-- Validate Dataset
------------------------------------------------------------

-- Total records in Sales
SELECT COUNT(*) AS TotalSales
FROM Sales;
GO

-- Total records in Customers
SELECT COUNT(*) AS TotalCustomers
FROM Customers;
GO

-- Total records in Products
SELECT COUNT(*) AS TotalProducts
FROM Products;
GO

-- Total transactions
SELECT COUNT(DISTINCT TransactionNumber) AS TotalOrders
FROM Sales;
GO

------------------------------------------------------------
-- Section 2
-- Check Missing Values
------------------------------------------------------------

SELECT *
FROM Sales
WHERE CustomerID IS NULL
   OR ProductID IS NULL;
GO

------------------------------------------------------------
-- Section 3
-- Check Duplicate Records
------------------------------------------------------------

SELECT
    SalesID,
    COUNT(*) AS DuplicateCount
FROM Sales
GROUP BY SalesID
HAVING COUNT(*) > 1;
GO

------------------------------------------------------------
-- Section 4
-- Inspect Table Structure
------------------------------------------------------------

SELECT TOP (10) *
FROM Sales;
GO

SELECT TOP (10) *
FROM Customers;
GO

SELECT TOP (10) *
FROM Products;
GO

SELECT TOP (10) *
FROM Categories;
GO

SELECT TOP (10) *
FROM Cities;
GO

SELECT TOP (10) *
FROM Countries;
GO

SELECT TOP (10) *
FROM Employees;
GO

------------------------------------------------------------
-- Section 5
-- Create Foreign Key Constraints
------------------------------------------------------------

-- Cities → Countries
ALTER TABLE Cities
ADD CONSTRAINT FK_Cities_Countries
FOREIGN KEY (CountryID)
REFERENCES Countries(CountryID);
GO

-- Customers → Cities
ALTER TABLE Customers
ADD CONSTRAINT FK_Customers_Cities
FOREIGN KEY (CityID)
REFERENCES Cities(CityID);
GO

-- Employees → Cities
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Cities
FOREIGN KEY (CityID)
REFERENCES Cities(CityID);
GO

-- Products → Categories
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
GO

-- Sales → Customers
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID);
GO

-- Sales → Products
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Products
FOREIGN KEY (ProductID)
REFERENCES Products(ProductID);
GO

-- Sales → Employees
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Employees
FOREIGN KEY (SalesPersonID)
REFERENCES Employees(EmployeeID);
GO

------------------------------------------------------------
-- Section 6
-- Prepare Sales Data
------------------------------------------------------------

/*
Create a reusable view that calculates TotalPrice.
This view can be reused in SQL analysis,
Power BI, and Machine Learning.
*/

CREATE OR ALTER VIEW vw_SalesPrepared AS

SELECT
    s.SalesID,
    s.TransactionNumber,
    s.CustomerID,
    s.ProductID,
    s.SalesPersonID,
    s.Quantity,
    p.Price,
    s.Discount,

    p.Price * s.Quantity * (1 - s.Discount / 100.0)
        AS TotalPrice

FROM Sales s

JOIN Products p
    ON s.ProductID = p.ProductID;
GO

------------------------------------------------------------
-- Preview Prepared Data
------------------------------------------------------------

SELECT TOP (10)
    SalesID,
    TransactionNumber,
    CustomerID,
    ProductID,
    SalesPersonID,
    Quantity,
    Price,
    Discount,
    TotalPrice
FROM vw_SalesPrepared;
GO

/*==========================================================

End of File

Next Step:
02_Customer_Behavior_Analysis.sql

==========================================================*/
