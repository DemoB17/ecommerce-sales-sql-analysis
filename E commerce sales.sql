SELECT customer_id, COUNT(order_id) AS total_orders, SUM(total_price) AS lifetime_value
FROM sales_data
GROUP BY customer_id
ORDER BY lifetime_value DESC
LIMIT 3;