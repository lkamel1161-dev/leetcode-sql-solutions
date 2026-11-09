-- ============================================
-- Level 1: SELECT / FROM
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- Query 1: Explore the table (first 5 rows, all columns)
SELECT TOP 5 *
FROM Production.Product;

-- Query 2: Name and price of all products
SELECT Name, ListPrice
FROM Production.Product;

-- Query 3: Name, product number and color of all products
SELECT Name, ProductNumber, Color
FROM Production.Product;

-- Query 4: First and last name of all people
SELECT FirstName, LastName
FROM Person.Person;

-- Query 5: Name of all product categories
SELECT Name
FROM Production.ProductCategory;
