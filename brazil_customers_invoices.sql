/*brazil_customers_invoices.sql: Provide a query showing the Invoices
of customers who are from Brazil. The resultant table should show the customer's full name,
Invoice ID, Date of the invoice and billing country.*/
select [FirstName], [LastName], [InvoiceId], [BillingCountry], [InvoiceDate]
from [Customer]
join [Invoice] on [Customer].CustomerId = [Invoice].CustomerId
where [Country] == "Brazil"