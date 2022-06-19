create database TabelaStratygraficzna_Geologia;

use TabelaStratygraficzna_Geologia;

create schema okresy;

CREATE  TABLE okresy.GeoEon(id_eon INT PRIMARY KEY,nazwa_eon NVARCHAR(16));

CREATE  TABLE okresy.GeoEra( id_era int primary key, nazwa_era NVARCHAR(16),
		id_eon int foreign key references okresy.GeoEon(id_eon));

CREATE  TABLE okresy.GeoOkres(id_okres INT PRIMARY KEY, nazwa_okres NVARCHAR(16),
		id_era int foreign key references okresy.GeoEra(id_era))

CREATE  TABLE okresy.GeoEpoka( id_epoka INT PRIMARY KEY, nazwa_epoka NVARCHAR(16),
		id_okres int foreign key references okresy.GeoOkres(id_okres));

CREATE  TABLE okresy.GeoPietro(id_pietro INT PRIMARY KEY, nazwa_pietro NVARCHAR(16),
		id_epoka int foreign key references okresy.GeoEpoka(id_epoka));

INSERT INTO okresy.GeoEon VALUES(1, 'Fanerozoik');

SELECT * FROM okresy.GeoEon;

INSERT INTO okresy.GeoEra values(1,'paleozoik',1);
INSERT INTO okresy.GeoEra values(2,'mezozoik',1);
INSERT INTO okresy.GeoEra values(3,'kenozoik',1);

SELECT * FROM okresy.GeoEra;

insert into okresy.GeoOkres values(1, 'dewon',1);
insert into okresy.GeoOkres values(2, 'karbon',1);
insert into okresy.GeoOkres values(3, 'perm',1);
insert into okresy.GeoOkres values(4, 'trias',2);
insert into okresy.GeoOkres values(5, 'jura',2);
insert into okresy.GeoOkres values(6, 'kreda',2);
insert into okresy.GeoOkres values(7, 'palogen',3);
insert into okresy.GeoOkres values(8, 'neogen',3);
insert into okresy.GeoOkres values(9, 'czwartorzad',3);

SELECT * FROM okresy.GeoOkres;

insert into okresy.GeoEpoka values(1, 'dolny', 1);
insert into okresy.GeoEpoka values(2, 'srodkowy', 1);
insert into okresy.GeoEpoka values(3, 'gorny', 1);
insert into okresy.GeoEpoka values(4, 'dolny', 2);
insert into okresy.GeoEpoka values(5, 'gorny', 2);
insert into okresy.GeoEpoka values(6, 'dolny', 3);
insert into okresy.GeoEpoka values(7, 'gorny', 3);
insert into okresy.GeoEpoka values(8, 'dolny', 4);
insert into okresy.GeoEpoka values(9, 'srodkowy', 4);
insert into okresy.GeoEpoka values(10, 'gorny', 4);
insert into okresy.GeoEpoka values(11, 'dolna', 5);
insert into okresy.GeoEpoka values(12, 'srodkowa', 5);
insert into okresy.GeoEpoka values(13, 'gorna', 5);
insert into okresy.GeoEpoka values(14, 'dolna', 6);
insert into okresy.GeoEpoka values(15, 'gorna', 6);
insert into okresy.GeoEpoka values(16, 'paleocen', 7);
insert into okresy.GeoEpoka values(17, 'eocen', 7);
insert into okresy.GeoEpoka values(18, 'oligocen', 7);
insert into okresy.GeoEpoka values(19, 'miocen', 8);
insert into okresy.GeoEpoka values(20, 'pliocen', 8);
insert into okresy.GeoEpoka values(21, 'plejstocen', 9);
insert into okresy.GeoEpoka values(22, 'holocen', 9);

SELECT * FROM okresy.GeoEpoka;

