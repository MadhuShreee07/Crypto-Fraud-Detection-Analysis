-- Import dataset from CSV file

LOAD DATA INFILE 'Data/crypto_fraud_transactions_dataset.csv'
INTO TABLE crypto_transactions
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;