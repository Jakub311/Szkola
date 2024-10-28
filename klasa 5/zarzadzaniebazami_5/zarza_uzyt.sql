CREATE DATABASE jk_crm;
1.Utwórz użytkowników: dev1 z hasłem 1234 oraz read1, write1 bez hasła  (dev2, read2, write2)
CREATE USER 'dev2'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'read2'@'localhost';
CREATE USER 'write2'@'localhost';

2. Zmodyfikuj ustawienia kont:
A. hasło dla użytkownika dev powinno wygasnąć za miesiąc
ALTER USER 'dev2'@'localhost'
PASSWORD EXPIRE INTERVAL 30 DAY;
B. zablokuj konto read
ALTER USER 'read2'@'localhost'
ACCOUNT LOCK;
C. ustaw hasło dla konta write
SET PASSWORD FOR 'write2'@'localhost' = PASSWORD('1234');
D. użytkownik write powinien mieć prawo tylko do 100 operacji UPDATE na godzinę
ALTER USER 'write2'@'localhost' WITH
MAX_UPDATES_PER_HOUR 100;
E. odblokuj konto read
ALTER USER 'read2'@'localhost'
ACCOUNT UNLOCK;

3. Określ uprawnienia:
Nadaj wszystkie prawa dla użytkownika dev dla wszystkich tabel w bazie crm
GRANT ALL ON jk_crm.* TO 'admin'@'localhost';
Daj prawo użytkownikowi write do modyfikowania struktury tabel w bazie crm
GRANT UPDATE ON jk_crm.* TO 'write2'@'localhost';
daj prawo użytkownikowi read do przeglądania oraz usuwania danych w tabeli customers w bazie crm
GRANT SELECT,DELETE ON jk_crm.customers TO 'read2'@'localhost';

4. Odbierz użytkownikowi read prawo do przeglądania danych w tabeli customers
REVOKE SELECT ON jk_crm.customers FROM 'read2'@'localhost';

5. Zmień nazwę użytkownika dev na admin
RENAME USER 'dev2'@'localhost' TO 'admin'@'localhost';

6. Ustaw hasło użytkownikowi read '1234' (użyj set password)
SET PASSWORD FOR 'read2'@'localhost' = PASSWORD('1234');

7. Sprawdź uprawnienia:

A. użytkownika admin
SHOW grants FOR 'admin'@'localhost';
B. użytkownika write
SHOW GRANTS FOR 'write2'@'localhost';
8. Utwórz role write_customers oraz read_customers
CREATE ROLE 'write_customers'; 
CREATE ROLE 'read_customers'; 

9. Nadaj uprawnienia rolom:

A. write_customers prawa do wstawiania oraz modyfikowania wybranych rekordów
GRANT UPDATE,INSERT ON jk_crm.* TO 'write_customers';

B. read_customers z prawem do przeglądania tabeli customers
GRANT SELECT ON jk_crm.customers TO 'read_customers';

10. Przypisz role użytkownikom:

write_customers dla write
GRANT 'write_customers' TO 'write2'@'localhost';
read_customers dla read
GRANT 'read_customers' TO 'read2'@'localhost';

11. Sprawdź uprawnienia:

użytkownika write
SHOW GRANTS FOR 'write2'@'localhost';

użytkownika read (czy ma prawo do usuwania danych?) (MA)
SHOW GRANTS FOR 'read2'@'localhost';

roli write_customers;
SHOW GRANTS FOR 'write_customers';
roli read_customers
SHOW GRANTS FOR 'read_customers';

12. Zaloguj się jako read i sprawdź uprawnienia.
SHOW GRANTS;

czy użytkownik read ma prawo do przeglądania danych?
(NIE)
jeśli jest taka potrzeba użyj SET ROLE aby "włączyć" rolę
SET ROLE 'read_customers';
czy użytkownik read ma prawo do usunięcia klienta o id 1
DELETE FROM customers
WHERE id=1;

13. Z poziomu root ustaw jako domyślną rolę write_customers dla użytkownika write  (SET DEFAULT ROLE)
SET DEFAULT ROLE 'write_customers' FOR 'write2'@'localhost';

14. Zaloguj się jako write i sprawdź, czy możesz zmienić nazwisko klienta o id=2 na Tree 
SET ROLE 'write_customers';
GRANT SELECT ON jk_crm.* TO 'write2'@'localhost';

UPDATE customers
SET last_name='Tree'
WHERE id=2;

15. Usuń

A. rolę write_customers

B. Usuń użytkownika read