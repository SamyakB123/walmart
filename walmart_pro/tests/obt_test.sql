{{ config(severity='warn') }}

select *
from {{ ref('obt_b') }}
where order_id is null
