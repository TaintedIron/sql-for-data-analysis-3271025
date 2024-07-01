SELECT LastName,
  OrderID
FROM Customer
  JOIN Orders on Customer.CustomerID = Orders.CustomerID