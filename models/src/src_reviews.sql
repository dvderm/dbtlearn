WITH raw_reviews AS (
    SELECT
    *
    FROM
        -- AIRBNB.RAW.RAW_REVIEWS -- What if the source changes ...
    {{ source('airbnb', 'reviews')}} -- You can use the source that was defined in sources.yml
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    raw_reviews
