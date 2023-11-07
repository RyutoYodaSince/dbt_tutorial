{{ config(materialized='table') }}

WITH source_data AS (
  SELECT DISTINCT
    CustomerName
  FROM {{ source('data_test', 'ecommerce_transactions') }}
)

SELECT
  ROW_NUMBER() OVER (ORDER BY CustomerName) AS CustomerID,
  CustomerName
FROM source_data
