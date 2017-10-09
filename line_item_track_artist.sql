/*line_item_track_artist.sql: Provide a query that includes the purchased track name
AND artist name with each invoice line item.*/
Select t.[Name] as SongName, ar.[Name] as ArtistName
From [InvoiceLine] as il
Join [Track] as t on t.[TrackId] = il.[TrackId]
Join [Album] as a on a.[AlbumId] = t.[AlbumId]
Join [Artist] as ar on ar.[ArtistId] = a.[ArtistId]