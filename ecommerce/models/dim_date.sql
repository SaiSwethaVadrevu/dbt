-- Create Date Dimension Table
SELECT DISTINCT
    order_date,
    EXTRACT(YEAR FROM order_date) AS Year,
    EXTRACT(MONTH FROM order_date) AS Month,
    EXTRACT(DAY FROM order_date) AS Day,
    DATE_PART(QUARTER, order_date) AS quarter,
    TO_CHAR(order_date, 'Day') AS DayOfWeek
FROM {{ ref('stg_ecommerce_data') }}
