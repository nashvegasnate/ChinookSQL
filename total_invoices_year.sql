--8. `total_invoices_year.sql`: 
--How many Invoices were there in 2009 and 2011?

SELECT 
  SUM(CASE WHEN InvoiceDate LIKE '%2009%' THEN 1
    ELSE 0 END) AS '2009 Invoices',
  SUM(CASE WHEN InvoiceDate LIKE '%2011%' THEN 1
    ELSE 0 END) AS '2011 Invoices'
FROM Invoice

--OR

--SELECT 
--	SUM(
--		CASE WHEN YEAR(InvoiceDate) = '2009' THEN 1
--		ELSE 0
--		END) AS Invoices2009,
--			SUM(
--		CASE WHEN YEAR(InvoiceDate) = '2011' THEN 1
--		ELSE 0
--		END) AS Invoices2011
--FROM Invoice