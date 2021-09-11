--24. `top_2013_track.sql`: 
--Provide a query that shows the most purchased track of 2013.

SELECT 
  TOP 1
  COUNT(*) AS 'Total Sales',
  Track.Name
FROM InvoiceLine
  JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
  JOIN Invoice
    ON Invoice.InvoiceId = InvoiceLine.InvoiceId 
WHERE YEAR(Invoice.InvoiceDate) = '2013'
GROUP BY Track.Name
Order by 'Total Sales' desc


