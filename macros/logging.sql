{% macro learn_logging() %}
    {{ log("This is a log message", info=True) }}
    {# {{ log("This is another log message", info=True) }} #}
{% endmacro %}