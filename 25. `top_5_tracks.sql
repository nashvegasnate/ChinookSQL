--25. `top_5_tracks.sql`: 
--Provide a query that shows the top 5 most purchased songs.

SELECT TOP 5
	Track.Name,
	SUM(InvoiceLine.Quantity) as 'Total Sales'
FROM InvoiceLine
JOIN Track 
	ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Track.Name
ORDER BY 'Total Sales' DESC