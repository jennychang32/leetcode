Select name
    From SalesPerson
Where name not In (
    
    Select name From
        (Select com_id, sales_id
            From Orders) as a

        Inner Join

        (Select com_id, name as com_name
            From Company) as b

        Inner Join

        (Select sales_id, name
            From SalesPerson) as c

    On a.com_id=b.com_id and a.sales_id=c.sales_id
    Where com_name="RED")
