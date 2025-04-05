Find the monthly active users for January 2021 for each account. Your output should have account_id and the monthly count for that account.

select 
    account_id,
    count(distinct user_id) as monthly_count
from sf_events
where record_date >=  '2021-01-01' AND record_date < '2021-02-01'
group by account_id
