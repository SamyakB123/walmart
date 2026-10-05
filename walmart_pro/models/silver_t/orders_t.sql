

select *,
  current_timestamp() as updated_at

from {{ source('walmart_databricks', 'orders') }}
where
 is_active = 'Y'
