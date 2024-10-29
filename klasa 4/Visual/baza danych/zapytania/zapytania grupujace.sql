1. policz ilość wszystkich rekordów (zapisów) ;
select count(*) 
from towar;

2. z opisami - największą i najmniejsza CENĘ, oraz średnią arytmetyczną CENY
select min(cena), max(cena), avg(cena) 
from towar;

3. sumę wartości towarów, średnią arytmetyczną wartości (ILOSC * CENA) ;
select sum(ilosc*cena), avg(ilosc*cena) 
from towar;

4. policz średnią arytmetyczną ceny, a później policz ręcznie średnią arytmetyczną ceny = suma CENY / ilość rekordów. 
select avg(cena), sum(cena)/count(cena) 
from towar;

5. Wyświetl średnią cenę wszystkich towarów o cenie pomiędzy 10 a 1000 zł
select avg(cena) as srednia 
from towar where cena BETWEEN 10 and 1000;

6. wyświetl sumę masy (ilosc * waga) , ale tylko dla rodzaju  GD i TR
select sum(ilosc*waga) 
from towar where rodzaj IN ('GD','TR');

7. Wyświetl łączną ilość wszystkich zamówionych produktów,
select sum(ilosc) 
from towar;

8. wyświetl największą wartość (ilosc * cena)  towarów wyprodukowanych w 1997 roku
select max(ilosc*cena) 
from towar 
where DATA_PROD BETWEEN '1997-01-01' AND '1997-12-31'

9. policz ile rekordów jest w każdym RODZAJU 
select rodzaj, count(*)
from towar
GROUP BY rodzaj;

10. policz ile rekordów jest w każdym RODZAJU, posortuj malejąco wg RODZAJU;
select rodzaj, count(rodzaj) 
from towar 
GROUP BY rodzaj
ORDER BY count(rodzaj) desc;

11. policz sumę i średnią arytmetyczną wartości (ilość * cena) i minimalnej i maksymalnej masie (ilość * waga) dla każdego RODZAJU towaru ;
select rodzaj, sum(ilosc*cena), avg(ilosc*cena), min(ilosc*cena), max(ilosc*cena) from towar group by rodzaj;

12. policz ile rekordów jest w każdym RODZAJU - wyświetl ilości rekordów większe od 15 ;
select rodzaj, COUNT(*) 
from towar 
GROUP BY rodzaj
HAVING count(*)>15;

13. policz średnią arytmetyczną ceny dla każdego RODZAJU - wyświetl średnie mniejsze od 500;
select rodzaj, avg(cena) 
from towar
GROUP BY rodzaj
HAVING avg(cena)>500;

14. dla każdego rodzaju towarów wyświetl ilość rekordów, średnią wagę, średnią ilość, maksymalną i minimalną cenę dla ilości rekordów w RODZAJU mniejszej od 15.
select rodzaj,count(*), avg(waga), avg(ilosc), max(cena), min(cena)
from towar
GROUP BY rodzaj
having count(*) < 15;

15. dla każdego rodzaju towarów wyświetl maksymalną cenę dla ilości rekordów w RODZAJU większe od 10. Uwzględnij tylko towary zamówione.
select rodzaj, max(cena)
from towar
WHERE zamow='Prawda'
GROUP by rodzaj
having COUNT(*)>10;

16. Oblicz minimalną cenę towarów niezamówionych dla każdego rodzaju. 
select rodzaj, min(cena)
from towar 
where zamow !='Prawda'
group by rodzaj

17. oblicz średnią cenę towarów zamówionych (zamow) i nie zamówionych
select zamow, avg(cena)
from towar
group by zamow;

18. oblicz średnią cenę towarów wyprodukowanych w 1999 roku  dla poszczególnych rodzajów towaru
select rodzaj, avg(cena)
from towar 
where year(DATA_PROD)=1999
group by rodzaj;
