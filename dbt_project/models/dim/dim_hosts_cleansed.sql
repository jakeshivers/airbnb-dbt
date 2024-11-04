{{ 
  config(
    materialized='view'
  )
}}
select  
      host_id
    , nvl(host_name, 'anonymous') host_name
    , is_superhost
    , created_at
    , updated_at
from 
    {{ ref('src_hosts') }}  