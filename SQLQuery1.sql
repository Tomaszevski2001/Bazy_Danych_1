--Wykorzystuj�c wyra�enie CTE zbuduj zapytanie, kt�re znajdzie informacje na temat stawki
--pracownika oraz jego danych, a nast�pnie zapisze je do tabeli tymczasowej
--TempEmployeeInfo. Rozwi�� w oparciu o AdventureWorks.
-------1.

USE	AdventureWorks2019
GO
WITH TempEmployeeInfo(BusinessEntityID,Rate)
AS
(
SELECT  BusinessEntityID , Rate FROM HumanResources.EmployeePayHistory) --Musz� zrobi� z��czenie 
SELECT  Person.BusinessEntityID , Person.FirstName,  Person.LastName,  Person.ModifiedDate,  Person.AdditionalContactInfo , Rate FROM  Person.Person 
INNER JOIN HumanResources.EmployeePayHistory ON Person.Person.BusinessEntityID = HumanResources.EmployeePayHistory.BusinessEntityID
-- po kluczach g��wnych 
--Uzyskaj informacje na temat przychod�w ze sprzeda�y wed�ug firmy i kontaktu (za pomoc�
--CTE i bazy AdventureWorksL). Wynik powinien wygl�da� nast�puj�co:

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
--Napisz zapytanie, kt�re zwr�ci warto�� sprzeda�y dla poszczeg�lnych kategorii produkt�w.
--Wykorzystaj CTE i baz� AdventureWorksLT


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



 