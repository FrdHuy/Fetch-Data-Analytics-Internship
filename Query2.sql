SELECT u.ID, SUM(r.TOTAL_SPENT) as total_spent
FROM fetch.receipts r
JOIN fetch.users u ON r.USER_ID = u.ID
WHERE MONTH(r.PURCHASE_DATE) = 8
GROUP BY u.ID
ORDER BY total_spent DESC
LIMIT 1;
