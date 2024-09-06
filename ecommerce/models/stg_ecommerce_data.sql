WITH raw_data AS (
    SELECT
        TransactionID,
        -- Use TO_DATE without the format string if the date is already in a recognizable format
        TO_DATE(Date) AS order_date,  
        -- Alternatively, you can use CAST(Date AS DATE) to handle different date formats
        CustomerID,
        CustomerName,
        CustomerCity,
        CustomerCountry,
        ProductID,
        ProductName,
        ProductCategory,
        ProductSubcategory,
        UnitPrice,
        Quantity,
        TotalAmount
    FROM {{ source('raw', 'raw_ecommerce_data') }}  -- Replace with the actual name of your raw data table in source configuration
)
SELECT *
FROM raw_data