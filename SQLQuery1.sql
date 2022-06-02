--Wykorzystuj¹c wyra¿enie CTE zbuduj zapytanie, które znajdzie informacje na temat stawki
--pracownika oraz jego danych, a nastêpnie zapisze je do tabeli tymczasowej
--TempEmployeeInfo. Rozwi¹¿ w oparciu o AdventureWorks.
-------1.

USE	AdventureWorks2019
GO
WITH TempEmployeeInfo(BusinessEntityID,Rate)
AS
(
SELECT  BusinessEntityID , Rate FROM HumanResources.EmployeePayHistory) --Muszê zrobiæ z³¹czenie 
SELECT  Person.BusinessEntityID , Person.FirstName,  Person.LastName,  Person.ModifiedDate,  Person.AdditionalContactInfo , Rate FROM  Person.Person 
INNER JOIN HumanResources.EmployeePayHistory ON Person.Person.BusinessEntityID = HumanResources.EmployeePayHistory.BusinessEntityID
-- po kluczach g³ównych 
--Uzyskaj informacje na temat przychodów ze sprzeda¿y wed³ug firmy i kontaktu (za pomoc¹
--CTE i bazy AdventureWorksL). Wynik powinien wygl¹daæ nastêpuj¹co:

----2

USE AdventureWorksLT2019
GO
WITH COMP_REVE ( FirstName ,LastName ,CompanyName, TotalDue)
AS
( 
SELECT FirstName ,LastName ,CompanyName, TotalDue FROM SalesLT.Customer
INNER JOIN SalesLT.SalesOrderHeader ON SalesLT.Customer.CustomerID = SalesLT.SalesOrderHeader.CustomerID
)
Select CONCAT( CompanyName ,'(', FirstName, ' ', LastName ,')') AS CompanyContact , TotalDue AS Revenue FROM COMP_REVE ORDER BY CompanyContact

--
---3
--Napisz zapytanie, które zwróci wartoœæ sprzeda¿y dla poszczególnych kategorii produktów.
--Wykorzystaj CTE i bazê AdventureWorksLT


USE AdventureWorksLT2019
GO
WITH Cate_SaleVal ( Name , UnitPrice , OrderQty)
AS
( 
 Select SalesLT.ProductCategory.Name ,  OrderQty, UnitPrice  FROM SalesLT.ProductCategory 
 INNER JOIN  SalesLT.Product ON   SalesLT.ProductCategory.ProductCategoryID = SalesLT.Product.ProductCategoryID
 INNER JOIN  SalesLT.SalesOrderDetail ON  SalesLT.Product.ProductID = SalesOrderDetail.ProductID)
 SELECT  Name AS Category , Sum(OrderQty * UnitPrice) AS SalesValue FROM Cate_SaleVal 
 GROUP BY Name

 Select * FROM SalesLT.SalesOrderDetail 



 