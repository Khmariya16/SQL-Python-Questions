Write a query that returns the number of unique users per client per month.

select
    count(distinct user_id) , 
    client_id , 
    month(time_id) as month
from fact_events
group by client_id , 
            month(time_id)
