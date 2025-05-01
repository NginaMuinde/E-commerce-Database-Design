# E-commerce-Database-Design
This is a challenge on database design. The goal is to design an Entity-Relationship Diagram (ERD) and build an e-commerce database from scratch.

## A. Project Overview
### Objective: 
Design and implement a relational database for "Cute Cubs Kids Clothing Store" to manage products, customers, orders, and deliveries efficiently.
## B. Entity-Relationship Diagram (ERD)
### Purpose: 
Visualize the database structure, including entities, attributes, and relationships.
![image](https://github.com/user-attachments/assets/adb5bdb4-9251-4f0d-8f1a-c1117803e630)

## C. Data Flow
### Purpose: 
Help show how data moves between tables and ensure efficient data management.​

## D. Data Entry Points:

Customer registration adds entries to CustomerContactDetails Table.

Placing an order adds entries to OrderProductDetails Table.

Shipping an order adds entries to DeliveryDetails Table.​

### The Relationships:

Each customer (CustomerContactDetails) can have multiple orders (OrderProductDetails).

Each order (OrderProductDetails) has one delivery record (DeliveryDetails).​

## E. Data Flow:

This is how data transitions from one table to another during operations like order placement and delivery.​
#### 1. Customer Registration
A new customer provides their contact details.

Then the data is stored in the CustomerContactDetails table.

The following details are captured in the below rows:

1. CustomerID: Unique identifier for the customer.

2. CustomerName: Full name of the customer.

3. EmailAddress: Customer's email.

4. Phone: Contact number.

5. PhysicalAddress: Shipping address.

#### 2. Order Placement
The registered customer places an order.

Then the data is stored in the OrderProductDetails table.

The following details are captured in the below rows:

1. OrderID: Unique identifier for the order placed.

2. CustomerID: Links to the customer placing the order.

3. ProductOrdered: Name or Price Look Up code identifier of the product.

4. Quantity: Number of items per order.

5. AgeGroup: Target age group for the product.(0 - 15 years)

6. PaymentStatus: Status of the payment (e.g., Paid, Pending, Cancelled).

#### 3. Delivery Scheduling
After payment of product, the store schedules the delivery for the placed order.

Then the data is stored in the DeliveryDetails table.

The following details are captured in the below rows:

1. DeliveryID: Unique identifier for the delivery.

2. OrderID: Links to the specific order being delivered and the customer receiving the delivery.

3. OrderDate: Date when the order was placed.

4. ExpectedDeliveryDate: Scheduled date for delivery.

5. DeliveryStatus: Current status (e.g., In Transit, Delivered, Canceled).

6. CustomerFeedback: Feedback provided by the customer post-delivery.

## F. In Summary
#### CustomerContactDetails:

Acts as the primary source of customer information.

CustomerID serves as a foreign key in both OrderProductDetails and DeliveryDetails.

#### OrderProductDetails:

Captures order-specific information.

OrderID serves as a foreign key in DeliveryDetails.

#### DeliveryDetails:

Manages delivery schedules and statuses.

Links back to both customer and order information for comprehensive tracking.
## G. The Code
Creation of the database
![image](https://github.com/user-attachments/assets/b0190a76-913a-4804-9895-e0c6cbe925ae)
![image](https://github.com/user-attachments/assets/d073aaa3-18d9-4e53-b8c6-18bf97ab1259)




