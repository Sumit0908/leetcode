# Write your MySQL query statement below
SELECT  DATE_FORMAT(trans_date, '%Y-%m') AS month,
  country,
  COUNT(*) AS trans_count,
  SUM(case when state='approved'then 1 Else 0 End) AS approved_count,
  SUM(amount) AS trans_total_amount,
  SUM(CASE WHEN state = 'approved' THEN amount ELSE 0 END) AS approved_total_amount
FROM 
  Transactions
  group by
month,country;