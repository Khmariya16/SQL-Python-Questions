
How many customers placed an order and what is the average order amount

SELECT 
    COUNT(DISTINCT customer_id) AS total_customers,
    AVG(amount) AS average_order_amount
FROM postmates_orders;
