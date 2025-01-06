USE lab_mysql;

-- Insert publishers
INSERT INTO Publishers (Name, Address, City, Country) VALUES
('Penguin Random House', '1745 Broadway', 'New York', 'United States'),
('HarperCollins', '195 Broadway', 'New York', 'United States'),
('Macmillan Publishers', '120 Broadway', 'New York', 'United States'),
('Simon & Schuster', '1230 Avenue of the Americas', 'New York', 'United States'),
('Hachette Book Group', '1290 Avenue of the Americas', 'New York', 'United States');

-- Insert books with publisher references
INSERT INTO Books (ISBN, Title, Author, PublishedYear, Genre, PublisherID) VALUES
('978-3-16-148410-0', 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 1),
('978-0-7432-7356-5', '1984', 'George Orwell', 1949, 'Dystopian', 2),
('978-1-4767-2765-6', 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Classic', 3),
('978-0-452-28423-4', 'Moby Dick', 'Herman Melville', 1851, 'Adventure', 4),
('978-0-141-03435-8', 'Pride and Prejudice', 'Jane Austen', 1813, 'Romance', 5),
('978-0-670-03378-8', 'The Catcher in the Rye', 'J.D. Salinger', 1951, 'Literary Fiction', 1);

-- Insert customers
INSERT INTO Customers (CustomerID, Name, Phone, Email, Address, City, StateProvince, Country, Postal) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', '-', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Insert salespersons
INSERT INTO Salespersons (StaffID, Name, Store) VALUES
(00001, 'Petey Cruiser', 'Madrid'),
(00002, 'Anna Sthesia', 'Barcelona'),
(00003, 'Paul Molive', 'Berlin'),
(00004, 'Gail Forcewind', 'Paris'),
(00005, 'Paige Turner', 'Miami'),
(00006, 'Bob Frapples', 'Mexico City'),
(00007, 'Walter Melon', 'Amsterdam'),
(00008, 'Shonda Leer', 'São Paulo');

-- Insert orders
INSERT INTO Orders (OrderNumber, Date, Book, Customer, SalesPerson) VALUES
(852399038, '2018-08-22', 1, 2, 3),
(731166526, '2018-12-31', 4, 1, 5),
(271135104, '2019-01-22', 3, 3, 7);
