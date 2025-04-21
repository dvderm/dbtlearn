{# {{ config(schema='silver')}} #} --leads to schema DEV_SILVER and i simply want "SILVER". See README.MD for how to accomplish this. 

select *, 'SomeAwesomeColumn' AS AWESOME_COLUMN
 from {{ ref("fct_reviews_bronze") }}