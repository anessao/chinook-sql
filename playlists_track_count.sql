/*playlists_track_count.sql: Provide a query that shows the total
number of tracks in each playlist. The Playlist name should be include on the resulant table.*/
Select pl.Name, Count(*) as TrackCount
From [Playlist] as pl
Join [PlaylistTrack] as plt on plt.[PlaylistId] = pl.[PlaylistId]
Join [Track] as t on t.[TrackId] = plt.[TrackId]
Group By pl.Name