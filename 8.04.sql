CREATE DATABASE firma;

CREATE SCHEMA ksiegowosc;

CREATE TABLE ksiegowosc.pracownicy (id_pracownika INTEGER PRIMARY KEY NOT NULL , imie NVARCHAR(20) NOT NULL, nazwsiko  NVARCHAR(20) NOT NULL,  adres NVARCHAR(20) NOT NULL,  telefon INTEGER NOT NULL );
CREATE TABLE ksiegowosc.godziny (id_godziny NVARCHAR(20) PRIMARY KEY NOT NULL, data DATE   NOT NULL, liczba_godzin INT NOT NULL , id_pracownika INT FOREIGN KEY REFERENCES ksiegowosc.pracownicy(id_pracownika) NOT NULL);
CREATE TABLE ksiegowosc.premie (id_premii INTEGER PRIMARY KEY, rodzj NVARCHAR(20) NOT NULL, kwota FLOAT Not Null);
CREATE TABLE ksiegowosc.pensje (id_pensji INTEGER PRIMARY KEY , stanowisko VARCHAR(20) NOT NULL ,kwota FLOAT NOT NULL, id_premii INTEGER FOREIGN KEY REFERENCES ksiegowosc.premie(id_premii) NOT NULL );
CREATE TABLE ksiegowosc.wynagrodzenia ( id_wynagrodzenia NVARCHAR(20) PRIMARY KEY NOT NULL , data DATE  NOT NULL, id_pracownika INT  NOT NULL , id_godziny INT  NOT NULL , id_pensji INT NOT NULL , id_premii INT  not null);


-----PODODAWAJ KLUCZE OBCE BO TEGO NIE MASZ------

--5 ZADANIE


INSERT INTO ksiegowosc.pracownicy Values(1,'Tomasz','Sanicki','Jas³o','123456789');
INSERT INTO ksiegowosc.pracownicy Values(2,'Adam','Biedrzycki','Pu³awy','155446987');
INSERT INTO ksiegowosc.pracownicy Values(3,'Igor','Meler','Pu³awy','523546321');
INSERT INTO ksiegowosc.pracownicy Values(4, 'Joanna','Papros','Kielce','379654147');
INSERT INTO ksiegowosc.pracownicy Values(5,'Ronnie','Coleman','Waszynkton','247852369');
INSERT INTO ksiegowosc.pracownicy Values(6,'Karol','Cogiel','Chorzów','197456555');
INSERT INTO ksiegowosc.pracownicy Values(7,'Bartek','Œmietana','Gdañsk','1974563741');
INSERT INTO ksiegowosc.pracownicy Values(8,'Arnold','Kwiatek','Rzeszów','197456378');
INSERT INTO ksiegowosc.pracownicy Values(9,'Szymon','Piasek','Gliwice','17965414');
INSERT INTO ksiegowosc.pracownicy Values(10,'Maciek','Rura','Poznañ','197456358');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
Select * From ksiegowosc.pracownicy

