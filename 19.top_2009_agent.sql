--19. `top_2009_agent.sql`: 
--Which sales agent made the most in sales in 2009? 
--HINT: [TOP]




SELECT Top 1
  Employee.FirstName + ' ' + Employee.LastName AS 'Sales Agent',
  SUM(Invoice.Total) AS 'Total Sales'
FROM Invoice
  JOIN Customer 
    ON Customer.CustomerId = Invoice.CustomerId
  JOIN Employee
    ON Employee.EmployeeId = Customer.SupportRepId
WHERE YEAR(Invoice.InvoiceDate) = '2009'
GROUP BY SupportRepId, Employee.FirstName, Employee.LastName
ORDER BY 'Total Sales' desc


