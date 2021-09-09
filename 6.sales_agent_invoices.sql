--6. `sales_agent_invoices.sql`: 
--Provide a query that shows the invoices associated with each sales agent. 
--The resultant table should include the Sales Agent's full name.

SELECT InvoiceId, InvoiceDate, Total, Employee.FirstName + ' ' + Employee.LastName as SalesRep
FROM Customer
JOIN Employee ON
    Employee.EmployeeId = Customer.CustomerId
JOIN Invoice ON
    Invoice.CustomerId = Customer.CustomerId
