{% macro season_of_year(started_at) %}
    case
        when month(started_at::timestamp) in (12, 1, 2)
        then 'WINTER'
        when month(started_at::timestamp)  in (3, 4, 5)
        then 'SPRING'
        when month(started_at::timestamp)  in (6, 7, 8)
        then 'SUMMER'
        else 'AUTUMN'
    end
{% endmacro %}

{% macro working_day(arg) %}
    case
        when dayname({{arg}}::timestamp) in ('Sat', 'Sun')
        then 'WEEKENED'
        else 'BUSINESSDAY'
    end
{% endmacro %}