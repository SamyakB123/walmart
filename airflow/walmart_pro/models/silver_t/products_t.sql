{{
    config(
    materialized='incremental',
    unique_key='product_id'
)}}

select *,
  current_timestamp() as updated_at

from {{ source('walmart_databricks', 'products') }}


{% if is_incremental() %}
    where updated_timestamp >= (select coalesce(max(updated_at), '1900-01-01') from {{ this }})
{% endif %}


