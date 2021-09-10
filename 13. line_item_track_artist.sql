--13. `line_item_track_artist.sql`: 
--Provide a query that includes the purchased track name 
--AND artist name with each invoice line item.

SELECT 
  InvoiceLineId,
	 InvoiceId,
	 InvoiceLine.TrackId,
	 InvoiceLine.UnitPrice,
	 InvoiceLine.Quantity,
	 Track.Name AS [Track Name],
  Artist.Name AS [Artist Name]

FROM InvoiceLine
JOIN Track
	 ON Track.TrackId = InvoiceLine.TrackId
JOIN Album
  ON Album.AlbumId = Track.AlbumId
JOIN Artist 
  ON Artist.ArtistId = Album.ArtistId
Order By InvoiceId