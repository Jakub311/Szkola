CREATE TABLE Filmy (
    Kod int auto_increment PRIMARY KEY,
    Tytul varchar(255),
    Rating varchar(255)
);
CREATE TABLE Kina (
    Kod int auto_increment PRIMARY KEY,
    Nazwa varchar(255) NOT NULL,
    Film int,
    FOREIGN KEY (Film) REFERENCES Filmy(kod)
);
1. Wyświetl tytuły wszystkich filmów
SELECT Tytul
FROM filmy;

2. Ile różnych poziomów ratingu jest zapisane w bazie? Wyświetl je (dane nie powinny się powtarzać). 
SELECT DISTINCT Rating
FROM Filmy;

3. Wyświetl wszystkie filmy z nieustalonym ratingiem.
SELECT Tytul
FROM Filmy
WHERE Rating IS NULL;

4. Wyświetl wszystkie  kina, w których aktualnie nie są wyświetlane żadne filmy. 
SELECT * FROM kina 
WHERE film IS NULL;

5. Wyświetl wszystkie dane o kinach i filmach, uwzględnij tylko dane o filmach, które są wyświetlane w tych kinach i dane o kinach, w których są wyświetlane jakieś filmy. 
SELECT * FROM kina 
JOIN filmy ON kina.film = filmy.kod;

6. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te kina, w których aktualnie nie są wyświetlane żadne filmy.
SELECT * FROM kina 
    RIGHT JOIN filmy ON kina.film = filmy.kod;

7. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te filmy, które nie są aktualnie wyświetlane w żadnych kinach. 
SELECT * FROM kina 
    LEFT JOIN filmy ON kina.film = filmy.kod;

8. Wyświetl wszystkie dane o kinach i filmach, uwzględnij w zestawieniu także te kina, w których aktualnie nie są wyświetlane żadne filmy oraz  te filmy, które nie są aktualnie wyświetlane w żadnych kinach. 
SELECT * FROM kina 
    RIGHT JOIN filmy ON kina.film = filmy.kod
UNION
    SELECT * FROM kina 
    LEFT JOIN filmy ON kina.film = filmy.kod;

9. Dodaj film  "One, Two, Three" (bez ratingu)
 INSERT INTO filmy (tytul)
 VALUES ('One, Two, Three');

10. Ustal rating wszystkich filmów bez ratingu na  "G".
UPDATE filmy
SET rating = 'G'
WHERE rating IS NULL;

11. usuń kina wyświetlające filmy z ratingiem "NC-17".
DELETE FROM kina
WHERE film IN (SELECT kod FROM filmy WHERE rating = 'NC-17');