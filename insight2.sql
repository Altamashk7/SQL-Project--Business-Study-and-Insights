WITH ProductPairs AS (
    SELECT s1.StockCode AS Product1,s1.Description
 AS Product1desc, s2.StockCode AS Product2,s2.Description
 AS Product2desc,
           COUNT(*) AS PurchaseCount
    FROM Transactiondb.dbo.trans s1
    JOIN Transactiondb.dbo.trans s2 ON s1.Invoice = s2.Invoice AND s1.StockCode < s2.StockCode
    GROUP BY s1.StockCode, s1.Description,s2.StockCode,s2.Description
)
SELECT TOP 5 Product1,Product1desc, Product2,Product2desc, PurchaseCount
FROM ProductPairs
ORDER BY PurchaseCount DESC
