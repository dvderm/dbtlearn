{# Wanneer je in dbt_project.yml een schema toevoegt wordt dit default als schemavanprofileyml_schema gedeployed in Snowflake.
Ik wil in dit geval echter dat er simpelweg "schema" gedeployed wordt.
Onderstaande macro zorgt hiervoor. #}

{% macro generate_schema_name(custom_schema_name, node) -%}

    {%- set default_schema = target.schema -%}
    {%- if custom_schema_name is none -%}

        {{ target.name }}_{{ default_schema }}

    {%- else -%}

        {{ custom_schema_name }}

    {%- endif -%}

{%- endmacro %}