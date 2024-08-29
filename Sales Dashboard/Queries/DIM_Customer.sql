-- Cleaned DIM_Customers_Table --
SELECT 
  c.customerkey AS CustomerKey, 
  c.FirstName AS [First Name], 
  c.LastName As [Last Name], 
  c.FirstName + c.LastName AS [Full Name], 
  CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN dbo.DimGeography as g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC