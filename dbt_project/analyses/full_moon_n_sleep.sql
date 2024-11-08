select 
    is_full_moon,
    review_sentimetn,
    count(*) as reviews
from {{ ref('mart_fullmoon_reviews') }} as fm
group by 1, 2
order by 1, 2