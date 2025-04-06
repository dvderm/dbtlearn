-- Create a singular test in tests/consistent_created_at.sql that checks that there is no review date that is submitted before its listing was created: 
    -- Make sure that every review_date in fct_reviews is more recent than the associated created_at in dim_listings_cleansed.

SELECT 
    DL.CREATED_AT,
    FR.REVIEW_DATE
FROM {{ ref('dim_listings_cleansed') }} DL 
FULL JOIN {{ ref('fct_reviews') }} FR ON DL.LISTING_ID = FR.LISTING_ID
WHERE 1=1
    -- AND (DL.LISTING_ID IS NULL) -- Check of er LISTIN_ID's zijn in FCT_REVIEWS die niet voorkomen in DIM_LISTINGS_CLEANSED
    AND FR.REVIEW_DATE < DL.CREATED_AT  
