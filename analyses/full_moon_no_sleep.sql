-- Ad hoc query for analysis purposes

WITH fullmoon_reviews AS (
    SELECT * FROM {{ ref('mart_fullmoon_reviews') }} -- Je kunt in analyses (ad hoc queries) nog steeds dbt jinja functions gebruiken ondanks dat er geen materialization plaatsvindt zoals bij models
)

SELECT
    is_full_moon,
    review_sentiment, 
    COUNT(*) as reviews
FROM
    fullmoon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment