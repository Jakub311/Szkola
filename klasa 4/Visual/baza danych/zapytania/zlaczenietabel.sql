1. Wyświetl nazwy firm klientów  i daty zamówień
SELECT Customers.CustomerID,OrderDate,CustomerName
FROM Orders INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

2. Wyświetl dane spedytora z datą zamówienia
SELECT ShipperName, OrderDate
FROM Shippers
INNER JOIN Orders ON Shippers.ShipperID=Orders.ShipperID;
 
3. Wyświetl nazwiska pracowników i daty zamówień
 
4. Wyświetl nazwy towarów, nazwy kategorii
SELECT ProductName, CategoryName
FROM Products 
    INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID;
 
5. Wyświetl nazwy towarów, nazwy kategorii i idzamówień
SELECT ProductName, CategoryName, OrderID
FROM Products
    INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID
    INNER JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID;
 
6. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i idklienta
SELECT ProductName, CategoryName, OrderDate, CustomerID, OrderDetails.OrderID
FROM Products
    INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID
    INNER JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
    INNER JOIN Orders ON OrderDetails.OrderID=Orders.OrderID;
 
7. Wyświetl nazwy towarów, nazwy kategorii, daty zamówień i nazwę firmy klienta
SELECT ProductName, CategoryName, OrderDate, Customers.CustomerID, OrderDetails.OrderID, CustomerName
FROM Products
    INNER JOIN Categories ON Products.CategoryID=Categories.CategoryID
    INNER JOIN OrderDetails ON Products.ProductID=OrderDetails.ProductID
    INNER JOIN Orders ON OrderDetails.OrderID=Orders.OrderID
    INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
 
8. Ile razy był zamawiany dany produkt? (podaj nazwy produktów)
SELECT ProductName, Count(*)
FROM OrderDetails
	INNER JOIN Products ON OrderDetails.ProductID=Products.ProductID
    GROUP BY ProductName;
 
9. Wyświetl nazwy firm klientów, daty zamówień i nazwy towarów