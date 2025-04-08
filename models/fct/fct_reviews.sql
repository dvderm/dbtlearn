{{
    config(
        materialized = 'incremental',
        on_schema_change='fail'
    )
}}

WITH src_reviews AS (
    SELECT * FROM {{ ref('src_reviews') }}
)
SELECT 
{{ dbt_utils.generate_surrogate_key(['listing_id', 'review_date', 'reviewer_name', 'review_text']) }} as review_id, -- Gebruik makend van macro surrogate_key uit package dbt-utils wordt hier een surrogate key aangemaakt obv de genoemde kolommen. 
* 
FROM src_reviews
WHERE review_text is not null

{% if is_incremental() %}
    AND review_date > (select max(review_date) from {{ this }})
{% endif %}