--TABELA DLA GODZIN
INSERT INTO ksiegowosc.godziny Values(1,'2021-01-01','15','1');
INSERT INTO ksiegowosc.godziny Values(2,'2022-12-09','14','2');
INSERT INTO ksiegowosc.godziny Values(3,'2019-11-08','13','3');
INSERT INTO ksiegowosc.godziny Values(4,'2018-10-12','12','4');
INSERT INTO ksiegowosc.godziny Values(5,'2017-08-27','11','5');
INSERT INTO ksiegowosc.godziny Values(6,'2016-07-16','10','6');
INSERT INTO ksiegowosc.godziny Values(7,'2015-09-24','9','17');
INSERT INTO ksiegowosc.godziny Values(8,'2014-01-09','25','8');
INSERT INTO ksiegowosc.godziny Values(9,'2013-02-28','39','9');
INSERT INTO ksiegowosc.godziny Values(10,'2011-02-02','15','85');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
Select* From ksiegowosc.godziny;
--TABELA DLA PREMII
INSERT INTO ksiegowosc.premie Values ('1','nadgodziny','750');
INSERT INTO ksiegowosc.premie Values ('2','premia','150');
INSERT INTO ksiegowosc.premie Values ('3','zlecenie','800');
INSERT INTO ksiegowosc.premie Values ('4','premia','175');
INSERT INTO ksiegowosc.premie Values ('5','covidowe','48.5');
INSERT INTO ksiegowosc.premie Values ('6','bonus','1780');
INSERT INTO ksiegowosc.premie Values ('7','nadgodziny','698');
INSERT INTO ksiegowosc.premie Values ('8','inflacyjne','163');
INSERT INTO ksiegowosc.premie Values ('9','bonus','369');
INSERT INTO ksiegowosc.premie Values ('10','nadgodziny','282');
--KOMENDA DO WYŒWIETLANIA REKORDÓW
select * from ksiegowosc.premie;
--TABELA DLA PENII
INSERT INTO ksiegowosc.pensje VALUES ('1','szef','8000','1');
INSERT INTO ksiegowosc.pensje VALUES ('2','analityk','3900','2');
INSERT INTO ksiegowosc.pensje VALUES ('3','sta¿ysta','1800','3');
INSERT INTO ksiegowosc.pensje VALUES ('4','programista','2578','4');
INSERT INTO ksiegowosc.pensje VALUES ('5','sprz¹taczka','3987','5');
INSERT INTO ksiegowosc.pensje VALUES ('6','ksiêgowa','2687','6');
INSERT INTO ksiegowosc.pensje VALUES ('7','administrator','9000','7');
INSERT INTO ksiegowosc.pensje VALUES ('8','menad¿er','11000','8');
INSERT INTO ksiegowosc.pensje VALUES ('9','dyrektor','5782.21','9');
INSERT INTO ksiegowosc.pensje VALUES ('10','programista','4789','10');
--KOMENDA DO WYŒWIETLANIA REKORDÓW

select * from ksiegowosc.pensje;

INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M1','2021-08-01','1','1','1','1');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M2','2022-12-09','2','2','2','2');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M3','2019-11-08','3','3','3','3');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M4','2018-10-12','4','4','4','4');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M5','2017-08-27','5','5','5','5');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M6','2016-07-16','6','6','6','6');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M7','2015-09-24','7','7','7','7');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M8','2014-01-09','8','8','8','8');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M9','2013-02-28','9','9','9','9');
INSERT INTO ksiegowosc.wynagrodzenia VALUES ( 'M10','2011-02-02','10','10','10','10');

SELECT * FROM ksiegowosc.wynagrodzenia;


--a) Wyœwietl tylko id pracownika oraz jego nazwisko
select id_pracownika , nazwsiko   from ksiegowosc.pracownicy;

--b)Wyœwietl id pracowników, których p³aca jest wiêksza ni¿ 1000 TABELA PRACOWNICY PONIEWAZ TAM S¥ ICH DANE I TABELA PENSJE bo tam jest ich wynagrodzenie--cos poprawicSelect  ksiegowosc.pracownicy.[id_pracownika] , ksiegowosc.pensje.[kwota]
FROM  ksiegowosc.pracownicy INNER JOIN ksiegowosc.pensje ON ksiegowosc.pracownicy.[id_pracownika] =ksiegowosc.pensje.[id_pensji]
WHERE ksiegowosc.pensje.kwota>1000;

--c) Wyœwietl id pracowników nieposiadaj¹cych premii, których p³aca jest wiêksza ni¿ 2000
-- cos do poprawy

Select  ksiegowosc.pracownicy.id_pracownika , ksiegowosc.pensje.kwota, ksiegowosc.premie.rodzj
FROM ksiegowosc.premie inner join (ksiegowosc.pensje inner join ksiegowosc.wynagrodzenia ON ksiegowosc.pensje.id_pensji=ksiegowosc.wynagrodzenia.id_pensji) on ksiegowosc.premie.id_premii=ksiegowosc.wynagrodzenia.id_premii
WHERE ksiegowosc.pensje.kwota >2000 and ksiegowosc.premie.[rodzj] =  NULL;

--D)Wyœwietl pracowników, których pierwsza litera imienia zaczyna siê na literê ‘J’
--CHCIA£EM DAÆ * ALE NIE DZIA£A£O

SELECT * FROM  ksiegowosc.pracownicy WHERE imie LIKE 'J%';

