{{ config(materialized='table') }}

WITH source_data AS (
  SELECT
    TransactionID,
    TransactionDate,
    CustomerName,
    ProductName,
    Quantity,
    UnitPrice,
    TotalPrice,
    PaymentMethod
  FROM {{ source('data_test', 'ecommerce_transactions') }}
)

SELECT
  TransactionID,
  TransactionDate,
  CustomerName,
  ProductName,
  Quantity,
  UnitPrice,
  TotalPrice,
  PaymentMethod
FROM source_data
