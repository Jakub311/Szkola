NOW()

1. wyświetl aktualną datę i czas. 
SELECT NOW();

DATE(), TIME() - tylko  data lub tylko czas ze typu datetime


2. Wyświetl w jednej kolumnie aktualną datę, w drugiej aktualny czas (wykorzystaj funkcję now)
SELECT DATE(NOW());

CURDATE()

3. Wyświetl bieżący czas systemowy
SELECT CURDATE() AS DATA;

DATE_FORMAT(data, tekst_formatujący) %m  %d  %Y

4. Wyświetl aktualna date w formacie amerykańskim (miesiąc/dzień/rok)
SELECT DATE_FORMAT(CURDATE(),'%m/%d/%Y') AS DATA;


DATEDIFF(data1, data2) - różnica w dniach między datami

5. wyświetl ilość dni między datą zakończenia roku szkolnego i datą rozpoczęcia
SELECT DATEDIFF('2024-06-21',CURDATE()) AS "Dni do wakacji";

DATE_ADD(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

6. Wyświetl dowolną datę, oraz datę dzień później, tydzień, miesiąc i rok
SELECT DATE_ADD(CURDATE(),INTERVAL 1 DAY) AS dzień,DATE_ADD(CURDATE(),INTERVAL 1 WEEK) AS tydzien;


DATE_SUB(data, INTERVAL n przedział_czasu) przedział_czasu to DAY, WEEK, MONTH, YEAR, n - ilość 

7. Wyświetl dowolną datę, oraz datę dzień wcześniej, tydzień, miesiąc i rok
SELECT DATE_ADD(CURDATE(),INTERVAL -1 DAY) AS dzień,DATE_ADD(CURDATE(),INTERVAL -1 WEEK) AS tydzien, DATE_ADD(CURDATE(), INTERVAL -1 YEAR);


DAY(data) MONTH(data) QUARTER(data) YEAR(data) - wyciągają z daty dzień, miesiąc, kwartał i rok

8. wyciągnij z dowolnej daty dzień, miesiac, kwartał, rok
SELECT DAY(CURDATE()) as dzien, MONTH(CURDATE()) as Miesiac, QUARTER(CURDATE()) as kwartal, YEAR(CURDATE()) as rok;


WEEKDAY(data) wyświetla numer dnia tygodnia

9. wyświetl numer aktualnego dnia tygodnia, czy tydzień zaczyna się od poniedziałku czy niedzieli?
SELECT WEEKDAY(CURDATE()) as Dzientygodnia;