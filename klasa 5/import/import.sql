CREATE TABLE panstwa(
    Panstwo varchar(255) PRIMARY KEY,
    Kontynent varchar(255),
    Populacja decimal(5,1)
);

CREATE TABLE jezyki(
    jezyk varchar(255) PRIMARY KEY,
    Rodzina varchar(255)
);

CREATE TABLE uzytkownicy(
    panstwo varchar(255),
    jezyk varchar(255),
    uzytkownicy decimal(5,1),
    Urzedowy char(3),
    PRIMARY KEY(panstwo,jezyk)
);

LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\uzytkownicy.txt'
INTO TABLE uzytkownicy
FIELDS TERMINATED BY  '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(panstwo,jezyk,@uzytkownicy,Urzedowy)
SET uzytkownicy=REPLACE(@uzytkownicy,',','.');

LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\jezyki.txt'
INTO TABLE jezyki
FIELDS TERMINATED BY  '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\panstwa.txt'
INTO TABLE panstwa
FIELDS TERMINATED BY  '\t'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Panstwo,Kontynent,@Populacja)
SET Populacja=REPLACE(@Populacja,',','.');