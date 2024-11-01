select 
     listing_id
     , date review_date
     , reviewer_name
     , comments review_text
     , sentiment review_sentiment
from  airbnb.raw.raw_reviews
