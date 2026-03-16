# Crypto Fraud Detection Analysis 

## Introduction

🔍 Explore cryptocurrency transaction data to uncover potential fraud patterns!

This project analyzes blockchain transaction activity using **SQL queries and data visualization** to identify suspicious behavior across different locations.

The analysis focuses on:

- 🚩 detecting fraud-flagged transactions  
- 🌍 identifying locations with high fraud activity  
- 📊 understanding the distribution of fraud vs non-fraud transactions  
- 💰 analyzing transaction values across regions  

By combining **SQL analysis with visualizations**, the project demonstrates how data analysis techniques can be applied to detect fraud patterns in cryptocurrency transactions.

🔎 SQL queries used in this analysis can be found in the **SQL folder** of this repository.

## Background

With the rapid growth of cryptocurrency usage worldwide, the number of blockchain transactions has increased significantly. While most transactions are legitimate, some may indicate fraudulent or suspicious activity.

This project was created to explore how **SQL can be used to analyze transaction data and detect fraud patterns**.

The dataset contains **1000 cryptocurrency transactions** including wallet addresses, transaction amounts, locations, and fraud flags.

Through SQL queries and data exploration, this project aims to answer several key questions about transaction behavior and fraud patterns.

The questions I wanted to answer through my SQL analysis were:

1. Which transactions involve unusually **high transfer amounts**?
2. Which wallets are sending **too many transactions** (possible spam activity)?
3. Which locations report the **highest number of fraud transactions**?
4. Which transactions have **unusually high gas fees**?
5. What **percentage of all transactions are fraudulent**?
6. Which wallets receive **the most transactions**?
7. Which locations have the **highest fraud rates**?

## Tools I Used

For this cryptocurrency fraud detection project, I used several tools to explore the dataset, analyze transaction patterns, and present insights.

**SQL**

SQL served as the core tool for analyzing the cryptocurrency transaction dataset. It allowed me to filter, aggregate, and investigate patterns related to transaction amounts, fraud flags, and location-based activity.

**MySQL**

MySQL was used as the database management system to store the dataset and execute SQL queries efficiently.

**Exploratory Data Analysis (EDA)**

EDA techniques were used to understand the structure of the dataset and identify important patterns before performing deeper analysis. This included examining transaction distributions, identifying unusual transaction values, and understanding how fraud activity varies across different locations.

**Excel**

Excel was used to visualize the results of SQL queries through charts and graphs. These visualizations helped highlight patterns such as fraud distribution, transaction activity by location, fraud rates, and average transaction values.

**Git & GitHub**

Git and GitHub were used for version control and project sharing. The repository documents the SQL queries, dataset structure, visualizations, and insights derived from the analysis.
