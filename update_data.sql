--As we already inserted data into the table now lets understand UPDATE statement.
--UPDATE statement is used to modify the existing records in a table.
--Syntax:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-- Update a book status
UPDATE Books 
SET Status = 'Reserved' 
WHERE BookID = 3;

-- Mark a loan as returned
UPDATE Loans 
SET ReturnDate = '2024-02-12' 
WHERE LoanID = 1;


