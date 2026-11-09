-- ============================================
-- Level 2: WHERE (filtering rows)
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- Query 1: Products with price greater than 1000
SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice > 1000;

-- Query 2: Products whose color is Red
SELECT Name, Color
FROM Production.Product
WHERE Color = 'Red';

-- Query 3: Products with price exactly 0
SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice = 0;

-- Query 4: People whose first name is John
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName = 'John';
