select ProductCategory,
sum(TotalAmount) as total_sales
from {{ ref('stg_ecommerce_data') }}
group by ProductCategory