--20. `top_agent.sql`: 
--Which sales agent made the most in sales over all?

SELECT Top 1
  Employee.FirstName + ' ' + Employee.LastName AS 'Sales Agent',
  SUM(Invoice.Total) AS 'Total Sales'
FROM Invoice
  JOIN Customer 
    ON Customer.CustomerId = Invoice.CustomerId
  JOIN Employee
    ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY SupportRepId, Employee.FirstName, Employee.LastName
ORDER BY 'Total Sales' desc
