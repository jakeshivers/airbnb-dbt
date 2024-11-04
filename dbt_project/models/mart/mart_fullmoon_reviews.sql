{{
    config(
        materialized='table'
    )
}}

with fact_reviews as (
    select * from {{ ref('fact_reviews') }}
),
full_moon_dates as (
    select * from {{ ref('seed_full_moon_dates') }}
)
select 
     r.*
    ,case 
        when fm.full_moon_date is null then 'not_full_moon '
        else 'full_moon' 
    end as full_moon
from fact_reviews r
left join full_moon_dates fm 
on (to_date(r.review_date) = dateadd(day, 1,fm.full_moon_date))