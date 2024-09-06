with topsellingsubcategory as 
(
    select ProductSubcategory
    from {{ ref('bestsellingcategory') }}
    order by total_sales desc
    limit 1
),
monthly_sales as 
(
    select
        dp.ProductSubCategory,
        EXTRACT(month from fs.order_date) AS month,
        sum(fs.TotalAmount) as total_sales
    from {{ ref('fct_sales') }} fs
    join {{ ref('dim_product') }} dp on fs.ProductID = dp.ProductID
    join topsellingsubcategory ts on ts.ProductSubCategory = dp.ProductSubCategory
    group by dp.ProductSubCategory, month
    order by month
)
select month, total_sales
from monthly_sales
order by month
