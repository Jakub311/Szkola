1. Wykonaj kopię logiczną bazy biblioteka w postaci pliku z poleceniami sql (zrzut bazy danych, dump) na dwa sposoby:

mysqldump -u root biblioteka>biblioteka_1.sql

A. z poziomu wiersza poleceń
B. korzystając z  phpMyAdmin

2.

A. Wykonaj z wiersza poleceń (mysqldump) kopię tabeli autorzy z bazy biblioteka  w postaci pliku z poleceniami sql . Pokaż, jak wygląda taki pliki w notatniku.

mysqldump -u root biblioteka autorzy>biblioteka_autorzy.sql

B. Zaloguj się do bazy i za pomocą zapytania SQL usuń tabelę autorzy.
DROP TABLE autorzy;


C. Odtwórz tabelę z kopii. 

mysql -u root biblioteka < biblioteka_autorzy.sql

3. 

A. Wyświetl pomoc dla polecenia mysqldump --(jak w linuksie --help ). 

mysqldump -u root --help

B. Pokaż na zrzucie jaka opcja odpowiada za wykonanie kopii wszystkich baz danych 
C. Użyj tej opcji do wykonania kopii całości swoich baz

mysqldump -u root _A > all-biblioteka.sql 