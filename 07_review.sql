-- ============================================
-- Review: 15 mixed practice queries
-- Topics: SELECT, WHERE, ORDER BY / TOP, LIKE, BETWEEN,
--         IS NULL, aggregate functions, GROUP BY
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- ---------- SELECT / WHERE / ORDER BY ----------

-- 1) Name and standard cost of all products
SELECT Name, StandardCost
FROM Production.Product;

-- 2) Job title and hire date of all employees
SELECT JobTitle, HireDate
FROM HumanResources.Employee;

-- 3) Blue products
SELECT Name, Color, ListPrice
FROM Production.Product
WHERE Color = 'Blue';

-- 4) Products with standard cost greater than 500
SELECT Name, StandardCost
FROM Production.Product
WHERE StandardCost > 500;

-- 5) Top 10 employees with the most vacation hours
SELECT TOP 10 JobTitle, VacationHours
FROM HumanResources.Employee
ORDER BY VacationHours DESC;

-- 6) Top 10 largest orders by total due
SELECT TOP 10 SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader
ORDER BY TotalDue DESC;

-- ---------- LIKE / IS NULL / BETWEEN ----------

-- 7) Products whose name contains "Road"
SELECT Name
FROM Production.Product
WHERE Name LIKE '%Road%';

-- 8) Job titles that end with "Manager"
SELECT JobTitle
FROM HumanResources.Employee
WHERE JobTitle LIKE '%Manager';

-- 9) Products with no size and price greater than 0
SELECT Name, ListPrice
FROM Production.Product
WHERE Size IS NULL AND ListPrice > 0;

-- 10) Orders with total due between 1000 and 5000 (inclusive)
SELECT SalesOrderID, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue BETWEEN 1000 AND 5000;

-- ---------- Aggregate functions ----------

-- 11) Number of orders, total sales and average sale in one query
SELECT COUNT(SalesOrderID) AS NumOfOrders,
       SUM(TotalDue) AS SumOfTotalDue,
       AVG(TotalDue) AS AvgSales
FROM Sales.SalesOrderHeader;

-- 12) Number of female employees
SELECT COUNT(*) AS NumOfFemaleEmployees
FROM HumanResources.Employee
WHERE Gender = 'F';

-- ---------- GROUP BY ----------

-- 13) Number of employees for each gender
SELECT Gender, COUNT(*) AS NumOfEmployees
FROM HumanResources.Employee
GROUP BY Gender;

-- 14) Top 5 customers by total spending
-- (solved with help; rewrite from memory as practice)
SELECT TOP 5 CustomerID,
       SUM(TotalDue) AS SumOfTotalDue
FROM Sales.SalesOrderHeader
GROUP BY CustomerID
ORDER BY SumOfTotalDue DESC;

-- 15) Average list price for each color (price > 0 only),
-- sorted from highest average to lowest
SELECT Color,
       AVG(ListPrice) AS AvgListPrice
FROM Production.Product
WHERE ListPrice > 0
GROUP BY Color
ORDER BY AvgListPrice DESC;
