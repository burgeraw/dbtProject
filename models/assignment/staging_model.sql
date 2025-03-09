{{ config(materialized='table', alias = 'purchases')}}

SELECT id  AS purchase_id,
                     client_id,
                     first_name,
                     last_name,
                     street_address,
                     street_city,
                     street_country,
                     purchase_status,
                     purchase_amount,
                     purchase_date,
                     date_part('year', purchase_date) AS purchase_year,
                     date_part('month', purchase_date) AS purchase_month
FROM {{ ref('test_data') }}