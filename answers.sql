

Answer 1 :
-- Create ProductDetail table
CREATE TABLE ProductDetail(
OrderID INT,
CustomerName VARCHAR(100),
Products VARCHAR(100)
)



-- Insert noramlized data into ProductDetail
INSERT INTO ProductDetail
VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');


Answer 2 :
-- Create the Orders table (no partial dependencies)
CREATE TABLE orders(
	orderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
)


-- Create the OrderItems table (dependent on full composite key)
CREATE TABLE orderItems(
	OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (orderID) REFERENCES orders(OrderID)
)


-- Insert into Orders (CustomerName depends only on OrderID)
INSERT INTO Orders VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


-- Insert into OrderItems (Product and Quantity depend on OrderID + Product)
INSERT INTO OrderItems VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);
