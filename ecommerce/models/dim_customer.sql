SELECT
    DISTINCT
    CustomerID,
    CustomerName,
    CustomerCity,
    CustomerCountry
FROM {{ ref('stg_ecommerce_data') }}
