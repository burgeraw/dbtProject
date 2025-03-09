{{ config(materialized='view') }}

SELECT client_id, purchase_year, purchase_month, SUM(purchase_amount) AS total_purchase_amount
FROM {{  ref('staging_model') }}
WHERE purchase_status = 'COMPLETE'
GROUP BY client_id, purchase_year, purchase_month
ORDER BY client_id, purchase_year, purchase_month