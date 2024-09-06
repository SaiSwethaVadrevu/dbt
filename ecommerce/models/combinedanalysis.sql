with total_purchase_amount as (
    select 
        fs.CustomerID,
        dc.CustomerCountry,
        dp.ProductCategory,
        sum(fs.TotalAmount) AS total_sales
    from {{ ref('fct_sales') }} fs
    join {{ ref('dim_customer') }} dc on fs.CustomerID = dc.CustomerID
    join {{ ref('dim_product') }} dp on fs.ProductID = dp.ProductID
    group by fs.CustomerID, dc.CustomerCountry, dp.ProductCategory
),

ranked_customers as (
    select 
        CustomerID,
        CustomerCountry,
        ProductCategory,
        total_sales,
        row_number() over (partition by CustomerCountry order by total_sales desc) as customer_rank
    from total_purchase_amount
),

top_customers as (
    select 
        CustomerID,
        CustomerCountry,
        ProductCategory,
        total_sales
    from ranked_customers
    where customer_rank <= 3
),

favourite_category as (
    select 
        CustomerID,
        CustomerCountry,
        ProductCategory,
        total_sales,
        row_number() over (partition by CustomerID order by total_sales desc) as category_rank
    from top_customers
)

select 
    CustomerID,
    CustomerCountry,
    ProductCategory AS FavoriteCategory,
    total_sales
from favourite_category
where category_rank = 1
order by CustomerCountry, total_sales DESC
