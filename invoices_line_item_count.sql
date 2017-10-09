/*invoices_line_item_count.sql: Provide a query that shows all
Invoices but includes the # of invoice line items.*/
Select i.InvoiceId, Count(*) as LineItems
From [Invoice] as i
Join [InvoiceLine] as il on il.[InvoiceId] = i.[InvoiceId]
Group By i.[InvoiceId]