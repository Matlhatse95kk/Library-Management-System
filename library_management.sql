
-- This SQL script creates a database schema for a Library Management System.
-- CREATE DATABASE LibraryDB;
--USE LibraryDB;

-- Members Table
CREATE TABLE Members (
    MemberID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    JoinDate DATE NOT NULL
);

-- Staff Table
CREATE TABLE Staff (
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Role VARCHAR(50),
    Email VARCHAR(100) UNIQUE NOT NULL,
    HireDate DATE NOT NULL
);

-- Categories Table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(100) NOT NULL UNIQUE
);

-- Authors Table
CREATE TABLE Authors (
    AuthorID INT AUTO_INCREMENT PRIMARY KEY,
    AuthorName VARCHAR(100) NOT NULL UNIQUE
);

-- Publishers Table
CREATE TABLE Publishers (
    PublisherID INT AUTO_INCREMENT PRIMARY KEY,
    PublisherName VARCHAR(100) NOT NULL UNIQUE,
    ContactEmail VARCHAR(100)
);

-- Books Table
CREATE TABLE Books (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT NOT NULL,
    ISBN VARCHAR(20) UNIQUE NOT NULL,
    PublicationYear YEAR NOT NULL,
    PublisherID INT,
    CategoryID INT,
    CopiesAvailable INT DEFAULT 0,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID),
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- BorrowRecords Table
CREATE TABLE BorrowRecords (
    RecordID INT AUTO_INCREMENT PRIMARY KEY,
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- Fines Table
CREATE TABLE Fines (
    FineID INT AUTO_INCREMENT PRIMARY KEY,
    RecordID INT NOT NULL,
    Amount DECIMAL(5, 2) NOT NULL,
    Paid BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (RecordID) REFERENCES BorrowRecords(RecordID)
);
