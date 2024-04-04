{%- macro limit_data_in_dev(environment, column_name, dev_days_of_data) -%}
{%- if target.name == environment -%}
where {{column_name}} >= dateadd('day', -{{dev_days_of_data}}, current_date())
{%- endif -%}
{%- endmacro -%}