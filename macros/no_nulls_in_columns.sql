{# macros: herbruikbare logica. Deze macro doet een check of er kolommen zijn met NULL. 
Met for ga je in een loop een voor een door de kolommen en doe je de check of er NULL voorkomt in de kolom.
FALSE eindigt de loop. De dash - betekent dat er een trim plaatsvindt; white spaces worden verwijderd. #}

{% macro no_nulls_in_columns(model) %}
    SELECT * FROM {{ model }} WHERE
    {% for col in adapter.get_columns_in_relation(model) -%}
        {{ col.column }} IS NULL OR
    {% endfor %}
    FALSE
{% endmacro %}