1. Utwórz bazę danych samochody_imie_nazwisko
CREATE DATABASE jk_samochody;
2. Za pomocą phpMyAdmin zaimportuj do bazy tabelę osoby z pliku osoby.txt. 
3. Z poziomu wiersza poleceń utwórz tabelę auta, aby pasowała do danych z pliku auta.txt.
CREATE TABLE auta(
    rejestracja varchar(30),
    marka varchar(70),
    rok_produkcji int,
    pesel char(11)
);
4. Z poziomu wiersza poleceń zaimportuj tabelę auta z pliku auta.txt
LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\auta.txt'
INTO TABLE auta
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\r\n';
5. Z poziomu wiersza poleceń wyeksportuj do pliku samochody.txt markę i rok produkcji samochodów (było:  koszty.txt daty wypadków i wysokości straty.) Dane oddziel za pomocą średnika. 
SELECT marka,rok_produkcji FROM auta
INTO OUTFILE "C:\\Users\\Jakub_K\\Downloads\\samochody.txt"
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n';
6. Wykonaj zrzut bazy danych (gorącą kopię logiczną) z poziomu phpMyAdmin oraz z poziomu wiersza poleceń do pliku samochody_imie_nazwisko.sql
7. Do pliku osoby.sql wykonaj zrzut tabeli osoby (z poziomu wiersza poleceń)
8. Usuń bazę danych samochody_imie_nazwisko. 
9. Z poziomu wiersza poleceń za pomocą przekierowania odtwórz bazę danych (przekieruj plik z kopią bazy danych)

LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\wypadki.txt'
INTO TABLE wypadki
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\n'
(id,data_wypadku,rejestracja,@strata)
SET strata=REPLACE(@strata,',','.');

CREATE TABLE wypadki (
    id int PRIMARY KEY,
    data_wypadku DATE,
    rejestracja char(7),
    strata dec(9,2)
);