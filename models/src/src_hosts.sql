WITH raw_hosts AS (
    SELECT
    *
    FROM
        -- AIRBNB.RAW.RAW_HOSTS -- What if the source changes ...
    {{ source('airbnb', 'hosts')}} -- You can use the source that was defined in sources.yml
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_hosts