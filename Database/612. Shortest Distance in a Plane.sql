/* Method 1 (better) */

Select round(Min(Sqrt(Pow(x-x1,2)+Pow(y-y1,2))),2) as shortest
    From Point2D
Join (
    Select x as x1, y as y1
        From Point2D) as Point2D1
Where Sqrt(Pow(x-x1,2)+Pow(y-y1,2))<>0

/* Method 2 */

Select round(sqrt((x1-x)*(x1-x)+(y1-y)*(y1-y)),2) as shortest
    From Point2D
Join
(Select x as x1, y as y1
    From Point2D) as Point2D1
Where sqrt((x1-x)*(x1-x)+(y1-y)*(y1-y)) >0
Order by sqrt((x1-x)*(x1-x)+(y1-y)*(y1-y)) asc limit 1
