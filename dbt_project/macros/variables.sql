{% macro learn_variables() %}
    {% set project_description = "This is a dbt project" %}
    {{ log(
        "The project description is " ~ project_description,
        info = True
    ) }}

    {% set developer_name = "Jake Shivers" %}
    {{ log(
        developer_name ~ " wrote this code",
        info = True
    ) }}

    {% set project_name = "dbt_project" %}
    {{ log(
        "The project name is " ~ project_name,
        info = True
    ) }}

    {% set project_path = "dbt_project" %}
    {{ log(
        "The project path is " ~ project_path,
        info = True
    ) }}

    {% set project_version = "0.1" %}
    {{ log(
        "The project version is " ~ project_version,
        info = True
    ) }}

    {% set project_created_at = "2024-11-01" %}
    {{ log(
        "The project was created at " ~ project_created_at,
        info = True
    ) }}

    {% set project_last_modified = "2024-11-01" %}
    {{ log(
        "The project was last modified at " ~ project_last_modified,
        info = True
    ) }}

    {% set project_last_modified_by = "Jake Shivers" %}
    {{ log(
        "The project was last modified by " ~ project_last_modified_by,
        info = True
    ) }}

    {% set project_last_modified_by_email = "jakeshivers@gmail.com" %}
    {{ log(
        "The project was last modified by " ~ project_last_modified_by_email,
        info = True
    ) }}
    {{ log(
        "Have a good day, " ~ var(
            "user_name",
            "No user is set. Please set a user name in your dbt profile"
        ) ~ "!",
        info = True
    ) }}
{% endmacro %}
