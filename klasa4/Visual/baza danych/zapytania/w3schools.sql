1. Wyświetl nazwy firm klientów z Niemiec. (nazwa,kraj, miasto)
SELECT customername,country from Customers where country='Germany';

2. Ogranicz do tych z Berlina.
SELECT customername,city,country from Customers where city='Berlin';

3. Wyświetlamy nazwy firm (kraj, miasto) klientów z Niemiec, ale nie z Berlina.
select city,country from Customers where Country='Germany' AND City NOT IN ('Berlin');

4. Nazwy firm (kraj, miasto) z miasta na literę A.
select City,Country from Customers where City LIKE'A%'

5. Nazwy firm (kraj, miasto) z miasta, które na drugim miejscu ma literę a.
select City,Country from Customers where City LIKE '_a%';

6. Nazwy firm (kraj, miasto) z USA, Niemiec, Kanady i Francji.
select City,Country from Customers where Country IN ('USA', 'Germany', 'Canada', 'France');

7. Z kraju o nazwie co najmniej czteroliterowej
select country from customers where country LIKE '____%';

8. Wyświetl dane o zamówieniach z lipca dowolnego roku. 
SELECT *FROM Orders where OrderDate LIKE '____-07-__';

9. wyświetl dane o zamówieniach dokonanych w pierwszych 10 dniach lipca 1996
SELECT *from Orders where OrderDate BETWEEN '1996-07-01' AND '1996-07-10'

10 Wyświetl produkty uporządkowane według ceny rosnąco (najpierw najtańsze). 
SELECT Price from Products ORDER BY price asc;

11. Wyświetl pięć najdroższych produktów
select ProductName,price from products ORDER BY price desc  limit 5;

12. Wyświetl towary (nazwy i ceny) o cenach pomiędzy 10 a 100
SELECT ProductName, Price from Products where price BETWEEN (10) AND (100);

13. Jak wyżej, ale tylko towary dostawców o kodzie 2.
SELECT ProductName,Price,SupplierID from Products where price BETWEEN (10) AND (100) AND SupplierID=2;

14. Jak wyżej, ale obok dostawców o kodzie 2  wybierz także 8, 7,4 i 3
SELECT ProductName,Price,SupplierID from Products where price BETWEEN (10) AND (100) AND SupplierID IN (2,8,7,4,3);


select
from
where
group BY
having by 
order by 
limit