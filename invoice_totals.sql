/*invoice_totals.sql: Provide a query that shows the Invoice Total,
Customer name, Country and Sale Agent name for all invoices and customers.*/

Select c.[FirstName] || ' ' || c.[LastName], c.[Country], e.[FirstName] || '  ' || e.[LastName], i.[Total]
from [invoice] as i
join [employee] as e on c.[SupportRepId] = e.[EmployeeId]
join [customer] as c on i.[CustomerId] = c.[CustomerId]
Order By e.[LastName]
	
