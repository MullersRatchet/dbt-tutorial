{{ config(materialized='view') }}

with customer_raw as (

select * from {{ source('jaffle_shop', 'customers') }}

)

select *
from customer_raw
