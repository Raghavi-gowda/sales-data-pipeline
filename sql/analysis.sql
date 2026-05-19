-- Query 1: Revenue by Year
SELECT 
    year,
    ROUND(SUM(sales), 2)      AS total_revenue,
    COUNT(DISTINCT order_id)   AS total_orders
FROM sales
GROUP BY year
ORDER BY year;

-- Query 2: Revenue by Region
SELECT 
    region,
    ROUND(SUM(sales), 2)      AS total_revenue,
    COUNT(DISTINCT order_id)   AS total_orders
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- Query 3: Revenue by Category
SELECT 
    category,
    sub_category,
    ROUND(SUM(sales), 2)  AS total_revenue
FROM sales
GROUP BY category, sub_category
ORDER BY total_revenue DESC;

-- Query 4: Top 10 Products
SELECT 
    product_name,
    category,
    ROUND(SUM(sales), 2)  AS total_revenue
FROM sales
GROUP BY product_name, category
ORDER BY total_revenue DESC
LIMIT 10;

-- Query 5: Revenue by Segment
SELECT 
    segment,
    ROUND(SUM(sales), 2)      AS total_revenue,
    COUNT(DISTINCT order_id)   AS total_orders,
    ROUND(AVG(sales), 2)       AS avg_order_value
FROM sales
GROUP BY segment
ORDER BY total_revenue DESC;