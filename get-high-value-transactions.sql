
-- get-high-value-transactions.sql
-- Stored Procedure to fetch transactions above a defined threshold

CREATE OR ALTER PROCEDURE GetHighValueTransactions
    @Threshold DECIMAL(18,2)
AS
BEGIN
    SELECT TransactionID, Amount, Description, CreatedAt
    FROM Transactions
    WHERE Amount > @Threshold;
END;
