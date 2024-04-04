{% macro template_example() %}
    
    {% set query %}
        select true as bool
    {% endset %}

    {% if execute %} 
        {% set results = run_query(query).columns[0].values()[0] %}

        select {{results}} as is_real from table_name

    {% endif %}

{% endmacro %}