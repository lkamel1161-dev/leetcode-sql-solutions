-- ============================================
-- Level 5: Aggregate functions (COUNT / SUM / AVG / MIN / MAX)
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- Query 1: Total number of products
SELECT COUNT(*) AS TotalProducts
FROM Production.Product;

-- Query 2: Highest and lowest price
SELECT MAX(ListPrice) AS Highest, MIN(ListPrice) AS Cheapest
FROM Production.Product;

-- Query 3: Average price (ignoring products with price 0)
SELECT AVG(ListPrice) AS AveragePrice
FROM Production.Product
WHERE ListPrice > 0;

-- Query 4: Number of red products
SELECT COUNT(*) AS RedProducts
FROM Production.Product
WHERE Color = 'Red';

-- TODO: compare COUNT(*) vs COUNT(Color)
-- TODO: count products that have no color
