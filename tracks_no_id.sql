/*tracks_no_id.sql: Provide a query that shows all the Tracks, but displays no IDs.
The result should include the Album name, Media type and Genre.*/
Select
	g.Name as Genre,
	a.Title as Album,
	t.Name as Song,
	mt.Name as MediaType
From [Track] as t
Join [Album] as a on a.AlbumId = t.AlbumId
Join [MediaType] as mt on mt.MediaTypeId = t.MediaTypeId
Join [Genre] as g on g.GenreId = t.GenreId