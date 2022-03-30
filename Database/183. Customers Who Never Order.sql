Select name as "Customers"
From Customers
Left Join Orders
On Customers.id=Orders.customerId
Where Orders.customerId is Null
