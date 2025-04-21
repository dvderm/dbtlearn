{# {{ config(schema='bronze') }} #} --leads to schema DEV_SILVER and i simply want "BRONZE". See README.MD for how to accomplish this. 

SELECT * FROM {{ ref('src_reviews') }}