{{ config(schema='STAGING') }}

select
    id as customer_id,
    first_name,
    last_name
from {{ source('adventure_raw', 'raw_customers') }}