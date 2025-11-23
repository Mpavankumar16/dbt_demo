with bike as (
    select 
    distinct
        started_station_id,
        started_station_name,
        start_lat,
        start_lng
    from {{ source('demo', 'bike') }}
    where ride_id!='ride_id'
)
select * from bike