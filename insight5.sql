SELECT 
    StockCode,
    Description,
    SUM(CASE WHEN Invoice LIKE 'C%' THEN Quantity*(-1) ELSE 0 END) AS TotalCanceledQuantity,
	SUM(CASE WHEN Invoice NOT LIKE 'C%' THEN Quantity ELSE 0 END) AS TotalFulfilledQuantity,
	CASE 
        WHEN SUM(CASE WHEN Invoice NOT LIKE 'C%' THEN Quantity ELSE 0 END) = 0 
        THEN NULL 
        ELSE (CAST(SUM(CASE WHEN Invoice LIKE 'C%' THEN Quantity*(-1) ELSE 0 END) AS FLOAT) / 
             CAST(SUM(CASE WHEN Invoice NOT LIKE 'C%' THEN Quantity ELSE 0 END) AS FLOAT))*100
    END AS Cancellation_percentage 
FROM 
    Transactiondb.dbo.trans
GROUP BY 
    StockCode, Description having SUM(CASE WHEN Invoice NOT LIKE 'C%' THEN Quantity ELSE 0 END)> 500

ORDER BY 
    Cancellation_percentage DESC;