--E) wyswietl pracownikow ktorych nazwisko zawiera litere 'n', oraz konczy sie na litere 'a'

SELECT * FROM ksiegowosc.pracownicy WHERE nazwsiko LIKE '%n%a';

--F) wyswietl imie i nazwisko pracownikow oraz liczbe ich nadgodzin, przyjmujac ze standardowy czas pracy to 160h

Select  ksiegowosc.pracownicy.imie , ksiegowosc.pracownicy.nazwisko , ksiegowosc.pracownicy.[nazwisko],( ksiegowosc.godziny.liczba_[godzin]*22)-160 as liczba_nadgodzin

--G) Wyœwietl imiê i nazwisko pracowników, których pensja zawiera siê w przedziale 1500 – 3000 PLN.



--H) Wyœwietl imiê i nazwisko pracowników, którzy pracowali w nadgodzinach i nie otrzymali premii.

SELECT * FROM ksiegowosc.[wynagrodzenia] wyn
INNER JOIN ksiegowosc.pracownicy pra ON pra.id_pracownika = wyn.id_pracownika
INNER JOIN ksiegowosc.godziny godz ON godz.id_godziny = wyn.id_godziny WHERE id_pensji IS NULL AND godz.liczba_godzin > 160


--i) Uszereguj pracowników wed³ug pensji.

SELECT * FROM ksiegowosc.wynagrodzenia wyn INNER JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji ORDER BY pen.kwota

--j ) Uszereguj pracowników wed³ug pensji i premii malej¹co
--WYNAGRODZENIE
SELECT * FROM ksiegowosc.wynagrodzenia wyn INNER JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji ORDER BY pen.kwota DESC ;
--PREMIA
SELECT * FROM ksiegowosc.premie pre INNER JOIN ksiegowosc.wynagrodzenia wyn ON pre.id_premii = wyn.id_premii ORDER BY pre.kwota DESC;

--k) Zlicz i pogrupuj pracowników wed³ug pola ‘stanowisko’.

select * from ksiegowosc.pensje;

SELECT COUNT(stanowisko) AS ILOŒÆSTANOWISK FROM ksiegowosc.pensje pen
 INNER JOIN ksiegowosc.wynagrodzenia wyn ON pen.id_pensji = wyn.id_pensji GROUP BY stanowisko;

 --L) Policz œredni¹, minimaln¹ i maksymaln¹ p³acê dla stanowiska ‘kierownik’ (je¿eli takiego nie masz, to przyjmij dowolne inne
  -- wybieram programiste min max avg group by


  SELECT MIN(kwota) as kwota_minimalna , MAX(kwota) as  kwota_maxymalna , AVG(kwota) as œrednia_kwota from ksiegowosc.pensje pen JOIN ksiegowosc.wynagrodzenia wyn ON pen.id_pensji = wyn.id_pensji GROUP BY pen.stanowisko HAVING pen.stanowisko = 'programista'

--m) Policz sumê wszystkich wynagrodzeñ.

SELECT SUM(kwota) as  sumawszystkichwynagrodzen FROM ksiegowosc.wynagrodzenia wyn JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji;

--f) Policz sumê wynagrodzeñ w ramach danego stanowiska.
   
   SELECT stanowisko , SUM(kwota) as suma_WynagrodzenIA_Na_Stanowisku FROM ksiegowosc.wynagrodzenia wyn JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji GROUP BY pen.stanowisko;

--g) Wyznacz liczbê premii przyznanych dla pracowników danego stanowiska


Select COUNT(id_pensji) AS iloscPrzyznanychpremiiDlastanowiska FROM ksiegowosc.pensje wyn JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji
JOIN ksiegowosc.premie pre ON wyn.id_premii = pre.id_premii
GROUP BY pen.stanowisko;

--h) Usuñ wszystkich pracowników maj¹cych pensjê mniejsz¹ ni¿ 1200 z³

SELECT * FROM ksiegowosc.wynagrodzenia wyn 
JOIN ksiegowosc.pensje pen ON wyn.id_pensji = pen.id_pensji 
JOIN ksiegowosc.pracownicy pra ON pra.id_pracownika = wyn.id_pracownika
WHERE pen.kwota < 1200;