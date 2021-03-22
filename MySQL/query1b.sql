SELECT transaction_data.id_product, customer_data.gender, transaction_data.id_cust,
COUNT(transaction_data.id_product) AS `total` 
FROM  transaction_data, customer_data, product_data
WHERE customer_data.gender="F"
GROUP BY transaction_data.id_product
ORDER BY `total` DESC
LIMIT   1; 