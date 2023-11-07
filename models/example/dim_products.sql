{{ config(materialized='table') }}

WITH source_data AS (
  SELECT DISTINCT
    ProductName,
    UnitPrice
  FROM {{ source('data_test', 'ecommerce_transactions') }}
)

SELECT
  ROW_NUMBER() OVER (ORDER BY ProductName) AS ProductID,
  ProductName,
  UnitPrice
FROM source_data
