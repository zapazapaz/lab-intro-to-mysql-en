USE lab_mysql;

CREATE TABLE Publishers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Address VARCHAR(255),
    City VARCHAR(100),
    Country VARCHAR(100)
);

CREATE TABLE Books (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    ISBN VARCHAR(20) NOT NULL,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    PublishedYear INT NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    PublisherID INT,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(ID)
);

CREATE TABLE Customers (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Phone VARCHAR(20),
    Email VARCHAR(100),
    Address VARCHAR(255) NOT NULL,
    City VARCHAR(100) NOT NULL,
    StateProvince VARCHAR(100),
    Country VARCHAR(100) NOT NULL,
    Postal VARCHAR(20) NOT NULL
);

CREATE TABLE Salespersons (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StaffID INT NOT NULL,
    Name VARCHAR(100) NOT NULL,
    Store VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    OrderNumber INT NOT NULL,
    Date DATE NOT NULL,
    Book INT,
    Customer INT,
    SalesPerson INT,
    FOREIGN KEY (Book) REFERENCES Books(ID),
    FOREIGN KEY (Customer) REFERENCES Customers(ID),
    FOREIGN KEY (SalesPerson) REFERENCES Salespersons(ID)
);
