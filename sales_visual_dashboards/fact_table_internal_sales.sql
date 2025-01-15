select
[ProductKey],
[OrderDateKey], 
[DueDateKey],
[ShipDateKey],
[CustomerKey],
[SalesOrderNumber],
[SalesAmount]
from 
[dbo].[FactInternetSales]
where left (OrderDateKey, 4) >= year(getdate()) - 2 
order by
OrderDateKey ASC