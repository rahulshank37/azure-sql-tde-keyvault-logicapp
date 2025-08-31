
-- test-transactions.sql
-- Inserts test transactions for threshold monitoring

-- Insert transaction below threshold
INSERT INTO Transactions (Amount, Description) VALUES (250.00, 'Low value transaction');

-- Insert transaction above threshold
INSERT INTO Transactions (Amount, Description) VALUES (1500.00, 'High value transaction exceeding threshold');
