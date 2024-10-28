1. Utwórz użytkowników jeden i dwa (bez hasła).
CREATE USER 'jeden'@'localhost';
CREATE USER 'dwa'@'localhost';
 A. Nadaj uprawnienia wprowadzania, zmiany i usuwania danych w całej bazie komis dla użytkownika jeden
GRANT INSERT,UPDATE,DELETE,SELECT ON jk_komis.* TO 'jeden';
B. nadaj wszystkie uprawnienia do tabeli Auta użytkownikowi dwa
GRANT ALL ON jk_komis.auta TO 'dwa';
C. odbierz użytkownikowi jeden prawa usuwania danych 
REVOKE DELETE ON jk_komis.* FROM 'jeden';
D. odbierz wszystkie uprawnienia użytkownikowi dwa do tabeli Auta
REVOKE ALL ON jk_komis.auta FROM 'dwa';
2. 
A. Zaloguj się jako użytkownik jeden i ustaw hasło 'zaq1@WSX'
SET PASSWORD FOR 'jeden'@'localhost'= password('zaq1@WSX');
SET PASSWORD = PASSWORD('zaq1@WSX');
B. Ustaw hasło dla użytkownika dwa na 'zaq1@WSX'
SET PASSWORD FOR 'dwa'@'localhost'= password('zaq1@WSX');
SET PASSWORD = PASSWORD('zaq1@WSX');
C. z poziomu konta root zmień hasło dla użytkownika jeden na 'haslo'
SET password for 'jeden'@'localhost' = PASSWORD('haslo');