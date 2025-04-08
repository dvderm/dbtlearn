{# macro om te testen of een kolom in een model < 1. 
Functienaam (in dit geval positive_value hoeft niet dezelfde naam te zijn als het script (nu positive_value.sql)
Je kunt functie positive_value aanroepen in schema.yml om een singular test te doen. #}

{% test positive_value(model, column_name) %}
SELECT
    *
FROM
    {{ model }}
WHERE 
    {{column_name}} < 1
{% endtest %}