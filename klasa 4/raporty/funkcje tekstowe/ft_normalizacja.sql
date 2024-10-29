ALTER TABLE my_contacts
ADD city varchar(255),
ADD state char(2);

SELECT location, city, state
FROM my_contacts;

SELECT location, RIGHT(location,2) AS state, SUBSTRING_INDEX(location, ',',1) as City
FROM my_contacts;

UPDATE my_contacts
SET City = SUBSTRING_INDEX(location, ',',1),
    State = RIGHT(location,2);

ALTER TABLE my_contacts
DROP location;

0. dodaj klucz do tabeli kontakty
ALTER TABLE my_contacts
ADD ID int PRIMARY KEY auto_increment FIRST;

1. podział zainteresowań, z uwagi na możliwość uszkodzenia danych, zabezpiecz się transakcją

A. dodaj nowe kolumny zainteresowanie1, zainteresowanie2, zainsteresowanie3
ALTER TABLE my_contacts
ADD i1 varchar(250),
ADD i2 varchar(250),
ADD i3 varchar(250);

B. do kolumny zainteresowanie1 wstaw pierwsze zainteresowanie z kolumny zainteresowania. Dane są oddzielone przecinkiem, użyj substring_index
SELECT interests, SUBSTRING_INDEX(interests, ',', 1)
FROM my_contacts;

UPDATE my_contacts
SET i1=SUBSTRING_INDEX(interests, ',', 1);
C. usuń z kolumny zainteresowanie pierwsze zainteresowanie. Wstaw do pola zaintersowanie wartość od pozycji długość pierwszego zainteresowania+2, użyj substr, length i trim
D. powtórz powyższe kroki, a przenieść pozostałe zainteresowania do kolumny zainteresowanie2 i zaintersowanie3
E. usuń kolumnę zainteresowania
2. nowa tabela słownikowa z zainteresowaniami

A. utwórz nową tabelę słownikową Zainteresowania z nazwami zainteresowań wybranymi z  z pół zainteresowanie1. zainteresowanie2, zainteresowanie3 tabeli moje_kontakty
B. dodaj pole klucza podstawowego id z autoinkrementacją. 
3. tabela pośrednicząca kto_jakie 

A. utwórz tabelę kto_jakie z polami: kto i jakie, pola całkowite, klucz na obu polach
B. wystaw do niej id kontaktu i id zainteresowania dla wierszy, w których zainteresowanie1 jest równe nazwie zainteresowania
C. powtórz dla kolumn zaintersowanie2 i zainteresowanie3 
4. usuń zbędne kolumny z tabeli moje_kontakty