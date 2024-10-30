SELECT TIME(NOW()) AS teraz;

SELECT CURDATE();

SELECT DATEDIFF('2024-06-01',CURDATE());

SELECT data_zatrudnienia, DATE_ADD(data_zatrudnienia, INTERVAL 2 YEAR)
from Pracownicy;

SELECT CONCAT_WS(' ', Address, City, PostalCode) AS Address
FROM Suppliers;

SELECT LOWER(CategoryName)
FROM Categories;

SELECT UPPER(SupplierName)
FROM Suppliers;

SELECT OrderDate, RIGHT(OrderDate,5)
FROM Orders;

SELECT SUBSTRING_INDEX(imie_nazwisko,' ',-1)
FROM zaloga;

UPDATE zaloga
SET imie=SUBSTRING_INDEX(imie_nazwisko,' ',1);

UPDATE zaloga
SET nazwisko=SUBSTRING_INDEX(imie_nazwisko,' ',-1);

ALTER TABLE zaloga
ADD imie varchar(250),
ADD nazwisko varchar(250);

ALTER TABEL zaloga
DROP imie_nazwisko;

SELECT DATE_FORMAT(data_zatrudnienia,'%M')
FROM Pracownicy;