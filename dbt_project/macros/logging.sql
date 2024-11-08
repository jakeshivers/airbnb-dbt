{% macro logging() %}
    { LOG(
        "calling logging macro",
        info = TRUE
    ) }
{% endmacro %}
