{{ config(serverity= 'warning') }}

select 1
 {{ref("obt_b")}} as obt
where
    obt.order_id is not null
or
    obt.customer_id is not null
or
    obt.order_item_id is not null
or
    obt.product_id is not null  
or
    obt.employee_id is not null
or
    obt.store_id is not null