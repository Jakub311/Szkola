CREATE TABLE Ludzie (
    Id int PRIMARY KEY auto_increment,
    wiek int NOT NULL CHECK(wiek<15)
);

CREATE TABLE Praca (
    Id PRIMARY KEY auto_increment,
    nazwa varchar(50) UNIQUE
);

ALTER TABLE Ludzie
ADD praca int

ALTER TABLE Ludzie
ADD CONSTRAINT fk_praca FOREIGN KEY(praca) REFERENCES Praca(Id)
ON DELETE SET NULL;


CREATE TABLE KINO(
    id int PRIMARY KEY auto_increment,
     nazwa varchar(50) 
);

CREATE TABLE Film(
    id int PRIMARY KEY auto_increment,
    rezyser varchar(60)
);

CREATE TABLE FiKO(
    id int PRIMARY KEY auto_increment,
    id_film int,
    if_kino int
);

ALTER TABLE Fiko
ADD CONSTRAINT fk_film FOREIGN KEY (id_film) REFERENCES Film(Id);

ALTER TABLE Fiko
ADD CONSTRAINT fk_kino FOREIGN KEY (if_kino) REFERENCES Kino(Id);