INSERT INTO okresy.GeoPietro VALUES(1, 'Megalaj', 1);
INSERT INTO okresy.GeoPietro VALUES(2,  'Northgrip',1);
INSERT INTO okresy.GeoPietro VALUES(3,  'Grenland',1);
INSERT INTO okresy.GeoPietro VALUES(4,  'PóŸny',2);
INSERT INTO okresy.GeoPietro VALUES(5,  'Chiban',2);
INSERT INTO okresy.GeoPietro VALUES(6,  'Kalabr',2);
INSERT INTO okresy.GeoPietro VALUES(7,  'Gelas',2);
INSERT INTO okresy.GeoPietro VALUES(8,  'Piacent',3);
INSERT INTO okresy.GeoPietro VALUES(9,  'Zankl',3);
INSERT INTO okresy.GeoPietro VALUES(10,  'Messyn',4);
INSERT INTO okresy.GeoPietro VALUES(11,  'Torton',4);
INSERT INTO okresy.GeoPietro VALUES(12,  'Serrawal',4);
INSERT INTO okresy.GeoPietro VALUES(13,  'Lang',4);
INSERT INTO okresy.GeoPietro VALUES(14,  'Burdyga³',4);
INSERT INTO okresy.GeoPietro VALUES(15,  'Akwitan',4);
INSERT INTO okresy.GeoPietro VALUES(16,  'Szat',5);
INSERT INTO okresy.GeoPietro VALUES(17,  'Rupel',5);
INSERT INTO okresy.GeoPietro VALUES(18,  'Priabon',6);
INSERT INTO okresy.GeoPietro VALUES(19,  'Barton',6);
INSERT INTO okresy.GeoPietro VALUES(20,  'Lutet',6);
INSERT INTO okresy.GeoPietro VALUES(21, 'Iprez',6);
INSERT INTO okresy.GeoPietro VALUES(22,  'Tanet',7);
INSERT INTO okresy.GeoPietro VALUES(23,  'Zeland',7);
INSERT INTO okresy.GeoPietro VALUES(24,  'Dan',7);
INSERT INTO okresy.GeoPietro VALUES(25,  'Mastrycht',8);
INSERT INTO okresy.GeoPietro VALUES(26,  'Kampan',8);
INSERT INTO okresy.GeoPietro VALUES(27,  'Santon',8);
INSERT INTO okresy.GeoPietro VALUES(28,  'Koniak',8);
INSERT INTO okresy.GeoPietro VALUES(29,  'Turon',8);
INSERT INTO okresy.GeoPietro VALUES(30,  'Cenoman',8);
INSERT INTO okresy.GeoPietro VALUES(31,  'Alb',9);
INSERT INTO okresy.GeoPietro VALUES(32,  'Apt',9);
INSERT INTO okresy.GeoPietro VALUES(33,  'Barrem',9);
INSERT INTO okresy.GeoPietro VALUES(34,  'Hoteryw',9);
INSERT INTO okresy.GeoPietro VALUES(35,  'Walan¿yn',9);
INSERT INTO okresy.GeoPietro VALUES(36,  'Berrias',9);
INSERT INTO okresy.GeoPietro VALUES(37,  'Tyton',10);
INSERT INTO okresy.GeoPietro VALUES(38,  'Kimeryd',10);
INSERT INTO okresy.GeoPietro VALUES(39,  'Oksford',10);
INSERT INTO okresy.GeoPietro VALUES(40,  'Kelowej',11);
INSERT INTO okresy.GeoPietro VALUES(41,  'Baton',11);
INSERT INTO okresy.GeoPietro VALUES(42,  'Bajos',11);
INSERT INTO okresy.GeoPietro VALUES(43,  'Aalen',11);
INSERT INTO okresy.GeoPietro VALUES(44, 'Toark',12);
INSERT INTO okresy.GeoPietro VALUES(45,  'Pliensbach',12);
INSERT INTO okresy.GeoPietro VALUES(46,  'Synemur',12);
INSERT INTO okresy.GeoPietro VALUES(47,  'Hettang',12);
INSERT INTO okresy.GeoPietro VALUES(48,  'Retyk',13);
INSERT INTO okresy.GeoPietro VALUES(49,  'Noryk',13);
INSERT INTO okresy.GeoPietro VALUES(50,  'Karnik',13);
INSERT INTO okresy.GeoPietro VALUES(51,  'Ladyn',14);
INSERT INTO okresy.GeoPietro VALUES(52,  'Anizyk',14);
INSERT INTO okresy.GeoPietro VALUES(53,  'Olenek',15);
INSERT INTO okresy.GeoPietro VALUES(54,  'Ind',15);
INSERT INTO okresy.GeoPietro VALUES(55, 'Czangsing',16);
INSERT INTO okresy.GeoPietro VALUES(56,  'Wucziaping',16);
INSERT INTO okresy.GeoPietro VALUES(57,  'Kapitan',17);
INSERT INTO okresy.GeoPietro VALUES(58,  'Word',17);
INSERT INTO okresy.GeoPietro VALUES(59, 'Road',17);
INSERT INTO okresy.GeoPietro VALUES(60,  'Kungur',18);
INSERT INTO okresy.GeoPietro VALUES(61,  'Artinsk',18);
INSERT INTO okresy.GeoPietro VALUES(62,  'Sakmar',18);
INSERT INTO okresy.GeoPietro VALUES(63,  'Assel',18);
INSERT INTO okresy.GeoPietro VALUES(64, 'G¿el',19);
INSERT INTO okresy.GeoPietro VALUES(65,  'Kasimow',19);
INSERT INTO okresy.GeoPietro VALUES(66,  'Moskow',19);
INSERT INTO okresy.GeoPietro VALUES(67,  'Baszkir',19);
INSERT INTO okresy.GeoPietro VALUES(68,  'Serpuchow',20);
INSERT INTO okresy.GeoPietro VALUES(69,  'Wizen',20);
INSERT INTO okresy.GeoPietro VALUES(70,'Turnej',20);
INSERT INTO okresy.GeoPietro VALUES(71, 'Famen',21);
INSERT INTO okresy.GeoPietro VALUES(72,  'Fran',21);
INSERT INTO okresy.GeoPietro VALUES(73,  '¯yewt',22);
INSERT INTO okresy.GeoPietro VALUES(74,  'Eifel',22);
INSERT INTO okresy.GeoPietro VALUES(75,  'Ems',23);
INSERT INTO okresy.GeoPietro VALUES(76,  'Prag',23);
INSERT INTO okresy.GeoPietro VALUES(77,  'Lochkow',23);
INSERT INTO okresy.GeoPietro VALUES(78,  'Przydol',24);
INSERT INTO okresy.GeoPietro VALUES(79, 'Ludford',25);
INSERT INTO okresy.GeoPietro VALUES(80,  'Gorst',25);
INSERT INTO okresy.GeoPietro VALUES(81,  'Homer',26);
INSERT INTO okresy.GeoPietro VALUES(82,  'Szejnwud',26);
INSERT INTO okresy.GeoPietro VALUES(83,  'Telicz',27);
INSERT INTO okresy.GeoPietro VALUES(84,  'Aeron',27);
INSERT INTO okresy.GeoPietro VALUES(85, 'Ruddan',27);
INSERT INTO okresy.GeoPietro VALUES(86,  'Hirnant',28);
INSERT INTO okresy.GeoPietro VALUES(87,  'Kat',28);
INSERT INTO okresy.GeoPietro VALUES(88,  'Sandb',29);
INSERT INTO okresy.GeoPietro VALUES(89,  'Darriwil',29);
INSERT INTO okresy.GeoPietro VALUES(90,  'Daping',29);
INSERT INTO okresy.GeoPietro VALUES(91,  'Flo',30);
INSERT INTO okresy.GeoPietro VALUES(92,  'Termadok',30);
INSERT INTO okresy.GeoPietro VALUES(93,  'Piêtro 10',31);
INSERT INTO okresy.GeoPietro VALUES(94,  'Dziangszan',31);
INSERT INTO okresy.GeoPietro VALUES(95,  'Paib',31);
INSERT INTO okresy.GeoPietro VALUES(96,  'Gu¿ang',32);
INSERT INTO okresy.GeoPietro VALUES(97, 'Drum',32);
INSERT INTO okresy.GeoPietro VALUES(98, 'Wuliuan',32);
INSERT INTO okresy.GeoPietro VALUES(99,  'Piêtro 4',33);
INSERT INTO okresy.GeoPietro VALUES(100,  'Piêtro 3',33);
INSERT INTO okresy.GeoPietro VALUES(101,  'Piêtro 2',34);
INSERT INTO okresy.GeoPietro VALUES(102,  'Fortun',34);

