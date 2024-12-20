1. Utwórz bazę danych wycieczki_inicjały

2. Utwórz tabelę osoby

 

id_osoby całkowity, klucz podstawowy
imie tekst
nazwisko tekst
3. Utwórz tabelę wycieczki

 

id_wycieczki całkowity, klucz podstawowy
kraj tekst
miejsce tekst
wylot tekst
data_od data
data_do data
cena całkowitym dane powinny być większe od zera
4, Utwórz tabelę rezerwacje 

 

id_rezerwacji całkowity, klucz podstawowy
id_osoby całkowity
id_wycieczki całkowity
dorośli całkowity
dzieci całkowity
5. 

 

A. Z wiersza poleceń zaimportuj do tabeli osoby dane z pliku osoby.txt (oddzielone tabulatorem  \t, zignoruj pierwszy wiersz zawierający nazwy pól)
LOAD DATA LOCAL INFILE "C:\\Users\\Jakub_K\\Downloads\\wycieczki.txt" INTO TABLE wycieczki 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES; 

B. Z wiersza poleceń zaimportuj do tabeli wycieczki dane z pliku wycieczki.txt (oddzielone tabulatorem, zignoruj pierwszy wiersz zawierający nazwy pól)
LOAD DATA LOCAL INFILE "C:\\Users\\Jakub_K\\Downloads\\osoby.txt" INTO TABLE osoby 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

C. Z wiersza poleceń zaimportuj do tabeli rezerwacje dane z pliku rezerwacje.txt (oddzielone tabulatorem, zignoruj pierwszy wiersz zawierający nazwy pól)
LOAD DATA LOCAL INFILE "C:\\Users\\Jakub_K\\Downloads\\rezerwacje.txt" INTO TABLE rezerwacje 
FIELDS TERMINATED BY '\t'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

6.

 

A. Z wiersza poleceń wyeksportuj wszystkie pola z tabeli osoby do pliku osoby_inicjały.csv. Pola powinny być oddzielone średnikiem, teksty ujęte w cudzysłów, znak kończący linie '\n'. Pokaż na zrzucie także początek zawartości pliku. Sprawdź wygląd w systemowym notatniku i dowolnym innym programie do edycji plików tekstowych (Notepad+, Sublime, Brackets)
SELECT * FROM osoby
INTO OUTFILE "C:\\Users\\Jakub_K\\Downloads\\osoby.csv"
FIELDS TERMINATED BY '\t'
ENCLOSED BY '"'
LINES TERMINATED BY '\n';

B. Z wiersza poleceń wyeksportuj dane z tabeli wycieczki (tylko kraj, miejsce i wylot) do pliku wycieczki_inicjały.csv. Pola powinny być oddzielone średnikiem, teksty ujęte w cudzysłów, znak kończący linie '\r\n'. Pokaż na zrzucie także początek zawartości pliku. Sprawdź wygląd w systemowym notatniku i dowolnym innym programie do edycji plików tekstowych 
SELECT * FROM osoby
INTO OUTFILE "C:\\Users\\Jakub_K\\Downloads\\wycieczki.csv"
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n';

7. Wykonaj zrzut bazy danych (gorącą kopię logiczną)  do pliku wycieczka.sql
mysqldump -u root jk_wycieczki>wycieczki.sql

8. Do pliku osoby.sql wykonaj zrzut tabeli osoby(z poziomu wiersza poleceń)mysqldump -u root jk_wycieczki osoby>osoby.sql

9. Usuń tabelę osoby
DROP Table Osoby

10. Zaimportuj z pliku osoby.sql (z poziomu wiersza poleceń)

11. Usuń bazę danych puchar_imie_nazwisko. 

12. Z poziomu wiersza poleceń za pomocą przekierowania odtwórz bazę danych (przekieruj plik z kopią bazy