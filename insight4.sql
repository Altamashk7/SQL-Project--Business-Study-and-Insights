WITH SalesByCountry AS (
    SELECT 
        Country,
        YEAR(InvoiceDate) AS Year,
        SUM(Quantity * Price) AS TotalSales
    FROM 
        Transactiondb.dbo.trans
    WHERE 
        YEAR(InvoiceDate) IN (2010, 2011)
    GROUP BY 
        Country, YEAR(InvoiceDate)
),
SalesGrowth AS (
    SELECT 
        Country,
        (MAX(CASE WHEN Year = 2011 THEN TotalSales END) - MAX(CASE WHEN Year = 2010 THEN TotalSales END)) / MAX(CASE WHEN Year = 2010 THEN TotalSales END) * 100 AS GrowthPercentage
    FROM 
        SalesByCountry
    GROUP BY 
        Country
)
SELECT 
    Country,
    GrowthPercentage
FROM 
    SalesGrowth
ORDER BY 
    GrowthPercentage DESC

