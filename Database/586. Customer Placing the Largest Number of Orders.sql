Select customer_number
    From Orders
Group by customer_number
Order by count(*) desc limit 1
