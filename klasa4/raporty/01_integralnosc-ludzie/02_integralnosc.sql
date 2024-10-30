CREATE TABLE Klienci (
    ID int auto_increment PRIMARY KEY,
    Imie varchar(30) NOT NULL,
    Nazwisko varchar(50) NOT NULL,
    email varchar(50) UNIQUE CHECK (email LIKE '%@%')
);

CREATE TABLE Uslugi(
    ID int auto_increment PRIMARY KEY,
    nazwa varchar(50),
    opis varchar(512),
    cena dec(9,2)
);
s
ALTER TABLE Uslugi
MODIFY nazwa varchar(50) NOT NULL UNIQUE;
    
ALTER TABLE Uslugi
ADD CONSTRAINT ch_cena
CHECK (cena>10);

CREATE TABLE KliUsl(
    ID int PRIMARY KEY auto_increment,
    ID_klienci int,
    ID_uslugi int
);

ALTER TABLE KliUsl
ADD CONSTRAINT fk_klienci FOREIGN KEY(ID_klienci) REFERENCES Klienci(ID);

ALTER TABLE KliUsl
ADD CONSTRAINT fk_uslugi FOREIGN KEY(ID_uslugi) REFERENCES Uslugi(ID);