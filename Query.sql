SELECT cu.Name, co.Name, o.OrderDate, 
	(SELECT SUM(li.Price * li.Quantity)
	 FROM LineItems li
	 WHERE li.OrderId = o.Id) AS TotalPrice
FROM Customers cu
JOIN Orders o ON o.CustomerId = cu.Id
LEFT JOIN Contacts co ON co.Id = o.ContactId
WHERE o.OrderDate BETWEEN '2017-01-01' AND '2017-02-01'