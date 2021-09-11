--18. `sales_agent_total_sales.sql`: 
--Provide a query that shows total sales made by each sales agent.

SELECT 
  Employee.FirstName + ' ' + Employee.LastName AS 'Sales Rep',
  COUNT(Total) AS 'Total Sales'  
FROM Invoice
  JOIN Customer
    ON Customer.CustomerId = Invoice.CustomerId
  JOIN Employee
    ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY SupportRepId, Employee.LastName, Employee.FirstName

