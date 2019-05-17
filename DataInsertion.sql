USE Ontellus

INSERT INTO Customers (Name) VALUES ('ACME')

Declare @acmeId INT = SCOPE_IDENTITY()

INSERT INTO Contacts (CustomerId, Name, Email, PhoneNumber)
VALUES (@acmeId, 'John Smith', 'john@email.com', '555-555-5555')

DECLARE @acmeContactId INT = SCOPE_IDENTITY()

INSERT INTO Orders (CustomerId, ContactId, OrderDate)
VALUES (@acmeId, @acmeContactId, '2017-01-01 00:00:00.000')

DECLARE @acmeOrderId INT = SCOPE_IDENTITY()

INSERT INTO LineItems (OrderId, Description, Quantity, Price) VALUES 
(@acmeOrderId, 'Bags of clothes', 1, 120), 
(@acmeOrderId, 'Toothbrush', 5, 4.99)

INSERT INTO Orders (CustomerId, ContactId, OrderDate)
VALUES (@acmeId, NULL, '2017-02-01 00:00:00.000')

DECLARE @acmeOrderId2 INT = SCOPE_IDENTITY()

INSERT INTO LineItems (OrderId, Description, Quantity, Price) VALUES 
(@acmeOrderId2, 'Monitors', 2, 499.99), 
(@acmeOrderId2, 'Air Guitar', 1, 0.01)

INSERT INTO Customers (Name) VALUES ('FreeLot')

DECLARE @freeLotId INT = SCOPE_IDENTITY()

INSERT INTO Orders (CustomerId, ContactId, OrderDate)
VALUES (@freeLotId, NULL, '2017-01-05 10:05:33.343')

DECLARE @freeLotOrderId INT = SCOPE_IDENTITY()

INSERT INTO LineItems (OrderId, Description, Quantity, Price) VALUES
(@freeLotOrderId, 'Bamen Noodles', 20, 0.99),
(@freeLotOrderId, 'Towels', 3, 19.99)

