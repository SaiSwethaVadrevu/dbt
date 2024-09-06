SELECT DISTINCT
    ProductID,
    ProductName,
    ProductCategory,
    ProductSubcategory,
    UnitPrice
FROM {{ ref('stg_ecommerce_data') }}