SELECT * FROM okresy.GeoPietro;


create table okresy.Dziesiec(cyfra int,bit int);
create table okresy.Milion(liczba int,cyfra int, bit int);

insert into okresy.Dziesiec values (0,1);
insert into okresy.Dziesiec values (1,1);
insert into okresy.Dziesiec values (2,1);
insert into okresy.Dziesiec values (3,1);
insert into okresy.Dziesiec values (4,1);
insert into okresy.Dziesiec values (5,1);
insert into okresy.Dziesiec values (6,1);
insert into okresy.Dziesiec values (7,1);
insert into okresy.Dziesiec values (8,1);
insert into okresy.Dziesiec values (9,1);



insert into okresy.Milion select a1.cyfra +10* a2.cyfra +100*a3.cyfra + 1000*a4.cyfra
+ 10000*a5.cyfra + 10000*a6.cyfra as liczba , a1.cyfra as cyfra, a1.bit as bit
from okresy.Dziesiec a1, okresy.Dziesiec a2, okresy.Dziesiec a3, okresy.Dziesiec a4, okresy.Dziesiec a5, okresy.Dziesiec a6 ;


select * from okresy.Dziesiec;
select * from okresy.Milion;


--stworzenie tabeli zdenormalizowanej GeoTabela 

select okresy.GeoPietro.id_pietro,okresy.GeoPietro.nazwa_pietro,
okresy.GeoEpoka.id_epoka,okresy.GeoEpoka.nazwa_epoka,
okresy.GeoOkres.id_okres,okresy.GeoOkres.nazwa_okres,
okresy.GeoEra.id_era,okresy.GeoEra.nazwa_era,
GeoEon.id_eon,GeoEon.nazwa_eon
into okresy.GeoTabela from okresy.GeoEon inner join okresy.GeoEra on okresy.GeoEon.id_eon=okresy.GeoEra.id_eon
inner join okresy.GeoOkres on GeoEra.id_era=GeoOkres.id_era
inner join okresy.GeoEpoka on GeoOkres.id_okres=GeoEpoka.id_okres
inner join okresy.GeoPietro on GeoEpoka.id_epoka=GeoPietro.id_epoka

