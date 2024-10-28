CREATE TABLE Producenci (
    kod int auto_increment PRIMARY KEY,
    nazwa varchar(50) NOT NULL 
);

CREATE TABLE Produkty (
    kod int auto_increment PRIMARY KEY,
    nazwa varchar(100) NOT NULL,
    cena dec(7,2),
    producent int,
    FOREIGN KEY (producent) REFERENCES Producenci(kod)
);
1. Wyświetl nazwy wszystkich produktów|
SELECT nazwa
FROM produkty;

2. Wyświetl nazwy i ceny wszystkich produktów w sklepie 
SELECT nazwa,cena
FROM Produkty;

3. Wyświetl nazwy produktów o cenie mniejszej lub równej $200.
SELECT nazwa,cena
FROM Produkty
WHERE cena <= 200;

4. Wyświetl wszystkie produkty o cenie pomiędzy $60 i $120.
SELECT nazwa,cena
FROM Produkty
WHERE cena BETWEEN 60 AND 120;

5. Wyświetl nazwy produktów i ceny w centach (tzn. pomnóż ceny przez 100) 
SELECT nazwa,(cena*100)
FROM Produkty

6. Wyświetl średnią cenę wszystkich produktów 
SELECT AVG(cena)
FROM produkty;

7. Wyświetl średną ceną wszystkich produktów producenta o kodzie 2 
SELECT nazwa, avg(cena)
FROM produkty
WHERE producent=2;

8. Ile jest produktów o cenie większej lub równiej $180.
SELECT COUNT(*)
FROM produkty
WHERE cena >= 180;

9. Wyświetl nazwy i ceny wszystkich produktów o cenie większej lub równej  $180, i posortuj je najpierw według ceny (rosnąco), a następnie według nazwy (malejąco)
SELECT nazwa,cena 
FROM Produkty
WHERE cena >=180
ORDER BY cena asc, nazwa desc;

10. Wyświetl wszystkie dane z z tabeli produkty oraz wszystkie dane z tabeli producenci 
SELECT * 
FROM Produkty 
INNER JOIN Producenci ON Produkty.producent=Producenci.kod;

11. Wyświetl nazwę produktu, cenę i nazwę producenta dla wszystkich produktów 
SELECT Produkty.nazwa,cena,Producenci.nazwa
FROM Produkty
INNER JOIN Producenci ON Produkty.kod=Producenci.kod;

12. Wyświetl średnią cenę produktów każdego producenta, pokazując tylko kod producenta
SELECT Producenci.kod
FROM Producenci
INNER JOIN Produkty ON Producenci.nazwa=Produkty.nazwa

13. Wyświetl średnią cenę produktów każdego producenta, pokazując nazwę producenta 

14. Wyświetl nazwę każdego producenta, którego produkty mają średnią cenę większą lub równą $150

15. Wyświetl nazwę i cenę najtańszego produktu  (LIMIT lub podzapytanie)
SELECT nazwa, cena
FROM produkty
ORDER BY cena ASC
LIMIT 1;

16.Wyświetl nazwę każdego producenta razem z nazwą i ceną jego najdroższego produktu 

17. Dodaj nowy produkt:  Loudspeakers, $70, producent 2.
INSERT INTO Produkty(nazwa,cena,producent)
VALUES ('Loudspeakers',70,2);

18. Zmień nazwę produktu o kodzie 8 na "Laser Printer".
UPDATE produkty
SET nazwa = 'Laser Printer'
WHERE kod = 8;

19. Wykonaj 10% przecenę każdego produktu 
UPDATE Produkty
SET cena=cena*0.9;

20. Wykonaj 10% przecenę każdego produktu o cenie większej lub równiej $120.
UPDATE Produkty
SET cena=cena*0.9
WHERE cena>=120;