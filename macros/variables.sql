{% macro learn_variables() %}


    {% set your_name_jinja_variable = "David" %}
    {{ log("Hello " ~ your_name_jinja_variable, info=True)}}

    {{ log("Documentatie dbt variables via cmd _ commando dbt run-operation 2streepjesvars etc zie docs " ~ var("user_name", "NO USERNAME IS SET") ~"!", info=True)}}
{% endmacro %}