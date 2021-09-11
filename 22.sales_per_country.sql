--22. `sales_per_country.sql`: 
--Provide a query that shows the total sales per country.

SELECT 
  SUM(Total) AS 'Total Sales',
  Invoice.BillingCountry AS 'Billing Country'
FROM Invoice
GROUP BY BillingCountry