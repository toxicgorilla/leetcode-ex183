SELECT
    c.Name AS [Customers]
FROM
    Customers AS c
WHERE
    1=1
    AND NOT EXISTS (SELECT TOP 1 1 FROM ORDERS AS o WHERE o.CustomerId = c.Id)
