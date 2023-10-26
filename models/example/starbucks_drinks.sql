{{ config(materialized='view') }}  

with source_data as (

    SELECT
        Beverage_category,
        Beverage_prep,
        Calories
    FROM {{ source('starbucks_data_source', 'starbucks_drinks') }}

)

select *
from source_data
where Calories >= 350
