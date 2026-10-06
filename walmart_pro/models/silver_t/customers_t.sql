{{
    config(
    materialized='incremental',
    unique_key='customer_id'
)}}

select *,
  current_timestamp() as updated_at

from {{ source('walmart_databricks', 'customers') }}

where
 is_active = 'Y'

{% if is_incremental() %}
    and updated_timestamp >= (select coalesce(max(updated_at), '1900-01-01') from {{ this }})
{% endif %}


