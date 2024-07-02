SELECT State,
  AVG(TotalDue) as Avg_Due,
  MIN(TotalDue) as Min_Due,
  MAX(TotalDue) as Max_Due,
  SUM(TotalDue) as Total_Sales,
  COUNT(DISTINCT C.CustomerID) as Unique_Customers -- Use C.CustomerID to specify the table
FROM Customer C
  JOIN Orders O ON O.CustomerID = C.CustomerID
GROUP BY State
ORDER BY Avg_Due DESC