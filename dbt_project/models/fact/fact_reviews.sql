{{
  config(
    materialized = 'incremental',
    onschema_change = 'fail'
    )
}}

select *
from {{ ref('src_reviews') }}
where review_text is not null
{% if is_incremental() %}
    and review_date > (select max(review_date) from {{ this }})
{% endif %}