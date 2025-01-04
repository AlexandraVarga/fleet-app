-- Check if the database exists before creating
CREATE DATABASE IF NOT EXISTS fleetdb;

-- Check if the user exists before granting privileges
CREATE USER IF NOT EXISTS 'root'@'localhost';

-- Grant all privileges on the fleetdb database to the user
GRANT ALL PRIVILEGES ON fleetdb.* TO 'root'@'localhost';

-- Flush privileges
FLUSH PRIVILEGES;