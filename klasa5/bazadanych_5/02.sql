CREATE TABLE Dzialy (
    kod int PRIMARY KEY,
    nazwa varchar(255),
    budzet real
);
CREATE TABLE Pracownicy (
    ID int PRIMARY KEY,
    imie varchar(255) NOT NULL,
    nazwisko varchar(255) NOT NULL,
    dzial int,
    FOREIGN KEY (dzial) REFERENCES Dzialy(kod)
);
1. Wyświetl nazwiska wszystkich pracowników
SELECT nazwisko
FROM Pracownicy;

2. Wyświetl nazwiska wszystkich pracowników, ale tak, aby się nie powtarzały (DISTINCT) 
SELECT DISTINCT nazwisko
FROM Pracownicy;

3. Wyświetl dane wszystkich pracowników o nazwisku  "Smith".
SELECT nazwisko,imie,id,dzial 
FROM pracownicy 
WHERE nazwisko='Smith'; 

4. Wyświetl wszystkie dane pracowników o nazwisku  "Smith" lub "Doe".
SELECT *
FROM pracownicy
WHERE nazwisko='Smith' OR nazwisko='Doe';

5. Wyświetl wszystkie dane o pracownikach, którzy pracują w dziale 14.
SELECT *
FROM Pracownicy
WHERE dzial = 14;

6. Wyświetl wszystkie dane o pracownikach z działu 37 i działu 77.
SELECT *
FROM Pracownicy
WHERE dzial = 37 OR dzial = 77;

7. Wyświetl wszystkie dane o pracownikach, których nazwisko zaczyna się na literę  "S".
SELECT *
FROM pracownicy 
WHERE nazwisko like 'S%';

8. Wyświetl sumę budżetów wszystkich działów.
SELECT SUM(budzet)
FROM dzialy; 

9. Dla każdego działu wyświetl liczbę pracowników (tylko kod działu i liczbę pracowników)
SELECT dzial, COUNT(*)
FROM pracownicy
GROUP BY dzial;

10. Wyświetl wszystkie dane o pracownikach, łącznie z danymi o działach, w których pracują. 
SELECT * FROM pracownicy
    INNER JOIN dzialy ON pracownicy.dzial=dzialy.kod;

11. Wyświetl imię i nazwisko każdego pracownika razem z nazwą i budżetem działu, w którym pracownik pracuje. 


12. Wyświetl imiona i nazwiska pracowników, którzy pracują w działach o budżetach większych niż  $60,000 (czyli sześćdziesiąt tysięcy)
SELECT imie,nazwisko,budzet
FROM pracownicy
    INNER JOIN dzialy ON pracownicy.dzial=dzialy.kod
WHERE budzet > 60,000;

13. Wyświetl działy z budżetem większym niż średni budżet wszystkich działów. 
SELECT nazwa
FROM dzialy
WHERE budzet>(SELECT avg(budzet) FROM )

14. Wyświetl nazwy działów z więcej niż dwoma pracownikami
 SELECT nazwa
 FROM pracownicy
    INNER JOIN dzialy ON pracownicy.dzial=dzialy.kod
 GROUP BY dzial
 HAVING count(*)>2;

15. Wyświetl imiona i nazwiska pracowników, pracujących w działach (dziale) z najmniejszym budżetem.
SELECT imie, nazwisko 
FROM pracownicy
    INNER JOIN dzialy on pracownicy.dzial=dzialy.kod
WHERE budzet = (SELECT MIN(budzet) FROM dzialy);

16. Dodaj nowy dział  "Quality Assurance" z budżetem $40,000 i kodem 10.
INSERT INTO dzialy(kod,nazwa,budzet)
VALUES (10,'Quality Assurance',40000)

17. Dodaj pracownika "Mary Moore", pracującą w dziale o kodzie 10, z ID 847-21-9811.
INSERT INTO Pracownicy(dzial,imie,nazwisko)
VALUES (10,'Mary','Moore')

18. Zmniejsz budżet wszystkich działów o 10%.
UPDATE dzialy
SET budzet = budzet*0.9;

19. przenieś pracowników z działu Research  do działu IT  .
UPDATE Pracownicy
SET dzial=14
WHERE dzial=77;

20. Usuń wszystkich pracowników pracujących w dziale   IT.
UPDATE Pracownicy
SET dzial=(SELECT kod FROM dzialy WHERE mazwa='IT')
WHERE dzial=(SELECT kod FROM dzialy WHERE nazwa='Research')

21. Usuń wszystkich pracowników, którzy pracują w działach z budżetem większym bądź równym $60,000 (60 tysięcy)
DELETE FROM Pracownicy
WHERE dzial IN (SELECT kod FROM dzialy WHERE budzet >= 60000);

22. Usuń wszystkich pracowników
TRUNCATE Pracownicy;