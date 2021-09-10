--12. `line_item_track.sql`: 
--Provide a query that includes the purchased track 
--name with each invoice line item.

SELECT 
	InvoiceLineId,
	InvoiceId,
	InvoiceLine.TrackId,
	InvoiceLine.UnitPrice,
	InvoiceLine.Quantity,
	Track.Name
FROM InvoiceLine
JOIN Track
	ON Track.TrackId = InvoiceLine.TrackId
Order By InvoiceId


