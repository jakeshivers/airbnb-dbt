select 
     l.created_at listing_created_date
    , r.review_date review_created_date
from {{ ref('dim_listings_cleansed') }} l
join {{ ref('fact_reviews') }} r
    USING (listing_id)
where l.created_at <  r.review_date
limit 1
