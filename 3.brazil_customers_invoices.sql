--3. `brazil_customers_invoices.sql`: 
--Provide a query showing the Invoices of customers who are from Brazil. 
--The resultant table should show the customer's full name, Invoice ID, 
--Date of the invoice and billing country.

SELECT firstName, lastName, invoiceId, invoiceDate, billingCountry
FROM Invoice
JOIN Customer on Customer.CustomerId = Invoice.CustomerId
WHERE BillingCountry = 'Brazil'

