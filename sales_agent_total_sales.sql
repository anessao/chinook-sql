/*sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.*/
Select
	e.FirstName,
	Round(Sum(i.Total), 2) as TotalSales
From [Invoice] as i
Join [Customer] as c on c.[CustomerId] = i.[CustomerId]
Join [Employee] as e on e.[EmployeeId] = c.[SupportRepId]
Group By e.EmployeeId