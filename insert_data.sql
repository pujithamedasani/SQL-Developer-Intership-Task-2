--As I already gave some examples in the previous task mentioning the insertion of data into the tables named sample_data.sql , I will now practice about UPDATE, DELETE statements including INSERT Statements .
--1. Insert sample data into all tables:

-- Insert into Staff Table
INSERT INTO Staff (Name, Role, Email) VALUES
(' John', 'Librarian', 'john@gmail.com'),
('ram', 'Assistant', 'ram@gmail.com');

-- Insert into Members Table
INSERT INTO Members (Name, Email, JoinDate) VALUES
('Doe','doe@gmail.com', '2025-06-20'),
('Jane','jane@gmail.com', '2025-03-12');

-- Insert into Books Table 
INSERT INTO Books (Title, ISBN, Status) VALUES
('Alices Adventures in Wonderland', '9780743273565', 'Available'),
('1984', '9780451524935', 'Loaned'),
(' A Good Girls Guide to Murder', '9780061120084', 'Reserved');

-- Insert into Reservations Table
INSERT INTO Reservations (BookID, MemberID, ReservationDate) VALUES
(1, 2, '2025-06-20');

-- Insert into Loans Table
INSERT INTO Loans (BookID, MemberID, StaffID, LoanDate, DueDate, ReturnDate) VALUES
(2, 1, 1, '2025-06-01', '2025-06-15', NULL);

-- Insert into Fines Table
INSERT INTO Fines (LoanID, StaffID, Amount, IssuedDate, Paid) VALUES
(1, 2, 25.00, '2025-06-20', FALSE);
