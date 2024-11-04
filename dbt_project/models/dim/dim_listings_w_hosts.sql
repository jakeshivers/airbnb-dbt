{{ 
  config(
    materialized='view'
  )
}}

with l as (
    select 
      *
    from
      {{ ref('dim_listings_cleansed') }}
),
h as (
    select 
      *
    from 
      {{ ref('dim_hosts_cleansed') }}
)

select 
      l.listing_id
    , l.listing_name
    , l.room_type
    , l.minimum_nights
    , l.price
    , h.host_id
    , h.host_name
    , h.is_superhost as host_is_superhost
    , l.created_at host_created_at
    , greatest(h.updated_at, l.updated_at) updated_at
    from l
    left join h on l.host_id = h.host_id
