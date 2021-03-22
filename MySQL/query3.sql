SELECT   CONCAT(HOUR(transaction_data.time), ':00-', HOUR(transaction_data.time)+2, ':00') AS Hours,      
COUNT(*) AS `usage`
FROM     transaction_data
WHERE    transaction_data.time BETWEEN '2021-01-01' AND NOW()
GROUP BY HOUR(transaction_data.time)