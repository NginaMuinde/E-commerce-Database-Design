CREATE DATABASE CuteCubsKidsCLothingStoreCustomerOrders;
USE CuteCubsKidsCLothingStoreCustomerOrders;
CREATE TABLE CustomerContactDetails (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    EmailAddress VARCHAR(100),
    Phone VARCHAR(15),
    PhysicalAddress VARCHAR(255)
);

USE CuteCubsKidsCLothingStoreCustomerOrders;


CREATE TABLE IF NOT EXISTS OrderProductDetails (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    ProductOrdered VARCHAR(100),
    Quantity INT,
    AgeGroup VARCHAR(50),
    PaymentStatus VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES CustomerContactDetails(CustomerID)
);

USE CuteCubsKidsCLothingStoreCustomerOrders;
CREATE TABLE DeliveryDetails (
    DeliveryID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL,
    OrderDate DATE NOT NULL,
    ExpectedDeliveryDate DATE NOT NULL,
    DeliveryStatus VARCHAR(20) NOT NULL,
    CustomerFeedback TEXT,
    FOREIGN KEY (OrderID) REFERENCES OrderProductDetails(OrderID)
);
