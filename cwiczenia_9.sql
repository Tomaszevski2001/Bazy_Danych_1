--zad1
CREATE DATABASE FIRMA2;
--zad2
CREATE SCHEMA ksiegowosc1;
--zad3
CREATE TABLE ksiegowosc1.pracownicy ( 
id_pracownika INTEGER PRIMARY KEY NOT NULL, 
imie VARCHAR(20) NOT NULL, 
nazwisko VARCHAR(20) NOT NULL, 
adres VARCHAR(6) NOT NULL,
telefon INTEGER);


CREATE TABLE ksiegowosc1.godziny ( 
id_godziny INTEGER PRIMARY KEY NOT NULL, 
"data" DATE NOT NULL,
liczba_godzin INTEGER NOT NULL, 
id_pracownika INTEGER NOT NULL,
FOREIGN KEY(id_pracownika)
REFERENCES ksiegowosc1.pracownicy(id_pracownika));

CREATE TABLE ksiegowosc1.pensja ( 
id_pensji INTEGER PRIMARY KEY NOT NULL, 
stanowisko VARCHAR(20) NOT NULL, 
kwota FLOAT NOT NULL);

CREATE TABLE ksiegowosc1.premia ( 
id_premii INTEGER PRIMARY KEY NOT NULL, 
rodzaj VARCHAR(20) NOT NULL, 
kwota FLOAT NOT NULL);

CREATE TABLE ksiegowosc1.wynagrodzenia (
id_wynagrodzenia INTEGER PRIMARY KEY NOT NULL,
"data" DATE NOT NULL,
id_pracownika INTEGER NOT NULL,
FOREIGN KEY(id_pracownika)
REFERENCES ksiegowosc1.pracownicy(id_pracownika),
id_godziny INTEGER NOT NULL,
FOREIGN KEY(id_godziny)
REFERENCES ksiegowosc1.godziny(id_godziny),
id_pensji INTEGER NOT NULL,
FOREIGN KEY(id_pensji)
REFERENCES ksiegowosc1.pensja(id_pensji),
id_premii INTEGER NOT NULL,
FOREIGN KEY(id_premii)
REFERENCES ksiegowosc1.premia(id_premii)
);



INSERT INTO ksiegowosc1.pracownicy VALUES (1, 'Adam', 'Biedrzycki', '24-100', '518740782');
INSERT INTO ksiegowosc1.pracownicy VALUES (2, 'Tomasz', 'Sanicki', '38-200', '795979125');
INSERT INTO ksiegowosc1.pracownicy VALUES (3, 'Ania', 'Dzbania', '21-420', '531421433');
INSERT INTO ksiegowosc1.pracownicy VALUES (4, 'Jan', 'Kapela', '12-120', '571293482');
INSERT INTO ksiegowosc1.pracownicy VALUES (5, 'Szymon', 'Szasz³yk', '42-123', '512429840');
INSERT INTO ksiegowosc1.pracownicy VALUES (6, 'Bogumi³a', 'Vito', '13-120', '551293482');
INSERT INTO ksiegowosc1.pracownicy VALUES (7, 'Joanna', 'Jakubowicz', '52-120', '571292482');
INSERT INTO ksiegowosc1.pracownicy VALUES (8, 'Marian', 'Tymosz', '12-410', '576393482');
INSERT INTO ksiegowosc1.pracownicy VALUES (9, 'Micha³', 'Sikorski', '21-370', '571293472');
INSERT INTO ksiegowosc1.pracownicy VALUES (10, 'Jan', 'Bargiel', '42-930', '573333482');

SELECT * FROM ksiegowosc1.pracownicy

--uzupe³nianie tabeli godziny:

