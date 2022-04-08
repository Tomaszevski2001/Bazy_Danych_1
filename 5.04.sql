USE firma;
GO;
CREATE SCHEMA rozliczenia;

CREATE TABLE rozliczenia.pracownicy (id_pracownika INTEGER PRIMARY KEY , imie NVARCHAR(20) NOT NULL, nazwsiko  NVARCHAR(20) NOT NULL,  adres NVARCHAR(20) NOT NULL,  telefon INTEGER );
CREATE TABLE rozliczenia.godziny (id_godziny INTEGER PRIMARY KEY, data Date NOT NULL ,liczba_godzin INTEGER NOT NULL , id_pracownika INTEGER FOREIGN KEY REFERENCES rozliczenia.pracownicy(id_pracownika) Not Null );
CREATE TABLE rozliczenia.premie (id_premii INTEGER PRIMARY KEY, rodzj NVARCHAR(20) NOT NULL, kwota FLOAT Not Null);
CREATE TABLE rozliczenia.pensje (id_pensji INTEGER PRIMARY KEY , stanowisko VARCHAR(20) NOT NULL ,kwota FLOAT NOT NULL, id_premii INTEGER FOREIGN KEY REFERENCES rozliczenia.premie (id_premii) Not Null );

----PODPUNKT D DODANIE KLUCZÓW OBCYCH 

ALTER TABLE rozliczenia.pracownicy ADD id_pracownika INT NOT NULL, CONSTRAINT FK_id_pracownika_godziny FOREIGN KEY (id_pracownika) REFERENCES rozliczenia.godziny (id_pracownika);

ALTER TABLE rozliczenia.premie ADD id_pensji INT, CONSTRAINT FK_id_pensji FOREIGN KEY (id_pensji) REFERENCES rozliczenia.pensje (id_pensji);




--INTEGER FOREIGN KEY REFERENCES rozliczenia.premie(id_premii) Not Null
--TABELA DLA PRACOWNIKÓW
INSERT INTO rozliczenia.pracownicy Values(1,'Tomasz','Sanicki','Jas³o','123456789');
INSERT INTO rozliczenia.pracownicy Values(2,'Adam','Biedrzycki','Pu³awy','155446987');
INSERT INTO rozliczenia.pracownicy Values(3,'Igor','Meler','Pu³awy','523546321');
INSERT INTO rozliczenia.pracownicy Values(4, 'Joanna','Papros','Kielce','379654147');
INSERT INTO rozliczenia.pracownicy Values(5,'Ronnie','Coleman','Waszynkton','247852369');
INSERT INTO rozliczenia.pracownicy Values(6,'Karol','Cogiel','Chorzów','197456555');
INSERT INTO rozliczenia.pracownicy Values(7,'Bartek','Œmietana','Gdañsk','1974563741');
INSERT INTO rozliczenia.pracownicy Values(8,'Arnold','Kwiatek','Rzeszów','197456378');
INSERT INTO rozliczenia.pracownicy Values(9,'Szymon','Piasek','Gliwice','17965414');
INSERT INTO rozliczenia.pracownicy Values(10,'Maciek','Rura','Poznañ','197456358');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
Select * From rozliczenia.pracownicy;

--TABELA DLA GODZIN
INSERT INTO rozliczenia.godziny Values(1,'2021-01-01','15','1');
INSERT INTO rozliczenia.godziny Values(2,'2022-12-09','14','2');
INSERT INTO rozliczenia.godziny Values(3,'2019-11-08','13','3');
INSERT INTO rozliczenia.godziny Values(4,'2018-10-12','12','4');
INSERT INTO rozliczenia.godziny Values(5,'2017-08-27','11','5');
INSERT INTO rozliczenia.godziny Values(6,'2016-07-16','10','6');
INSERT INTO rozliczenia.godziny Values(7,'2015-09-24','9','17');
INSERT INTO rozliczenia.godziny Values(8,'2014-01-09','25','8');
INSERT INTO rozliczenia.godziny Values(9,'2013-02-28','39','9');
INSERT INTO rozliczenia.godziny Values(10,'2011-02-02','15','85');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
Select* From rozliczenia.godziny;
--TABELA DLA PREMII
INSERT INTO rozliczenia.premie Values ('1','nadgodziny','750');
INSERT INTO rozliczenia.premie Values ('2','premia','150');
INSERT INTO rozliczenia.premie Values ('3','zlecenie','800');
INSERT INTO rozliczenia.premie Values ('4','premia','175');
INSERT INTO rozliczenia.premie Values ('5','covidowe','48.5');
INSERT INTO rozliczenia.premie Values ('6','bonus','1780');
INSERT INTO rozliczenia.premie Values ('7','nadgodziny','698');
INSERT INTO rozliczenia.premie Values ('8','inflacyjne','163');
INSERT INTO rozliczenia.premie Values ('9','bonus','369');
INSERT INTO rozliczenia.premie Values ('10','nadgodziny','282');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
select * from rozliczenia.premie;
--TABELA DLA PENII
INSERT INTO rozliczenia.pensje VALUES ('1','szef','8000','1');
INSERT INTO rozliczenia.pensje VALUES ('2','analityk','3900','2');
INSERT INTO rozliczenia.pensje VALUES ('3','sta¿ysta','1800','3');
INSERT INTO rozliczenia.pensje VALUES ('4','programista','2578','4');
INSERT INTO rozliczenia.pensje VALUES ('5','sprz¹taczka','3987','5');
INSERT INTO rozliczenia.pensje VALUES ('6','ksiêgowa','2687','6');
INSERT INTO rozliczenia.pensje VALUES ('7','administrator','9000','7');
INSERT INTO rozliczenia.pensje VALUES ('8','menad¿er','11000','8');
INSERT INTO rozliczenia.pensje VALUES ('9','dyrektor','5782.21','9');
INSERT INTO rozliczenia.pensje VALUES ('10','programista','4789','10');
--KOMENDA DO WYŒWIETLANIA REKORDÓW

select * from rozliczenia.pensje;
-----------------------------------------------------------------------------
--5. Za pomoc¹ zapytania SQL wyœwietl nazwiska pracowników i ich adresy

SELECT imie , adres  FROM rozliczenia.pracownicy;


-- 6.Napisz zapytanie, które przekonwertuje datê w tabeli godziny tak, aby wyœwietlana by³a informacja jaki to dzieñ tygodnia i jaki miesi¹c


SELECT DATEPART (MONTH,data) FROM rozliczenia.godziny;
SELECT DATEPART(DAY,data) FROM rozliczenia.godziny;


-- 7. W tabeli pensje zmieñ nazwê atrybutu kwota na kwota_brutto oraz dodaj nowy o nazwie  kwota_netto. Oblicz kwotê netto i zaktualizuj wartoœci w tabeli

--Dodanie nowej kolumny

ALTER TABLE rozliczenia.pensje
ADD kwota_netto float;

--Sprawdzenie czy istnieje 

select * from rozliczenia.pensje;
--Zmiana nazwy kolumny

EXEC sp_rename 'rozliczenia.pensje.kwota','kwota_brutto';

--Teraz wype³niamy kwote netto i obliczamy 

UPDATE ROZLICZENIA.pensje SET kwota_netto = (kwota_brutto * 0.77);
select * from rozliczenia.pensje;



