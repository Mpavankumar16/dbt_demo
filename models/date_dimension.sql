select 
    started_at
from {{ source('demo', 'bike') }}
where started_at!='started_at'
