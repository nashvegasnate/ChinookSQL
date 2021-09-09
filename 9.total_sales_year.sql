--9. `total_sales_year.sql`: 
--What are the respective total sales for 
--each of those years (2009 and 2011)?

SELECT 
  SUM (CASE WHEN InvoiceDate LIKE '%2009%'
    THEN Invoice.Total else 0 END) AS '2009 Sales Total',
  SUM (CASE WHEN InvoiceDate LIKE '%2011%'
    THEN Invoice.Total else 0 END) AS '2011 Sales Total'
FROM Invoice