INSERT INTO ksiegowosc1.godziny VALUES (1, '2022-03-28' , 6, 1);
INSERT INTO ksiegowosc1.godziny VALUES (2, '2022-03-23' , 6, 2);
INSERT INTO ksiegowosc1.godziny VALUES (3, '2022-03-24' , 5, 4);
INSERT INTO ksiegowosc1.godziny VALUES (4, '2022-03-21' , 4, 3);
INSERT INTO ksiegowosc1.godziny VALUES (5, '2022-03-26' , 6, 10);
INSERT INTO ksiegowosc1.godziny VALUES (6, '2022-03-22' , 4, 7);
INSERT INTO ksiegowosc1.godziny VALUES (7, '2022-03-24' , 7, 8);
INSERT INTO ksiegowosc1.godziny VALUES (8, '2022-03-23' , 8, 9);
INSERT INTO ksiegowosc1.godziny VALUES (9, '2022-03-22' , 8, 5);
INSERT INTO ksiegowosc1.godziny VALUES (10, '2022-03-21' , 8, 6);

SELECT * FROM ksiegowosc1.godziny

--uzupe³nianie tabeli premia:

INSERT INTO ksiegowosc1.premia VALUES (1, 'regulaminowa', 40);
INSERT INTO ksiegowosc1.premia VALUES (2, 'regulaminowa', 50);
INSERT INTO ksiegowosc1.premia VALUES (3, 'regulaminowa', 60);
INSERT INTO ksiegowosc1.premia VALUES (4, 'regulaminowa', 70);
INSERT INTO ksiegowosc1.premia VALUES (5, 'regulaminowa', 85);
INSERT INTO ksiegowosc1.premia VALUES (6, 'regulaminowa', 90);
INSERT INTO ksiegowosc1.premia VALUES (7, 'regulaminowa', 100);
INSERT INTO ksiegowosc1.premia VALUES (8, 'regulaminowa', 150);
INSERT INTO ksiegowosc1.premia VALUES (9, 'regulaminowa', 120);
INSERT INTO ksiegowosc1.premia VALUES (10, 'regulaminowa', 180);

SELECT * FROM ksiegowosc1.premia;

--uzupe³nianie tabeli pensja:

INSERT INTO ksiegowosc1.pensja VALUES (1, 'analityk', 3522);
INSERT INTO ksiegowosc1.pensja VALUES (2, 'programista', 4210);
INSERT INTO ksiegowosc1.pensja VALUES (3, 'technik', 3012);
INSERT INTO ksiegowosc1.pensja VALUES (4, 'administrator', 3412);
INSERT INTO ksiegowosc1.pensja VALUES (5, 'konsultant', 3212);
INSERT INTO ksiegowosc1.pensja VALUES (6, 'menad¿er', 4110);
INSERT INTO ksiegowosc1.pensja VALUES (7, 'research specialist', 3510);
INSERT INTO ksiegowosc1.pensja VALUES (8, 'grafik', 3452);
INSERT INTO ksiegowosc1.pensja VALUES (9, 'kierowca', 3228);
INSERT INTO ksiegowosc1.pensja VALUES (10, 'handlowiec', 3724);

SELECT * FROM ksiegowosc1.pensja

--uzupe³nienie tabeli wynagrodzenia:

INSERT INTO ksiegowosc1.wynagrodzenia VALUES (1, '2022-03-28', 1, 1, 1, 1);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (2, '2022-03-28', 2, 2, 2, 2);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (3, '2022-03-28', 3, 3, 3, 3);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (4, '2022-03-28', 4, 4, 4, 4);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (5, '2022-03-28', 5, 5, 5, 5);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (6, '2022-03-28', 6, 6, 6, 6);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (7, '2022-03-28', 7, 7, 7, 7);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (8, '2022-03-28', 8, 8, 8, 8);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (9, '2022-03-28', 9, 9, 9, 9);
INSERT INTO ksiegowosc1.wynagrodzenia VALUES (10, '2022-03-28', 10, 10, 10, 10);

SELECT * FROM ksiegowosc1.wynagrodzenia

--A) Zmodyfikuj numer telefonu w tabeli pracownicy, dodaj¹c do niego kierunkowy dla Polski w nawiasie (+48)

ALTER TABLE ksiegowosc1.pracownicy
ALTER COLUMN telefon VARCHAR(32);

UPDATE ksiegowosc1.pracownicy SET telefon = '(+48)' + pracownicy.telefon;

select * from ksiegowosc1.pracownicy;

--B) Zmodyfikuj atrybut telefon w tabeli pracownicy tak, aby numer oddzielony by³ myœlnikami wg wzoru: ‘555-222-333’ 

