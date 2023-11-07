{{ config(materialized='table') }}

WITH source_data AS (
  SELECT DISTINCT
    PaymentMethod
  FROM {{ source('data_test', 'ecommerce_transactions') }}
)

SELECT
  ROW_NUMBER() OVER (ORDER BY PaymentMethod) AS PaymentMethodID,
  PaymentMethod
FROM source_data