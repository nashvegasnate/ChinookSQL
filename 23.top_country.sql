--23. `top_country.sql`: 
--Which country's customers spent the most?

SELECT 
  SUM(Total) AS 'Total Sales',
  Invoice.BillingCountry AS 'BillingCountry'
FROM Invoice
GROUP BY BillingCountry 
ORDER BY 'Total Sales' desc