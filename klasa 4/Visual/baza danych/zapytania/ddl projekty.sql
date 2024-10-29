CREATE TABLE `projekty` (
  `numer` int(11) NOT NULL default '0',
  `infooproj` varchar(50) default NULL,
  `nazwfirmwyk` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('1','malowanie elewacji domu','SUP-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('2','instalacja nowej kuchni','RemBudSzpachelka');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('3','położenie drewnianej podłogi','Kem-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('4','przekładka dachu','Jackowski i Syn');


ALTER TABLE projekty
rename Lista_projektow;

ALTER TABLE Lista_projektow
CHANGE numer id_projekty int PRIMARY KEY auto_increment;

ALTER TABLE Lista_projektow
CHANGE infooproj opis_projektu varchar(100);

ALTER TABLE Lista_projektow
CHANGE nazwfirmwyk nazwa_wykonawcy varchar(30);

ALTER TABLE Lista_projektow
MODIFY nazwa_wykonawcy varchar(120);

ALTER TABLE Lista_projektow
ADD
(
    telefon varchar(14),
    data_poczatkowa date,
    koszt dec(8,2)
)
;

ALTER TABLE Lista_projektow
DROP data_poczatkowa;



ALTER TABLE starocie
rename samochody;

ALTER TABLE samochody
ADD id_samochodu int auto_increment PRIMARY KEY;

ALTER TABLE samochody
ADD numer varchar(16) AFTER id_samochodu;

ALTER TABLE samochody
CHANGE mo model varchar(20);


ALTER TABLE samochody
MODIFY kolor varchar(20) AFTER model;

ALTER TABLE samochody
change koszt cena float(7,2);

ALTER TABLE samochody
DROP rok;


ALTER TABLE posredniczaca
rename Przypisanie;

ALTER TABLE pracownicy
change SSN kod int auto_increment PRIMARY KEY;

ALTER TABLE projekty
ADD kod char(4) PRIMARY KEY FIRST;

ALTER TABLE Przypisanie
MODIFY Projekt char(4);

ALTER TABLE Przypisanie
ADD PRIMARY KEY (Projekt,SSN);

ALTER TABLE Projekty
MODIFY miejsce varchar(40) default 'Bydgoszcz';

ALTER TABLE projekty
ADD czas int AFTER Nazwa;

ALTER TABLE Projekty
DROP miejsce;

ALTER TABLE pracownicy
MODIFY Nazwisko varchar(50);

ALTER TABLE Projekty
MODIFY czas int default 100;

ALTER TABLE pracownicy
rename Naukowcy;

ALTER TABLE Przypisanie
MODIFY Projekt char(4) AFTER SSN;

ALTER TABLE Przypisanie
change SSN Naukowiec int;

ALTER TABLE Naukowcy
DROP data_urodzenia;

CREATE TABLE vehicles
(
  vehicledId int PRIMARY KEY,
  year int NOT NULL,
  make varchar(100) NOT NULL
);

ALTER TABLE vehicles
ADD model varchar(100) NOT NULL;

ALTER TABLE vehicles
ADD
(
  color varchar(50),
  note varchar(255)
);

ALTER TABLE vehicles
MODIFY note varchar (100);

ALTER TABLE vehicles
MODIFY year smallint NOT NULL,
MODIFY color varchar(20) AFTER make;

ALTER TABLE vehicles 
CHANGE note vehicleCondition varchar(100) NOT NULL;

ALTER TABLE vehicles 
DROP vehicleCondition;

ALTER TABLE vehicles 
MODIFY year int NOT NULL default (2023);

ALTER TABLE vehicles 
rename cars;

CREATE TABLE Sprzedawcy
(
  IDSprzedawcy int PRIMARY KEY,
  Nazwisko varchar(50) NOT NULL,
  Miasto varchar(30),
  Prowizja dec (3,2) default 0.13
);

CREATE TABLE Zamowienia 
(
  IDZamowienia int PRIMARY KEY,
  Wartosc dec (7,2),
  Data date,
  IDKlienta int,
  IDSprzedawcy int
);

CREATE TABLE Klienci
(
  IDKlienta int PRIMARY KEY,
  Nazwa varchar(50),
  Miasto varchar(40),
  Ocena int,
  IDSprzedawcy int
);

select *from Sprzedawcy;
select Nazwisko, prowizja from Sprzedawcy;
select *from Klienci where Miasto='Moscow' OR miasto ='Paris'; 
select *from Klienci where Miasto IN ('Moscow','Paris');
select *from Klienci where Miasto NOT IN ('Moscow','Paris');
select *from Klienci where IDKlienta IN (3007,3008,3009);
select *from Sprzedawcy where Prowizja BETWEEN (0.12) AND (0.14);
select *from Zamowienia where Wartosc BETWEEN (500) AND (4000);
select *from Zamowienia where Wartosc BETWEEN (500) AND (4000) AND Wartosc NOT IN (1983.43,948.50);
select *from Klienci where Nazwa Like 'B%';
select *from Klienci where Nazwa Like '%N';
select *from Sprzedawcy where Nazwisko Like 'N__l%';

select nazwa,cena from Produkty;
select nazwa,cena from Produkty ORDER BY cena DESC;
select nazwa,cena from Produkty where (cena<5) ORDER BY cena DESC;
select nazwa,cena from Produkty where (cena<5) AND nazwa Like 'b%' ORDER BY cena DESC;
select nazwa,cena from Produkty where (cena<5) AND (nazwa Like 'b%' OR nazwa Like 's%') ORDER BY cena DESC;
select nazwa,cena from Produkty where cena BETWEEN 5 AND 10;
select nazwa,cena from Produkty where nazwa IN('chleb', 'sok', 'chipsy');

select nazwa,skladnik_glowny from proste_drinki where skladnik_glowny='woda sodowa';
select nazwa,skladnik_glowny from proste_drinki where skladnik_glowny LIKE 'sok%';
select nazwa,skladnik_glowny,ilosc1 from proste_drinki where (skladnik_glowny LIKE 'sok%' OR skladnik_glowny LIKE'nektar%') AND ilosc1 >=60;
select nazwa,skladnik_dodatkowy,ilosc2 from proste_drinki where skladnik_dodatkowy LIKE'sok%' AND ilosc2=22;
select nazwa from proste_drinki where nazwa LIKE'B%n';
select nazwa,ilosc2 from proste_drinki where ilosc2 BETWEEN 30 and 180;
select nazwa,skladnik_dodatkowy,skladnik_glowny from proste_drinki where skladnik_glowny LIKE'%herbata' OR skladnik_dodatkowy LIKE'%herbata'