-- ============================================
-- Level 4: IN / BETWEEN / LIKE / AND / OR / IS NULL
-- Database: AdventureWorks2022 (SQL Server)
-- ============================================

USE AdventureWorks2022;
GO

-- Query 1: Products whose color is Red or Black (IN)
SELECT Name, Color
FROM Production.Product
WHERE Color IN ('Red', 'Black');

-- Query 2: Products with price between 100 and 500 (inclusive)
SELECT Name, ListPrice
FROM Production.Product
WHERE ListPrice BETWEEN 100 AND 500;

-- Query 3: Products whose name starts with "Mountain" (LIKE)
SELECT Name
FROM Production.Product
WHERE Name LIKE 'Mountain%';

-- Query 4: People whose first name starts with A (LIKE)
SELECT FirstName, LastName
FROM Person.Person
WHERE FirstName LIKE 'A%';

-- Query 5: Red products with price greater than 1000 (AND: both conditions)
SELECT Name, ListPrice, Color
FROM Production.Product
WHERE ListPrice > 1000 AND Color = 'Red';

-- Query 6: Products with price > 1000 OR color Red (OR: either condition)
-- Returns more rows than the AND version above
SELECT Name, ListPrice, Color
FROM Production.Product
WHERE ListPrice > 1000 OR Color = 'Red';

-- Query 7: Products with no color (IS NULL)
SELECT Name, Color
FROM Production.Product
WHERE Color IS NULL;
