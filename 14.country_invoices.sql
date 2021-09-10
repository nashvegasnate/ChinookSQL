--14. `country_invoices.sql`: 
--Provide a query that shows the # of invoices per country. 
--HINT: [GROUP BY]

SELECT COUNT(Total) AS 'Total Invoices', BillingCountry
FROM Invoice
GROUP BY BillingCountry

--OR--

--SELECT BillingCountry, count(*) as [Invoices]
--FROM Invoice
--GROUP BY BillingCountry
--Order By [Invoices] DESC