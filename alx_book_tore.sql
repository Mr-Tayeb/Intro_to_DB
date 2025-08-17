CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Books (
	book_id VARCHAR(130) PRIMARY KEY,
	title VARCHAR(130),
	author_id VARCHAR(130),
	price DOUBLE,
	publication_date DATE
);

CREATE TABLE Authors (
	author_id VARCHAR(130) PRIMARY KEY,
	author_name VARCHAR(215)
);

CREATE TABLE Customers (
        customer_id VARCHAR(130) PRIMARY KEY,
        customer_name VARCHAR(215),
        email VARCHAR(215),
        address TEXT
);

CREATE TABLE Orders(
	order_id VARCHAR(130) Primary Key,
	customer_id VARCHAR(130),
	order_date DATE,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
	orderdetailid VARCHAR(130) Primary Key,
	order_id VARCHAR(130),
	book_id VARCHAR(130),
	quantity DOUBLE,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);