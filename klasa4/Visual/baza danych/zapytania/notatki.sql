mysql -u root JK_biblioteka

CREATE DATABASE Studenci;
USE Studenci

CREATE TABLE Studenci
(
    id_studenta char(4) PRIMARY KEY,
    nazwisko varchar(25) NOT NULL,
    imie varchar(25),
    imie_ojca varchar(25)
)
;


CREATE TABLE oceny 
(
    id_studenta char(4),
    nazwa_przedmiotu varchar(25),
    ocena int DEFAULT 3,
    dzien date,
    PRIMARY KEY(id_studenta, nazwa_przedmiotu)
)
;

CREATE TABLE Osoby 
(
    id_osoby bigint PRIMARY KEY,
    nazwisko varchar(25),
    data_ur date,
    czas_maratonu time,
    rok_rozp year DEFAULT 2020,
    zarobki dec(7,2) unique
)
;

CREATE TABLE pracownicy
(
    id_prac int PRIMARY KEY auto_increment,
    nazwisko varchar(25) unique,
    zarobki dec(6,2) DEFAULT 1900
)
;





CREATE DATABASE JK;
USE JK

CREATE TABLE DZIALY
(
    kod char(5) PRIMARY KEY,
    nazwa  varchar(255) unique,
    budzet dec(8,2) DEFAULT 100000 
)
;

CREATE TABLE robole
(
    id_rob int PRIMARY KEY auto_increment,
    imie varchar(255) not null,
    nazwisko varchar(255) not null,
    dzial char(5),
    FOREIGN KEY(dzial) REFERENCES dzialy(kod)
)
;

SHOW DATABASES;

CREATE DATABASE Wycieczki2;
USE Wycieczki2;

CREATE TABLE Przewodnicy
(
    przewodnik int auto_increment PRIMARY KEY,
    telefon_domowy varchar(15),
    nazwisko varchar(50) not null,
    imie varchar(30) 
)
;

CREATE TABLE Wycieczki
(
    kod char(4) PRIMARY KEY,
    przewodnik int,
    cena dec(6,2) DEFAULT 1000,
    data_rop date,
    dat_zako date,
    FOREIGN KEY(przewodnik) REFERENCES Przewodnicy(przewodnik)
)
;

desc Przewodnicy; // opis tabeli

show TABLES;

desc przewodnicy;
desc wycieczki;


insert into wycieczki
values
('1234',1, 600, '2023-09-23', '2023-12-28');

insert into przewodnicy
(imie,nazwisko)
values
('Blazej','Wojtas');

DELETE FROM przewodnicy
WHERE przewodnik=1;

DELETE FROM wycieczki
WHERE kod='1234';