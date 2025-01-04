-- Use fleetdb database
USE fleetdb;

-- Insert data into country table
INSERT INTO country (code, capital, description, nationality, continent) 
VALUES 
('US', 'Washington D.C.', 'United States of America', 'American', 'North America'),
('CA', 'Ottawa', 'Canada', 'Canadian', 'North America'),
('GB', 'London', 'United Kingdom', 'British', 'Europe');

-- Insert data into state table
INSERT INTO state (name, capital, code, countryid, details) 
VALUES 
('California', 'Sacramento', 'CA', 1, 'Details for California'),
('Texas', 'Austin', 'TX', 1, 'Details for Texas'),
('Ontario', 'Toronto', 'ON', 2, 'Details for Ontario');

-- Insert data into client table
INSERT INTO client (name, address, city, phone, mobile, website, email, countryid, stateid, details) 
VALUES 
('Client A', '123 Main St', 'City A', '123-456-7890', '987-654-3210', 'www.clientA.com', 'clientA@email.com', 1, 1, 'Details for Client A'),
('Client B', '456 Oak St', 'City B', '456-789-0123', '321-654-0987', 'www.clientB.com', 'clientB@email.com', 2, 2, 'Details for Client B');

-- Insert data into contact table
INSERT INTO contact (firstname, lastname, phone, email, mobile, remarks) 
VALUES 
('John', 'Doe', '123-456-7890', 'john.doe@email.com', '987-654-3210', 'Remarks for John Doe'),
('Jane', 'Smith', '456-789-0123', 'jane.smith@email.com', '321-654-0987', 'Remarks for Jane Smith');

-- Insert data into location table
INSERT INTO location (description, details, countryid, stateid, city, address) 
VALUES 
('Location A', 'Details for Location A', 1, 1, 'City A', '123 Main St'),
('Location B', 'Details for Location B', 2, 2, 'City B', '456 Oak St');

-- Insert data into supplier table
INSERT INTO supplier (name, address, city, phone, mobile, website, email, countryid, stateid, details) 
VALUES 
('Supplier A', '789 Elm St', 'City A', '789-012-3456', '012-345-6789', 'www.supplierA.com', 'supplierA@email.com', 1, 1, 'Details for Supplier A'),
('Supplier B', '012 Pine St', 'City B', '012-345-6789', '234-567-8901', 'www.supplierB.com', 'supplierB@email.com', 2, 2, 'Details for Supplier B');

-- Insert data into user table
INSERT INTO user (username, password) 
VALUES 
('john_doe', 'hashed_password_for_john'),
('jane_smith', 'hashed_password_for_jane');
