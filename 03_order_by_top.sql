-- ============================================
-- Level 3: ORDER BY / TOP
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- Query 1: All products sorted from cheapest to most expensive
SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice ASC;

-- Query 2: All products sorted from most expensive to cheapest
SELECT Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Query 3: Top 10 most expensive products
SELECT TOP 10 Name, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC;

-- Query 4: 5 cheapest products with price greater than 0
SELECT TOP 5 Name, ListPrice
FROM Production.Product
WHERE ListPrice > 0
ORDER BY ListPrice ASC;

-- Query 5: People sorted alphabetically by last name
SELECT FirstName, LastName
FROM Person.Person
ORDER BY LastName ASC;
