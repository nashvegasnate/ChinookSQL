--1. `non_usa_customers.sql`: Provide a query showing Customers 
--(just their full names, customer ID and country) who are not in the US.

SELECT firstName, LastName, customerId, country
FROM Customer
WHERE Country != 'USA'


