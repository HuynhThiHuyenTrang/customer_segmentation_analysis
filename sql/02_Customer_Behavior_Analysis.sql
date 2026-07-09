/*==========================================================
Project: Grocery Sales Analysis
File: 02_Customer_Behavior_Analysis.sql
Author: Huynh Thi Huyen Trang

Description:
Analyze customer purchasing behavior using SQL Server
to support CRM and marketing decisions.
==========================================================*/

------------------------------------------------------------
-- Business Question 1
-- How can customers be segmented based on purchasing behavior?
------------------------------------------------------------

SELECT
    s.CustomerID,
    COUNT(DISTINCT s.TransactionNumber) AS PurchaseFrequency,
    SUM(p.Price * s.Quantity * (1 - s.Discount / 100.0)) AS MonetaryValue
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY s.CustomerID
ORDER BY MonetaryValue DESC;

GO

------------------------------------------------------------
-- Business Question 2
-- What is the proportion of Repeat Customers
-- versus One-time Buyers?
------------------------------------------------------------

WITH CustomerOrders AS
(
    SELECT
        CustomerID,
        COUNT(DISTINCT TransactionNumber) AS TotalOrders
    FROM Sales
    GROUP BY CustomerID
)

SELECT
    CASE
        WHEN TotalOrders = 1 THEN 'One-time Buyer'
        ELSE 'Repeat Customer'
    END AS CustomerType,
    COUNT(*) AS TotalCustomers,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS Percentage
FROM CustomerOrders
GROUP BY
    CASE
        WHEN TotalOrders = 1 THEN 'One-time Buyer'
        ELSE 'Repeat Customer'
    END;

GO

/*
Business Note

The provided dataset contains no one-time buyers.
Every customer completed multiple purchases.

Result:
Repeat Customers = 100%
One-time Buyers = 0%
*/

------------------------------------------------------------
-- Business Question 3
-- What is the Average Order Value (AOV)?
------------------------------------------------------------

SELECT
    SUM(p.Price * s.Quantity * (1 - s.Discount / 100.0))
    / COUNT(DISTINCT TransactionNumber) AS AverageOrderValue
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID;

GO

------------------------------------------------------------
-- Business Question 4
-- What is the average Basket Size?
------------------------------------------------------------

SELECT
    SUM(Quantity) * 1.0
    / COUNT(DISTINCT TransactionNumber) AS BasketSize
FROM Sales;

GO

------------------------------------------------------------
-- Business Question 5
-- Who are the Top 10 customers by revenue?
------------------------------------------------------------

SELECT TOP (10)
    s.CustomerID,
    COUNT(DISTINCT s.TransactionNumber) AS TotalOrders,
    SUM(p.Price * s.Quantity * (1 - s.Discount / 100.0)) AS TotalRevenue
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID
GROUP BY s.CustomerID
ORDER BY TotalRevenue DESC;

GO

/*==========================================================
Business Question 6

Create a reusable customer summary view
for reporting, RFM analysis, Machine Learning,
and Power BI dashboard.
==========================================================*/

CREATE OR ALTER VIEW vw_CustomerSummary AS
SELECT
    s.CustomerID,

    COUNT(DISTINCT s.TransactionNumber) AS PurchaseFrequency,

    SUM(s.Quantity) AS TotalQuantity,

    SUM(
        p.Price * s.Quantity * (1 - s.Discount / 100.0)
    ) AS TotalRevenue,

    AVG(
        p.Price * s.Quantity * (1 - s.Discount / 100.0)
    ) AS AverageTransactionValue

FROM Sales s

JOIN Products p
    ON s.ProductID = p.ProductID

GROUP BY s.CustomerID;
GO

/*
View Purpose

This view provides a summarized customer-level dataset
that can be reused for:

- Power BI Dashboard
- RFM Analysis
- Customer Segmentation
- Machine Learning
*/

SELECT TOP (10) *
FROM vw_CustomerSummary;
GO