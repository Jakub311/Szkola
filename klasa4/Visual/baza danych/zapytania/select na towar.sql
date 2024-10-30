1. Towary, których WAGA >150 kg;
select waga 
from Towar 
where waga >150;

2. całkowita wartość pola CENA jest trzycyfrowa;
select cena from towar where cena LIKE '___.__%';
select cena from towar where cena BETWEEN 100 AND 999;

3. 23% podatek od jednej sztuki wynosi więcej niż 750 zł;
select *from towar 
where cena *0.23 > 750;

4. CENA < 10 zł., lub CENA >10000 zł i równocześnie ILOSC < 5;
select cena,ilosc 
from towar 
where (cena < 10 OR cena >10000) AND ilosc < 5;

5. cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;
select cena,waga 
from towar 
where cena/waga < 10 AND cena/waga > 5;

6. całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;
select ilsoc,waga,cena 
from towar 
where (ilosc*waga) > cena AND (ilosc*waga) <(cena*3)

7. tylko ZAMÓWIONE towary, których waga =1;
select zamow,waga 
from towar 
where zamow='PRAWDA' 
AND waga=1;

8. nazwy towarów, których RODZAJ = NA i GD (również małymi literami);
select nazwa,rodzaj 
from towar 
where RODZAJ 
IN ('NA','GD');

9. wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;
select nazwa 
from towar
where nazwa 
NOT LIKE '%a%';

10. Wyprodukowane w 1997 roku;
select DATA_PROD 
from towar 
where DATA_PROD 
LIKE '1997-__-__';

11. (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;
select DATA_PROD,cena,waga 
from towar 
where DATA_PROD BETWEEN '1995-01-01' AND '1998-12-31' 
AND cena LIKE '__.__%' 
AND waga < 0.5;

12. jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;
select nazwa,rodzaj,cena 
from towar 
where cena 
BETWEEN 10 and 99;

13. rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;
select *from towar 
where cena BETWEEN 12.50 AND 35 
AND waga BETWEEN 0.5 AND 2.5;

14. jw. - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;
select *from towar 
where cena BETWEEN 12.50 AND 35 
AND waga BETWEEN 0.5 AND 2.5 
ORDER BY nazwa;


15. jw. posortowane malejąco wg NAZWY ; 
select nazwa,rodzaj,cena,ilosc 
from towar 
ORDER BY nazwa;

16. różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)
select DISTINCT rodzaj 
from towar;
