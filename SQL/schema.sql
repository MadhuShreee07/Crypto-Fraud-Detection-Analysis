CREATE TABLE crypto_transactions (
Transaction_id INT,
Wallet_From VARCHAR(20),
Wallet_To VARCHAR(20),
Amount DECIMAL(10,2),
Transaction_Time VARCHAR(20),
Location VARCHAR(50),
Gas_Fee DECIMAL(10,6),
Transaction_Type VARCHAR(50),
Flagged VARCHAR(5)
);