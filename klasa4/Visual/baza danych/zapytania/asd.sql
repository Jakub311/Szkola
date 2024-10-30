CREATE TABLE Buty(
    IDmarki int ,
    IDButa int auto_increment PRIMARY KEY,
    nazwa varchar(30),
    cena dec (6,2)
);

CREATE TABLE Firma (
    IDmarki int,
    nazwa varchar(30)
);

ALTER TABLE Buty
MODIFY IDmarki char(6);

ALTER TABLE Firma
MODIFY IDmarki char(6);

ALTER TABLE Firma
MODIFY IDmarki int PRIMARY KEY;

ALTER TABLE Firma
CHANGE nazwa Marka varchar(30);

ALTER TABLE Buty
MODIFY cena dec (6,2);

ALTER TABLE Firma
ADD adres varchar(100);

ALTER TABLE Buty
MODIFY IDButa int auto_increment FIRST;

ALTER TABLE Firma
DROP adres;

ALTER TABLE Firma
RENAME Producent;

ALTER TABLE Buty
MODIFY cena dec (6,2) default 500;