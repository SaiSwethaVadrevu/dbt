with category_sales as
(
    select p.ProductCategory, p.ProductSubcategory,
    sum(f.TotalAmount) as total_sales
    from {{ ref('fct_sales') }} f
     join {{ ref('dim_product') }} p
    on f.ProductID = p.ProductID
    group by p.ProductCategory, p.ProductSubcategory
),

best_selling_product as
(
    select ProductCategory,
    total_sales
    from category_sales
    order by total_sales desc
    
)
select cs.ProductCategory, cs.ProductSubcategory, cs.total_sales
from category_sales cs
join best_selling_product bs on bs.ProductCategory = cs.ProductCategory
order by total_sales desc

