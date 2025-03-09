{{ config(materialized='view') }}

SELECT street_country AS country, purchase_year, purchase_month, SUM(purchase_amount) AS total_purchase_amount
FROM {{  ref('staging_model') }}
WHERE purchase_status = 'COMPLETE'
GROUP BY street_country, purchase_year, purchase_month
ORDER BY street_country, purchase_year, purchase_month