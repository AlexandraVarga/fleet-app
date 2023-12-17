-- Use fleetdb database
USE fleetdb;

-- Create auditable table
CREATE TABLE IF NOT EXISTS auditable (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_by VARCHAR(255),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create country table
CREATE TABLE IF NOT EXISTS country (
    id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(10) NOT NULL,
    capital VARCHAR(255),
    description VARCHAR(255),
    nationality VARCHAR(255),
    continent VARCHAR(255)
);

-- Create state table
CREATE TABLE IF NOT EXISTS state (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    capital VARCHAR(255),
    code VARCHAR(10) NOT NULL,
    countryid INT,
    details TEXT,
    
    FOREIGN KEY (countryid) REFERENCES country(id)
);

-- Create client table
CREATE TABLE IF NOT EXISTS client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(255),
    phone VARCHAR(20),
    mobile VARCHAR(20),
    website VARCHAR(255),
    email VARCHAR(255),
    countryid INT,
    stateid INT,
    details TEXT,
    
    FOREIGN KEY (countryid) REFERENCES country(id),
    FOREIGN KEY (stateid) REFERENCES state(id)
);

-- Create commonobject table
CREATE TABLE IF NOT EXISTS commonobject (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255) NOT NULL,
    details TEXT,
    created_by VARCHAR(255),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create contact table
CREATE TABLE IF NOT EXISTS contact (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(255),
    mobile VARCHAR(20),
    remarks TEXT
);

-- Create person table
CREATE TABLE IF NOT EXISTS person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    birthdate DATE,
    gender VARCHAR(10),
    email VARCHAR(255),
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Create employeetype table
CREATE TABLE IF NOT EXISTS employeetype (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    created_by VARCHAR(255),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create jobtitle table
CREATE TABLE IF NOT EXISTS jobtitle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- Create employee table
CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employeetypeid INT,
    jobtitleid INT,
    photo VARCHAR(255),
    username VARCHAR(255),
    hireDate DATE,
    
    FOREIGN KEY (employeetypeid) REFERENCES employeetype(id),
    FOREIGN KEY (jobtitleid) REFERENCES jobtitle(id),
    FOREIGN KEY (id) REFERENCES person(id)
);

-- Create invoicestatus table
CREATE TABLE IF NOT EXISTS invoicestatus (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    created_by VARCHAR(255),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create invoice table
CREATE TABLE IF NOT EXISTS invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoiceDate DATE,
    invoicestatusid INT,
    clientid INT,
    remarks TEXT,
    
    FOREIGN KEY (invoicestatusid) REFERENCES invoiceStatus(id),
    FOREIGN KEY (clientid) REFERENCES client(id)
);

-- Create jobtitle table
CREATE TABLE IF NOT EXISTS jobtitle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    created_by VARCHAR(255),
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    last_modified_by VARCHAR(255),
    last_modified_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create location table
CREATE TABLE IF NOT EXISTS location (
    id INT AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    countryid INT,
    stateid INT,
    city VARCHAR(255),
    address VARCHAR(255),
    
    FOREIGN KEY (countryid) REFERENCES country(id),
    FOREIGN KEY (stateid) REFERENCES state(id)
);

-- Create person table
CREATE TABLE IF NOT EXISTS person (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    othername VARCHAR(255),
    title VARCHAR(255),
    initials VARCHAR(10),
    socialSecurityNumber VARCHAR(20),
    gender VARCHAR(10),
    maritalStatus VARCHAR(20),
    countryid INT,
    stateid INT,
    dateOfBirth DATE,
    city VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(20),
    mobile VARCHAR(20),
    email VARCHAR(255),
    photo VARCHAR(255),
    
    FOREIGN KEY (countryid) REFERENCES country(id),
    FOREIGN KEY (stateid) REFERENCES state(id)
);

-- Create supplier table
CREATE TABLE IF NOT EXISTS supplier (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    city VARCHAR(255),
    phone VARCHAR(20),
    mobile VARCHAR(20),
    website VARCHAR(255),
    email VARCHAR(255),
    countryid INT,
    stateid INT,
    details TEXT,
    
    FOREIGN KEY (countryid) REFERENCES country(id),
    FOREIGN KEY (stateid) REFERENCES state(id)
);

-- Create user table
CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Create vehicletype table
CREATE TABLE IF NOT EXISTS vehicletype (
    id INT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    FOREIGN KEY (id) REFERENCES commonobject(id)
);

-- Create vehiclemake table
CREATE TABLE IF NOT EXISTS vehiclemake (
    id INT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    FOREIGN KEY (id) REFERENCES commonobject(id)
);

-- Create vehiclestatus table
CREATE TABLE IF NOT EXISTS vehiclestatus (
    id INT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    FOREIGN KEY (id) REFERENCES commonobject(id)
);

-- Create vehiclemodel table
CREATE TABLE IF NOT EXISTS vehiclemodel (
    id INT PRIMARY KEY,
    description VARCHAR(255),
    details TEXT,
    FOREIGN KEY (id) REFERENCES commonobject(id)
);

-- Create vehicle table
CREATE TABLE IF NOT EXISTS vehicle (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    vehicletypeid INT,
    vehicleNumber VARCHAR(255),
    registrationDate DATE,
    acquisitionDate DATE,
    description TEXT,
    vehiclemakeid INT,
    power VARCHAR(255),
    fuelCapacity VARCHAR(255),
    vehiclestatusid INT,
    netWeight VARCHAR(255),
    employeeid INT,
    vehiclemodelid INT,
    locationid INT,
    remarks TEXT,
    
    FOREIGN KEY (vehicletypeid) REFERENCES vehicletype(id),
    FOREIGN KEY (vehiclemakeid) REFERENCES vehiclemake(id),
    FOREIGN KEY (vehiclestatusid) REFERENCES vehiclestatus(id),
    FOREIGN KEY (employeeid) REFERENCES employee(id),
    FOREIGN KEY (vehiclemodelid) REFERENCES vehiclemodel(id),
    FOREIGN KEY (locationid) REFERENCES location(id)
);

-- Create vehiclehire table if not exists
CREATE TABLE IF NOT EXISTS vehiclehire (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicleid INT,
    dateOut DATE,
    timeOut VARCHAR(255),
    dateIn DATE,
    timeIn VARCHAR(255),
    clientid INT,
    locationid INT,
    price VARCHAR(255),
    remarks TEXT,
    
    FOREIGN KEY (vehicleid) REFERENCES vehicle(id),
    FOREIGN KEY (clientid) REFERENCES client(id),
    FOREIGN KEY (locationid) REFERENCES location(id)
);

-- Create vehiclemaintenance table if not exists
CREATE TABLE IF NOT EXISTS vehiclemaintenance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicleid INT,
    startDate DATE,
    endDate DATE,
    price VARCHAR(255),
    supplierid INT,
    remarks TEXT,
    
    FOREIGN KEY (vehicleid) REFERENCES vehicle(id),
    FOREIGN KEY (supplierid) REFERENCES supplier(id)
);

-- Create vehiclemovement table if not exists
CREATE TABLE IF NOT EXISTS vehiclemovement (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vehicleid INT,
    locationid1 INT,
    date1 DATE,
    locationid2 INT,
    date2 DATE,
    remarks TEXT,
    
    FOREIGN KEY (vehicleid) REFERENCES vehicle(id),
    FOREIGN KEY (locationid1) REFERENCES location(id),
    FOREIGN KEY (locationid2) REFERENCES location(id)
);
