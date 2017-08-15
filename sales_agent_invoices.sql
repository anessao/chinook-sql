/*sales_agent_invoices.sql: Provide a query that shows the invoices associated with
each sales agent. The resultant table should include the Sales Agent's full name.*/
Select i.*, e.FirstName, e.LastName
From [Invoice] as i
join [Customer] as c on c.CustomerId = i.CustomerId
join [Employee] as e on e.EmployeeId = c.SupportRepId