select * from okresy.GeoTabela

alter table okresy.GeoTabela add primary key(id_pietro);

--zapytanie nr_1

set statistics time on;
select COUNT(*) from okresy.Milion INNER JOIN okresy.GeoTabela on Milion.liczba%77 = GeoTabela.id_pietro;
set statistics time off;

--zapytanie nr_2

set statistics time on;
select COUNT(*) from okresy.Milion inner join okresy.GeoPietro on
(okresy.Milion.liczba%77=GeoPietro.id_pietro)
inner join okresy.GeoEpoka on GeoPietro.id_epoka =GeoEpoka.id_epoka
inner join okresy.GeoOkres on GeoEpoka.id_okres = GeoOkres.id_okres
inner join okresy.GeoEra on GeoEra.id_era = GeoOkres.id_era
inner join okresy.GeoEon on GeoEon.id_eon = GeoEra.id_eon
set statistics time off;

--zapytanie nr_3
set statistics time on;
select COUNT(*) from okresy.Milion where Milion.liczba%77 = 
(select id_pietro from okresy.GeoTabela where Milion.liczba%77=id_pietro)
set statistics time off;

--zapytanie nr_4
set statistics time on;
select COUNT(*) from okresy.Milion where Milion.liczba%77 in
(select GeoPietro.id_pietro from okresy.GeoPietro 
inner join okresy.GeoEpoka on GeoPietro.id_epoka = GeoEpoka.id_epoka 
inner join okresy.GeoOkres on GeoEpoka.id_okres = GeoOkres.id_okres
inner join okresy.GeoEra on GeoEra.id_era = GeoOkres.id_era
inner join okresy.GeoEon on GeoEon.id_eon = GeoEra.id_eon)
set statistics time off;


create index Eonindx on okresy.GeoEon(id_eon);
create index Eraindx on okresy.GeoEra(id_era, id_eon);
create index Okresindx on okresy.GeoOkres(id_okres, id_era);
create index Epokaindx on okresy.GeoEpoka(id_epoka, id_okres);
create index Pietroindx on okresy.GeoPietro(id_pietro, id_epoka);
create index Liczbaindx on okresy.Milion(liczba);
create index GeoTabelaindx on okresy.GeoTabela(id_pietro, id_epoka, id_era, id_okres,id_eon);

drop database TabelaStratygraficzna_Geologia;







