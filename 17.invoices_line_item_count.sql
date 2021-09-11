--17. `invoices_line_item_count.sql`: 
--Provide a query that shows all Invoices but includes 
--the # of invoice line items.

SELECT InvoiceId, COUNT(*) AS 'Invoice Line Items'
FROM InvoiceLine
GROUP BY InvoiceId

