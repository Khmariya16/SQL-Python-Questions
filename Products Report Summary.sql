Find the number of unique transactions and total sales for each of the product categories in 2017. Output the product categories, number of transactions, and total sales in descending order. The sales column represents the total cost the customer paid for the product so no additional calculations need to be done on the column.
Only include product categories that have products sold.

select 
    count(distinct t.transaction_id) as no_of_transactions,
    sum(t.sales) as total_sales,
    p.product_category
from wfm_transactions t
join wfm_products p on t.product_id = p.product_id
where t.transaction_date >= '2017-01-01' and t.transaction_date < '2018-01-01'
group by product_category
having count(*) > 0
order by total_sales
