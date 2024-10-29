1. Wybierz dane klientów klientów, którzy nie kupili żadnego produktu z kategorii Confections
 
2. Czy są jacyś klienci którzy nie złożyli żadnego zamówienia w 1997 roku, jeśli tak to pokaż ich dane adresowe.
 
3. Wyświetl nazwiska i imiona pracowników, którzy nie sprzedali niczego do Argentyny.
SELECT EmployeeID, Country
FROM orders
    INNER JOIN Customers ON orders.CustomerID=Customers.CustomerID
WHERE Country='Argentina'

SELECT FirstName, LastName
FROM Employees
WHERE EmployeeID NOT IN (SELECT EmployeeID, Country
FROM orders
    INNER JOIN Customers ON orders.CustomerID=Customers.CustomerID
WHERE Country='Argentina');
4. Wypisz nazwy i kraje klientów, którzy zawsze zamawiali tylko jeden produkt.

1. Usuń wszystkie szczegóły zamówień (wiersze z OrderDetails) dotyczące produktu o nazwie "Chang"
DELETE FROM OrderDetails
WHERE ProductID = (SELECT ProductID FROM products WHERE productName='Chang');

2. Zwiększ o 10% ceny wszystkich produktów z kategorii "Confections"
UPDATE products
SET Price=Price*1.1
WHERE CategoryID = (SELECT CategoryID FROM categories WHERE CategoryName='Confections');

3. Zmniejsz o 5% ceny wszystkich produktów dostarczanych przez dostawców z  Tokyo  (city)
UPDATE products
SET Price=price*0.95
WHERE SupplierID = (SELECT SupplierID FROM suppliers WHERE City='Tokyo');

4. Usuń wszystkie produkty z kategorii  o opisie "Cheeses" (Description)  o cenie większej od 50
DELETE FROM products 
WHERE CategoryID = (SELECT CategoryID FROM categories WHERE Description='Cheeses');

5. Zwiększ o 10% cenę wszystkich produktów z kategorii o nazwie zaczynającej się na literę C 

6. Usuwamy wszystkie produkty dostarczane przez dostawców z USA

7. Usuń wszystkie zamówienia z Orders złożone przez klientów z Londynu ('London').

1. Podaj wszystkie produkty których cena jest mniejsza niż średnia cena produktu danej kategorii 
SELECT avg(price)
FROM products;

SELECT productName, price
FROM products
WHERE price < (SELECT avg(price)
FROM products);
 
2. Dla każdego produktu podaj jego nazwę, cenę, średnią cenę wszystkich produktów oraz różnicę między ceną produktu a średnią ceną wszystkich produktów

SELECT productName, price,
    (SELECT ROUND(AVG(Price)) FROM products),
    Price - (SELECT ROUND(AVG(Price)) FROM products)
FROM products;