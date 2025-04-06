-- Check of de constraint van kolom MINIMUM_NIGHTS in listings tabel > 0 klopt
SELECT
 *
FROM
 {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
LIMIT 10
