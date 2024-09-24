CREATE PROCEDURE GetFilteredOrders
AS
BEGIN
    SELECT [_].[Order ID] AS [Order ID],
           [_].[Category] AS [Category],
           [_].[Sales] AS [Sales],
           DATEPART(YEAR, [_].[Order Date]) AS [Year]
    FROM (
        SELECT [_].[Order ID],
               [_].[Order Date],
               [_].[Category],
               [_].[Sales]
        FROM [dbo].[Orders] AS [_]
        WHERE [_].[Sales] >= 1500 
              AND ([_].[Category] <> 'Office Supplies' OR [_].[Category] IS NULL)
    ) AS [_]
END;
