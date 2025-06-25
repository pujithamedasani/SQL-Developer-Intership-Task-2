NULL Constraint:
  A field with a NULL value is a field with a no value
  If a field in a table is optional then it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

How to test NULLs:
  We will have to use IS NULL or IS NOT NULL statements unlike comparision operators like =,<,<>

IS NULL Syntax:
  SELECT column_names
  FROM table_name
  WHERE column_name IS NULL;

IS NOT NULL Syntax:
  SELECT column_names
  FROM table_name
  WHERE column_name IS NOT NULL;

How do we handle NULLs and when to use them:
  a. We use NULL when a value is not known yet or not applicable or when its missing intentionally.
  b. In the schema, the fields like ReturnDate, Paid might be NULL. 

Example:
--Lets say we have a Book Table 
CREATE TABLE Books (
  BookID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(200) NOT NULL,
  ISBN VARCHAR(20),
  Status ENUM('Available', 'Loaned', 'Reserved') DEFAULT 'Available'
);

-- Loan is created but the book hasn't been returned yet

INSERT INTO Loans (BookID, MemberID, StaffID, LoanDate, DueDate) 
VALUES (1, 2, 1, '2024-01-01', '2024-02-01');

-- ReturnDate will be NULL by default