UPDATE ksiegowosc1.pracownicy
SET telefon = SUBSTRING(telefon, 1, 8) + '-' +
					SUBSTRING(telefon, 9, 3) + '-' +
					SUBSTRING(telefon, 12, 3);

SELECT * FROM ksiegowosc1.pracownicy;
--C) Wyœwietl dane pracownika, którego nazwisko jest najd³u¿sze, u¿ywaj¹c du¿ych liter

SELECT TOP 1 UPPER (pracownicy.id_pracownika) , UPPER(pracownicy.imie) , UPPER(pracownicy.nazwisko),  UPPER(pracownicy.adres) FROM ksiegowosc1.pracownicy ORDER BY LEN(nazwisko) DESC ;

--D) Wyœwietl dane pracowników i ich pensje zakodowane przy pomocy algorytmu md5

Select 
 CONVERT(VARCHAR(32), HashBytes('MD5', pracownicy.imie), 2) as imiê	,	
 CONVERT(VARCHAR(32), HashBytes('MD5', pracownicy.nazwisko), 2) as nazwisko	,	
 CONVERT(VARCHAR(32), HashBytes('MD5', CONVERT(VARCHAR(32),pracownicy.id_pracownika)), 2) as id_pracownika,
 CONVERT(VARCHAR(32), HashBytes('MD5', pracownicy.adres), 2) as adres,
 CONVERT(VARCHAR(32), HashBytes('MD5', CONVERT(VARCHAR(32) ,pracownicy.telefon)), 2) as telefon,
 CONVERT(VARCHAR(32), HashBytes('MD5', CONVERT(VARCHAR(32) ,pensja.kwota)), 2) as pensja

 FROM  ((ksiegowosc1.pracownicy
 INNER JOIN ksiegowosc1.wynagrodzenia ON wynagrodzenia.id_wynagrodzenia = pracownicy.id_pracownika)
 INNER JOIN ksiegowosc1.pensja on pensja.id_pensji = wynagrodzenia.id_pensji);

 --f) Wyœwietl pracowników, ich pensje oraz premie. Wykorzystaj z³¹czenie lewostronne

 
SELECT pracownicy.imie , pracownicy.nazwisko ,pensja.kwota , premia.kwota from ksiegowosc1.pracownicy

left join ksiegowosc1.wynagrodzenia ON pracownicy.id_pracownika = wynagrodzenia.id_pracownika
left join ksiegowosc1.pensja ON wynagrodzenia.id_pensji = pensja.id_pensji
left join ksiegowosc1.premia ON wynagrodzenia.id_premii = premia.id_premii

--g)  wygeneruj raport (zapytanie), które zwróci w wyniki treœæ wg poni¿szego szablonu
--Pracownik Jan Nowak, w dniu 7.08.2017 otrzyma³ pensjê ca³kowit¹ na kwotê 7540 z³, gdzie 
--wynagrodzenie zasadnicze wynosi³o: 5000 z³, premia: 2000 z³, nadgodziny: 540 z³


SELECT pracownicy.imie +' ' + pracownicy.nazwisko + ', w dniu ' + CONVERT(VARCHAR(32), godziny.data) + ' otrzyma³ pensjê ca³kowit¹ na kwotê ' +
		CONVERT(VARCHAR(32),pensja.kwota + premia.kwota) + ', gdzie wynagrodzenie zasadnicze wynosi³o: ' + CONVERT(VARCHAR(32), pensja.kwota) +  ' z³'+
		', premia:' + CONVERT(VARCHAR(32), premia.kwota) + ', nadgodziny: ' + CONVERT(VARCHAR(32), premia.kwota + 100) AS RAPORT
		FROM ((((ksiegowosc1.pracownicy
		INNER JOIN ksiegowosc1.wynagrodzenia ON wynagrodzenia.id_pracownika = pracownicy.id_pracownika)
		INNER JOIN ksiegowosc1.godziny ON godziny.id_godziny = wynagrodzenia.id_godziny)
		INNER JOIN ksiegowosc1.pensja ON pensja.id_pensji = wynagrodzenia.id_pensji)
		INNER JOIN ksiegowosc1.premia ON premia.id_premii = wynagrodzenia.id_premii)

