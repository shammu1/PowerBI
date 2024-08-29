-- Cleaned DIM_Products_Table 
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS [Product Name],
  ps.EnglishProductSubcategoryName AS [Sub Category],
  pc.EnglishProductCategoryName AS [Product Category],
  p.[Color] AS [Product Color], 
  p.[Size] AS [Product Size], 
  p.[ProductLine] AS [Product Line], 
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  ISNuLL(p.[Status], 'Outdated') AS [Product Status] 
  FROM [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey asc