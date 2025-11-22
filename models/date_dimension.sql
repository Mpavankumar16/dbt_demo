select
    started_at::timestamp as started_at,
    date(started_at::timestamp) as date_started_at,
    hour(started_at::timestamp) as hour_started_at,
    {{working_day('started_at')}} as day_type,
    {{season_of_year('started_at')}} as season_of_year
from {{ source("demo", "bike") }}
where started_at != 'started_at'
