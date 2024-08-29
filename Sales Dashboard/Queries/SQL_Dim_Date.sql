-- Cleaned DIM_DateTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date, 
  [EnglishDayNameOfWeek] As Day, 
  [WeekNumberOfYear] As WeekNo,
  [EnglishMonthName] As Month, 
  LEFT([EnglishMonthName],3) As MonthShort,
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate] 
WHERE 
  CalendarYear >= 2022
