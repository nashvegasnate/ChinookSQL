--21. `sales_agent_customer_count.sql`: 
--Provide a query that shows the count of customers 
--assigned to each sales agent.

SELECT 
  COUNT(CustomerId) AS 'Number of Customers',
  Employee.FirstName + ' '  + Employee.LastName AS 'Sales Rep'
FROM Customer
  JOIN Employee
    ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY Employee.FirstName, Employee.LastName


