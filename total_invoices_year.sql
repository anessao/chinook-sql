/*total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?*/
SELECT strftime('%Y',InvoiceDate) as Years, Count(*) as Amount
From [Invoice] as i
Where strftime('%Y',InvoiceDate) like '%2011%' or strftime('%Y',InvoiceDate) like '%2009%'
Group By strftime('%Y',InvoiceDate)

