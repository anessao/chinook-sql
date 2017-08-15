/*country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY*/
Select BillingCountry, Count(*) as InvoiceCount
From [Invoice]
Group By BillingCountry