SELECT customer_data.id_cust, customer_data.name , MAX(customer_data.total) AS `Largest Total`
FROM `customer_data` ;