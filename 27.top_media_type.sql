--27. `top_media_type.sql`: 
--Provide a query that shows the most purchased Media Type.

SELECT TOP 1
  COUNT(*) AS 'Total Purchases',
  MediaType.Name AS 'Media Type'
FROM InvoiceLine
  JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
JOIN MediaType
    ON MediaType.MediaTypeId = Track.MediaTypeId
GROUP BY MediaType.Name
ORDER BY 'Total Purchases' DESC
  
  
 