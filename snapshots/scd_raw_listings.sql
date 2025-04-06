{% snapshot scd_raw_listings %}  {# Corrected snapshot tag syntax #}

{# Two strategies available: timestamp and check. See readme for explanation on these strategies #}
{# If any record is deleted from the original input table the snapshot will reflect that. If this is set to false, deletes will not be picked up  #}
{{
    config(
        target_schema='DEV',
        unique_key='id',
        strategy='timestamp',   
        updated_at='updated_at',
        invalidate_hard_deletes=True    
    )
}}

select * FROM {{ source('airbnb', 'listings') }}    {# In most cases, the basis of a snapshot is a select-statement #}

{% endsnapshot %}
