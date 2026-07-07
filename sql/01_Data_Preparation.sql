-- Kiểm tra số lượng dữ liệu từng bảng
SELECT COUNT(*) AS TotalSales FROM Sales

SELECT COUNT(*) AS TotalCustomers FROM Customers

SELECT COUNT(*) AS TotalProducts FROM Products

SELECT COUNT(DISTINCT TransactionNumber) AS TotalOrders
FROM Sales

-- Kiểm tra dữ liệu NULL
SELECT *
FROM Sales
WHERE CustomerID IS NULL OR ProductID IS NULL

-- Kiểm tra dữ liệu SalesID trùng
SELECT SalesID,
COUNT(*)
FROM Sales
GROUP BY SalesID
HAVING COUNT(*)>1

-- Xem cấu trúc dữ liệu 
SELECT TOP 10 *
FROM Sales

SELECT TOP 10 *
FROM Customers

SELECT TOP 10 *
FROM Products

-- Kiểm tra tên cột 
SELECT TOP 1 *
FROM Customers

SELECT TOP 1 *
FROM Products
SELECT TOP 1 *
FROM Employees

SELECT TOP 1 *
FROM Cities

SELECT TOP 1 *
FROM Countries

SELECT TOP 1 *
FROM Categories

SELECT TOP 1 *
FROM Sales

-- Tạo khóa ngoại
-- Cities → Countries
ALTER TABLE Cities
ADD CONSTRAINT FK_Cities_Countries
FOREIGN KEY (CountryID)
REFERENCES Countries(CountryID)

-- Customers → Cities
ALTER TABLE Customers
ADD CONSTRAINT FK_Customers_Cities
FOREIGN KEY (CityID)
REFERENCES Cities(CityID)

-- Employees → Cities
ALTER TABLE Employees
ADD CONSTRAINT FK_Employees_Cities
FOREIGN KEY (CityID)
REFERENCES Cities(CityID)

-- Products → Categories
ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)

-- Sales → Customers
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Customers
FOREIGN KEY (CustomerID)
REFERENCES Customers(CustomerID)

-- Sales → Products
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Products
FOREIGN KEY (ProductID)
REFERENCES Products(ProductID)

-- Sales → Employees
ALTER TABLE Sales
ADD CONSTRAINT FK_Sales_Employees
FOREIGN KEY (SalesPersonID)
REFERENCES Employees(EmployeeID)

-- Tạo truy vấn tính sẵn doanh thu
SELECT
    s.SalesID,
    s.TransactionNumber,
    s.CustomerID,
    s.ProductID,
    s.Quantity,
    p.Price,
    s.Discount,
    p.Price * s.Quantity * (1 - s.Discount) AS TotalPrice
FROM Sales s
JOIN Products p
    ON s.ProductID = p.ProductID