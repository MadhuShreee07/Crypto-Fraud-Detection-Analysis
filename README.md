# Crypto Fraud Detection Analysis 

## Introduction

🔍 Explore cryptocurrency transaction data to uncover potential fraud patterns.

This project analyzes blockchain transaction activity using **SQL and data visualization** to identify suspicious behavior across different locations.

The analysis focuses on:

- 🚩 detecting fraud-flagged transactions  
- 🌍 identifying locations with high fraud activity  
- 📊 understanding fraud distribution  
- 💰 analyzing transaction values across regions  

🔎 SQL queries used in this analysis can be found in the **SQL folder** of this repository.

## Background

With the rapid growth of cryptocurrency usage, blockchain networks process large numbers of financial transactions every day. While most of these transactions are legitimate, some may indicate suspicious or fraudulent activity.

This project explores a dataset of **1000 cryptocurrency transactions** to analyze transaction behavior and identify potential fraud patterns using SQL.

The questions I wanted to answer through my SQL analysis were:

1. Which transactions involve unusually **high transfer amounts**?
2. Which wallets are sending **too many transactions**?
3. Which locations report the **highest number of fraud transactions**?
4. Which transactions have **unusually high gas fees**?
5. What **percentage of transactions are fraudulent**?
6. Which wallets receive the **most transactions**?
7. Which locations have the **highest fraud rates**?


## Tools I Used

For this cryptocurrency fraud analysis project, I used the following tools:

**SQL**  
The main tool used to query and analyze the transaction dataset.

**MySQL**  
Used to store the dataset and execute SQL queries efficiently.

**Excel**  
Used to create visualizations from SQL query results.

**Exploratory Data Analysis (EDA)**  
Used to explore the dataset and identify patterns before performing deeper analysis.

**Git & GitHub**  

## The Analysis

Each query in this project investigates a specific aspect of cryptocurrency transaction behavior and potential fraud patterns.

---

### 1. High-Value Suspicious Transactions

To detect potentially suspicious activity, I filtered transactions with unusually large transfer amounts. Large transfers can indicate high-risk activity that may require further monitoring.

```sql
SELECT 
Transaction_id,
Wallet_From,
Wallet_To,
Amount,
Location
FROM crypto_transactions
WHERE Amount > 150
ORDER BY Amount DESC;
```

Key observations:

* Several transactions exceed **150 units**, indicating unusually large transfers.
* These high-value transactions appear across multiple locations.
* Large transfers may represent suspicious activity in financial monitoring systems.

---

### 2. Wallets Sending Too Many Transactions

Next, I analyzed wallet activity to identify wallets that send an unusually high number of transactions. High transaction frequency can indicate automated behavior or suspicious wallet activity.

```sql
SELECT 
Wallet_From,
COUNT(*) AS Total_Transactions
FROM crypto_transactions
GROUP BY Wallet_From
ORDER BY Total_Transactions DESC
LIMIT 10;
```

Key observations:

* Some wallets appear repeatedly as senders in the dataset.
* High-frequency wallets may represent automated systems, exchanges, or suspicious accounts.
* Monitoring wallet behavior helps identify abnormal transaction patterns.

---

### 3. Fraud Transactions by Location

To identify where fraud occurs most frequently, I filtered transactions flagged as fraudulent and grouped them by location.

```sql
SELECT 
Location,
COUNT(*) AS Fraud_Count
FROM crypto_transactions
WHERE Flagged = 'TRUE'
GROUP BY Location
ORDER BY Fraud_Count DESC;
```

Key observations:

* **Indonesia recorded the highest number of fraud-flagged transactions.**
* **China and Russia** also show notable fraud activity.
* Fraud cases appear concentrated in certain regions.

![Fraud Transactions by Location](Images/fraud_transactions_by_location.png)

---

### 4. High Gas Fee Transactions

Gas fees represent the processing cost for blockchain transactions. Unusually high gas fees can indicate priority manipulation or unusual transaction behavior.

```sql
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
```

Key observations:

* Some transactions show **unusually high gas fees**.
* High fees may indicate urgent processing or abnormal activity.
* Monitoring gas fee spikes can help detect suspicious transactions.

---

### 5. Overall Fraud Percentage

To understand how common fraud is in the dataset, I calculated the percentage of transactions flagged as fraudulent.

```sql
SELECT 
COUNT(*) AS Total_Transactions,
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) AS Fraud_Transactions,
ROUND(
SUM(CASE WHEN Flagged='TRUE' THEN 1 ELSE 0 END) * 100 / COUNT(*),
2
) AS Fraud_Percentage
FROM crypto_transactions;
```

Key observations:

* Approximately **10.8% of transactions were flagged as potential fraud**.
* The majority of transactions appear legitimate.
* Even a small fraud percentage can represent significant financial risk.

![Fraud Distribution](Images/fraud_distribution.png)

---

### 6. Transactions by Location

To understand where cryptocurrency activity is most concentrated, I counted the number of transactions across different locations.

```sql
SELECT 
Location,
COUNT(*) AS Total_Transactions
FROM crypto_transactions
GROUP BY Location
ORDER BY Total_Transactions DESC
LIMIT 10;
```

Key observations:

* **China recorded the highest number of transactions.**
* **Indonesia and Russia** also show high transaction activity.
* Cryptocurrency usage appears concentrated in certain regions.

![Transactions by Location](Images/transactions_by_location.png)

---

### 7. Fraud Rate by Location

Finally, I calculated the fraud rate for each location to identify regions where fraud is proportionally higher relative to the total number of transactions.

```sql
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
ORDER BY Fraud_Rate_Percent DESC;
```

Key observations:

* Some locations show **higher fraud rates compared to others**.
* Fraud risk varies significantly across regions.
* Identifying high-risk locations can help improve fraud detection systems.

![Fraud Rate by Location](Images/fraud_rate_by_location.png)

Used for version control and to share the project publicly.
Git and GitHub were used for version control and project sharing. The repository documents the SQL queries, dataset structure, visualizations, and insights derived from the analysis.
