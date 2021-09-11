--16. `tracks_no_id.sql`: 
--Provide a query that shows all the Tracks, but displays no IDs. 
--The result should include the Album name, Media type and Genre.

SELECT 
      Track.Name,
      Album.Title AS 'Album Title',
      MediaType.Name AS 'Media Type',
      Genre.Name AS 'Genre'
      
FROM Track
  JOIN Album
    ON Album.AlbumId = Track.AlbumId
  JOIN MediaType
    ON MediaType.MediaTypeId = Track.MediaTypeId
  JOIN Genre  
    ON Genre.GenreId = Track.GenreId