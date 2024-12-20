1. Wyświetl aktualną datę. 
SELECT CURDATE();

2. wyświetl bieżący czas 
SELECT TIME(NOW());
SELECT CURTIME();

3, Ilu pracowników zatrudniono w poszczególnych miesiącach. MONTH(data)  (MONTHNAME)
SELECT imie, nazwisko, MONTHNAME(data_zatrudnienia), COUNT(*)
FROM Pracownicy
GROUP BY MONTHNAME(data_zatrudnienia);

4. Ile dni pracownicy byli zatrudnieni na poszczególnych stanowiskach (DATEDIFF(data1, data2) );  (historia_pracy)
SELECT stanowisko_ID, DATEDIFF(poczatek, koniec)
FROM historia_pracy;

5. Wyświetl datę zatrudnienia w formacie dzień-miesiąc-rok (DATE_FORMAT(data, format)
SELECT data_zatrudnienia, DATE_FORMAT(data_zatrudnienia, "%D-%M-%Y")
FROM pracownicy;

6. Pracownik o id 102 będzie pracował na stanowisku FI_MGR w dziale 20 od dzisiaj przez  miesiąc (DATE_ADD(data, interwał)
INSERT INTO historia_pracy(pracownik_ID, poczatek, koniec, stanowisko_ID)
VALUES(102, CURDATE(),DATE_ADD(CURDATE(), INTERVAL 1 MONTH), "FI_MGR");

7. Dodaj nowego pracownika, zatrudnionego dzisiaj (CURDATE())
INSERT INTO pracownicy(pracownik_ID, imie, nazwisko, data_zatrudnienia)
VALUES(1000 ,BLAZEJEK ,WOJTIS ,CURDATE())