A.  Wprowadź ograniczenia na tabelę student:
nazwisko – niepusta kolumna,
nr_indeksu – unikatowa kolumna,
stypendium –nie może być niższe niż 1000zł,

ALTER TABLE student
MODIFY nazwisko varchar(20) NOT NULL,
MODIFY nr_indeksu int unique;

ALTER TABLE student
ADD Constraint ch_stypendium CHECK(stypendium>=1000)
 
B. Dodaj niepustą kolumnę imie (powinna znaleźć się za polem nazwisko).
ALTER TABLE student
ADD imie varchar(20) NOT NULL AFTER nazwisko;
 
C. Zmień typ pola stypendium tak, aby było możliwe wpisanie stypendium o wartości 10000
ALTER TABLE student
MODIFY stypendium dec(8,2)
 
D. Dodaj wartość domyślną dla stypendium: 1000

ALTER TABLE student
MODIFY stypendium dec(8,2) DEFAULT 1000;

2.  Dane są tabele:
CREATE TABLE dostawca(id_dostawca INT auto_increment PRIMARY KEY, nazwa VARCHAR(30));

CREATE TABLE towar(id_towar INT auto_increment PRIMARY KEY, kod_kreskowy INT, id_dostawca INT);
 
Zmodyfikuj powyższe tabele:
A. kolumna nazwa z tabeli dostawca powinna być unikatowa,
ALTER TABLE dostawca
MODIFY nazwa varchar(30) unique;
 
B. do tabeli towar dodaj niepustą kolumnę nazwa (za polem kod_kreskowy),
ALTER TABLE towar 
ADD nazwa varchar(30) NOT NULL AFTER kod_kreskowy;
 
C. kolumna kod_kreskowy w tabeli towar powinna być unikatowa,
ALTER table towar
MODIFY kod_kreskowy int unique;
 
D.  kolumna id_dostawca z tabeli towar jest kluczem obcym z tabeli dostawca.

ALTER table towar
ADD FOREIGN KEY (id_dostawca) REFERENCES dostawca(id_dostawca);
 
E. kolumna nazwa w tabeli dostawca powinna dopuszczać dłuższe nazwy (zmień typ)

ALTER TABLE dostawca
MODIFY nazwa varchar(100) unique;
 
3.  Dane są tabele: 
 CREATE TABLE kraj(id_kraj INT auto_increment PRIMARY KEY, nazwa VARCHAR(30));
CREATE TABLE gatunek(id_gatunek INT auto_increment PRIMARY KEY, nazwa VARCHAR(30));
CREATE TABLE zwierze(id_zwierze INT auto_increment PRIMARY KEY, id_gatunek INT, id_kraj INT, cena dec(6,2));
 
Zmodyfikuj powyższe tabele:
A. kolumny nazwa z tabel kraj i gatunek mają być niepuste i unikatowe,
ALTER TABLE kraj
MODIFY nazwa varchar(30) NOT NULL unique;

ALTER table gatunek
MODIFY nazwa varchar(30) NOT NULL unique;

B. W tabeli zwierze zmień nazwę kolumny id_gatunek na gatunek_id oraz id_kraj na kraj_id
ALTER TABLE zwierze
CHANGE id_gatunek gatunek_id int;

ALTER TABLE kraj
CHANGE id_kraj kraj_id int auto_increment;
 
C. kolumna gatunek_id z tabeli zwierze jest kluczem obcym z tabeli gatunek,
ALTER TABLE zwierze
ADD FOREIGN KEY (gatunek_id) REFERENCES gatunek(id_gatunek);
 
D. kolumna kraj_id z tabeli zwierze jest kluczem obcym z tabeli kraj
ALTER TABLE zwierze
ADD FOREIGN KEY (id_kraj) REFERENCES kraj(kraj_id);