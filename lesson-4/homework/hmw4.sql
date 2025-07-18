-- 1. Faqat Toshkent shahridagi mijozlarni chiqarish
SELECT * 
FROM Customers
WHERE City = 'Toshkent';

-- 2. 2023-yilda bo‘lgan barcha buyurtmalar
SELECT * 
FROM Orders
WHERE YEAR(OrderDate) = 2023;

-- 3. Telefon raqami mavjud bo‘lmagan mijozlar
SELECT * 
FROM Customers
WHERE Phone IS NULL;

-- 4. Telefon raqami yo‘q bo‘lsa “N/A” deb chiqarish
SELECT CustomerID, Name, COALESCE(Phone, 'N/A') AS Phone
FROM Customers;

-- 5. “Samsung” so‘zi bor mahsulotlar (LIKE bilan)
SELECT * 
FROM Products
WHERE ProductName LIKE '%Samsung%';

-- 6. Faqat Toshkent yoki Fargʻonadagi mijozlar
SELECT * 
FROM Customers
WHERE City IN ('Toshkent', 'Farg''ona');  -- Apostrofni ikki marta yozish kerak

-- 7. Buyurtma soniga qarab kamayish tartibida mijozlar
SELECT 
    c.CustomerID, 
    c.Name, 
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalOrders DESC;

-- 8. Eng ko‘p buyurtma bergan TOP 5 mijoz
SELECT TOP 5 
    c.CustomerID, 
    c.Name, 
    COUNT(o.OrderID) AS TotalOrders
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalOrders DESC;
