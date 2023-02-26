SELECT DATE_FORMAT(DATE_SCANNED, '%Y-%m') AS month, COUNT(DISTINCT USER_ID) AS num_users
FROM receipts
WHERE DATE_SCANNED IS NOT NULL
GROUP BY month;