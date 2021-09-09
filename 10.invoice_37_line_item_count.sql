--10. `invoice_37_line_item_count.sql`: 
--Looking at the InvoiceLine table, provide a query that 
--COUNTs the number of line items for Invoice ID 37.

SELECT Count(Quantity) 
AS 'Line Item totals for ID #37'
FROM InvoiceLine 
WHERE InvoiceID = 37


--SELECT quantity, invoiceID
--from invoiceline