---zad1
CREATE FUNCTION funcion_Fibonacci(@next int) --deklaracja funkcji ma argument max typu int 
RETURNS @wynik TABLE(kolejne int) --zwraca wynik jako tabele intów 
AS -- 
BEGIN -- od tego momentu siê zzaczyna 
	Declare 
	@n1 int = 0,
	@n2 int =1,
	@i int=0,
	@still int --deklaruje sobie zmienne i to iterator zmieenna tymczasowa
	Insert Into @wynik Values(@n1),(@n2) -- wpisanie do tablicy pocz¹tkowe wartosci 
	WHILE (@i<=@next-2) -- warunek dopoki jest prawdziwy wykonuje sie petla bo jakby by³o ujemne to poza zakres 
	BEGIN 
		Insert Into @wynik Values(@n2 + @n1) --dzia³anie na podstawie bazuj¹cej iteracji 
		set @still = @n2 -- 
		Set @n2 = @n2 + @n1
		Set @n1 = @still
		Set @i += 1
END	--sk³¹dnia
	RETURN 
END -- tutaj sie konczy funkcja

Select * from funcion_Fibonacci(15)

--poniewa¿ jest t odomyœlny scj

----zad2
USE AdventureWorks2019
GO
CREATE TRIGGER Dopisywanie 
ON Person.Person
AFTER INSERT -- wprowadzamy now¹ dan¹ po wprowadzeniu
AS
BEGIN

UPDATE Person.Person SET Person.LastName = UPPER(Person.LastName) WHERE LastName IN (SELECT LastName FROM INSERTED)
END

insert into Person.BusinessEntity(rowguid)
VALUES(newid())

INSERT INTO Person.Person (BusinessEntityID,FirstName,MiddleName,LastName,PersonType) VALUES (20778,'Tomasz','Mr','Sanicki','SC')
GO

SELECT * FROM Person.Person

--zad3

CREATE TRIGGER taxRateMonitoring
ON Sales.SalesTaxRate
AFTER INSERT, UPDATE  --w tym momencie po tych wszystkich komendatch
AS
BEGIN 
DECLARE @Nowa_wartosc INT, @Wartosc INT
SELECT @Nowa_wartosc = TaxRate FROM INSERTED  -- ta nowa wartosc wprowadzona 
SELECT @Wartosc = TaxRate FROM DELETED   -- wartosc zosta³¹usunieta na rzecz akcji 
IF @Nowa_wartosc > @Wartosc*1.3
PRINT 'Blad - za wysoka zmiana wartosci'
END
GO
SELECT * FROM Sales.SalesTaxRate

UPDATE Sales.SalesTaxRate 
SET TaxRate= 240.00 
WHERE SalesTaxRateID = 7;


UPDATE Sales.SalesTaxRate 
SET TaxRate= 240.00 
WHERE SalesTaxRateID = 8;

UPDATE Sales.SalesTaxRate 
SET TaxRate= 240.00 
WHERE SalesTaxRateID = 2;


