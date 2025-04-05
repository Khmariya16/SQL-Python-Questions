Uber is interested in identifying gaps in their business. Calculate the count of orders for each status of each service. Your output should include the service name, status of the order, and the number of orders.

select 
    count(*) as order_count,
    status_of_order,
    service_name
from uber_orders
group by service_name , status_of_order
order by service_name , status_of_order
