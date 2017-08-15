/*line_item_track.sql: Provide a query that includes the purchased track name with each invoice line item.*/
Select t.Name
From [InvoiceLine] as il
Join [Track] as t on t.[TrackId] = il.[TrackId]

