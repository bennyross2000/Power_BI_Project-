SELECT ROUND(SUM(orders.product_quantity * dim_product.sale_price)::numeric, 1) AS monthly_revenue,
       dim_store.store_type AS store_type
FROM orders
JOIN dim_product ON dim_product.product_code = orders.product_code
JOIN dim_store ON dim_store.store_code = orders.store_code
WHERE EXTRACT(YEAR FROM orders.order_date::date) = 2022
  AND dim_store.country = 'Germany'
GROUP BY dim_store.store_type
ORDER BY monthly_revenue DESC
LIMIT 1;
