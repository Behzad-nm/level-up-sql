-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
-- firsname, lastname, email, sort by number of orders
SELECT Customers.FirstName, Customers.LastName, Customers.Email,
COUNT(Orders.OrderID) as OrderCount  
FROM Customers JOIN Orders
ON Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC
LIMIT 10;