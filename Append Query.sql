


--Convert both sheet into csv and load using import 
-- Create a new table based on the structure of Table1
SELECT *
INTO trans
FROM Transactiondb.dbo.csv2
WHERE 1=0; -- This condition ensures that no data is copied, only the structure

-- Append data from Table1 to NewTable
INSERT INTO trans
SELECT *
FROM Transactiondb.dbo.csv2;

-- Append data from Table2 to NewTable
INSERT INTO trans
SELECT *
FROM Transactiondb.dbo.csv1;
