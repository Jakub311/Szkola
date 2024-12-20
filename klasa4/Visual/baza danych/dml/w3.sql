1. Usuń klientów z Meksyku
DELETE FROM order_details
WHERE OrderID IN (
    SELECT OrderID from orders 
    WHERE CustomerID IN (
        SELECT CustomerID FROM customers

    )
);
DELETE FROM customers
WHERE country='Mexico';

2. Usuń produkty o cenie mniejszej niż 15
UPDATE Order_Details
SET ProductID=NULL
WHERE ProductID IN (
    SELECT ProductID FROM Products
    WHERE Price < 15
);
DELETE FROM Products
WHERE Price < 15;

3. Zmień numer dostawcy produktu o id 2 na dostawcę o id 3
UPDATE Products
SET SupplierID=3
WHERE ProductID=2;

4. Zmień osobę do kontaktów na siebie dla klienta o numerze 1
UPDATE customers
SET ConctactName='Jan Kowalski'
WHERE CustomerID=1;
 
5. Zmniejsz o 5% cenę wszystkich produktów dostarczanych przez dostawcę o numerze 7
UPDATE Products
SET price=price*0.95
WHERE SupplierID=7;
 
6. Zwiększ cenę produktów z kategorii 1 o 10%
UPDATE Products
SET price=price*1.10
WHERE CategoryID=1;
 
7. Dodaj nową kategorię produktów
INSERT INTO Categories (CategoryName,Description)
VALUES ('nie wiem','ok')
 
8. Z tabeli Pracownicy (Employees) usuń pracownika o numerze 3 (EmployeeID). 

9. Dodaj jeszcze jednego dostawcę (tabela Shippers)

10. Podnieś cenę Tofu do 30 (ProductName -nazwa produktu, Price - cena, tabela Products)

11. Podnieś o 10% cenę (Price) wszystkich produktów o nazwie (ProductName) zaczynającej się na literę C) (tabela Products)

12. Usuń z tabeli OrderDetails zamówienia o ID 10443 oraz 10440 (OrderID).

13. Zmień adres (Address), miasto (City) i kraj (Country) dostawcy o numerze 2  (SupplierID) na ul. Pocztową, Nakło, Polskę. (tabela Suppliers)