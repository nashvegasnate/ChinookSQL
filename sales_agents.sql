--4. `sales_agents.sql`: 
--Provide a query showing only the Employees who are Sales Agents.

SELECT firstName, lastName, title
FROM Employee
WHERE Title = 'Sales Support Agent'