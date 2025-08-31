
-- init-db.sql
-- Creates a sample Transactions table

CREATE TABLE Transactions (
    TransactionID INT IDENTITY(1,1) PRIMARY KEY,
    Amount DECIMAL(18,2) NOT NULL,
    Description NVARCHAR(255),
    CreatedAt DATETIME DEFAULT GETDATE()
);

-- Insert sample data
INSERT INTO Transactions (Amount, Description) VALUES (500.00, 'Initial Test Transaction');
