-- =============================================
-- Crypto Fraud Detection - SQL Analysis Queries
-- =============================================

1. High-Value Suspicious Transactions
-- Detect transactions with unusually large amounts

SELECT
Transaction_id,
Wallet_From,
Wallet_To,
Amount,
Location
FROM crypto_transactions
WHERE Amount > 150
ORDER BY Amount DESC;

2. Total Transactions by Location
-- Identify regions with the highest transaction activity

SELECT
Location,
COUNT(*) AS Total_Transactions
FROM crypto_transactions
GROUP BY Location
ORDER BY Total_Transactions DESC
LIMIT 10;

3. Fraud Transactions by Location
-- Determine which locations have the most flagged transactions

SELECT
Location,
COUNT(*) AS Fraud_Count
FROM crypto_transactions
WHERE Flagged = 'TRUE'
GROUP BY Location
ORDER BY Fraud_Count DESC;

4. Highest Gas Fee Transactions
-- Detect transactions paying unusually high network fees

SELECT
Transaction_id,
Wallet_From,
Wallet_To,
Gas_Fee,
Amount,
Location
FROM crypto_transactions
ORDER BY Gas_Fee DESC
LIMIT 10;

5. Overall Fraud Percentage
-- Calculate the percentage of transactions flagged as suspicious

SELECT
COUNT(*) AS Total_Transactions,
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) AS Fraud_Transactions,
ROUND(
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) * 100 / COUNT(*),
2
) AS Fraud_Percentage
FROM crypto_transactions;

6.Fraud Rate by Location
-- Measure fraud intensity relative to total transactions in each location

SELECT
Location,
COUNT(*) AS Total_Transactions,
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) AS Fraud_Count,
ROUND(
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) * 100 / COUNT(*),
2
) AS Fraud_Rate_Percent
FROM crypto_transactions
GROUP BY Location
ORDER BY Fraud_Rate_Percent DESC
LIMIT 10;

 7. Average Transaction Amount by Location
-- Analyze transaction size patterns across regions

SELECT
Location,
ROUND(AVG(Amount),2) AS Avg_Transaction_Amount
FROM crypto_transactions
GROUP BY Location
ORDER BY Avg_Transaction_Amount DESC
LIMIT 10;
