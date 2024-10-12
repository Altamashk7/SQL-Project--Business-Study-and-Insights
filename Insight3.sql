	WITH ProductRepeatOrders AS (
		SELECT StockCode,Description,COUNT(DISTINCT Invoice) AS RepeatOrders
		FROM Transactiondb.dbo.trans
		GROUP BY StockCode,Description
		HAVING COUNT(DISTINCT Invoice) > 1
	)
	SELECT TOP 5 StockCode,Description, RepeatOrders
	FROM ProductRepeatOrders
	ORDER BY RepeatOrders DESC
