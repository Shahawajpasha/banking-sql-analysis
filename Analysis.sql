Banking Transaction Analysis

1. Monthly Revenue Trend
SELECT strftime('%Y-%m',transaction_date) AS month,SUM(amount) AS total_revenue FROM transactions GROUP BY month ORDER BY month;

2. Top Customers by Revenue
SELECT customer_id,SUM(amount) AS total_spent FROM transactions GROUP BY customer_id ORDER BY total_spent DESC LIMIT 10;

3. Category Performance
SELECT category,SUM(amount) AS total_spent FROM transactions GROUP BY category ORDER BY total_spent DESC;

4. Weekday vs Weekend Behavior
SELECT day_type,COUNT(*) AS transactions,SUM(amount) AS total_spent,AVG(amount) AS avg_amount FROM transactions GROUP BY day_type;

5. High Risk Transactions
SELECT * FROM transactions WHERE value_flag='High' AND risk_flag='Suspicious';

6. Customer Lifetime Value
SELECT c.customer_id,c.city,c.segment,COUNT(t.transaction_id) AS txn_count,SUM(t.amount) AS lifetime_value FROM customers55 c JOIN transactions t ON c.customer_id=t.customer_id GROUP BY c.customer_id;
