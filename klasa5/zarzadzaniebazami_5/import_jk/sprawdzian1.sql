1. Utwórz bazę danych samochody_inicjały
CREATE DATABASE samochody_jk;
2. Za pomocą phpMyAdmin zaimportuj do bazy tabelę osoby z pliku osoby.txt. 
3. Z poziomu wiersza poleceń utwórz tabelę auta, aby pasowała do danych z pliku auta.txt.
4. Z poziomu wiersza poleceń zaimportuj tabelę auta z pliku auta.txt
LOAD DATA LOCAL INFILE 'C:\\Users\\Jakub_K\\Downloads\\auta (1).txt'
INTO TABLE auta
FIELDS TERMINATED BY ' '
LINES TERMINATED BY '\r\n';
5. Z poziomu wiersza poleceń wyeksportuj do pliku samochody.csv marka,rok_produkcji, Dane oddziel za pomocą średnika. 
SELECT marka,rok_produkcji FROM auta INTO OUTFILE 'C:\\Users\\Jakub_K\\Downloads\\samochody.csv'
FIELDS TERMINATED BY ';';

6. Wykonaj zrzut bazy danych ( z poziomu wiersza poleceń do pliku samochody_imie_nazwisko.sql)

mysqldump -u root samochody_jk>samochody_jakub_kopiszka.sql

7. Do pliku osoby.sql wykonaj zrzut tabeli osoby (z poziomu wiersza poleceń)
mysqldump -u root samochody_jk osoby>osoby.sql

8. Usuń z bazy danych samochody_inicjały tabelę osoby
DROP TABLE osoby;

9. Z poziomu wiersza poleceń za pomocą przekierowania odtwórz w bazie danych tabelę osoby(przekieruj plik z kopią bazy danych)

mysql -u root samochody_jk<osoby.sql



CREATE TABLE osoby (
    id_osoby int,
    imie varchar(200),
    nazwisko varchar(200)
);

CREATE TABLE auta (
    numer_rejestracyjny char(8),
    marka varchar(30),
    rok_produkcji int,
    numer_pesel char(11)
);


