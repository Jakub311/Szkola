CREATE TABLE Pojazdy (
    Id int PRIMARY KEY auto_increment,
    rok_prod int NOT NULL,
    data_rej date DEFAULT(CURRENT_DATE())
);

CREATE TABLE Modele (
    id int PRIMARY KEY auto_increment,
    nazwa_modelu char(50) NOT NULL UNIQUE
);

ALTER TABLE Pojazdy
ADD id_modelu int;

ALTER TABLE Pojazdy 
ADD FOREIGN KEY(id_modelu) REFERENCES Modele(id);
