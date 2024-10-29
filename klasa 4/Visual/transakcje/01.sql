UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
START TRANSACTION
COMMIT
ROLLBACK
Wersja podstawowa:

1. Utwórz tabelę Dane z jednym polem typu int o nazwie numer .

CREATE Table Dane(
numer int
);

2. Zapisz w tabeli liczbę 10.

INSERT INTO dane
VALUES(1);

3. rozpocznij transakcję

START TRANSACTION

4. Zmień liczbę na 20

UPDATE Dane
SET numer=20;

5. Wycofaj się z transakcji.

ROLLBACK;

6. jaka jest zawartość tabeli Dane?

SELECT * from Dane;
-- zawartość to 1

7. rozpocznij transakcję

START TRANSACTION;

8. zmień liczbę na 30

UPDATE Dane
SET numer=30;

9. zatwierdź transakcję

COMMIT;

10. Jaka jest zawartość tabeli Dane?

-----------30----------------

11 Utwórz tabelę Dane z dwoma polami typu int: numer i kwota. Wpisz dwa wiersze: (1, 10) oraz (2, 20).

CREATE TABLE Dane2(
numer int,
kwota int
);
INSERT INTO Dane2
VALUES (1,10),(2,20);

12. Otwórz dwa wiersze okna poleceń Rozpocznij w obu transakcje.

START TRANSACTION;

13. Pokaż zawartość tabeli dane;

SELECT * FROM Dane2;

14. W pierwszej zmodyfikuj kwotę w wierszu o numerze 1, w drugiej kwotę w wierszu o numerze 2 (udało się? ____ )

UPDATE Dane2
SET kwota=100
WHERE numer=1;

UPDATE Dane2
SET kwota=200
WHERE numer=2;

15. Zatwierdź transakcję w tym oknie, w którym jest to możliwe. Co się stało w drugim oknie?

16. Jaka jest zawartość tabeli Dane?

17. Zatwierdź drugą transakcję. Jaka jest zawartość tabeli Dane?