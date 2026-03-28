CREATE TABLE members (
    member_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15),
    join_date DATE
);


CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150),
    author VARCHAR(100),
    category VARCHAR(50),
    published_year INT,
    available_copies INT
);


CREATE TABLE issued_books (
    issue_id INT PRIMARY KEY,
    member_id INT,
    book_id INT,
    issue_date DATE,
    due_date DATE,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES members(member_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


CREATE TABLE fines (
    fine_id INT PRIMARY KEY,
    issue_id INT,
    fine_amount DECIMAL(10,2),
    paid_status VARCHAR(10),
    FOREIGN KEY (issue_id) REFERENCES issued_books(issue_id)
);


INSERT INTO members VALUES
(1, 'Rahul Sharma', 'rahul@gmail.com', '9876543210', '2023-01-10'),
(2, 'Priya Singh', 'priya@gmail.com', '9876543211', '2023-02-15'),
(3, 'Amit Verma', 'amit@gmail.com', '9876543212', '2023-03-12'),
(4, 'Sneha Reddy', 'sneha@gmail.com', '9876543213', '2023-04-05'),
(5, 'Karan Patel', 'karan@gmail.com', '9876543214', '2023-05-20'),
(6, 'Neha Gupta', 'neha@gmail.com', '9876543215', '2023-06-11'),
(7, 'Rohit Kumar', 'rohit@gmail.com', '9876543216', '2023-07-19'),
(8, 'Anjali Mehta', 'anjali@gmail.com', '9876543217', '2023-08-22'),
(9, 'Vikas Yadav', 'vikas@gmail.com', '9876543218', '2023-09-10'),
(10, 'Pooja Das', 'pooja@gmail.com', '9876543219', '2023-10-01'),
(11, 'Arjun Nair', 'arjun@gmail.com', '9876543220', '2023-11-03'),
(12, 'Meera Iyer', 'meera@gmail.com', '9876543221', '2023-12-15'),
(13, 'Suresh Babu', 'suresh@gmail.com', '9876543222', '2024-01-05'),
(14, 'Lakshmi Devi', 'lakshmi@gmail.com', '9876543223', '2024-02-11'),
(15, 'Ravi Teja', 'ravi@gmail.com', '9876543224', '2024-03-09'),
(16, 'Divya Sharma', 'divya@gmail.com', '9876543225', '2024-04-17'),
(17, 'Manoj Kumar', 'manoj@gmail.com', '9876543226', '2024-05-25'),
(18, 'Kavya Reddy', 'kavya@gmail.com', '9876543227', '2024-06-14'),
(19, 'Harish Rao', 'harish@gmail.com', '9876543228', '2024-07-20'),
(20, 'Deepika Singh', 'deepika@gmail.com', '9876543229', '2024-08-02');


INSERT INTO books VALUES
(101, 'SQL Basics', 'John Doe', 'Education', 2020, 5),
(102, 'Advanced SQL', 'Jane Smith', 'Education', 2021, 4),
(103, 'Python Programming', 'Guido Rossum', 'Technology', 2019, 6),
(104, 'Data Science Handbook', 'Jake VanderPlas', 'Technology', 2022, 3),
(105, 'Machine Learning', 'Andrew Ng', 'Technology', 2021, 5),
(106, 'Artificial Intelligence', 'Stuart Russell', 'Technology', 2020, 2),
(107, 'Business Analytics', 'James Evans', 'Business', 2018, 4),
(108, 'Marketing 101', 'Philip Kotler', 'Business', 2017, 3),
(109, 'Finance Basics', 'Robert Kiyosaki', 'Finance', 2016, 5),
(110, 'Investment Guide', 'Warren Buffett', 'Finance', 2020, 2),
(111, 'History of India', 'Bipin Chandra', 'History', 2015, 4),
(112, 'World History', 'Howard Zinn', 'History', 2018, 3),
(113, 'Physics Fundamentals', 'HC Verma', 'Science', 2014, 6),
(114, 'Chemistry Basics', 'NCERT', 'Science', 2016, 5),
(115, 'Biology Today', 'Campbell', 'Science', 2019, 4),
(116, 'English Grammar', 'Wren & Martin', 'Education', 2013, 7),
(117, 'Communication Skills', 'Dale Carnegie', 'Self Help', 2012, 6),
(118, 'Time Management', 'Brian Tracy', 'Self Help', 2015, 3),
(119, 'Leadership', 'Simon Sinek', 'Self Help', 2019, 4),
(120, 'Startup Guide', 'Eric Ries', 'Business', 2021, 2);


INSERT INTO issued_books VALUES
(1, 1, 101, '2024-01-01', '2024-01-10', '2024-01-09'),
(2, 2, 102, '2024-01-05', '2024-01-15', NULL),
(3, 3, 103, '2024-01-07', '2024-01-17', '2024-01-20'),
(4, 4, 104, '2024-01-10', '2024-01-20', NULL),
(5, 5, 105, '2024-01-12', '2024-01-22', '2024-01-21'),
(6, 6, 106, '2024-01-15', '2024-01-25', NULL),
(7, 7, 107, '2024-01-18', '2024-01-28', '2024-01-30'),
(8, 8, 108, '2024-01-20', '2024-01-30', NULL),
(9, 9, 109, '2024-01-22', '2024-02-01', '2024-02-03'),
(10, 10, 110, '2024-01-25', '2024-02-05', NULL),
(11, 11, 111, '2024-02-01', '2024-02-10', '2024-02-09'),
(12, 12, 112, '2024-02-03', '2024-02-12', NULL),
(13, 13, 113, '2024-02-05', '2024-02-15', '2024-02-18'),
(14, 14, 114, '2024-02-07', '2024-02-17', NULL),
(15, 15, 115, '2024-02-10', '2024-02-20', '2024-02-19'),
(16, 16, 116, '2024-02-12', '2024-02-22', NULL),
(17, 17, 117, '2024-02-15', '2024-02-25', '2024-02-27'),
(18, 18, 118, '2024-02-18', '2024-02-28', NULL),
(19, 19, 119, '2024-02-20', '2024-03-01', '2024-03-05'),
(20, 20, 120, '2024-02-22', '2024-03-03', NULL),
(21, 1, 103, '2024-03-01', '2024-03-10', NULL),
(22, 2, 104, '2024-03-02', '2024-03-12', '2024-03-11'),
(23, 3, 105, '2024-03-03', '2024-03-13', NULL),
(24, 4, 106, '2024-03-05', '2024-03-15', '2024-03-20'),
(25, 5, 107, '2024-03-07', '2024-03-17', NULL),
(26, 6, 108, '2024-03-08', '2024-03-18', '2024-03-17'),
(27, 7, 109, '2024-03-10', '2024-03-20', NULL),
(28, 8, 110, '2024-03-12', '2024-03-22', '2024-03-25'),
(29, 9, 111, '2024-03-15', '2024-03-25', NULL),
(30, 10, 112, '2024-03-18', '2024-03-28', NULL);


INSERT INTO fines VALUES
(1, 3, 30.00, 'NO'),
(2, 7, 20.00, 'YES'),
(3, 9, 40.00, 'NO'),
(4, 13, 50.00, 'YES'),
(5, 17, 20.00, 'NO'),
(6, 19, 60.00, 'YES'),
(7, 24, 50.00, 'NO'),
(8, 28, 30.00, 'YES'),
(9, 1, 10.00, 'YES'),
(10, 5, 10.00, 'YES'),
(11, 11, 15.00, 'NO'),
(12, 15, 10.00, 'YES'),
(13, 22, 5.00, 'YES'),
(14, 26, 0.00, 'YES'),
(15, 30, 25.00, 'NO');
