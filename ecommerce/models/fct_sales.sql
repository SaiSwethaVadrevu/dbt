SELECT
    TransactionID,
    order_date,
    CustomerID,
    ProductID,
    Quantity,
    TotalAmount
FROM {{ ref('stg_ecommerce_data') }}
