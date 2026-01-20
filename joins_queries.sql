 INNER JOIN - Orders with Customers
SELECT
    i.InvoiceId,
    i.InvoiceDate,
    c.FirstName || ' ' || c.LastName AS CustomerName,
    c.Country,
    i.Total
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId;


 LEFT JOIN - Customers with NO orders
SELECT
    c.CustomerId,
    c.FirstName,
    c.LastName,
    c.Country
FROM Customer c
LEFT JOIN Invoice i
ON c.CustomerId = i.CustomerId
WHERE i.InvoiceId IS NULL;



 Total Revenue per Product
SELECT
    t.Name AS ProductName,
    SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
FROM InvoiceLine il
INNER JOIN Track t
ON il.TrackId = t.TrackId
GROUP BY t.Name
ORDER BY TotalRevenue DESC;



 Category-wise Revenue
SELECT
    g.Name AS Category,
    SUM(il.UnitPrice * il.Quantity) AS CategoryRevenue
FROM InvoiceLine il
INNER JOIN Track t
    ON il.TrackId = t.TrackId
INNER JOIN Genre g
    ON t.GenreId = g.GenreId
GROUP BY g.Name
ORDER BY CategoryRevenue DESC;


 Sales by Country between specific dates
SELECT
    c.Country,
    SUM(i.Total) AS TotalSales
FROM Invoice i
INNER JOIN Customer c
ON i.CustomerId = c.CustomerId
WHERE c.Country = 'USA'
  AND i.InvoiceDate BETWEEN '2012-01-01' AND '2013-12-31'
GROUP BY c.Country;

All queries use table aliases (i, c, il, t, g) for readability
