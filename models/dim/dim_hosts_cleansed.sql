{{ config( materialized = 'view' )}}    -- Je kunt de materialized instelling in dbt_project.yml op deze wijze overschrijven

WITH src_hosts AS (
    SELECT
        *
    FROM
        {{ ref('src_hosts') }}
)
SELECT
    host_id,
    NVL(host_name, 'Anonymous') AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    src_hosts