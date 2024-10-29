1. Utwórz nową bazę danych. 

Przeimportuj do niej dane z arkusza 

Obliczenia dla wszystkich rekordów
2. Policz ile jest pozycji w katalogu.
SELECT COUNT(*) FROM katalog;

3. Jaki jest średni rok wydania płyty.
SELECT avg(rok) FROM katalog;

4. Z którego roku najwcześniej pochodzą płyty.
SELECT min(rok) FROM katalog 
WHERE rok is not null and rok !='####';

Obliczenia w grupach rekordów
5. Zapisz kwerendę podającą ile jest płyt poszczególnych wykonawców.
SELECT ZESPOL,count(*) FROM katalog
GROUP BY ZESPOL

6. Zapisz kwerendę podającą ile jest płyt z poszczególnych lat.
SELECT rok, count(*) FROM katalog
GROUP BY rok;

7. Zapisz kwerendę podającą dla poszczególnych wykonawców rok wydania pierwszej (najwcześniejszej płyty).
SELECT ZESPOL, min(rok) FROM katalog
GROUP BY ZESPOL

Określenie kryterium (najpierw obliczanie potem kryterium)

8. Zapisz kwerendę podającą wykonawców (wraz z ilością płyt), którzy mają więcej niż 4 płyty, posortowanych rosnąco według nazwy wykonawców

9. Zapisz kwerendę podającą wykonawców, którzy swoje pierwsze płyty wydali w roku 1969 lub 1977.

Określenie kryterium (najpierw kryteria, potem obliczanie)

10. Utwórz kwerendę podającą ile płyt poszczególni wykonawcy wydali w latach 70 –tych (80-tych). 

11. Utwórz kwerendę podającą ile kilku płytowych albumów wydali poszczególni wykonawcy (tytuły zawierające „Disc ” lub „disc ” lub „vol. „).