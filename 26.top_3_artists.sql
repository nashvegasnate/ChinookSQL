--26. `top_3_artists.sql`: 
--Provide a query that shows the top 3 best selling artists.

--COUNTS SALES TOTAL AMOUNTS
SELECT TOP 3
	Artist.Name,
	SUM(Invoice.Total) as 'Total Sales'
FROM Invoice
  JOIN InvoiceLine 
	   ON InvoiceLine.InvoiceId = Invoice.InvoiceId
  JOIN Track
    ON Track.TrackId = InvoiceLine.TrackId
  JOIN Album
    ON Album.AlbumId = Track.AlbumId
  JOIN Artist
    ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.Name
ORDER BY 'Total Sales' DESC

--OR 
--COUNTS NUMBER OF SALES?

--SELECT TOP 3
--	Artist.Name as [Artist],
--	Count(*) as [Total Sales]
--FROM InvoiceLine
--JOIN Track 
--	ON Track.TrackId = InvoiceLine.TrackId
--JOIN Album
--	ON Album.AlbumId = Track.AlbumId
--JOIN Artist
--	ON Artist.ArtistId = Album.ArtistId
--GROUP BY Artist.Name
--ORDER BY [Total Sales] DESC
