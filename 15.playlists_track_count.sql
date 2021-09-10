--15. `playlists_track_count.sql`: 
--Provide a query that shows the total number of tracks 
--in each playlist. The Playlist name should be included 
--on the resultant table.

SELECT Name AS 'Playlist Name', COUNT(*)
FROM PlaylistTrack
  JOIN Playlist
    ON Playlist.PlayListId = PlaylistTrack.PlaylistId 
GROUP BY Name

  

