with topsellingproducts as
(
    select p.ProductID,
    p.productName,
    sum(Quantity) as total_quantity
    from {{ ref('dim_product') }} p
    join {{ ref('fct_sales') }} f on p.ProductID = f.ProductID
    group by p.ProductID,p.productName
)

select ProductID, productName, total_quantity 
from topsellingproducts
order by total_quantity 
limit 5