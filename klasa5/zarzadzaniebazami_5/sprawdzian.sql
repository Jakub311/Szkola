Utwórz bazę danych imie_nazwisko, Pobierz i wykonaj w nowej bazie danych skrypt tworzący tabele baza.sql. Udokumentuj na zrzutach wykonanie poniższych zadań (polecenie z efektem). 

 

1. Utwórz użytkownika szef z hasłem '1234' i z prawem do przeglądania wszystkich tabel w bazie Imie_nazwisko
CREATE USER 'szef'@'localhost' IDENTIFIED BY '1234';
GRANT SELECT ON jakub_kopiszka.* TO 'szef'@'localhost';
 
2. utwórz użytkownika doradca z hasłem 'zaq1@WSX' i z prawem do modyfikowania, wstawiania i usuwania danych w tabelach lowisko oraz ryby (użytkownik powinien mieć prawo do wykonania zadania 5)
CREATE USER 'doradca'@'localhost' IDENTIFIED BY 'zaq1@WSX';
GRANT UPDATE,INSERT,DELETE ON jakub_kopiszka.lowisko TO 'doradca'@'localhost';
GRANT UPDATE,INSERT,DELETE,SELECT  ON jakub_kopiszka.ryby TO 'doradca'@'localhost';
 
3. Odbierz doradcy prawo do modyfikowania danych w tabeli lowisko
REVOKE UPDATE ON jakub_kopiszka.lowisko FROM 'doradca'@'localhost';
 
4. Zaloguj się jako szef i  wyświetl okres ochronny szczupaka
SELECT nazwa,od_miesiaca,do_miesiaca
FROM ryby
INNER JOIN okres_ochronny ON ryby.id=okres_ochronny.id
WHERE okres_ochronny.id=1;
 
5. Zaloguj się jako doradca i usuń z tabeli ryby szczupaka (musi się powieść)
DELETE FROM ryby
WHERE nazwa='Szczupak';
 
6. Zaloguj się jako szef i zmień swoje hasło na 'asdf'
SET PASSWORD = PASSWORD('asdf');

7. Wróć na konto root. Utwórz rolę przegladanie
CREATE ROLE 'przegladanie';
 
8. Nadaj roli przegladanie prawo do przeglądania wszystkich tabel w bazie imie_nazwisko
GRANT SELECT ON jakub_kopiszka.* TO 'przegladanie';

9. Użytkownikowi szef przydziel prawo do roli przegladanie
GRANT 'przegladanie' TO 'szef'@'localhost';

10. Usuń użytkownika doradca
DROP USER 'doradca'@'localhost';