CREATE TABLE Jezyki(
    id int auto_increment PRIMARY KEY,
    jezyk varchar(20) NOT NULL UNIQUE
);
CREATE TABLE Ludzie(
    id int auto_increment PRIMARY KEY,
    imie varchar(30) NOT NULL,
    nazwisko varchar(50) NOT NULL,
    wiek int CHECK (wiek > 18)
);

ALTER TABLE Ludzie
ADD jezyk int,
ADD CONSTRAINT fk_jezyki FOREIGN KEY(jezyk) REFERENCES Jezyki(id);

ALTER TABLE Jezyki
ADD CONSTRAINT ch_jezyki 
CHECK (jezyk IN ('angielski','francuski','niemiecki'));