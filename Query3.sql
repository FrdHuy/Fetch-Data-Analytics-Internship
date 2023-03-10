SELECT u.ID, ri.DESCRIPTION, ri.TOTAL_FINAL_PRICE
FROM receipts r
JOIN receipt_items ri ON r.ID = ri.REWARDS_RECEIPT_ID
JOIN users u ON r.USER_ID = u.ID
WHERE ri.TOTAL_FINAL_PRICE = (SELECT MAX(TOTAL_FINAL_PRICE) FROM receipt_items)
LIMIT 1;
