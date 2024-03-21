SELECT 
    store_type,
    SUM(totalled_sales) AS total_sales,
    AVG(sales_percentage) AS average_percentage_of_total_sales,
    COUNT(*) AS order_count
FROM test_store_overviews_2
GROUP BY store_type;
