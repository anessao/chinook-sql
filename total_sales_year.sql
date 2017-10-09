/*total_sales_{year}.sql: What are the respective total sales for each of those years?*/
SELECT strftime('%Y',InvoiceDate) as Years, Sum(Total) as Amount
From [Invoice] as i
Where strftime('%Y',InvoiceDate) like '%2011%' or strftime('%Y',InvoiceDate) like '%2009%'
Group By strftime('%Y',InvoiceDate)