-- Wyświetla wszystkie książki wypożyczone przez  czytelnika Adam Milek (kiedykolwiek, nie tylko aktualnie) w postaci osobnych paragrafów. ( tytuł)

select tytul 
from ksiazki 
inner join wypozyczenia
 on ksiazki.id = wypozyczenia.id_ksiazka
inner join czytelnicy
 on wypozyczenia.id_czytelnik = czytelnicy.id
where imie = 'Adam' and nazwisko = 'Milek';

--wyswietli id i nazwa wydawnictwa z tabeli wydawnictwa 

SELECT id,nazwa
FROM wydawnictwa;

-- wyswietli tytuly ksiazek wydawnictwa o id 1 

SELECT tytul
FROM ksiazki
WHERE id_wydawnictwo=1;