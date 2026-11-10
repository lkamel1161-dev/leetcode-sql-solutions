-- ============================================
-- Level 6: GROUP BY
-- Database: AdventureWorks2022 (SQL Server)
-- Rule: any column in SELECT that is not inside an aggregate
--       function must appear in GROUP BY.
-- Order: SELECT > FROM > WHERE > GROUP BY > ORDER BY
-- ============================================

USE AdventureWorks2022;
GO

-- Warm-up: number of products that have no color
SELECT Color, COUNT(*) AS NoColorProducts
FROM Production.Product
WHERE Color IS NULL
GROUP BY Color;

-- Query 1: Number of products for each color
-- (the NULL row = products with no color)
SELECT Color, COUNT(*) AS TotalProducts
FROM Production.Product
GROUP BY Color;

-- Query 2: Average price for each color
SELECT Color, AVG(ListPrice) AS AvgPrice
FROM Production.Product
GROUP BY Color
ORDER BY AvgPrice DESC;

-- Query 3: Number of products for each color,
-- sorted from the color with the most products to the least
SELECT Color, COUNT(*) AS TotalProducts
FROM Production.Product
GROUP BY Color
ORDER BY TotalProducts DESC;

-- TODO Query 4: Number of employees for each job title
--               (HumanResources.Employee, column JobTitle)
-- TODO Query 5: Number of products for each color,
--               only for products with price greater than 0
