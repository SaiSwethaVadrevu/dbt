with salesperquarter as
(
    select 
    case 
    when extract(quarter from order_date) = 1 then 'q1'
    when extract(quarter from order_date) = 2 then 'q2'
    end as quarter,
    sum(TotalAmount) as total_sales
    from {{ ref('fct_sales') }}
    where extract(quarter from order_date) in (1,2)
    group by quarter
)
select quarter, total_sales from salesperquarter