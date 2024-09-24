SELECT
    [Product].[Brand],
    [Date].[Calendar Year Number],
    SUM([Sales].[Net Price] * [Sales].[Quantity]) AS [TotalSales]
FROM [Sales]
LEFT OUTER JOIN [Product]
    ON [Sales].[ProductKey] = [Product].[ProductKey]
LEFT OUTER JOIN [Date]
    ON [Sales].[Order Date] = [Date].[Date]
WHERE
    [Date].[Calendar Year Number] IN (2007, 2008, 2009)
GROUP BY 
    [Product].[Brand],
    [Date].[Calendar Year Number]
