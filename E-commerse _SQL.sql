create database ecommerse;
use ecommerse;
show tables;

select * from inventory;
select * from monthly_sales;
select * from amazon_sales;

                                                    # Detail analyses 
                                                    
                                # Which product categories have the highest cancellation rates?
 
 SELECT category,
       COUNT(*) AS total_orders,
       SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_orders,
       ROUND(SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS cancellation_rate
FROM amazon_sales
GROUP BY category
ORDER BY cancellation_rate DESC;



								    # Top 10 cities generating the highest total sales amount

SELECT `ship-city`, SUM(amount) AS total_sales
FROM amazon_sales
WHERE status LIKE 'Shipped%'
GROUP BY `ship-city`
ORDER BY total_sales DESC
LIMIT 10;


                             #  Which courier status or shipping type is associated with the most cancellations?

SELECT `courier_status`, 
       COUNT(*) AS total_orders,
       SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END) AS cancellations,
       ROUND(SUM(CASE WHEN status = 'Cancelled' THEN 1 ELSE 0 END)/COUNT(*)*100, 2) AS cancel_rate
FROM amazon_sales
GROUP BY `courier_status`
ORDER BY cancel_rate DESC;

                                 # What is the average order value (AOV) across product sizes?

SELECT size,
       COUNT(*) AS total_orders,
       ROUND(AVG(amount), 2) AS avg_order_value
FROM amazon_sales
WHERE status LIKE 'Shipped%'
GROUP BY size
ORDER BY avg_order_value DESC;



  # monthly sales 
  
                             # Which products have the highest price premium over category average?
  
SELECT sku, category, final_mrp_old, Category_Avg_Price, 
ROUND(final_mrp_old - Category_Avg_Price, 2) AS premium_amount,
ROUND((final_mrp_old - Category_Avg_Price) / Category_Avg_Price * 100, 2) AS premium_pct
FROM monthly_sales
ORDER BY premium_pct DESC
LIMIT 10;

                                  # Which platform offers the cheapest prices most often?

SELECT Cheapest_Platform, COUNT(*) AS product_count
FROM  monthly_sales
GROUP BY Cheapest_Platform
ORDER BY product_count DESC
LIMIT 5;

						      # Find SKUs where the price gap is too large between platforms (> ₹300)

SELECT sku, category, Min_Platform_Price, amazon_mrp, flipkart_mrp, myntra_mrp, Price_Gap
FROM monthly_sales
WHERE Price_Gap > 300
ORDER BY Price_Gap DESC
LIMIT 10;

# inventory 
  
                                    #  Which categories have the highest total stock?
 
SELECT category, SUM(stock) AS total_stock
FROM inventory
GROUP BY category
ORDER BY total_stock DESC;

                                     #  Which SKUs are running low (stock < 10 units)?
  
SELECT sku_code, category, size, color, stock
FROM inventory
WHERE stock < 10
ORDER BY stock ASC;


                                 # Which size-color combinations are most understocked?

SELECT size, color, COUNT(*) AS variants_under_10
FROM inventory
WHERE stock < 10
GROUP BY size, color
ORDER BY variants_under_10 DESC;

  
  
  