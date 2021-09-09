--7. `invoice_totals.sql`: 
--Provide a query that shows the Invoice Total, Customer name, 
--Country and Sale Agent name for all invoices and customers.

SELECT 
    Total,
    Customer.FirstName + ' ' + Customer.LastName as Customer,
    Customer.Country,
    Employee.FirstName + ' ' + Employee.LastName as Salesperson
FROM Customer
JOIN Employee ON
    Employee.EmployeeId = Customer.CustomerID
JOIN Invoice ON
    Invoice.CustomerId = Customer.CustomerId
    