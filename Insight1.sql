--Query for year 2010 
SELECT 
    
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * Price) AS TotalSales
FROM 
    Transactiondb.dbo.trans
	where year(InvoiceDate) in(2010)
GROUP BY 
   
    MONTH(InvoiceDate)
ORDER BY 
    TotalSales DESC;
--Query for year 2010 and 2011 
SELECT 
    
    MONTH(InvoiceDate) AS Month,
    SUM(Quantity * Price) AS TotalSales
FROM 
    Transactiondb.dbo.trans
	where year(InvoiceDate) in(2010,2011)
GROUP BY 
   
    MONTH(InvoiceDate)
ORDER BY 
    TotalSales DESC;
