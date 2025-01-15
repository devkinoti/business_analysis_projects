SELECT [DateKey]
      ,[FullDateAlternateKey] as date
      ,[EnglishDayNameOfWeek] as day
      ,[EnglishMonthName] as month
      ,[CalendarQuarter] as quarter
      ,[CalendarYear] as year
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  where CalendarYear >= 2019
