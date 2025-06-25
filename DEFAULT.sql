DEFAULT Constraint:
  A DEFAULT constraint is used in SQL to assign a default value to a column when no value is provided during an INSERT operation.
  
Syntax:
CREATE TABLE table_name (
  column1 datatype DEFAULT default_value,
  column2 datatype DEFAULT default_value,
  ...
);

Why is it useful:
  a.It ensures that the columns have valid data even if the user skips them.
  b.It also helps in handling NULL-sensitive columns  where missing values should not be allowed.
  c.It keeps the data consistent without extra effort.
  
How do we handle DEFAULT and when to use them:
  a.We use DEFAULT when the SQL is not provided with the value then it automatically fills the value.
  b.It is useful for common values like 'Avaialble' for Books.Status or FALSE or Fines.Paid
  
Example:
--Let us take a Books Table 
  CREATE TABLE Books (
    BookID INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(200) NOT NULL,
    ISBN VARCHAR(20),
    Status ENUM('Available', 'Loaned', 'Reserved') DEFAULT 'Available'
);

-- Insert a new book, don't specify status
INSERT INTO Books (Title, ISBN) VALUES ('The Great Gatsby', '9781455586691');
-- Status will automatically be set to 'Available' because of the DEFAULT Constraint.

