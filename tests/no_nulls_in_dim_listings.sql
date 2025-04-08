{# Test die macro no_nulls_in_columns aanroept om te checken of model dim_hosts_cleansed NULL waardes in kolommen bevat  #}

{{ no_nulls_in_columns(ref("dim_listings_cleansed"))}}